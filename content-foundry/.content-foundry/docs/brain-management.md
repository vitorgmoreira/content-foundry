# Gerenciamento do Brain.md

**Versão:** 1.0.0
**Última Atualização:** 2025-10-22
**Owner:** system

---

## Visão Geral

O `brain.md` é o arquivo mais importante do Content Foundry. Contém a essência digital do founder: voz, valores, histórias, pilares. Precisa ser tratado com cuidado especial.

**Localização:** `/docs/brain.md`

**Características:**
- Formato híbrido (YAML frontmatter + Markdown body)
- Tamanho típico: 3000-5000 palavras
- Confidencialidade: PRIVADO
- Versão inicial: 1.0.0 (criado durante onboarding)

---

## Permissões e Segurança

### File Permissions

**Recomendação:** `chmod 600`

```bash
# Configurar permissões corretas
chmod 600 docs/brain.md

# Verificar permissões
ls -la docs/brain.md
# Output esperado: -rw------- (apenas owner lê/escreve)
```

**Rationale:**
- Brain.md contém informações privadas e sensíveis
- Histórias pessoais, valores, tópicos a evitar
- Não deve ser acessível por outros usuários do sistema

### .gitignore

**IMPORTANTE:** Brain.md real NUNCA deve ser commitado em repositório.

```gitignore
# .gitignore
docs/brain.md
docs/brain-*.md
!docs/brain-template.md  # Template pode ser compartilhado
.content-foundry/backups/brain-*.md
```

**O que PODE ser compartilhado:**
- ✅ brain-template.md (template vazio)
- ✅ brain-schema.yaml (schema formal)
- ✅ brain-v1.0-example.md (exemplo fictício)

**O que NUNCA deve ser compartilhado:**
- ❌ brain.md (arquivo real do founder)
- ❌ Backups do brain.md
- ❌ Rascunhos ou versões intermediárias

---

## Backup Automático

### Estratégia de Backup

**Quando fazer backup:**
- ✅ Antes de cada atualização maior (novos pilares, mudança de tom)
- ✅ Após cada execução do workflow de onboarding
- ✅ Mensalmente (rotina automática)
- ✅ Antes de refactoring significativo

**Onde guardar:**
- Localização: `.content-foundry/backups/`
- Naming: `brain-v{VERSION}-{TIMESTAMP}.md`
- Retenção: 90 dias

### Script de Backup

```bash
#!/bin/bash
# backup-brain.sh
# Cria backup do brain.md com timestamp

BRAIN_FILE="docs/brain.md"
BACKUP_DIR=".content-foundry/backups"
TIMESTAMP=$(date +"%Y%m%d-%H%M%S")

# Extrair versão do brain.md
VERSION=$(grep "versao:" $BRAIN_FILE | head -1 | awk '{print $2}' | tr -d '"')

# Criar diretório de backup se não existir
mkdir -p $BACKUP_DIR

# Nome do backup
BACKUP_FILE="$BACKUP_DIR/brain-v${VERSION}-${TIMESTAMP}.md"

# Criar backup
cp $BRAIN_FILE $BACKUP_FILE

echo "✅ Backup criado: $BACKUP_FILE"

# Limpar backups antigos (>90 dias)
find $BACKUP_DIR -name "brain-v*.md" -mtime +90 -delete
echo "✅ Backups antigos (>90 dias) removidos"
```

**Como usar:**

```bash
# Tornar script executável
chmod +x .content-foundry/scripts/backup-brain.sh

# Executar backup
./.content-foundry/scripts/backup-brain.sh

# Output esperado:
# ✅ Backup criado: .content-foundry/backups/brain-v1.0.0-20251022-143045.md
# ✅ Backups antigos (>90 dias) removidos
```

### Restaurar de Backup

```bash
#!/bin/bash
# restore-brain.sh
# Restaura brain.md de um backup específico

if [ -z "$1" ]; then
  echo "❌ Uso: ./restore-brain.sh <backup-file>"
  echo "Exemplo: ./restore-brain.sh brain-v1.0.0-20251022-143045.md"
  exit 1
fi

BACKUP_FILE=".content-foundry/backups/$1"
BRAIN_FILE="docs/brain.md"

if [ ! -f "$BACKUP_FILE" ]; then
  echo "❌ Backup não encontrado: $BACKUP_FILE"
  exit 1
fi

# Criar backup do estado atual antes de restaurar
./content-foundry/scripts/backup-brain.sh

# Restaurar
cp $BACKUP_FILE $BRAIN_FILE
echo "✅ Brain.md restaurado de: $BACKUP_FILE"
```

---

## Versionamento

### Semantic Versioning

Brain.md segue versionamento semântico:

**Formato:** `MAJOR.MINOR.PATCH`

**Quando fazer bump:**

- **MAJOR** (1.0.0 → 2.0.0):
  - Mudança significativa de voz ou tom
  - Revisão completa de pilares
  - Founder passa por transformação profunda

- **MINOR** (1.0.0 → 1.1.0):
  - Novos pilares adicionados
  - Novas histórias capturadas
  - Expansão de safe mode ou valores

- **PATCH** (1.0.0 → 1.0.1):
  - Correções de typos
  - Clarificação de histórias existentes
  - Pequenos ajustes de tom

**Exemplo:**

```yaml
metadata:
  versao: "1.2.3"  # MAJOR.MINOR.PATCH
  # 1 = Versão inicial
  # 2 = Adicionou 2 novos pilares
  # 3 = Corrigiu typo em história
```

### Changelog Interno

Manter registro de mudanças na seção "Notas de Atualização":

```markdown
## Changelog

### v1.2.0 - 2025-11-15
- Adicionado pilar "Sales para Founders Técnicos"
- 3 novas histórias sobre processo de vendas
- Atualizado safe mode (evitar comparação com concorrentes)

### v1.1.0 - 2025-10-30
- Expandido seção de voz com 5 novos exemplos
- Adicionado valores "Data-driven decision making"

### v1.0.0 - 2025-10-22
- Versão inicial criada durante onboarding
```

---

## Atualização do Brain.md

### Quando Atualizar

✅ **Deve atualizar quando:**
- Founder passa por experiência significativa (nova conquista, nova falha)
- Tom de voz muda (founder fica mais direto/casual/formal)
- Novos pilares emergem (founder domina novo tema)
- Safe mode muda (tópicos que antes evitava, agora aborda)
- Valores evoluem (prioridades mudam)

❌ **Não precisa atualizar quando:**
- Apenas criou novo post (brain.md é relativamente estável)
- Mudanças cosméticas (typos, formatação)
- Feedback pontual de um conteúdo específico

### Workflow de Atualização

**Método 1: Workflow Dedicado (Recomendado)**

```bash
/cf-workflow atualizar-brain
```

- Elena conduz atualização estruturada
- Identifica o que mudou desde última versão
- Captura novas histórias ou mudanças de tom
- Beatriz valida autenticidade
- Gera nova versão com bump adequado

**Método 2: Edição Manual**

1. **Criar backup:**
   ```bash
   ./.content-foundry/scripts/backup-brain.sh
   ```

2. **Editar brain.md:**
   - Atualizar seções relevantes
   - Incrementar versão no metadata
   - Documentar mudanças em "Notas de Atualização"

3. **Validar sintaxe YAML:**
   ```bash
   yamllint docs/brain.md
   ```

4. **Validar autenticidade (Beatriz):**
   ```bash
   /cf-chamar-agente voice-validator
   *validar-voz docs/brain.md
   ```

5. **Commit das mudanças:**
   - Atualizar `ultima_atualizacao` no metadata
   - Salvar arquivo

---

## Validação Contínua

### Validação de Sintaxe

**YAML Lint:**

```bash
# Instalar yamllint (se não tiver)
pip install yamllint

# Validar brain.md
yamllint docs/brain.md

# Output esperado se válido:
# (sem output = OK)

# Output se inválido:
# docs/brain.md
#   12:5      error    syntax error: expected <block end>, but found '-'
```

**Configuração `.yamllint`:**

```yaml
extends: default

rules:
  line-length:
    max: 120
    level: warning

  document-start:
    present: true

  truthy:
    allowed-values: ['true', 'false', 'yes', 'no']
```

### Validação de Completude

**Checklist mínimo:**

```bash
#!/bin/bash
# validate-brain-completeness.sh

BRAIN_FILE="docs/brain.md"

echo "Validando completude do brain.md..."

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
  echo "✅ Todas seções obrigatórias presentes"
else
  echo "❌ Seções faltando:"
  for section in "${MISSING[@]}"; do
    echo "  - $section"
  done
  exit 1
fi

# Verificar mínimos
WORD_COUNT=$(wc -w < $BRAIN_FILE)
HISTORIAS=$(grep -c "^  - id:" $BRAIN_FILE)
PILARES=$(grep -c "^  - nome:" $BRAIN_FILE | tail -1)

echo ""
echo "Estatísticas:"
echo "  - Palavras: $WORD_COUNT (mínimo: 500)"
echo "  - Histórias: $HISTORIAS (mínimo: 5)"
echo "  - Pilares: $PILARES (mínimo: 3)"

if [ $WORD_COUNT -lt 500 ]; then
  echo "❌ Brain.md muito curto (mínimo 500 palavras)"
  exit 1
fi

if [ $HISTORIAS -lt 5 ]; then
  echo "❌ Poucas histórias (mínimo 5)"
  exit 1
fi

if [ $PILARES -lt 3 ]; then
  echo "❌ Poucos pilares (mínimo 3)"
  exit 1
fi

echo ""
echo "✅ Brain.md validado com sucesso"
```

### Validação de Autenticidade

**Via Beatriz (Voice Validator):**

```bash
# Ativar Beatriz
/cf-chamar-agente voice-validator

# Validar brain.md completo
*validar-voz docs/brain.md

# Output esperado:
# 🎯 Validação de Autenticidade
#
# Arquivo: docs/brain.md
# Score: 9.2/10 ✅ APROVADO
#
# Breakdown:
#   1. Vocabulário: 1.0 ✅
#   2. Tom: 1.0 ✅
#   3. Estrutura: 0.9 ✅
#   ...
```

---

## Troubleshooting

### Problema 1: YAML Inválido

**Sintoma:**
```
yamllint docs/brain.md
docs/brain.md
  23:5      error    syntax error
```

**Solução:**
1. Identificar linha 23
2. Verificar indentação (usar espaços, não tabs)
3. Verificar aspas (strings com `:` devem estar entre aspas)
4. Verificar listas (devem começar com `- `)

### Problema 2: Brain.md Muito Curto

**Sintoma:**
```
❌ Brain.md muito curto (mínimo 500 palavras)
```

**Solução:**
1. Executar workflow `atualizar-brain` com Elena
2. Capturar mais histórias (mínimo 5-10)
3. Expandir descrição de pilares
4. Adicionar mais exemplos de voz

### Problema 3: Pilares Sem Base

**Sintoma:**
```
❌ Pilar "Liderança" não tem histórias relacionadas
```

**Solução:**
1. Adicionar histórias reais que demonstram liderança
2. OU remover pilar (se não tem experiência real)
3. Pilares devem ser baseados em experiência, não aspiração

---

## Best Practices

### DO ✅

- **Fazer backup antes de cada atualização**
- **Usar chmod 600 para permissões**
- **Adicionar brain.md ao .gitignore**
- **Validar YAML após cada edição**
- **Documentar mudanças em Notas de Atualização**
- **Usar workflow `atualizar-brain` para mudanças maiores**
- **Manter voice fidelity alta (palavras exatas do founder)**

### DON'T ❌

- **NUNCA commitar brain.md real em repositório público**
- **NUNCA compartilhar brain.md sem permissão do founder**
- **NUNCA editar manualmente sem backup**
- **NUNCA usar tabs (sempre espaços no YAML)**
- **NUNCA adicionar pilares aspiracionais (sem base em experiência)**
- **NUNCA mudar tom/voz sem validação com Beatriz**

---

## Comandos Úteis

```bash
# Criar backup
./.content-foundry/scripts/backup-brain.sh

# Validar YAML
yamllint docs/brain.md

# Validar completude
./.content-foundry/scripts/validate-brain-completeness.sh

# Contar palavras
wc -w docs/brain.md

# Ver última modificação
ls -la docs/brain.md

# Ver versão atual
grep "versao:" docs/brain.md | head -1

# Listar backups disponíveis
ls -lt .content-foundry/backups/brain-v*.md

# Restaurar backup
./.content-foundry/scripts/restore-brain.sh brain-v1.0.0-20251022-143045.md
```

---

## Integração com Workflows

### Workflow #1: Onboarding

- **Quando:** Primeira criação do brain.md
- **Output:** brain.md v1.0.0
- **Backup:** Automático ao final do workflow
- **Permissions:** chmod 600 aplicado automaticamente

### Workflow #2: Atualizar Brain (Planejado)

- **Quando:** Atualização de brain existente
- **Process:** Elena identifica mudanças → captura novos dados → Beatriz valida
- **Output:** brain.md v1.X.0
- **Backup:** Criado antes de iniciar atualização

### Workflow #3: Criar Conteúdo

- **Quando:** Geração de posts/artigos
- **Uso:** Brain.md é carregado 100% em contexto (deep mode)
- **Read-only:** Não modifica brain.md
- **Validation:** Beatriz compara output com brain.md

---

## Monitoramento

### Métricas do Brain.md

**Rastrear no `state.yaml`:**

```yaml
brain:
  versao_atual: "1.2.3"
  criado_em: "2025-10-22T14:30:00Z"
  ultima_atualizacao: "2025-11-15T10:20:00Z"

  estatisticas:
    total_palavras: 4250
    total_historias: 9
    total_pilares: 4
    total_backups: 5

  qualidade:
    voice_fidelity: "alta"
    completude: 100
    ultima_validacao: "2025-11-15T10:25:00Z"
    score_validacao: 9.3
```

---

## Notas Finais

**Filosofia:**

> Brain.md é o coração do Content Foundry. Trate com cuidado,
> faça backup sempre, valide constantemente, nunca exponha.

**Lembrete:**

- Brain.md evolui com o founder
- Não é documento estático - deve crescer
- Autenticidade > Quantidade de conteúdo
- Palavras exatas do founder > Paráfrase polida

---

**Versão:** 1.0.0
**Próxima Revisão:** Após feedback de uso real
**Mantido por:** system (Carlos + Elena + Beatriz)
