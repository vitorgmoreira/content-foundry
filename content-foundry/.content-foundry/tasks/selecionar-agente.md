# Task: Selecionar Agente Apropriado

**Usado por:** Orchestrator (Carlos)
**Objetivo:** Escolher o agente certo para executar a tarefa do founder

---

## Inputs

- Análise da requisição (output de `analisar-requisicao.md`)
- agent-registry.yaml
- config.yaml (para verificar agentes ativos)

---

## Processo de Seleção

### 1. FILTRAR AGENTES DISPONÍVEIS

Consultar `agent-registry.yaml` e filtrar por:

#### ✅ Status Ativo
```yaml
# Verificar se agente está implementado
status: active    # ✅ Pode usar
status: planned   # ❌ Não disponível ainda
```

#### ✅ MVP Atual
```yaml
# Verificar lista de agentes ativos no MVP
agentes.active em config.yaml:
  - orchestrator
  - elicitation-expert
  - linkedin-writer
  - instagram-creator
  - voice-validator
  - brand-guardian
```

---

### 2. MATCH POR CATEGORIA

Usar a categoria da requisição para filtrar:

| Requisição | Categoria | Agentes Candidatos |
|------------|-----------|-------------------|
| Criar post LinkedIn | writer | linkedin-writer |
| Criar post Instagram | writer | instagram-feed-writer, instagram-carousel-creator |
| Fazer onboarding | estrategia | elicitation-expert |
| Validar autenticidade | qualidade | voice-validator |
| Planejar conteúdo | estrategia | content-strategist |
| Pesquisar trend | estrategia | research-analyst |

---

### 3. MATCH POR `quando-usar`

Ler campo `quando-usar` de cada agente candidato:

**Exemplo: linkedin-writer**
```yaml
quando-usar:
  - Criar posts LinkedIn
  - Gerar artigos longos LinkedIn
  - Criar carrosséis PDF
  - LinkedIn thought leadership
```

**Lógica:**
- Se requisição menciona "LinkedIn" → linkedin-writer é match
- Se requisição menciona "carrossel Instagram" → instagram-carousel-creator
- Se requisição menciona "validar" → voice-validator

---

### 4. VERIFICAR CAPACIDADES

Ler campo `capacidades` para garantir que agente pode executar:

**Exemplo: linkedin-writer**
```yaml
capacidades:
  - Posts LinkedIn (até 3000 chars)
  - Artigos longos (1500-2000 palavras)
  - Carrosséis (10 slides max)
  - Hook optimization
```

**Validar:**
- Se requisição pede "post longo" → verificar se writer suporta
- Se requisição pede "15 slides" → rejeitar (max 10)

---

### 5. REGRAS ESPECIAIS

#### Onboarding Obrigatório
```python
if not brain.md.exists():
    return elicitation-expert  # Forçar onboarding
```

#### Multi-Agente (Workflows)
```python
if requisicao.tipo == "producao-completa":
    return workflow.producao-express  # Envolve writer + validator + guardian
```

#### Delegação em Cadeia
```python
if requisicao.tipo == "criar-e-validar":
    return [linkedin-writer, voice-validator]  # Sequencial
```

---

### 6. FALLBACK BEHAVIOR

Se nenhum agente específico match:

#### A. Sugerir Alternativas
```
"Não tenho agente específico para isso, mas posso sugerir:
1. linkedin-writer para criar post LinkedIn
2. elicitation-expert para atualizar brain
3. content-strategist para planejamento"
```

#### B. Redirecionar para Workflow
```
"Para fazer isso, sugiro usar workflow 'producao-express'"
```

#### C. Informar Limitação
```
"Esta funcionalidade está planejada para v2.0.
Por enquanto, posso ajudar com [listar opções disponíveis]"
```

---

## Output

Retornar para Orchestrator:

```yaml
selecao:
  agente-primario:
    id: linkedin-writer
    nome: Lucas
    categoria: writer
    icone: 💼

  agentes-secundarios:  # Se workflow multi-agente
    - id: voice-validator
      nome: Beatriz
    - id: brand-guardian
      nome: Ana

  tipo-execucao: unico | sequencial | paralelo

  validacoes-necessarias:
    - brain-md-existe: true
    - canal-especificado: true
    - topico-claro: true

  avisos:
    - "Este agente irá gerar conteúdo de até 3000 caracteres"

  confianca: 0.0-1.0
```

---

## Matriz de Decisão

### Writers

| Se Requisição Contém | Então Selecionar |
|---------------------|------------------|
| "LinkedIn" + "post" | linkedin-writer |
| "LinkedIn" + "artigo" | linkedin-writer |
| "Instagram" + "feed" | instagram-feed-writer |
| "Instagram" + "carrossel" | instagram-carousel-creator |
| "Reels" ou "vídeo curto" | reels-script-writer |
| "Stories" | stories-strategist |
| "YouTube" | video-script-writer |
| "Newsletter" | newsletter-writer |

### Estratégia

| Se Requisição Contém | Então Selecionar |
|---------------------|------------------|
| "onboarding" ou "começar" | elicitation-expert |
| "planejar" ou "calendário" | content-strategist |
| "pesquisar" ou "trend" | research-analyst |
| "marca" ou "alinhamento" | brand-guardian |

### Qualidade

| Se Requisição Contém | Então Selecionar |
|---------------------|------------------|
| "validar" ou "autêntico" | voice-validator |
| "revisar" ou "corrigir" | editor-proofreader |

### Otimização

| Se Requisição Contém | Então Selecionar |
|---------------------|------------------|
| "reaproveitar" ou "adaptar" | repurposing-specialist |
| "SEO" | seo-optimizer |
| "engajamento" | engagement-optimizer |

---

## Exemplos

### Exemplo 1: Seleção Simples
**Input:** Requisição = "criar post LinkedIn sobre gestão"

**Output:**
```yaml
selecao:
  agente-primario:
    id: linkedin-writer
    nome: Lucas
    categoria: writer
  tipo-execucao: unico
  validacoes-necessarias:
    - brain-md-existe: true
  confianca: 0.98
```

### Exemplo 2: Workflow Multi-Agente
**Input:** Requisição = "criar e validar post"

**Output:**
```yaml
selecao:
  agente-primario:
    id: linkedin-writer
  agentes-secundarios:
    - voice-validator
    - brand-guardian
  tipo-execucao: sequencial
  confianca: 0.95
```

### Exemplo 3: Onboarding Forçado
**Input:** Requisição = "criar post" mas brain.md não existe

**Output:**
```yaml
selecao:
  agente-primario:
    id: elicitation-expert
  tipo-execucao: unico
  validacoes-necessarias:
    - brain-md-existe: false  # ❌
  avisos:
    - "brain.md não existe - onboarding necessário antes de criar conteúdo"
  confianca: 1.0
```

---

## Notas

- Sempre priorizar agentes com `status: active`
- Verificar `config.yaml` para lista de agentes disponíveis no MVP
- Se múltiplos agentes candidatos, escolher o mais específico
- Se dúvida, perguntar ao founder antes de rotear
- Nunca selecionar agente `planned` (não implementado)
