#!/bin/bash
# validate-brain-completeness.sh
# Valida completude do brain.md
#
# Versão: 1.0.0
# Última Atualização: 2025-10-22

set -e  # Exit on error

# Cores para output
GREEN='\033[0;32m'
RED='\033[0;31m'
YELLOW='\033[1;33m'
NC='\033[0m' # No Color

BRAIN_FILE="docs/brain.md"

echo "Validando completude do brain.md..."
echo ""

# Verificar se brain.md existe
if [ ! -f "$BRAIN_FILE" ]; then
  echo -e "${RED}❌ Brain.md não encontrado: $BRAIN_FILE${NC}"
  exit 1
fi

# Verificar seções obrigatórias
REQUIRED_SECTIONS=(
  "metadata:"
  "founder:"
  "historias:"
  "voz:"
  "safe_mode:"
  "pilares:"
  "emocao_desejada:"
)

MISSING=()

for section in "${REQUIRED_SECTIONS[@]}"; do
  if ! grep -q "^$section" $BRAIN_FILE; then
    MISSING+=("$section")
  fi
done

if [ ${#MISSING[@]} -eq 0 ]; then
  echo -e "${GREEN}✅ Todas seções obrigatórias presentes${NC}"
else
  echo -e "${RED}❌ Seções faltando:${NC}"
  for section in "${MISSING[@]}"; do
    echo "  - $section"
  done
  exit 1
fi

# Verificar mínimos
WORD_COUNT=$(wc -w < $BRAIN_FILE)
HISTORIAS=$(grep -c "^  - id:" $BRAIN_FILE || echo "0")
# Contar pilares (seção pilares tem "- nome:")
PILARES=$(grep "^  - nome:" $BRAIN_FILE | wc -l || echo "0")

echo ""
echo "Estatísticas:"
echo "  - Palavras: $WORD_COUNT (mínimo: 500)"
echo "  - Histórias: $HISTORIAS (mínimo: 5)"
echo "  - Pilares: $PILARES (mínimo: 3)"

FAILED=0

if [ $WORD_COUNT -lt 500 ]; then
  echo -e "${RED}❌ Brain.md muito curto (mínimo 500 palavras)${NC}"
  FAILED=1
fi

if [ $HISTORIAS -lt 5 ]; then
  echo -e "${RED}❌ Poucas histórias (mínimo 5)${NC}"
  FAILED=1
fi

if [ $PILARES -lt 3 ]; then
  echo -e "${RED}❌ Poucos pilares (mínimo 3)${NC}"
  FAILED=1
fi

if [ $FAILED -eq 1 ]; then
  exit 1
fi

echo ""
echo -e "${GREEN}✅ Brain.md validado com sucesso${NC}"
