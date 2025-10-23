## 🧠 FASE 2.4: ARQUITETURA DO CÉREBRO DIGITAL

### Visão Geral

O **Cérebro Digital** (`docs/brain.md`) é o coração do Content Foundry. É um arquivo híbrido (YAML frontmatter + Markdown) que captura a essência, voz, histórias e contexto do founder.

**Propósito:**
- Armazenar "DNA do founder" (voz, tom, valores, histórias)
- Ser consultado por TODOS os agentes antes de gerar conteúdo
- Evoluir com o tempo conforme founder evolui
- Garantir autenticidade e consistência

**Localização:** `docs/brain.md`

**Características:**
- Humano-editável (founder pode revisar/editar diretamente)
- Estruturado (YAML validável)
- Versionado (git)
- Incremental (começa simples, se aprofunda com o tempo)

---

### Schema Completo do brain.md

**Estrutura de 3 camadas:**

1. **Camada 1: Metadados (YAML frontmatter)** - Dados estruturados, consultáveis
2. **Camada 2: Conteúdo Narrativo (Markdown)** - Histórias, crenças, metodologias em texto livre
3. **Camada 3: Aprendizados Contínuos (Markdown)** - Insights acumulados ao longo do uso

---

#### Camada 1: YAML Frontmatter (Metadados Estruturados)

```yaml
---
# ==============================================================================
# CONTENT FOUNDRY - CÉREBRO DIGITAL
# ==============================================================================
# Este arquivo captura a essência do founder para gerar conteúdo autêntico.
# Última atualização: {data}
# Versão: {v1.0, v1.1, etc}
# ==============================================================================

founder:
  # --------------------
  # IDENTIDADE BÁSICA
  # --------------------
  nome: "Vitor Garcia"
  empresa: "Nome da Empresa"
  cargo: "CEO & Founder"
  nicho: "Marketing Tech & AI"
  localizacao: "São Paulo, Brasil"

  # --------------------
  # PILARES DE CONTEÚDO
  # --------------------
  # 3-5 temas principais que o founder fala
  pilares:
    - id: pilar-1
      nome: "IA Aplicada a Marketing"
      descricao: "Como usar IA para automatizar e escalar marketing"
      keywords: ["IA", "automação", "marketing tech", "AI agents"]
      frequencia: 40%  # % de conteúdo neste pilar

    - id: pilar-2
      nome: "Founder-Led Marketing"
      descricao: "Marketing liderado pelo fundador, não por agência"
      keywords: ["founder-led", "autenticidade", "personal brand"]
      frequencia: 35%

    - id: pilar-3
      nome: "Produtividade & Sistemas"
      descricao: "Como founders podem criar sistemas para escalar"
      keywords: ["produtividade", "sistemas", "automação", "workflows"]
      frequencia: 25%

  # --------------------
  # TOM DE VOZ
  # --------------------
  tom:
    geral: "Técnico mas acessível, direto ao ponto, sem enrolação"

    # Tom específico por canal
    linkedin: "Profissional, thought leadership, vulnerabilidade calculada"
    instagram: "Mais casual, inspiracional, visual, menos técnico"
    youtube: "Educativo, aprofundado, didático, passo-a-passo"
    newsletter: "Pessoal, como conversa com amigo, mais íntimo"

    # Características do tom
    caracteristicas:
      formalidade: 6/10  # 1=muito casual, 10=muito formal
      vulnerabilidade: 7/10  # Disposição para compartilhar falhas
      humor: 5/10  # Uso de humor
      tecnicidade: 8/10  # Nível técnico do vocabulário
      provocacao: 6/10  # Nível de opiniões polêmicas

  # --------------------
  # SAFE MODE
  # --------------------
  # conservador | balanced | bold
  safe_mode: "balanced"

  safe_mode_detalhes:
    nivel: "balanced"
    razao: "Quer ser autêntico mas manter profissionalismo B2B"
    limites:
      evitar:
        - "Críticas pessoais a competidores"
        - "Opiniões políticas/religiosas"
        - "Autopromoção muito agressiva"
      permitido:
        - "Opiniões fortes sobre a indústria"
        - "Vulnerabilidade sobre falhas"
        - "Críticas construtivas ao mercado"

  # --------------------
  # ARQUÉTIPO DE MARCA
  # --------------------
  # Baseado nos 12 arquétipos de Jung
  arquetipo:
    principal: "Sage"  # Sábio/Mestre
    secundario: "Hero"  # Herói/Conquistador
    descricao: |
      Sage: Compartilha conhecimento para empoderar outros
      Hero: Supera desafios e inspira outros a fazerem o mesmo

  # --------------------
  # DETALHES ESTILÍSTICOS
  # --------------------
  estilo:
    # Uso de emojis
    emojis:
      usa: true
      frequencia: "moderada"  # baixa | moderada | alta
      tipos_preferidos: ["🚀", "💡", "⚡", "🎯", "📊"]
      evita: ["❤️", "😍", "🔥"]  # Emojis muito "emotivos"

    # Formatação
    formatacao:
      usa_listas: true
      usa_paragrafos_curtos: true
      usa_espacamento_generoso: true
      usa_negrito_para_enfase: true
      usa_CAPS_para_enfase: false

    # Chamada para ação (CTA)
    cta_style:
      abordagem: "conversacional"  # conversacional | direta | sutil
      exemplos:
        - "E você, já passou por isso?"
        - "Comenta aqui tua experiência"
        - "Discorda? Me convence nos comentários"
      evita:
        - "Clique no link"
        - "Manda DM para saber mais"
        - "Compartilhe se concorda"

  # --------------------
  # VOCABULÁRIO ÚNICO
  # --------------------
  vocabulario:
    # Palavras/frases que o founder usa muito
    assinaturas:
      - "Vai na fé"
      - "O negócio é o seguinte..."
      - "Olha só"
      - "Realidade nua e crua"

    # Termos técnicos preferidos
    termos_tecnicos:
      - "AI agents" (não "inteligência artificial generativa")
      - "Framework" (não "metodologia")
      - "Founder-led" (não "marketing pessoal")

    # Palavras/frases que NUNCA usa (clichês)
    evita:
      - "Jornada" (overused)
      - "Disrupção/disruptivo"
      - "Quebrar paradigmas"
      - "Ressignificar"
      - "Virada de chave"
      - "Game changer"

  # --------------------
  # AUDIÊNCIA
  # --------------------
  audiencia:
    primaria:
      perfil: "Founders e CEOs de startups/scaleups B2B SaaS"
      dores:
        - "Falta de tempo para criar conteúdo"
        - "Conteúdo genérico que não reflete sua voz"
        - "Dificuldade em escalar marketing sendo founder"
      aspiracoes:
        - "Construir autoridade no nicho"
        - "Gerar demanda através de conteúdo"
        - "Escalar sem perder autenticidade"

    secundaria:
      perfil: "CMOs e heads de marketing em B2B tech"

    linguagem:
      nivel: "Profissional, assume conhecimento técnico moderado"
      explica_termos: false  # Não explica termos básicos do nicho

  # --------------------
  # CONTEXTO DE NEGÓCIO
  # --------------------
  contexto:
    fase_empresa: "Early-stage startup (produto em desenvolvimento)"
    objetivo_conteudo: "Brand awareness + Validação de problema"
    frequencia_desejada:
      linkedin: "3-4x/semana"
      instagram: "2-3x/semana"
      youtube: "1x/semana"
      newsletter: "1x/quinzena"

---
```

#### Camada 2: Conteúdo Narrativo (Markdown)

```markdown
# 📖 HISTÓRIAS & CONTEXTO DO FOUNDER

## Jornada Profissional

### Início de Carreira
[Contar a história: como começou, primeiros trabalhos, o que aprendeu...]

Exemplo:
"Comecei em 2015 como dev full-stack numa agência. Odiava fazer landing pages genéricas.
Em 2017, entrei numa startup de marketing tech como employee #4. Foi lá que vi o poder
de automação pela primeira vez..."

### Transição para Empreendedorismo
[Por que decidiu empreender, o momento de virada, medos, decisões...]

### Evolução até Hoje
[Como chegou ao momento atual, principais aprendizados...]

---

## 💔 Fracassos & Aprendizados

### Fracasso #1: [Nome do Fracasso]
**Quando:** [data/período]
**O que aconteceu:** [descrição]
**Por que falhou:** [análise honesta]
**O que aprendi:** [lição]
**Como uso isso hoje:** [aplicação prática]

Exemplo:
### Fracasso #1: Produto que ninguém queria
**Quando:** 2019-2020
**O que aconteceu:** Passei 8 meses construindo uma ferramenta de analytics de Instagram.
Lancei. 12 pessoas se cadastraram. 2 usaram mais de uma vez. $0 de receita.
**Por que falhou:** Construí sem validar. Achei que sabia o problema. Estava errado.
**O que aprendi:** "Build it and they will come" é mentira. Validação > Execução.
**Como uso isso hoje:** Hoje valido TUDO antes de construir. Conversas > Código.

[... mais 2-4 fracassos significativos ...]

---

## 💡 Valores & Crenças

### O que eu defendo
- **Autenticidade > Perfeição:** Prefiro publicar algo imperfeito e real do que polido e genérico
- **Founders devem fazer marketing:** Ninguém conhece o produto melhor que o founder
- **IA é ferramenta, não substituição:** IA amplifica humanos, não substitui
- **Sistemas > Motivação:** Construa sistemas que funcionam quando você não está motivado

### Contra o que eu luto
- **Coaches vendem sonhos sem sistema:** Odeio cursos que vendem transformação sem metodologia
- **Agências que clonificam founders:** Marketing genérico que mata autenticidade
- **"Fake it till you make it":** Prefiro transparência sobre as lutas

### Opiniões Polêmicas (para safe_mode >= balanced)
- "90% dos cursos de marketing são scam"
- "LinkedIn virou Instagram (e isso é ruim para B2B)"
- "Você não precisa de mais conteúdo, precisa de melhor conteúdo"

---

## 🛠️ Metodologias & Frameworks Próprios

### Framework #1: [Nome]
**O que é:** [descrição em 1-2 linhas]
**Por que criei:** [problema que resolve]
**Como funciona:** [passo a passo simplificado]
**Onde uso:** [aplicações práticas]

Exemplo:
### Framework: Content Foundry Method
**O que é:** Sistema de produção de conteúdo autêntico usando AI agents
**Por que criei:** Cansado de ver founders terceirizarem voz para agências
**Como funciona:**
1. Captura profunda da voz (Cérebro Digital)
2. 20 agentes especializados por canal
3. Validação de autenticidade antes de publicar
**Onde uso:** No meu próprio marketing + produto que estou construindo

[... mais frameworks se tiver ...]

---

## 🎤 Estilo Narrativo

### Estrutura Preferida
**Para histórias:** Situação → Problema → Ação → Resultado → Lição
**Para ensino:** Promessa/Hook → Contexto → Passo-a-passo → Aplicação prática
**Para opinião:** Opinião polêmica → Justificativa → Exemplo → Nuance

### Analogias e Metáforas que Uso
- "Conteúdo genérico é como comida de avião - todo mundo come, ninguém lembra"
- "IA sem contexto é como GPS sem destino - rápido para lugar nenhum"
- [... mais analogias recorrentes ...]

### Como Começo Posts (Padrões)
- História pessoal específica ("3h da manhã. Starbucks. Laptop quase sem bateria...")
- Opinião controversa ("Vou falar algo impopular: LinkedIn está quebrado.")
- Pergunta provocativa ("Por que 90% dos founders odeiam criar conteúdo?")
- Dados surpreendentes ("Analisei 500 posts de founders. 87% são genéricos.")

---

## 📚 Referências & Influências

### Pessoas que Admiro (e por quê)
- **[Nome]:** [Por que admiro, o que aprendi, como influencia meu trabalho]
- **[Nome]:** [...]

Exemplo:
- **Justin Welsh:** Mestre em founder-led marketing. Me ensinou que consistência > viral.
- **Arvid Kahl:** Transparência total sobre números. Me inspirou a ser mais aberto.

### Livros/Recursos que Moldaram Pensamento
- **[Livro]:** [O que aprendi, como aplico]
- [...]

---

## 🎯 Casos de Uso & Histórias de Cliente (quando aplicável)

### Cliente/Caso #1: [Nome ou "Founder de SaaS B2B"]
**Contexto:** [situação inicial]
**Desafio:** [problema específico]
**Solução:** [o que foi feito]
**Resultado:** [outcome mensurável]
**Quote memorável:** "[Fala do cliente]"

[... 2-3 casos que usa frequentemente em conteúdo ...]

---

## 🔄 Meta-Conhecimento (Como Este Cérebro Funciona)

### Seções Prioritárias por Tipo de Conteúdo

**Para LinkedIn Post:**
- Consultar: Tom (linkedin), Pilares, Histórias de Fracasso, Vocabulário
- Validar contra: Safe Mode, Valores

**Para Instagram:**
- Consultar: Tom (instagram), Estilo Narrativo, Analogias
- Validar contra: Emojis, Formatação

**Para YouTube Script:**
- Consultar: Jornada Profissional, Metodologias, Estilo Narrativo (ensino)
- Validar contra: Tom (youtube), Audiência

### Como Este Arquivo Evolui

**Após cada sessão de conteúdo:**
- Adicionar novos aprendizados na seção "Aprendizados Contínuos" (abaixo)
- Refinar tom se feedback indicar desalinhamento
- Adicionar novos fracassos/histórias conforme acontecem

**Revisão trimestral:**
- Atualizar pilares se foco mudou
- Revisar safe_mode se conforto com vulnerabilidade mudou
- Atualizar contexto de negócio

---
```

#### Camada 3: Aprendizados Contínuos

```markdown
# 🧠 APRENDIZADOS CONTÍNUOS

> Esta seção é atualizada automaticamente pelo sistema conforme você usa o Content Foundry.
> Captura insights, padrões e refinamentos ao longo do tempo.

---

## Insights de Voz

**Adicionado em:** 2025-10-22
**Origem:** Validação de post LinkedIn #003
**Insight:** Founder usa "olha só" no início de 40% dos posts. Adicionar à assinatura.

**Adicionado em:** 2025-10-25
**Origem:** Feedback direto do founder
**Insight:** Não gosta de usar "disrupção" - soa como buzzword vazio. Adicionado a "evita".

---

## Tópicos de Alto Engajamento

**Adicionado em:** 2025-10-28
**Tópico:** Transparência sobre números (receita, usuários)
**Performance:** 3x acima da média de engajamento
**Ação:** Priorizar este ângulo quando falar de pilares 1 e 2

---

## Padrões Identificados

**Adicionado em:** 2025-11-01
**Padrão:** Posts que começam com história pessoal específica performam 2x melhor que opiniões diretas
**Frequência observada:** 12 posts analisados
**Recomendação:** Priorizar estrutura "história → lição" para LinkedIn

---

## Ajustes de Tom

**Adicionado em:** 2025-11-05
**Ajuste:** Founder prefere "você" no singular (não "vocês")
**Razão:** Cria conexão 1-on-1 mesmo em audiência ampla
**Aplicação:** Todos os canais

---

```

---

### Como Agentes Consultam o Cérebro

**Protocolo de Consulta (para todos os agentes):**

1. **SEMPRE carregar brain.md ANTES de gerar qualquer conteúdo**
2. **Identificar seções relevantes** baseado no tipo de conteúdo
3. **Extrair padrões** (não copiar literal, mas entender essência)
4. **Validar output** contra brain.md antes de entregar

**Exemplo - LinkedIn Writer consultando o cérebro:**

```yaml
# No arquivo do agente: linkedin-writer.md

# Quando executa comando *gerar-post:

passos:
  1. CARREGAR CÉREBRO:
     - Ler docs/brain.md completo
     - Focar em:
       * founder.tom.linkedin
       * founder.safe_mode
       * founder.pilares (identificar qual pilar se aplica)
       * founder.vocabulario.assinaturas
       * Seção "Histórias & Contexto" (buscar histórias relevantes)
       * Seção "Estilo Narrativo > Como Começo Posts"

  2. IDENTIFICAR PADRÕES:
     - Tom: "Profissional, thought leadership, vulnerabilidade calculada"
     - Safe mode: "balanced" → pode ter opinião forte mas respeitosa
     - Vocabulário: usar "Framework" não "metodologia"
     - Assinaturas: considerar usar "O negócio é o seguinte..." ou "Olha só"
     - Emojis: 2-3 no máximo, preferir 🚀💡⚡

  3. SELECIONAR ESTRUTURA:
     - Consultar "Estilo Narrativo > Como Começo Posts"
     - Escolher entre: história pessoal | opinião controversa | pergunta provocativa
     - Aplicar estrutura preferida do founder

  4. GERAR CONTEÚDO:
     - Escrever post aplicando todos os padrões identificados
     - Usar voz do founder (não genérica)

  5. AUTO-VALIDAÇÃO:
     - Reler post e brain.md lado a lado
     - Perguntar: "Se eu mostrasse isso sem nome, Vitor reconheceria como dele?"
     - Verificar: usou vocabulário certo? respeitou safe_mode? está no pilar correto?
```

**Consulta Inteligente (não literal):**

❌ **ERRADO** - Copiar literal:
```
# Post gerado
"O negócio é o seguinte... Vai na fé. Olha só."
[Usando todas as assinaturas de uma vez - soa forçado]
```

✅ **CERTO** - Capturar essência:
```
# Post gerado
"Olha só: passei 8 meses construindo produto errado.
[Usa 1 assinatura naturalmente + vulnerabilidade + história pessoal]
```

---

### Versionamento e Evolução

**Sistema de Versionamento:**

```yaml
# No frontmatter do brain.md

versao:
  atual: "v1.2"
  historico:
    - v1.0: "2025-10-21 - Criação inicial (onboarding)"
    - v1.1: "2025-11-15 - Adicionado pilar #3 + refinamento de tom"
    - v1.2: "2025-12-01 - Atualizado safe_mode (balanced → bold)"
```

**Quando fazer upgrade de versão:**

| Tipo de Mudança | Versão | Exemplo |
|---|---|---|
| **MAJOR (v1→v2)** | Mudança fundamental de voz/posicionamento | Founder muda de nicho completamente |
| **MINOR (v1.0→v1.1)** | Adicionar pilar, ajustar tom significativo | Descobriu novo foco de conteúdo |
| **PATCH (v1.1.0→v1.1.1)** | Pequenos ajustes, correções | Adicionar vocabulário, refinar detalhes |

**Git como Sistema de Versionamento:**

```bash
# Exemplo de commits

git commit -m "brain v1.0: onboarding inicial - captura base de voz"
git commit -m "brain v1.1: adiciona pilar 'Produtividade' + histórias 2020-2021"
git commit -m "brain v1.1.1: refina tom LinkedIn (menos formal)"
git commit -m "brain v2.0: MAJOR - pivô para nicho AI + SaaS founders"

# Tags para versões importantes
git tag v1.0 -m "MVP - primeiro brain validado"
git tag v2.0 -m "Pivô de posicionamento"
```

**Evolução Contínua (Aprendizado Incremental):**

```yaml
# Workflow automático após cada geração de conteúdo

pos-geracao:
  1. Agente pergunta: "Este post soa como você? (sim/não/quase)"

  2. Se "não" ou "quase":
     - "O que especificamente não soa como você?"
     - Capturar feedback
     - Adicionar à seção "Aprendizados Contínuos"

  3. Se "sim":
     - Extrair padrões do que funcionou
     - Reforçar na próxima geração

trimestral:
  - Orchestrator sugere revisão completa do brain.md
  - Apresenta insights acumulados
  - Propõe ajustes baseados em 3 meses de uso
  - Founder aprova/rejeita mudanças
  - Se aprovado: bump de versão (minor)
```

---

### Processo de Onboarding (Preenchimento Inicial)

**Workflow #1: Onboarding Inicial**

O preenchimento do brain.md acontece via **Workflow #1** com o **Elicitation Expert (Elena)**.

**Fases do Onboarding:**

```yaml
onboarding_fases:
  fase_1_fundacao:
    duracao: 15-20min
    agente: elicitation-expert (Elena)
    objetivo: Capturar essência básica
    campos_preenchidos:
      - founder.nome, empresa, cargo, nicho
      - founder.pilares (3 principais)
      - founder.tom.geral
      - founder.safe_mode (inicial)
    metodo: Entrevista guiada com perguntas específicas

  fase_2_profundidade:
    duracao: 20-30min
    agente: elicitation-expert (Elena)
    objetivo: Capturar histórias e contexto
    secoes_preenchidas:
      - Jornada Profissional (resumida)
      - Fracassos & Aprendizados (1-2 principais)
      - Valores & Crenças (core beliefs)
    metodo: Storytelling elicitation (perguntas abertas)

  fase_3_detalhes:
    duracao: 10-15min
    agente: voice-validator (Beatriz)
    objetivo: Capturar detalhes estilísticos
    campos_preenchidos:
      - founder.estilo (emojis, formatação, CTA)
      - founder.vocabulario (assinaturas, evita)
    metodo: Análise de conteúdo existente (se tiver) ou perguntas diretas

  fase_4_validacao:
    duracao: 5-10min
    agente: orchestrator (Carlos)
    objetivo: Revisar e aprovar brain.md
    acao:
      - Mostrar brain.md gerado ao founder
      - Pedir aprovação ou ajustes
      - Salvar versão v1.0
```

**Exemplo de Perguntas (Fase 1 - Fundação):**

```markdown
Elena (Elicitation Expert):

"Vitor, vamos construir seu Cérebro Digital! Preciso de 15-20min do seu tempo focado.
Vou fazer perguntas específicas, responda naturalmente como você falaria com um amigo.

**IDENTIDADE BÁSICA:**

1. Qual é o nome da sua empresa e o que ela faz em 1 frase?
   → [resposta capturada]

2. Se tivesse que descrever seu nicho em 3-5 palavras, qual seria?
   → [resposta]

**PILARES DE CONTEÚDO:**

3. Sobre o que você mais fala/quer falar? Me dá 3 temas principais.
   → [resposta - vira founder.pilares]

4. Desses 3, qual você domina mais? Qual te deixa mais animado?
   → [priorização]

**TOM DE VOZ:**

5. Como você descreveria seu jeito de se comunicar? (formal/casual, direto/storyteller, técnico/simples)
   → [resposta - vira founder.tom.geral]

6. Tem alguém que você admira pelo jeito que se comunica? Por quê?
   → [resposta - ajuda a calibrar tom]

**SAFE MODE:**

7. Escala de ousadia: você prefere ser...
   - Conservador (zero polêmica, sempre profissional)
   - Balanced (autêntico mas respeitoso)
   - Bold (opiniões fortes, aceita polêmica)
   → [resposta - vira founder.safe_mode]

8. Tem algum tema/tipo de conteúdo que você NÃO quer publicar nunca?
   → [resposta - vira safe_mode_detalhes.limites.evitar]
```

**Exemplo de Perguntas (Fase 2 - Profundidade):**

```markdown
Elena:

"Agora vamos mais fundo. Quero conhecer sua história e aprendizados.

**JORNADA:**

1. Me conta em 2-3min: como você chegou até aqui? Do início até hoje.
   → [resposta livre - Elena extrai e estrutura]

**FRACASSOS:**

2. Qual foi o maior fracasso profissional que você teve? Conta a história.
   → [resposta - vira seção "Fracassos & Aprendizados"]

3. O que você aprendeu com isso que usa até hoje?
   → [captura a lição]

**VALORES:**

4. Pelo que você luta? O que você defende com unhas e dentes?
   → [resposta - vira "O que eu defendo"]

5. O que te irrita profundamente no seu mercado/indústria?
   → [resposta - vira "Contra o que eu luto"]

**METODOLOGIAS:**

6. Você criou algum processo/framework/jeito único de fazer algo?
   → [Se sim: captura detalhes para "Metodologias & Frameworks Próprios"]
```

**Saída do Onboarding:**

✅ `docs/brain.md` criado e populado (v1.0)
✅ Founder revisou e aprovou
✅ Pronto para gerar primeiro conteúdo

**Tempo total:** 60-90 minutos

---

### Exemplo Completo de brain.md Preenchido

Ver arquivo: `.content-foundry/examples/sample-brain.md` (será criado na fase de implementação)

---

### Resumo da Fase 2.4

**✅ Definido:**

1. **Schema Completo:** 3 camadas (YAML + Narrativa + Aprendizados)
2. **Protocolo de Consulta:** Como agentes usam o cérebro
3. **Versionamento:** Sistema git + semver (major.minor.patch)
4. **Evolução Contínua:** Aprendizado incremental a cada uso
5. **Onboarding:** 4 fases, 60-90min, perguntas específicas

**Próximo Passo:** Fase 2.5 - Sistema de Orquestração de Agentes

---

