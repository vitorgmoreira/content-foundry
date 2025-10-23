#!/bin/bash
# ==============================================================================
# CONTENT FOUNDRY - LOG CLEANUP SCRIPT
# ==============================================================================
#
# Remove logs antigos baseado em retention policy
#
# Uso:
#   ./cleanup-logs.sh           # Usa retention padrão do config (30 dias)
#   ./cleanup-logs.sh 14        # Mantém últimos 14 dias
#   ./cleanup-logs.sh --dry-run # Mostra o que seria deletado sem deletar
#
# Versão: 1.0.0
# Data: 2025-10-22
#
# ==============================================================================

set -e  # Exit on error

# ==============================================================================
# CORES PARA OUTPUT
# ==============================================================================

RED='\033[0;31m'
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
NC='\033[0m' # No Color

# ==============================================================================
# CONFIGURAÇÃO
# ==============================================================================

# Diretório de logs (relativo ao root do content-foundry)
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"
PROJECT_ROOT="$(cd "${SCRIPT_DIR}/../.." && pwd)"
LOGS_DIR="${PROJECT_ROOT}/.foundry/logs"

# Retention padrão (dias)
DEFAULT_RETENTION=30

# Dry run mode
DRY_RUN=false

# ==============================================================================
# PARSE ARGUMENTOS
# ==============================================================================

if [[ "$1" == "--dry-run" ]]; then
    DRY_RUN=true
    RETENTION_DAYS="${2:-$DEFAULT_RETENTION}"
elif [[ "$1" == "--help" ]] || [[ "$1" == "-h" ]]; then
    echo "Content Foundry - Log Cleanup Script"
    echo ""
    echo "Uso:"
    echo "  ./cleanup-logs.sh              # Usa retention padrão (30 dias)"
    echo "  ./cleanup-logs.sh 14           # Mantém últimos 14 dias"
    echo "  ./cleanup-logs.sh --dry-run    # Mostra o que seria deletado"
    echo "  ./cleanup-logs.sh --dry-run 7  # Dry run com 7 dias"
    echo ""
    exit 0
else
    RETENTION_DAYS="${1:-$DEFAULT_RETENTION}"
fi

# Validar que retention_days é número
if ! [[ "$RETENTION_DAYS" =~ ^[0-9]+$ ]]; then
    echo -e "${RED}❌ ERRO: Retention days deve ser um número${NC}"
    echo "Uso: ./cleanup-logs.sh [dias]"
    exit 1
fi

# ==============================================================================
# VALIDAÇÕES
# ==============================================================================

# Verificar se diretório de logs existe
if [[ ! -d "$LOGS_DIR" ]]; then
    echo -e "${YELLOW}⚠️  Diretório de logs não existe: ${LOGS_DIR}${NC}"
    echo "Criando diretório..."
    mkdir -p "$LOGS_DIR"
    echo -e "${GREEN}✅ Diretório criado${NC}"
    exit 0
fi

# ==============================================================================
# LÓGICA DE CLEANUP
# ==============================================================================

echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "${BLUE}🧹 CONTENT FOUNDRY - LOG CLEANUP${NC}"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "📂 Diretório: ${LOGS_DIR}"
echo "📅 Retention: ${RETENTION_DAYS} dias"
echo "🔧 Modo: $([ "$DRY_RUN" = true ] && echo "DRY RUN (sem deletar)" || echo "EXECUTAR")"
echo ""

# Calcular data de cutoff
# macOS usa 'date -v' ao invés de 'date -d'
if [[ "$OSTYPE" == "darwin"* ]]; then
    # macOS
    CUTOFF_DATE=$(date -v-${RETENTION_DAYS}d +%Y-%m-%d)
else
    # Linux
    CUTOFF_DATE=$(date -d "${RETENTION_DAYS} days ago" +%Y-%m-%d)
fi

echo "🗓️  Data de corte: ${CUTOFF_DATE}"
echo "   (Logs anteriores a esta data serão removidos)"
echo ""

# Contar logs no total
TOTAL_LOGS=$(find "$LOGS_DIR" -name "*.log" 2>/dev/null | wc -l | tr -d ' ')

if [[ "$TOTAL_LOGS" -eq 0 ]]; then
    echo -e "${GREEN}✅ Nenhum log encontrado. Nada a fazer.${NC}"
    exit 0
fi

echo "📊 Total de logs encontrados: ${TOTAL_LOGS}"
echo ""

# Encontrar logs antigos
echo "🔍 Procurando logs antigos..."
echo ""

OLD_LOGS=()
DELETED_COUNT=0
DELETED_SIZE=0

# Iterar sobre logs .log files
while IFS= read -r -d '' log_file; do
    # Extrair nome do arquivo (YYYY-MM-DD.log)
    filename=$(basename "$log_file")

    # Extrair data do filename (assumindo formato YYYY-MM-DD.log)
    if [[ "$filename" =~ ^([0-9]{4}-[0-9]{2}-[0-9]{2})\.log$ ]]; then
        log_date="${BASH_REMATCH[1]}"

        # Comparar datas (string comparison funciona com YYYY-MM-DD)
        if [[ "$log_date" < "$CUTOFF_DATE" ]]; then
            OLD_LOGS+=("$log_file")

            # Calcular tamanho
            if [[ -f "$log_file" ]]; then
                size=$(stat -f%z "$log_file" 2>/dev/null || stat -c%s "$log_file" 2>/dev/null || echo 0)
                DELETED_SIZE=$((DELETED_SIZE + size))
            fi

            if [[ "$DRY_RUN" = true ]]; then
                echo -e "${YELLOW}[DRY RUN] Seria deletado: ${filename}${NC}"
            else
                echo -e "${RED}🗑️  Deletando: ${filename}${NC}"
                rm "$log_file"
            fi

            DELETED_COUNT=$((DELETED_COUNT + 1))
        fi
    fi
done < <(find "$LOGS_DIR" -name "*.log" -print0)

# ==============================================================================
# RESUMO
# ==============================================================================

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo -e "${BLUE}📊 RESUMO${NC}"
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"
echo ""
echo "Logs totais: ${TOTAL_LOGS}"

if [[ "$DRY_RUN" = true ]]; then
    echo -e "${YELLOW}Seriam deletados: ${DELETED_COUNT}${NC}"
else
    echo -e "${RED}Deletados: ${DELETED_COUNT}${NC}"
fi

echo -e "${GREEN}Mantidos: $((TOTAL_LOGS - DELETED_COUNT))${NC}"

# Converter tamanho para human-readable
if command -v numfmt &> /dev/null; then
    SIZE_HUMAN=$(numfmt --to=iec-i --suffix=B "$DELETED_SIZE")
elif [[ "$DELETED_SIZE" -gt 1073741824 ]]; then
    SIZE_HUMAN="$(echo "scale=2; $DELETED_SIZE / 1073741824" | bc)GB"
elif [[ "$DELETED_SIZE" -gt 1048576 ]]; then
    SIZE_HUMAN="$(echo "scale=2; $DELETED_SIZE / 1048576" | bc)MB"
elif [[ "$DELETED_SIZE" -gt 1024 ]]; then
    SIZE_HUMAN="$(echo "scale=2; $DELETED_SIZE / 1024" | bc)KB"
else
    SIZE_HUMAN="${DELETED_SIZE}B"
fi

if [[ "$DRY_RUN" = true ]]; then
    echo -e "${YELLOW}Espaço que seria liberado: ${SIZE_HUMAN}${NC}"
else
    echo "Espaço liberado: ${SIZE_HUMAN}"
fi

echo ""

if [[ "$DELETED_COUNT" -eq 0 ]]; then
    echo -e "${GREEN}✅ Nenhum log antigo encontrado. Sistema limpo!${NC}"
elif [[ "$DRY_RUN" = true ]]; then
    echo -e "${YELLOW}⚠️  DRY RUN: Nenhum arquivo foi realmente deletado${NC}"
    echo "Execute sem --dry-run para deletar os arquivos"
else
    echo -e "${GREEN}✅ Cleanup completado com sucesso!${NC}"
fi

echo ""
echo "━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━"

# ==============================================================================
# LOG DA OPERAÇÃO
# ==============================================================================

if [[ "$DRY_RUN" = false ]] && [[ "$DELETED_COUNT" -gt 0 ]]; then
    # Criar log entry para operação de cleanup
    LOG_FILE="${LOGS_DIR}/$(date +%Y-%m-%d).log"
    TIMESTAMP=$(date -u +"%Y-%m-%dT%H:%M:%S%z")

    echo "${TIMESTAMP} [INFO] [cleanup-logs] Cleanup executed - deleted: ${DELETED_COUNT} logs, freed: ${SIZE_HUMAN}" >> "$LOG_FILE"
fi

exit 0
