#!/bin/bash
# backup-brain.sh
# Cria backup do brain.md com timestamp
#
# Versão: 1.0.0
# Última Atualização: 2025-10-22

set -e  # Exit on error

# Cores para output
GREEN='\033[0;32m'
RED='\033[0;31m'
NC='\033[0m' # No Color

BRAIN_FILE="docs/brain.md"
BACKUP_DIR=".content-foundry/backups"
TIMESTAMP=$(date +"%Y%m%d-%H%M%S")

# Verificar se brain.md existe
if [ ! -f "$BRAIN_FILE" ]; then
  echo -e "${RED}❌ Brain.md não encontrado: $BRAIN_FILE${NC}"
  exit 1
fi

# Extrair versão do brain.md
VERSION=$(grep "versao:" $BRAIN_FILE | head -1 | awk '{print $2}' | tr -d '"')

if [ -z "$VERSION" ]; then
  echo -e "${RED}❌ Não foi possível extrair versão do brain.md${NC}"
  exit 1
fi

# Criar diretório de backup se não existir
mkdir -p $BACKUP_DIR

# Nome do backup
BACKUP_FILE="$BACKUP_DIR/brain-v${VERSION}-${TIMESTAMP}.md"

# Criar backup
cp $BRAIN_FILE $BACKUP_FILE

echo -e "${GREEN}✅ Backup criado: $BACKUP_FILE${NC}"

# Limpar backups antigos (>90 dias)
OLD_BACKUPS=$(find $BACKUP_DIR -name "brain-v*.md" -mtime +90)

if [ -n "$OLD_BACKUPS" ]; then
  find $BACKUP_DIR -name "brain-v*.md" -mtime +90 -delete
  echo -e "${GREEN}✅ Backups antigos (>90 dias) removidos${NC}"
else
  echo "ℹ️  Nenhum backup antigo para remover"
fi

# Estatísticas
TOTAL_BACKUPS=$(ls -1 $BACKUP_DIR/brain-v*.md 2>/dev/null | wc -l)
echo "ℹ️  Total de backups: $TOTAL_BACKUPS"
