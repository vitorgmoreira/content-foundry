# Workflow #1: Onboarding Inicial

**Versão:** 1.0.0
**Última Atualização:** 2025-10-22
**Status:** Active

---

## Metadata

```yaml
workflow:
  id: onboarding
  nome: Onboarding Inicial do Founder
  descricao: |
    Processo completo de elicitação de conhecimento para criar brain.md v1.0.
    Envolve 3 fases de elicitação (Fundação, Aprofundamento, Refinamento)
    com validação inicial de autenticidade.

  duracao_estimada: 60-90min
  prioridade: CRÍTICA
  categoria: setup

  trigger:
    comando: /cf-workflow onboarding
    aliases:
      - /cf-onboarding
      - /iniciar-onboarding
    condicoes:
      - brain_vazio: true  # Só roda se brain.md não existir

  agentes_envolvidos:
    - id: orchestrator
      nome: Carlos
      papel: Apresentar sistema e coordenar workflow
    - id: elicitation-expert
      nome: Elena
      papel: Conduzir 3 fases de elicitação
    - id: voice-validator
      nome: Beatriz
      papel: Validar autenticidade inicial do brain.md

  outputs:
    - arquivo: docs/brain.md
      versao: 1.0.0
      descricao: Cérebro digital do founder (v1 inicial)

    - arquivo: docs/insights-journal.md
      versao: 1.0.0
      descricao: Journal de insights iniciado

    - arquivo: .content-foundry/state.yaml
      versao: 1.0.0
      descricao: State da primeira sessão
```

---

## Visão Geral

Este é o workflow mais importante do Content Foundry - é a primeira experiência do founder com o sistema. O objetivo é criar a versão inicial do `brain.md` através de um processo estruturado de elicitação.

**Filosofia:**
- **Humano, não robotizado**: Conversas profundas, não questionário
- **Sequencial, mas flexível**: Passos claros, mas permite pausas
- **Validado desde o início**: Beatriz valida já na v1.0

**Quando executar:**
- Primeiro uso do sistema (brain.md vazio)
- Recomeçar do zero (founder decidiu resetar)

**Quando NÃO executar:**
- Brain.md já existe (usar workflow "atualizar-brain" ao invés)
- Founder quer apenas criar conteúdo (precisa de brain primeiro)

---

## Passos do Workflow

### Step 1/5: Boas-vindas e Contexto (Carlos)

**Agente:** Orchestrator (Carlos)
**Duração:** 2-3 min
**Objetivo:** Apresentar sistema e preparar founder

**O que acontece:**

Carlos se apresenta e explica:
1. O que é Content Foundry
2. Por que brain.md é essencial
3. Como funciona o processo de onboarding (3 fases + validação)
4. Quanto tempo vai levar (60-90min, pode pausar)
5. Que tipo de perguntas serão feitas

**Script de Carlos:**

```
👨‍💼 Olá! Sou Carlos, o orchestrator do Content Foundry.

Bem-vindo ao seu sistema de produção de conteúdo AI-first.

Antes de começarmos a criar posts, artigos ou newsletters, precisamos
construir algo fundamental: seu cérebro digital.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

O QUE VAI ACONTECER AGORA?

Vou te conectar com Elena, nossa especialista em elicitação de conhecimento.
Ela vai te fazer perguntas profundas sobre:

• Sua jornada profissional e valores
• Histórias e experiências que te moldaram
• Seu tom de voz e estilo de comunicação
• Tópicos que você domina (pilares de conteúdo)
• Tópicos que você prefere evitar (safe mode)

O processo tem 3 fases:
1. Fundação (10-15min) - Quem você é
2. Aprofundamento (15-20min) - Suas histórias
3. Refinamento (10-15min) - Seu tom e pilares

Total: ~60-90 minutos

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

POR QUE ISSO É IMPORTANTE?

Cada palavra que o sistema gerar depois será baseada neste cérebro.
Quanto mais autêntico e profundo for agora, mais "você" o conteúdo vai soar.

Elena não vai julgar, não vai corrigir, não vai moldar você.
Ela vai DESCOBRIR quem você já é e capturar isso.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

PODE PAUSAR?

Sim! A qualquer momento você pode pausar e retomar depois.
Vamos salvar o progresso automaticamente.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Pronto para começar?

[Se SIM → transfere para Elena]
[Se NÃO → agenda sessão futura]
```

**Output deste passo:**
- Founder entende o processo
- Expectativas alinhadas
- Pronto mentalmente para elicitação profunda

**Checkpoint:**
- ✅ Founder confirmou que está pronto
- ✅ Tempo disponível confirmado (60-90min)
- ❌ Se não tiver tempo → agenda futura sessão

---

### Step 2/5: Fase 1 - Fundação (Elena)

**Agente:** Elicitation Expert (Elena)
**Duração:** 10-15 min
**Objetivo:** Capturar identidade fundamental do founder

**Dependência:** Task `elicitar-fundacao.md`

**O que acontece:**

Elena conduz a Fase 1 conforme documentado em `.content-foundry/tasks/elicitar-fundacao.md`:

1. **Bloco A - Jornada Profissional** (3-4 min)
   - "Me conta a história da sua trajetória profissional até aqui"
   - Captura: marcos, transições, escolhas

2. **Bloco B - Valores Core** (3-4 min)
   - "Quais são os 3-5 valores que guiam suas decisões profissionais?"
   - Captura: valores + como se manifestam

3. **Bloco C - Motivação** (2-3 min)
   - "Por que você decidiu criar conteúdo?"
   - Captura: razão profunda, não superficial

4. **Bloco D - Percepção Desejada** (2-3 min)
   - "Como você quer ser percebido pela sua audiência?"
   - Captura: identidade aspiracional mas realista

**Output YAML esperado:**

```yaml
perfil_fundamental:
  jornada_resumida: |
    {NARRATIVA_3-5_PARAGRAFOS}

  valores_core:
    - valor: {NOME_VALOR}
      descricao: {COMO_SE_MANIFESTA}
      exemplo: {SITUACAO_REAL}

  motivacao_conteudo:
    razao_profunda: |
      {POR_QUE_CRIAR_CONTEUDO}
    impacto_desejado: |
      {O_QUE_QUER_CAUSAR}

  percepcao_desejada:
    como_quer_ser_visto: |
      {IDENTIDADE}
    o_que_evitar: |
      {ESTEREOTIPOS_A_EVITAR}
```

**Checkpoint:**
- ✅ Jornada capturada com contexto
- ✅ 3-5 valores identificados
- ✅ Motivação profunda (não "porque sim")
- ✅ Percepção clara e específica
- ❌ Se respostas muito genéricas → Elena aprofunda

**Salvamento:**
- `.content-foundry/state.yaml` → progresso = fase1_completa
- Rascunho do brain.md salvo em `.content-foundry/drafts/`

---

### Step 3/5: Fase 2 - Aprofundamento (Elena)

**Agente:** Elicitation Expert (Elena)
**Duração:** 15-20 min
**Objetivo:** Capturar histórias formativas e padrões

**Dependência:** Task `elicitar-aprofundamento.md`

**O que acontece:**

Elena conduz a Fase 2 conforme documentado em `.content-foundry/tasks/elicitar-aprofundamento.md`:

1. **Histórias de Desafio** (3-4 min)
   - Momento em que enfrentou algo difícil
   - Captura: contexto + situação + resolução + insight

2. **Histórias de Falha** (3-4 min)
   - Erro que virou aprendizado
   - Captura: estrutura completa, honestidade

3. **Histórias de Conquista** (3-4 min)
   - Vitória significativa
   - Captura: não só "o que", mas "como" e "por que"

4. **Histórias de Influência** (2-3 min)
   - Pessoa/livro/experiência que mudou perspectiva
   - Captura: antes vs depois

5. **Histórias de Origem** (2-3 min)
   - Quando decidiu seguir este caminho
   - Captura: momento de virada

6. **Identificação de Padrões** (2-3 min)
   - Elena identifica temas recorrentes nas histórias
   - Valida com founder

**Output YAML esperado:**

```yaml
historias:
  - id: historia-01
    tipo: desafio | falha | conquista | influencia | perspectiva | origem
    titulo: {TITULO_CURTO}
    contexto: |
      {ANTES - Como as coisas estavam}
    situacao: |
      {DURANTE - O que aconteceu}
    resolucao: |
      {DEPOIS - Como resolveu ou o que mudou}
    insight: |
      {O_QUE_APRENDEU}
    tags:
      - {TAG1}
      - {TAG2}
    palavras_exatas:
      - "{FRASE_QUE_FOUNDER_FALOU}"

padroes_identificados:
  temas_recorrentes:
    - tema: {TEMA}
      aparece_em: [historia-01, historia-03]

  valores_manifestados:
    - valor: {VALOR}
      evidencia: "{TRECHO_DA_HISTORIA}"
```

**Checkpoint:**
- ✅ Pelo menos 5 histórias capturadas
- ✅ Histórias com estrutura completa (contexto + situação + resolução + insight)
- ✅ Palavras exatas do founder preservadas
- ✅ Padrões identificados e validados
- ❌ Se histórias muito superficiais → Elena aprofunda

**Salvamento:**
- `.content-foundry/state.yaml` → progresso = fase2_completa
- Rascunho do brain.md atualizado

---

### Step 4/5: Fase 3 - Refinamento (Elena)

**Agente:** Elicitation Expert (Elena)
**Duração:** 10-15 min
**Objetivo:** Capturar tom de voz, safe mode e pilares

**Dependência:** Task `elicitar-refinamento.md`

**O que acontece:**

Elena conduz a Fase 3 conforme documentado em `.content-foundry/tasks/elicitar-refinamento.md`:

1. **Bloco A - Tom de Voz** (3-4 min)
   - "Como você descreve seu estilo de comunicação?"
   - Exemplos de textos que founder gosta/não gosta
   - Captura: formal/casual, direto/reflexivo, etc

2. **Bloco B - Safe Mode** (2-3 min)
   - "Existem tópicos que você evita falar publicamente?"
   - Captura: tópicos + razão + nível (nunca vs geralmente-evita)

3. **Bloco C - Pilares de Conteúdo** (4-5 min)
   - "Quais são os 3-5 temas que você domina e quer falar?"
   - Para cada pilar: experiência real + autoridade
   - Validação: pilar tem história na Fase 2?

4. **Bloco D - Emoção Desejada** (2-3 min)
   - "Quando alguém lê seu conteúdo, o que você quer que sintam?"
   - Captura: emoção específica (não "inspirar", mas "esperança realista")

**Output YAML esperado:**

```yaml
voz:
  tom:
    estilo: {DESCRICAO}
    nivel_formalidade: formal | semi-formal | casual | muito-casual
    personalidade: {DIRETO | REFLEXIVO | PROVOCADOR | etc}

  estrutura_preferida:
    tamanho_frases: curtas | medias | longas | misto
    tamanho_paragrafos: {1-2 | 2-3 | 3-5} frases
    usa_bullets: sempre | frequente | raramente
    usa_numeros: sim | nao

  palavras_especificas:
    usa_sempre:
      - "{PALAVRA_OU_EXPRESSAO}"
    nunca_usa:
      - "{PALAVRA_A_EVITAR}"

  exemplos:
    texto_que_gosta: |
      {EXEMPLO_REAL}
    por_que_gosta: |
      {ANALISE}

safe_mode:
  topicos_evitar:
    - topico: {TOPICO}
      razao: {POR_QUE_EVITA}
      nivel: nunca | geralmente-evita
      alternativa: {SE_APARECER_O_QUE_FAZER}

pilares:
  - nome: {NOME_ESPECIFICO_DO_PILAR}
    descricao: |
      {O_QUE_E}
    experiencia: |
      {POR_QUE_TEM_AUTORIDADE}
    subtemas:
      - {SUBTEMA_1}
      - {SUBTEMA_2}
    historias_relacionadas: [historia-01, historia-03]

emocao_desejada:
  primaria: {EMOCAO_ESPECIFICA}
  descricao: |
    {COMO_SE_MANIFESTA}
```

**Validação Cruzada:**
- ✅ Pilares têm histórias reais (não aspiracionais)
- ✅ Tom de voz é consistente com histórias da Fase 2
- ✅ Safe mode é específico (não "política" mas "política partidária")
- ✅ Emoção é específica (não "inspirar" mas "esperança realista")

**Checkpoint:**
- ✅ Tom de voz bem definido
- ✅ Safe mode com 3+ tópicos específicos
- ✅ 3-5 pilares com autoridade comprovada
- ✅ Emoção desejada específica
- ❌ Se pilares sem histórias → Elena questiona autoridade

**Salvamento:**
- `.content-foundry/state.yaml` → progresso = fase3_completa
- Rascunho do brain.md atualizado
- **Brain.md v1.0 GERADO** → salvo em `docs/brain.md`

---

### Step 5/5: Validação Inicial (Beatriz)

**Agente:** Voice Validator (Beatriz)
**Duração:** 5-10 min
**Objetivo:** Validar autenticidade do brain.md v1.0

**Dependência:** Checklist `validacao-voz.md`

**O que acontece:**

Beatriz faz uma validação inicial do brain.md gerado:

1. **Validação de Completude** (2 min)
   - Todas as seções preenchidas?
   - Alguma seção muito genérica?

2. **Validação de Autenticidade** (3-4 min)
   - Palavras exatas do founder preservadas?
   - Histórias com contexto completo?
   - Pilares têm base em experiências reais?
   - Tom de voz específico (não genérico)?

3. **Score Inicial** (1-2 min)
   - Não usa os 10 critérios completos (é só validação inicial)
   - Foca em: completude, voice fidelity, pilares com base

**Output esperado:**

```yaml
validacao_inicial:
  data: {ISO8601}
  versao_brain: 1.0.0

  completude:
    status: completo | incompleto
    secoes_vazias: []
    secoes_genericas: []

  autenticidade:
    voice_fidelity: alta | media | baixa
    palavras_exatas_preservadas: sim | parcialmente | nao
    historias_completas: sim | nao
    pilares_com_base: sim | nao

  recomendacao:
    decisao: aprovar | revisar_antes_de_usar
    proximos_passos: |
      {O_QUE_FAZER}
```

**Possíveis Resultados:**

1. **Aprovado** → Brain v1.0 está pronto para uso
2. **Revisar** → Voltar para Elena corrigir seções específicas

**Checkpoint:**
- ✅ Brain.md v1.0 completo
- ✅ Voice fidelity alta
- ✅ Pilares com base em experiências
- ⚠️ Se autenticidade baixa → volta para Elena (raramente)

---

## Outputs Finais do Workflow

Ao final do Workflow #1, os seguintes arquivos serão criados:

### 1. docs/brain.md (v1.0.0)

**Localização:** `/docs/brain.md`
**Tamanho esperado:** 3000-5000 palavras
**Estrutura:**

```yaml
metadata:
  versao: 1.0.0
  criado_em: {ISO8601}
  ultima_atualizacao: {ISO8601}
  workflow: onboarding
  total_historias: 5-10

founder:
  # Saída da Fase 1
  jornada_resumida: |
  valores_core: []
  motivacao_conteudo: {}
  percepcao_desejada: {}

historias:
  # Saída da Fase 2
  - id: historia-01
    ...

voz:
  # Saída da Fase 3
  tom: {}
  estrutura_preferida: {}
  palavras_especificas: {}
  exemplos: []

safe_mode:
  topicos_evitar: []

pilares:
  - nome:
    ...

emocao_desejada: {}

validacao:
  # Saída da Beatriz
  validacao_inicial: {}
```

### 2. docs/insights-journal.md (iniciado)

**Localização:** `/docs/insights-journal.md`
**Propósito:** Capturar insights que surgiram durante onboarding

```markdown
# Insights Journal

**Iniciado em:** {DATE}

---

## Sessão de Onboarding (2025-10-22)

### Padrões Identificados

- {PADRAO_1}
- {PADRAO_2}

### Insights Chave

1. **{INSIGHT}**: {DESCRICAO}
2. **{INSIGHT}**: {DESCRICAO}

### Temas Recorrentes nas Histórias

- {TEMA}: Aparece em {HISTORIAS}

### Pilares Validados

- {PILAR}: Baseado em {EXPERIENCIA}

---

*Este journal será usado por writers e validators para entender profundamente o founder*
```

### 3. .content-foundry/state.yaml (primeira sessão)

**Localização:** `.content-foundry/state.yaml`
**Propósito:** Rastrear estado do sistema

```yaml
system:
  initialized: true
  brain_version: 1.0.0
  first_session: {ISO8601}
  last_session: {ISO8601}

onboarding:
  status: completed
  completed_at: {ISO8601}
  duration_minutes: {60-90}

  fases:
    fase1_fundacao:
      status: completed
      duration_minutes: {10-15}

    fase2_aprofundamento:
      status: completed
      duration_minutes: {15-20}
      historias_capturadas: {5-10}

    fase3_refinamento:
      status: completed
      duration_minutes: {10-15}
      pilares_definidos: {3-5}

  validacao_inicial:
    status: completed
    aprovado: true

workflows_executados:
  - id: onboarding
    executado_em: {ISO8601}
    duracao: {MINUTOS}
    resultado: sucesso
```

---

## Execução do Workflow

### Como Executar

```bash
# Método 1: Comando direto
/cf-workflow onboarding

# Método 2: Alias
/cf-onboarding

# Método 3: Via Claude Code
"Quero fazer o onboarding do Content Foundry"
```

### Pré-requisitos

✅ Content Foundry inicializado (estrutura de diretórios criada)
✅ Brain.md NÃO existe (se existir, usar workflow "atualizar-brain")
✅ Founder tem 60-90 minutos disponíveis
✅ Founder está mentalmente preparado para perguntas profundas

### Durante a Execução

**Progresso visível:**
```
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
WORKFLOW: Onboarding Inicial
PROGRESSO: Step 2/5 - Fase 1: Fundação
TEMPO DECORRIDO: 15 minutos
TEMPO ESTIMADO RESTANTE: 50-70 minutos
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
```

**Pausar workflow:**
```
/pausar-workflow
→ Salva progresso atual
→ Founder pode retomar depois com /retomar-workflow
```

**Cancelar workflow:**
```
/cancelar-workflow
→ Descarta progresso
→ Pode começar do zero depois
```

---

## Tratamento de Erros

### Erro 1: Brain.md já existe

**Mensagem:**
```
❌ Brain.md já existe!

O workflow de onboarding só deve ser executado na primeira vez.
Para atualizar seu brain.md existente, use:

/cf-workflow atualizar-brain
```

**Solução:** Usar workflow correto

---

### Erro 2: Founder não tem tempo suficiente

**Mensagem:**
```
⚠️  Este workflow leva 60-90 minutos.

Você tem tempo agora? Pode pausar no meio se precisar.

[Continuar] [Agendar para depois]
```

**Solução:** Agendar sessão futura

---

### Erro 3: Respostas muito genéricas

**Comportamento:**
Elena identifica respostas genéricas e aprofunda automaticamente:

```
Elena: "Você mencionou 'ser autêntico' como valor. Pode me dar um exemplo
       de uma situação específica onde você teve que escolher entre
       autenticidade e conveniência?"
```

**Solução:** Elena conduz para especificidade

---

### Erro 4: Pilares sem base em experiência

**Comportamento:**
Elena questiona pilares aspiracionais:

```
Elena: "Você mencionou 'liderança' como pilar. Conte uma história de quando
       você realmente exerceu liderança - uma situação real, com contexto
       completo."

→ Se founder não tem história → pilar é removido ou movido para "aspiracional"
```

**Solução:** Pilar deve ter base real

---

### Erro 5: Validação inicial falha

**Comportamento:**
Beatriz identifica problemas de autenticidade:

```
Beatriz: "Validação inicial identificou 3 problemas:

1. Seção 'valores' muito genérica
2. Histórias sem contexto completo
3. Pilares sem base em experiência

Recomendo voltar para Elena para aprofundar estas seções antes de
usar o brain.md para gerar conteúdo."
```

**Solução:** Voltar para Elena corrigir seções

---

## Mensagem Final (Sucesso)

Quando workflow completa com sucesso:

```
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

✅ ONBOARDING COMPLETO!

Seu cérebro digital foi criado com sucesso.

📄 ARQUIVOS CRIADOS:

• docs/brain.md (v1.0.0) - {TAMANHO}KB
• docs/insights-journal.md - Insights capturados
• .content-foundry/state.yaml - Sistema inicializado

📊 ESTATÍSTICAS:

• Histórias capturadas: {5-10}
• Pilares definidos: {3-5}
• Valores identificados: {3-5}
• Tópicos de safe mode: {3+}
• Duração total: {MINUTOS} minutos

✅ VALIDAÇÃO INICIAL: Aprovado por Beatriz
   Voice fidelity: Alta
   Completude: 100%

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

🎯 PRÓXIMOS PASSOS:

1. Revisar seu brain.md: /cf-revisar-brain
2. Criar seu primeiro post: /cf-criar-post
3. Explorar workflows: /cf-workflows

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Seu conteúdo agora será gerado com base neste cérebro.
Quanto mais autêntico ele for, mais "você" o conteúdo vai soar.

Bem-vindo ao Content Foundry! 🚀
```

---

## Métricas de Sucesso

### Métricas Quantitativas

- ✅ Workflow completa em 60-90 minutos
- ✅ Brain.md gerado com 3000-5000 palavras
- ✅ 5-10 histórias capturadas
- ✅ 3-5 pilares definidos
- ✅ 3+ tópicos de safe mode
- ✅ Validação inicial aprovada (autenticidade alta)

### Métricas Qualitativas

- ✅ Founder se sente ouvido e compreendido
- ✅ Histórias com contexto completo (não superficiais)
- ✅ Pilares baseados em experiência real
- ✅ Tom de voz específico (não genérico)
- ✅ Safe mode claro e específico
- ✅ Brain.md reflete autenticamente o founder

---

## Manutenção

**Quando atualizar este workflow:**
- Feedback de founders sobre processo
- Identificação de passos faltantes
- Melhorias nas tasks de elicitação
- Novos agentes envolvidos

**Versionamento:**
- v1.0.0 - Versão inicial (2025-10-22)
- Bumps em MAJOR quando passos mudam
- Bumps em MINOR quando melhorias são adicionadas
- Bumps em PATCH para correções

---

## Notas Finais

**Filosofia Core:**

> "O onboarding não é um questionário. É uma conversa estruturada que
> DESCOBRE quem o founder já é, não MOLDA quem ele deveria ser."

**Princípios:**

1. **Profundidade > Velocidade**: Melhor 90min profundo que 30min raso
2. **Autenticidade > Perfeição**: Brain "real e imperfeito" > "polido e genérico"
3. **Experiência > Aspiração**: Pilares devem ter base real, não wishful thinking
4. **Específico > Genérico**: "Esperança realista" > "inspirar"
5. **Humano > Robotizado**: Elena é curiosa, não interrogadora

**Diferencial deste Workflow:**

- Não é formulário, é descoberta guiada
- Elena aprofunda quando respostas são rasas
- Beatriz valida já na v1.0 (não espera conteúdo ser criado)
- State salvo automaticamente (pode pausar)
- Insights capturados em journal (não só em brain.md)

**Sucesso significa:**

Founder termina o onboarding e pensa: "Caramba, isso realmente capturou quem eu sou."

---

**Versão:** 1.0.0
**Próxima Revisão:** Após 10 execuções ou feedback de founders
**Mantido por:** orchestrator (Carlos)
