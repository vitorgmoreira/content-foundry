#!/bin/bash
# restore-brain.sh
# Restaura brain.md de um backup específico
#
# Versão: 1.0.0
# Última Atualização: 2025-10-22

set -e  # Exit on error

# Cores para output
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

# Verificar argumentos
if [ -z "$1" ]; then
  echo -e "${RED}❌ Uso: ./restore-brain.sh <backup-file>${NC}"
  echo ""
  echo "Exemplo: ./restore-brain.sh brain-v1.0.0-20251022-143045.md"
  echo ""
  echo "Backups disponíveis:"
  ls -1t .content-foundry/backups/brain-v*.md 2>/dev/null | head -5 || echo "  (nenhum backup encontrado)"
  exit 1
fi

BACKUP_FILE=".content-foundry/backups/$1"
BRAIN_FILE="docs/brain.md"

# Verificar se backup existe
if [ ! -f "$BACKUP_FILE" ]; then
  echo -e "${RED}❌ Backup não encontrado: $BACKUP_FILE${NC}"
  echo ""
  echo "Backups disponíveis:"
  ls -1t .content-foundry/backups/brain-v*.md 2>/dev/null | head -5 || echo "  (nenhum backup encontrado)"
  exit 1
fi

# Verificar se brain.md atual existe
if [ -f "$BRAIN_FILE" ]; then
  echo -e "${YELLOW}⚠️  Brain.md atual será substituído!${NC}"
  echo ""

  # Mostrar info do backup
  echo "Backup que será restaurado:"
  echo "  Arquivo: $BACKUP_FILE"
  echo "  Tamanho: $(wc -w < $BACKUP_FILE) palavras"
  echo "  Modificado: $(stat -f "%Sm" -t "%Y-%m-%d %H:%M:%S" $BACKUP_FILE)"
  echo ""

  # Mostrar info do brain.md atual
  echo "Brain.md atual (que será substituído):"
  echo "  Arquivo: $BRAIN_FILE"
  echo "  Tamanho: $(wc -w < $BRAIN_FILE) palavras"
  echo "  Modificado: $(stat -f "%Sm" -t "%Y-%m-%d %H:%M:%S" $BRAIN_FILE)"
  echo ""

  # Pedir confirmação
  read -p "Deseja continuar? (y/n): " -n 1 -r
  echo

  if [[ ! $REPLY =~ ^[Yy]$ ]]; then
    echo "❌ Operação cancelada"
    exit 1
  fi

  # Criar backup do estado atual antes de restaurar
  echo ""
  echo "Criando backup do estado atual..."
  ./.content-foundry/scripts/backup-brain.sh
fi

# Restaurar
echo ""
echo "Restaurando..."
cp $BACKUP_FILE $BRAIN_FILE

echo -e "${GREEN}✅ Brain.md restaurado de: $BACKUP_FILE${NC}"

# Extrair versão restaurada
RESTORED_VERSION=$(grep "versao:" $BRAIN_FILE | head -1 | awk '{print $2}' | tr -d '"')
echo "ℹ️  Versão restaurada: $RESTORED_VERSION"
