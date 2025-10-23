# Task: Validar Sistema

**Usado por:** Orchestrator (Carlos) via comando `*validar-sistema`
**Objetivo:** Verificar se sistema está configurado corretamente

---

## Overview

Esta task executa validações de sanidade para garantir que:
- Estrutura de diretórios existe
- Arquivos críticos estão presentes
- Configurações estão válidas
- Sistema está pronto para usar

---

## Validações

### 1. ESTRUTURA DE DIRETÓRIOS

Verificar se diretórios existem:

```bash
# Core directories
✅ .content-foundry/
✅ .content-foundry/agents/
✅ .content-foundry/workflows/
✅ .content-foundry/tasks/
✅ .content-foundry/templates/
✅ .content-foundry/data/
✅ .content-foundry/checklists/

# Foundry directories
✅ .foundry/
✅ .foundry/logs/
✅ .foundry/backups/
✅ .foundry/state/

# Docs directories
✅ docs/
✅ docs/architecture/
✅ docs/content/
✅ docs/content/linkedin/
✅ docs/content/instagram/
```

**Output:**
- ✅ "Estrutura de diretórios: OK (30/30 dirs)"
- ❌ "Estrutura de diretórios: FALHOU (25/30 dirs) - faltam: [lista]"

---

### 2. ARQUIVOS CRÍTICOS

Verificar se arquivos obrigatórios existem:

#### Config Files
```bash
✅ .content-foundry/config.yaml        # Configuração principal
✅ .content-foundry/agents/orchestrator.md  # Orchestrator
✅ .content-foundry/data/agent-registry.yaml
✅ .content-foundry/data/workflow-registry.yaml
```

#### Protection Files
```bash
✅ .gitignore                          # Proteção de dados sensíveis
✅ setup-permissions.sh                # Script de permissões
```

#### Brain (Opcional no início)
```bash
⚠️  docs/brain.md                     # Pode não existir (onboarding pendente)
```

**Output:**
- ✅ "Arquivos críticos: OK (5/5)"
- ❌ "Arquivos críticos: FALHOU - faltam: [lista]"
- ⚠️  "brain.md não existe - execute workflow onboarding"

---

### 3. VALIDAÇÃO DE CONFIG.YAML

Verificar se config.yaml é válido:

#### A. Sintaxe YAML
```python
import yaml
try:
    with open('.content-foundry/config.yaml') as f:
        config = yaml.safe_load(f)
    print("✅ YAML syntax: VALID")
except:
    print("❌ YAML syntax: INVALID")
```

#### B. Campos Obrigatórios
```yaml
Required fields:
  ✅ projeto.nome
  ✅ projeto.versao
  ✅ projeto.founder.nome
  ✅ configuracoes.deep-mode.enabled
  ✅ configuracoes.voice-validation-threshold
  ✅ canais (pelo menos 1)
  ✅ logging.enabled
```

#### C. Valores Válidos
```python
Validações:
  ✅ voice-validation-threshold: 0.0 <= x <= 10.0
  ✅ projeto.versao: formato semver (1.0.0)
  ✅ logging.level: DEBUG | INFO | WARN | ERROR
  ✅ projeto.ambiente: development | production
```

**Output:**
- ✅ "config.yaml: VÁLIDO"
- ❌ "config.yaml: INVÁLIDO - [lista de erros]"

---

### 4. VALIDAÇÃO DE AGENT-REGISTRY

Verificar se agent-registry.yaml está correto:

```yaml
Validações:
  ✅ Todos os agentes têm campo 'id'
  ✅ Todos os agentes têm campo 'nome'
  ✅ Todos os agentes têm campo 'categoria'
  ✅ Pelo menos 1 agente tem status 'active'
  ✅ orchestrator está presente e ativo
  ✅ Total de agentes >= 1
```

**Output:**
- ✅ "agent-registry.yaml: VÁLIDO (20 agentes, 6 ativos)"
- ❌ "agent-registry.yaml: INVÁLIDO - [erros]"

---

### 5. VALIDAÇÃO DE WORKFLOW-REGISTRY

Verificar se workflow-registry.yaml está correto:

```yaml
Validações:
  ✅ Todos os workflows têm campo 'id'
  ✅ Todos os workflows têm campo 'nome'
  ✅ Todos os workflows têm campo 'agentes-envolvidos'
  ✅ Pelo menos 1 workflow disponível
  ✅ workflow 'onboarding' existe
```

**Output:**
- ✅ "workflow-registry.yaml: VÁLIDO (9 workflows, 3 jornadas)"
- ❌ "workflow-registry.yaml: INVÁLIDO - [erros]"

---

### 6. VALIDAÇÃO DE PERMISSÕES

Verificar permissões de arquivos sensíveis:

```bash
# Brain (se existir)
✅ docs/brain.md: 600 (rw-------)
❌ docs/brain.md: 644 (rw-r--r--) - INSEGURO!

# Foundry directory
✅ .foundry/: 700 (drwx------)
❌ .foundry/: 755 (drwxr-xr-x) - INSEGURO!
```

**Output:**
- ✅ "Permissões: SEGURAS"
- ❌ "Permissões: INSEGURAS - execute setup-permissions.sh"

---

### 7. VALIDAÇÃO DE .gitignore

Verificar se dados sensíveis estão protegidos:

```bash
Protections required:
  ✅ docs/brain.md
  ✅ docs/insights-journal.md
  ✅ docs/calendar.md
  ✅ docs/content/*
  ✅ .foundry/*
```

**Test:**
```bash
# Verificar se arquivos seriam ignorados
git check-ignore docs/brain.md
# Should return: docs/brain.md
```

**Output:**
- ✅ "Proteção .gitignore: OK (5/5 patterns)"
- ❌ "Proteção .gitignore: FALHOU - faltam: [lista]"

---

### 8. VALIDAÇÃO DE AGENTES ATIVOS

Verificar se agentes declarados ativos realmente existem:

```python
# Ler agentes ativos do config.yaml
config.agentes.active:
  - orchestrator
  - elicitation-expert
  - linkedin-writer
  - instagram-creator
  - voice-validator
  - brand-guardian

# Verificar se arquivos .md existem
for agente in active:
    file = f".content-foundry/agents/{agente}.md"
    if exists(file):
        print(f"✅ {agente}")
    else:
        print(f"❌ {agente} - FALTANDO")
```

**Output:**
- ✅ "Agentes ativos: OK (6/6 implementados)"
- ⚠️  "Agentes ativos: PARCIAL (4/6 implementados) - faltam: [lista]"

---

## Output Completo

Após executar todas as validações:

```yaml
validacao-sistema:
  timestamp: 2025-10-22T14:30:00Z

  resultados:
    estrutura-diretorios: ✅ OK (30/30)
    arquivos-criticos: ✅ OK (5/5)
    config-yaml: ✅ VALIDO
    agent-registry: ✅ VALIDO (20 agentes, 6 ativos)
    workflow-registry: ✅ VALIDO (9 workflows)
    permissoes: ✅ SEGURAS
    gitignore: ✅ OK (5/5)
    agentes-ativos: ⚠️  PARCIAL (4/6)
    brain-md: ⚠️  NAO EXISTE (onboarding pendente)

  status-geral: OPERATIONAL  # OPERATIONAL | DEGRADED | BROKEN

  avisos:
    - "brain.md não existe - execute workflow onboarding"
    - "2 agentes ativos não implementados: elicitation-expert, brand-guardian"

  erros: []

  proximos-passos:
    - "Execute *workflow onboarding para criar brain.md"
    - "Sistema está pronto para uso básico"
```

---

## Formato de Apresentação

Quando founder executar `*validar-sistema`, mostrar:

```
🔍 VALIDAÇÃO DO SISTEMA
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

ESTRUTURA
✅ Diretórios: 30/30
✅ Arquivos críticos: 5/5

CONFIGURAÇÃO
✅ config.yaml: VÁLIDO
✅ agent-registry.yaml: VÁLIDO (20 agentes)
✅ workflow-registry.yaml: VÁLIDO (9 workflows)

SEGURANÇA
✅ Permissões: SEGURAS
✅ .gitignore: 5/5 protections

IMPLEMENTAÇÃO
⚠️  Agentes ativos: 4/6 implementados
⚠️  brain.md: NÃO EXISTE

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

STATUS: 🟡 OPERATIONAL (com avisos)

PRÓXIMOS PASSOS:
1. Execute *workflow onboarding para criar brain.md
2. Implemente agentes pendentes (opcional)
3. Sistema está pronto para uso básico

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
```

---

## Uso

```bash
# Founder executa validação
*validar-sistema

# Orchestrator carrega esta task
# Executa todas as validações
# Retorna relatório formatado
```

---

## Notas

- Execute esta validação após setup inicial
- Execute periodicamente para verificar integridade
- Se status = BROKEN, sistema não deve operar
- Se status = DEGRADED, funcionalidades limitadas
- Se status = OPERATIONAL, sistema pronto
