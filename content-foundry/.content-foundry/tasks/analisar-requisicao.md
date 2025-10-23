# Task: Analisar Requisição do Founder

**Usado por:** Orchestrator (Carlos)
**Objetivo:** Entender o que o founder quer e determinar qual agente/workflow usar

---

## Inputs

- Mensagem/requisição do founder
- brain.md (se existir)
- config.yaml
- Contexto da conversa

---

## Processo de Análise

### 1. IDENTIFICAR TIPO DE REQUISIÇÃO

Classificar a requisição em uma destas categorias:

#### A. Criação de Conteúdo
- "quero criar um post"
- "preciso de conteúdo para LinkedIn"
- "fazer um carrossel"
- **→ Rotear para Writer apropriado**

#### B. Planejamento/Estratégia
- "planejar conteúdo do mês"
- "criar calendário editorial"
- "o que postar esta semana?"
- **→ Rotear para Content Strategist**

#### C. Onboarding/Configuração
- "começar do zero"
- "brain.md não existe"
- "primeiro uso"
- **→ Rotear para workflow ONBOARDING**

#### D. Atualização do Cérebro
- "quero atualizar meu brain"
- "adicionar novas histórias"
- "mudou meu posicionamento"
- **→ Rotear para Elicitation Expert**

#### E. Análise/Validação
- "validar este post"
- "este conteúdo está autêntico?"
- "calcular voice score"
- **→ Rotear para Voice Validator**

#### F. Otimização
- "reaproveitar este conteúdo"
- "adaptar para Instagram"
- "melhorar engajamento"
- **→ Rotear para Repurposing/Optimization**

#### G. Ajuda/Navegação
- "o que você faz?"
- "como funciona?"
- "me mostre os comandos"
- **→ Executar *ajuda ou *status**

#### H. Ambígua/Incerta
- Não está claro o que founder quer
- **→ Pedir esclarecimento**

---

### 2. VERIFICAR CONTEXTO NECESSÁRIO

Antes de rotear, verificar se temos contexto suficiente:

#### ✅ brain.md existe?
- **SIM** → Pode prosseguir com produção
- **NÃO** → Sugerir onboarding primeiro

#### ✅ Canal especificado?
- **SIM** → Rotear para writer específico
- **NÃO** → Perguntar qual canal

#### ✅ Tópico/ideia clara?
- **SIM** → Pode iniciar produção
- **NÃO** → Pedir mais detalhes

---

### 3. CONSULTAR REGISTRIES

#### agent-registry.yaml
Verificar:
- Qual agente tem `quando-usar` que match a requisição
- Status do agente (`active` vs `planned`)
- Se agente está disponível no MVP atual

#### workflow-registry.yaml
Verificar:
- Se existe workflow específico para esta necessidade
- Duração estimada do workflow
- Dependências do workflow

---

### 4. DETERMINAR ROTA

Com base na análise, decidir:

**A. Rota Direta (Agente Único)**
```
Requisição → Agente Específico → Output
Exemplo: "criar post LinkedIn" → linkedin-writer
```

**B. Rota Workflow (Multi-Agente)**
```
Requisição → Workflow → Múltiplos Agentes → Output
Exemplo: "começar do zero" → workflow onboarding → Elena + Ana
```

**C. Rota Esclarecimento**
```
Requisição Ambígua → Pergunta → Nova Análise
Exemplo: "criar conteúdo" → "Para qual canal?"
```

**D. Rota Negação**
```
Requisição Inválida → Explicação + Sugestão
Exemplo: "gerar 100 posts" → "Nosso lote max é 10, sugiro workflow producao-lote"
```

---

## Outputs

Retornar para o Orchestrator:

```yaml
analise:
  tipo: criacao-conteudo | planejamento | onboarding | atualizacao | validacao | otimizacao | ajuda | ambigua

  rota:
    tipo: agente | workflow | esclarecimento | negacao
    destino: {id-do-agente} | {id-do-workflow} | null

  contexto:
    brain-existe: true | false
    canal: linkedin | instagram | youtube | newsletter | null
    topico: "descrição do tópico" | null

  confianca: 0.0-1.0  # Quão confiante é esta análise

  sugestoes:
    - "Sugestão 1"
    - "Sugestão 2"

  avisos:
    - "Aviso importante se houver"
```

---

## Exemplos

### Exemplo 1: Requisição Clara
**Input:** "criar um post para LinkedIn sobre liderança"

**Output:**
```yaml
analise:
  tipo: criacao-conteudo
  rota:
    tipo: agente
    destino: linkedin-writer
  contexto:
    brain-existe: true
    canal: linkedin
    topico: "liderança"
  confianca: 0.95
```

### Exemplo 2: Onboarding Necessário
**Input:** "quero começar a criar conteúdo"

**Output:**
```yaml
analise:
  tipo: onboarding
  rota:
    tipo: workflow
    destino: onboarding
  contexto:
    brain-existe: false
    canal: null
    topico: null
  confianca: 1.0
  avisos:
    - "brain.md não existe - onboarding necessário"
```

### Exemplo 3: Ambígua
**Input:** "me ajuda com isso"

**Output:**
```yaml
analise:
  tipo: ambigua
  rota:
    tipo: esclarecimento
    destino: null
  contexto:
    brain-existe: true
    canal: null
    topico: null
  confianca: 0.2
  sugestoes:
    - "Pode me dar mais detalhes sobre o que precisa?"
    - "Quer criar conteúdo, planejar, ou atualizar seu cérebro?"
```

---

## Notas

- Esta task é executada **sempre** que founder faz requisição
- É a primeira camada de inteligência do sistema
- Quanto melhor a análise, melhor o roteamento
- Se confiança < 0.7, considerar pedir esclarecimento
