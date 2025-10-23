# Workflow #3: Produção Express (Post Único)

**Versão:** 1.1.0
**Data:** 2025-10-22
**Stories:** 03.016, 04.021
**Última Atualização:** 2025-10-22 (Integração Ana)

---

## Metadados

```yaml
workflow:
  id: "producao-express"
  nome: "Produção Express (Post Único)"
  numero: 3
  categoria: "producao"
  versao: "1.0.0"

  descricao: |
    Workflow rápido para criação de 1 post LinkedIn do início ao fim.
    Integra elicitação, geração, validação e quality gates em 15-20 minutos.

  quando_usar:
    - "Criar post LinkedIn rapidamente (< 20 min)"
    - "Founder tem tópico em mente e quer transformar em post"
    - "Precisa de post para publicar hoje/amanhã"
    - "Workflow end-to-end supervisionado"

  quando_nao_usar:
    - "Criar múltiplos posts em batch (usar Workflow #4)"
    - "Post requer pesquisa extensa (usar workflow manual)"
    - "Founder não tem tópico claro (fazer elicitação separada)"

  duracao_estimada: "15-20 min"
  duracao_por_step:
    step_1: "2 min"
    step_2: "8-10 min"
    step_3: "2 min"
    step_4: "3-5 min"

  agentes_envolvidos:
    - id: "orchestrator"
      nome: "Carlos"
      papel: "Coordena workflow, pergunta canal/tópico"

    - id: "linkedin-writer"
      nome: "Lucas"
      papel: "Elicita contexto, gera 3 variações"

    - id: "voice-validator"
      nome: "Beatriz"
      papel: "Valida voz (threshold 8.5)"

    - id: "brand-guardian"
      nome: "Ana"
      papel: "Aplica quality gates (5 layers) e brand alignment"
      nota: "✅ Implementado em Story 04.019"

  outputs:
    primario: "docs/content/linkedin/YYYY-MM-DD-{slug}.md"
    secundarios:
      - ".content-foundry/logs/workflow-03-TIMESTAMP.log"
      - ".content-foundry/state.yaml (atualizado)"

  comando: "/cf-workflow producao-express"
```

---

## Pré-Requisitos

Antes de executar este workflow, certifique-se que:

### Requisitos Técnicos
- [x] Brain.md existe e está completo (versão >= 1.0)
- [x] Lucas (linkedin-writer) está implementado
- [x] Beatriz (voice-validator) está implementada
- [x] Ana (brand-guardian) está implementada
- [x] Quality gates (pronto-para-publicar-linkedin.md) estão implementados
- [x] Brand alignment checklist (brand-alignment-checklist.md) existe
- [x] Template (linkedin-post.yaml) existe

### Requisitos do Founder
- [x] Founder tem tópico ou tema em mente
- [x] Founder tem ~20 minutos disponíveis
- [x] Founder está disposto a responder 4-6 perguntas (elicitação)

### Estado do Sistema
- [x] `.content-foundry/state.yaml` existe
- [x] Diretório `docs/content/linkedin/` existe
- [x] Diretório `.content-foundry/logs/` existe

Se qualquer pré-requisito falha, workflow deve parar e retornar mensagem de erro clara.

---

## Visão Geral do Workflow

```
┌─────────────────────────────────────────────────────────────┐
│ Workflow #3: Produção Express (Post Único)                  │
│ Duração: 15-20 min                                          │
└─────────────────────────────────────────────────────────────┘

┌─────────────────────────────────────────────────────────────┐
│ Step 1: Inicialização (2 min)                               │
│ Agente: Carlos (Orchestrator)                               │
│                                                              │
│ Carlos pergunta:                                            │
│ • Canal (LinkedIn assumido)                                 │
│ • Tópico/tema do post                                       │
│                                                              │
│ Output: Tópico confirmado                                   │
└─────────────────────────────────────────────────────────────┘
                          ↓
┌─────────────────────────────────────────────────────────────┐
│ Step 2: Geração (8-10 min)                                  │
│ Agente: Lucas (LinkedIn Writer)                             │
│                                                              │
│ 2.1 Elicitar Contexto (3 min)                               │
│     Lucas faz 4 perguntas:                                  │
│     • Contexto específico                                   │
│     • Ângulo/narrativa                                      │
│     • CTA desejado                                          │
│     • Pilar relacionado                                     │
│                                                              │
│ 2.2 Carregar Brain.md (1 min)                               │
│     Deep Mode: 100% brain.md                                │
│                                                              │
│ 2.3 Gerar 3 Variações (4-6 min)                             │
│     • Variação A: Direta e Factual                          │
│     • Variação B: Storytelling Completo                     │
│     • Variação C: Provocativa                               │
│                                                              │
│ Output: 3 variações de post (800-1300 caracteres cada)      │
└─────────────────────────────────────────────────────────────┘
                          ↓
┌─────────────────────────────────────────────────────────────┐
│ Step 3: Validação de Voz (2 min)                            │
│ Agente: Beatriz (Voice Validator)                           │
│                                                              │
│ Para cada variação:                                         │
│ • Validar 10 critérios                                      │
│ • Gerar voice score (0-10)                                  │
│ • Se >= 8.5: aprovada                                       │
│ • Se < 8.5: feedback + refinar                              │
│                                                              │
│ Output: Variação com voice score >= 8.5                     │
└─────────────────────────────────────────────────────────────┘
                          ↓
┌─────────────────────────────────────────────────────────────┐
│ Step 4: Quality Gates e Salvamento (3-5 min)                │
│ Agente: Ana (Brand Guardian) - MANUAL por enquanto          │
│                                                              │
│ 4.1 Aplicar 5 Quality Gates (2-3 min)                       │
│     • Gate 1: Structure                                     │
│     • Gate 2: Length                                        │
│     • Gate 3: Authenticity                                  │
│     • Gate 4: Brand Alignment                               │
│     • Gate 5: Editorial                                     │
│                                                              │
│ 4.2 Decisão (1 min)                                         │
│     • Se TODOS passam: aprovar                              │
│     • Se QUALQUER falha: rejeitar + feedback                │
│                                                              │
│ 4.3 Salvar Post Aprovado (1 min)                            │
│     • Gerar filename: YYYY-MM-DD-{slug}.md                  │
│     • Salvar em docs/content/linkedin/                      │
│     • Atualizar state.yaml                                  │
│     • Gerar log de sucesso                                  │
│                                                              │
│ Output: Post salvo pronto para publicação                   │
└─────────────────────────────────────────────────────────────┘
                          ↓
                  ✅ Post Pronto!
```

---

## Step 1: Inicialização (2 min)

### Responsável
**Carlos (Orchestrator)** - `.content-foundry/agents/orchestrator.md`

### Objetivo
Confirmar canal e elicitar tópico/tema do post.

### Processo

#### 1.1 Carregar Contexto
Carlos carrega:
- Brain.md (seção pilares para sugerir tópicos alinhados)
- State.yaml (histórico de posts recentes para evitar repetição)

#### 1.2 Perguntar Canal
Carlos pergunta:
> "Qual canal de conteúdo? (LinkedIn assumido, pressione Enter ou digite outro)"

**Validação:**
- Se Enter ou "LinkedIn" → prosseguir
- Se outro canal → informar que workflow atual é específico para LinkedIn

#### 1.3 Elicitar Tópico
Carlos pergunta:
> "Qual tópico ou tema você quer abordar neste post?"

**Validação:**
- Tópico deve ter >= 3 palavras (não vago demais)
- Verificar alinhamento com pilares (sugerir pilar se identificável)
- Verificar se não foi abordado recentemente (últimos 7 dias)

**Exemplos de tópicos válidos:**
- "Como reduzi churn de 15% para 5%"
- "Por que a maioria das startups não deveria levantar funding"
- "3 sinais de product-market fit que você está ignorando"

**Exemplos de tópicos inválidos:**
- "SaaS" (muito vago)
- "Empreendedorismo" (genérico demais)

### Output do Step 1
```yaml
step_1_output:
  canal: "linkedin"
  topico: "[tópico fornecido pelo founder]"
  pilar_relacionado: "[pilar identificado ou null]"
  timestamp: "2025-10-22T14:30:00Z"
```

### Duração
**2 minutos**

### Possíveis Erros
- **Erro 1.1:** Tópico muito vago
  - Feedback: "Tópico '[tópico]' é muito vago. Seja mais específico (ex: 'Como reduzi churn de 15% para 5%')"
  - Ação: Pedir novo tópico

- **Erro 1.2:** Tópico abordado recentemente
  - Feedback: "Você publicou sobre '[tópico similar]' há [X] dias. Quer continuar mesmo assim?"
  - Ação: Confirmar com founder

---

## Step 2: Geração (8-10 min)

### Responsável
**Lucas (LinkedIn Writer)** - `.content-foundry/agents/linkedin-writer.md`

### Objetivo
Elicitar contexto, carregar brain.md e gerar 3 variações de post.

### Processo

#### 2.1 Elicitar Contexto (3 min)

Lucas executa task `gerar-post-linkedin.md` → **Step 1: Elicitar Tópico e Contexto**

**4 Perguntas:**

**Pergunta 1: Contexto Específico**
> "Qual o contexto específico desse tópico?
> (ex: situação vivida, problema que resolveu, insight que teve)"

**Exemplo de resposta:**
"Tinha 47 clientes em 2019, 15 cancelaram em 6 meses (churn 32%). Conversei com cada um que cancelou."

---

**Pergunta 2: Ângulo/Narrativa**
> "Qual ângulo você quer dar a esse post?
> (ex: lição aprendida, erro admitido, provocação, framework)"

**Opções:**
- [ ] Lição aprendida (compartilhar aprendizado)
- [ ] Erro admitido (vulnerabilidade)
- [ ] Provocação (desafiar crença comum)
- [ ] Framework/processo (ensinar método)
- [ ] História completa (setup → ação → resultado)

---

**Pergunta 3: CTA Desejado**
> "Qual CTA você quer no final?
> (ex: pergunta aberta, convite à conversa, reflexão)"

**Opções:**
- [ ] Pergunta aberta ("Qual foi seu maior erro ao escalar CS?")
- [ ] Convite à conversa ("Se você já passou por isso, comenta aí")
- [ ] Reflexão ("Às vezes a melhor aquisição é não perder quem já está dentro")
- [ ] Outro: [especificar]

---

**Pergunta 4: Pilar Relacionado**
> "Qual pilar de conteúdo este post relaciona?
> (baseado em brain.md)"

**Opções (de brain.md):**
- [ ] Pilar 1: [nome do pilar]
- [ ] Pilar 2: [nome do pilar]
- [ ] Pilar 3: [nome do pilar]
- [ ] Não tenho certeza (Lucas sugere)

---

#### 2.2 Carregar Brain.md (1 min)

Lucas carrega **100% brain.md** (Deep Mode):
- Perfil do founder
- Histórias formativas
- Voz e tom
- Pilares de conteúdo
- Valores e crenças
- Safe mode
- Vocabulário característico

**Validação:**
- Brain.md deve existir e ter versão >= 1.0
- Brain.md deve ter >= 80% completude (validar com checklist)

---

#### 2.3 Gerar 3 Variações (4-6 min)

Lucas executa task `gerar-post-linkedin.md` → **Step 3: Gerar 3 Variações de Post**

Usando template `linkedin-post.yaml` e contexto de brain.md, Lucas gera:

**Variação A: Direta e Factual**
- Estrutura: Gancho direto → 3-4 pontos principais → CTA
- Tom: Objetivo, sem rodeios, baseado em dados
- Comprimento: 800-1100 caracteres
- Adequado para: Frameworks, listas, insights práticos

**Variação B: Storytelling Completo**
- Estrutura: Gancho → Contexto → Ação → Resultado → Insight → CTA
- Tom: Narrativo, vulnerável, detalhado
- Comprimento: 1000-1300 caracteres
- Adequado para: Lições aprendidas, erros admitidos, jornadas

**Variação C: Provocativa**
- Estrutura: Gancho polêmico → Justificativa → Experiência → Conclusão → CTA desafiador
- Tom: Opinativo, desafia status quo, ousado
- Comprimento: 900-1200 caracteres
- Adequado para: Provocações, opiniões contra-corrente, debates

**Para cada variação:**
- Seguir estrutura de `linkedin-post.yaml`
- Garantir comprimento 800-1300 caracteres
- Usar vocabulário e tom de brain.md
- Zero chavões de IA/coach
- Incluir dados/detalhes específicos

### Output do Step 2
```yaml
step_2_output:
  contexto_elicitado:
    contexto_especifico: "[resposta pergunta 1]"
    angulo: "[resposta pergunta 2]"
    cta_desejado: "[resposta pergunta 3]"
    pilar_relacionado: "[resposta pergunta 4]"

  variacoes_geradas:
    - id: "variacao_a"
      tipo: "Direta e Factual"
      comprimento: [X] # caracteres
      conteudo: "[post completo]"

    - id: "variacao_b"
      tipo: "Storytelling Completo"
      comprimento: [Y] # caracteres
      conteudo: "[post completo]"

    - id: "variacao_c"
      tipo: "Provocativa"
      comprimento: [Z] # caracteres
      conteudo: "[post completo]"

  timestamp: "2025-10-22T14:40:00Z"
```

### Duração
**8-10 minutos**

### Possíveis Erros
- **Erro 2.1:** Brain.md não existe ou incompleto
  - Feedback: "Brain.md não encontrado ou < 80% completo. Execute Workflow #1 (Onboarding) primeiro."
  - Ação: Parar workflow

- **Erro 2.2:** Variação gerada < 800 ou > 1300 caracteres
  - Ação: Refinar automaticamente até atingir range

- **Erro 2.3:** Variação contém chavões
  - Ação: Re-gerar substituindo chavões por expressões genuínas

---

## Step 3: Validação de Voz (2 min)

### Responsável
**Beatriz (Voice Validator)** - `.content-foundry/agents/voice-validator.md`

### Objetivo
Validar que ao menos 1 variação tem voice score >= 8.5

### Processo

#### 3.1 Validar Cada Variação

Para cada uma das 3 variações, Beatriz valida **10 critérios**:

1. **Vocabulário** (0-10): Alinhado com brain.md?
2. **Tom** (0-10): Consistente com founder?
3. **Estrutura** (0-10): Similar aos exemplos de brain.md?
4. **Chavões IA** (0-10): Zero chavões detectados?
5. **Especificidade** (0-10): Dados/contexto/detalhes presentes?
6. **Histórias** (0-10): Usa histórias quando apropriado?
7. **Valores** (0-10): Reflete valores do founder?
8. **Safe Mode** (0-10): Respeita tópicos a evitar?
9. **Pilares** (0-10): Alinhado com pilares?
10. **Emoção** (0-10): Emoção genuína (vulnerabilidade, humor, frustração)?

**Voice Score = média dos 10 critérios**

#### 3.2 Threshold 8.5

**Se voice score >= 8.5:**
- Variação aprovada
- Marcar como "pronta para quality gates"

**Se voice score < 8.5:**
- Gerar feedback específico por critério
- Sugerir refinamentos
- Re-gerar variação (máximo 2 tentativas)

#### 3.3 Selecionar Melhor Variação

Após validar as 3, Beatriz identifica:
- **Melhor voice score**
- **Melhor alinhamento com brain.md**
- **Melhor fit com ângulo escolhido pelo founder**

Se founder preferir, pode escolher manualmente entre as aprovadas.

### Output do Step 3
```yaml
step_3_output:
  variacoes_validadas:
    - id: "variacao_a"
      voice_score: [X.X]
      status: "aprovada" | "rejeitada"
      criterios: [10 scores individuais]

    - id: "variacao_b"
      voice_score: [Y.Y]
      status: "aprovada" | "rejeitada"
      criterios: [10 scores individuais]

    - id: "variacao_c"
      voice_score: [Z.Z]
      status: "aprovada" | "rejeitada"
      criterios: [10 scores individuais]

  variacao_selecionada: "variacao_b" # melhor score
  voice_score_final: [Y.Y]

  timestamp: "2025-10-22T14:50:00Z"
```

### Duração
**2 minutos**

### Possíveis Erros
- **Erro 3.1:** Nenhuma variação atinge 8.5 após 2 tentativas
  - Feedback: "Nenhuma variação atingiu threshold 8.5. Problemas: [listar]"
  - Opções:
    - A) Voltar para Step 2 e re-gerar com feedback
    - B) Revisar brain.md (pode estar incompleto)
    - C) Cancelar workflow

---

## Step 4: Quality Gates e Salvamento (3-5 min)

### Responsável
**Ana (Brand Guardian)** - `.content-foundry/agents/brand-guardian.md`

### Objetivo
Aplicar 5 quality gates + brand alignment (4 critérios), aprovar/rejeitar post, salvar se aprovado.

### Processo

#### 4.1 Aplicar Quality Gates (2-3 min)

Ana executa checklist `pronto-para-publicar-linkedin.md` sequencialmente:

**Gate 1: Structure (4 critérios)**
- [ ] 1.1 Gancho presente e impactante
- [ ] 1.2 Corpo estruturado (3-8 parágrafos, cada um <= 4 linhas)
- [ ] 1.3 CTA conversacional presente
- [ ] 1.4 Formatação LinkedIn-friendly

**Gate 2: Length (2 critérios)**
- [ ] 2.1 >= 800 caracteres
- [ ] 2.2 <= 1300 caracteres

**Gate 3: Authenticity (3 critérios)**
- [ ] 3.1 Voice score >= 8.5 (já validado no Step 3)
- [ ] 3.2 Zero chavões
- [ ] 3.3 Específico (dados, contexto, detalhes)

**Gate 4: Brand Alignment (2 critérios)**
- [ ] 4.1 Alinhado com >= 1 pilar
- [ ] 4.2 Reflete valores do founder

**Nota sobre Gate 4:** Ana executa validação adicional de brand alignment usando `brand-alignment-checklist.md` com 4 critérios detalhados:
- Pilar Alignment (30%): Score >= 7.0/10
- Valores Alignment (25%): Score >= 7.0/10, zero contradições
- Safe Mode Compliance (30%): Zero tolerance (score = 10.0 ou 0.0)
- Brand Consistency (15%): Score >= 8.0/10

Score final de brand alignment: >= 8.0/10 para aprovação.

**Gate 5: Editorial (3 critérios)**
- [ ] 5.1 Safe mode respeitado
- [ ] 5.2 Sem erros de português
- [ ] 5.3 Tom profissional mas conversacional

**Total: 14 critérios - TODOS devem passar (100%)**

---

#### 4.2 Decisão (1 min)

**Se TODOS os 14 critérios passam (100%):**
- Post APROVADO
- Prosseguir para 4.3 (Salvamento)

**Se QUALQUER critério falha:**
- Post REJEITADO
- Gerar relatório de feedback:
```
❌ POST REJEITADO - Revisão Necessária

Quality Gates:
[✅/❌] Gate 1: Structure ([X]/4)
[✅/❌] Gate 2: Length ([X]/2)
[✅/❌] Gate 3: Authenticity ([X]/3)
[✅/❌] Gate 4: Brand Alignment ([X]/2)
[✅/❌] Gate 5: Editorial ([X]/3)

Total: [X]/14 critérios ([X]%)

PROBLEMAS IDENTIFICADOS:
[Feedback específico de cada gate que falhou]

OPÇÕES:
A) Refinar post manualmente e re-executar Step 4
B) Voltar para Step 2 (gerar novas variações)
C) Voltar para Step 1 (escolher novo tópico)
D) Cancelar workflow
```

---

#### 4.3 Salvar Post Aprovado (1 min)

Se aprovado, Ana executa:

**4.3.1 Gerar Filename**
- Formato: `YYYY-MM-DD-{slug}.md`
- Slug: primeiras 4-6 palavras do título, lowercase, hífens
- Exemplo: `2025-10-22-reduzi-churn-15-para-5.md`

**4.3.2 Criar Arquivo com Frontmatter**
```markdown
---
titulo: "[título do post]"
data_criacao: "2025-10-22T14:55:00Z"
canal: "linkedin"
pilar: "[pilar relacionado]"
topico: "[tópico do Step 1]"

validacao:
  voice_score: [X.X]
  voice_validator: "Beatriz"
  data_validacao: "2025-10-22T14:50:00Z"

quality_gates:
  estrutura: "pass"
  comprimento: "pass"
  autenticidade: "pass"
  brand_alignment: "pass"
  editorial: "pass"
  total: "14/14 (100%)"

status: "pronto-para-publicar"
publicado: false
data_publicacao: null
url_linkedin: null

workflow:
  id: "producao-express"
  versao: "1.0.0"
  duracao_total: "[X] min"

metadata:
  versao: "1.0.0"
  criado_por: "Lucas (LinkedIn Writer)"
  validado_por: "Beatriz (Voice Validator)"
  aprovado_por: "Ana (Brand Guardian)"
---

[CONTEÚDO DO POST]

---

## Notas de Produção

**Contexto Elicitado:**
- Contexto específico: [resposta pergunta 1]
- Ângulo: [resposta pergunta 2]
- CTA desejado: [resposta pergunta 3]

**Variação Escolhida:** [A/B/C - tipo]

**Voice Score Breakdown:**
[10 critérios com scores individuais]
```

**4.3.3 Salvar em docs/content/linkedin/**
- Path: `docs/content/linkedin/YYYY-MM-DD-{slug}.md`
- Permissões: 644 (owner read/write, group/others read)

**4.3.4 Atualizar State**
Atualizar `.content-foundry/state.yaml`:
```yaml
state:
  last_workflow:
    id: "producao-express"
    timestamp: "2025-10-22T14:55:00Z"
    output: "docs/content/linkedin/2025-10-22-{slug}.md"
    status: "success"

  posts_recentes:
    - filename: "2025-10-22-{slug}.md"
      topico: "[tópico]"
      pilar: "[pilar]"
      data: "2025-10-22"
      status: "pronto-para-publicar"
```

**4.3.5 Gerar Log de Sucesso**
Salvar em `.content-foundry/logs/workflow-03-TIMESTAMP.log`:
```
=== Workflow #3: Produção Express ===
Data: 2025-10-22T14:55:00Z
Status: SUCCESS

Step 1: Inicialização
- Canal: linkedin
- Tópico: [tópico]
- Duração: 2 min

Step 2: Geração
- Contexto elicitado: OK
- Brain.md carregado: 100%
- Variações geradas: 3
- Duração: 9 min

Step 3: Validação de Voz
- Variação A: 8.3/10 (rejeitada)
- Variação B: 8.7/10 (aprovada) ✅
- Variação C: 8.5/10 (aprovada)
- Selecionada: Variação B
- Duração: 2 min

Step 4: Quality Gates
- Gate 1: Structure (4/4) ✅
- Gate 2: Length (2/2) ✅
- Gate 3: Authenticity (3/3) ✅
- Gate 4: Brand Alignment (2/2) ✅
- Gate 5: Editorial (3/3) ✅
- Total: 14/14 (100%) ✅
- Duração: 4 min

Output:
- Arquivo: docs/content/linkedin/2025-10-22-{slug}.md
- Status: pronto-para-publicar
- Comprimento: [X] caracteres
- Voice score: 8.7/10

Duração Total: 17 min ✅ (dentro do target 15-20 min)

=== FIM ===
```

### Output do Step 4
```yaml
step_4_output:
  quality_gates:
    gate_1_structure: "pass" (4/4)
    gate_2_length: "pass" (2/2)
    gate_3_authenticity: "pass" (3/3)
    gate_4_brand_alignment: "pass" (2/2)
    gate_5_editorial: "pass" (3/3)
    total: "pass" (14/14 - 100%)

  decisao: "aprovado"

  post_salvo:
    filename: "2025-10-22-{slug}.md"
    path: "docs/content/linkedin/2025-10-22-{slug}.md"
    status: "pronto-para-publicar"
    comprimento: [X] # caracteres
    voice_score: [X.X]

  state_atualizado: true
  log_gerado: ".content-foundry/logs/workflow-03-TIMESTAMP.log"

  timestamp: "2025-10-22T14:55:00Z"
```

### Duração
**3-5 minutos**

### Possíveis Erros
- **Erro 4.1:** Quality gates falharam
  - Ver seção 4.2 (Decisão) para feedback e opções

- **Erro 4.2:** Falha ao salvar arquivo
  - Feedback: "Erro ao salvar post: [erro específico]"
  - Possíveis causas: permissões, diretório não existe
  - Ação: Verificar permissões e diretórios, tentar novamente

---

## Resultado Final

### Sucesso ✅

Se workflow completa com sucesso:

```
✅ POST LINKEDIN CRIADO COM SUCESSO!

Título: [título do post]
Arquivo: docs/content/linkedin/2025-10-22-{slug}.md

Quality Gates: 14/14 (100%) ✅
Voice Score: [X.X]/10

Duração Total: [X] min

Status: Pronto para Publicar

PRÓXIMOS PASSOS:
1. Revisar post salvo
2. Copiar para LinkedIn (ou agendar)
3. Publicar
4. Marcar como publicado no frontmatter (publicado: true, url_linkedin: "...")

Arquivo salvo em: docs/content/linkedin/2025-10-22-{slug}.md
Log completo em: .content-foundry/logs/workflow-03-[TIMESTAMP].log
```

---

### Falha ❌

Se workflow falha em qualquer step:

```
❌ WORKFLOW FALHOU - [Nome do Step]

Erro: [descrição do erro]

OPÇÕES:
A) Tentar novamente (re-executar workflow)
B) Executar step individual que falhou
C) Revisar pré-requisitos (brain.md, agentes, etc)
D) Pedir ajuda (documentar erro em issue)

Log de erro salvo em: .content-foundry/logs/workflow-03-[TIMESTAMP]-error.log
```

---

## Métricas de Sucesso

Para considerar este workflow bem-sucedido:

### Métricas Obrigatórias
- [x] Post criado e salvo em `docs/content/linkedin/`
- [x] Voice score >= 8.5
- [x] Quality gates 14/14 (100%)
- [x] Duração <= 20 min
- [x] Zero erros críticos

### Métricas de Qualidade
- [x] Post alinhado com pilar (confirmado em Gate 4.1)
- [x] Post reflete valores (confirmado em Gate 4.2)
- [x] Safe mode respeitado (confirmado em Gate 5.1)
- [x] Zero chavões (confirmado em Gate 3.2)
- [x] Especificidade presente (confirmado em Gate 3.3)

### Métricas de Eficiência
- Duração target: 15-20 min
- Duração média esperada: 17 min
- Duração máxima aceitável: 25 min (com refinamentos)

---

## Troubleshooting

### Problema: Workflow demora > 20 min

**Causas possíveis:**
- Founder demora para responder perguntas de elicitação
- Brain.md incompleto (requer múltiplas tentativas para atingir voice 8.5)
- Quality gates falhando repetidamente

**Soluções:**
- Preparar respostas antes de iniciar workflow
- Completar brain.md adequadamente (Workflow #1)
- Escolher tópico mais alinhado com pilares

---

### Problema: Nenhuma variação atinge voice 8.5

**Causas possíveis:**
- Brain.md incompleto ou desatualizado
- Tópico muito genérico (dificulta especificidade)
- Tópico não alinhado com pilares/valores

**Soluções:**
- Revisar brain.md (seções: voz, histórias, valores)
- Escolher tópico mais específico
- Escolher tópico dentro dos pilares

---

### Problema: Quality gates sempre falham no mesmo gate

**Padrão 1: Sempre falha em Gate 1 (Structure)**
- Causa: Variações muito longas ou sem quebras de linha
- Solução: Revisar template linkedin-post.yaml, ajustar formatação

**Padrão 2: Sempre falha em Gate 3 (Authenticity)**
- Causa: Brain.md incompleto ou chavões não detectados na geração
- Solução: Atualizar brain.md, fortalecer anti-chavões no Lucas

**Padrão 3: Sempre falha em Gate 4 (Brand Alignment)**
- Causa: Tópicos não alinhados com pilares/valores
- Solução: Escolher tópicos dentro dos pilares definidos

**Padrão 4: Sempre falha em Gate 5 (Editorial)**
- Causa: Safe mode não respeitado ou erros de português
- Solução: Revisar safe mode em brain.md, adicionar spell-check

---

## Changelog

| Versão | Data | Mudanças | Autor |
|--------|------|----------|-------|
| 1.0.0 | 2025-10-22 | Workflow inicial criado com 4 steps sequenciais | dev-agent |
| 1.1.0 | 2025-10-22 | Integração com Ana (Brand Guardian) no Step 4 | dev-agent |

---

## Referências

**Agentes:**
- `.content-foundry/agents/orchestrator.md` (Carlos)
- `.content-foundry/agents/linkedin-writer.md` (Lucas)
- `.content-foundry/agents/voice-validator.md` (Beatriz)
- `.content-foundry/agents/brand-guardian.md` (Ana) ✅

**Tasks:**
- `.content-foundry/tasks/gerar-post-linkedin.md` (usado no Step 2)

**Checklists:**
- `.content-foundry/checklists/pronto-para-publicar-linkedin.md` (usado no Step 4)
- `.content-foundry/checklists/brand-alignment-checklist.md` (usado por Ana no Step 4)

**Data:**
- `.content-foundry/data/chavoes-ia.yaml` (usado por Beatriz)
- `.content-foundry/data/padroes-autenticidade.yaml` (usado por Beatriz)

**Templates:**
- `.content-foundry/templates/linkedin-post.yaml` (usado no Step 2)

**Outros Workflows:**
- `.content-foundry/workflows/01-onboarding.md` (Workflow #1)
- *Workflow #2 - não implementado ainda*

**Documentos:**
- `docs/brain.md` (carregado no Step 2)
- `.content-foundry/state.yaml` (atualizado no Step 4)
