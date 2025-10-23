## 🔄 FASE 2.6: WORKFLOWS & JORNADAS

### Visão Geral

Content Foundry possui **9 workflows especializados** e **3 jornadas guiadas** que cobrem todo o ciclo de vida de produção de conteúdo.

**Workflows** = Processos específicos e reutilizáveis (ex: criar 1 post, planejar mês)
**Jornadas** = Sequências de workflows para objetivos maiores (ex: do zero ao primeiro post)

---

## 📋 OS 9 WORKFLOWS

### Workflow #1: Onboarding Inicial

**Arquivo:** `.content-foundry/workflows/01-onboarding.md`

```yaml
workflow:
  id: onboarding
  nome: Onboarding Inicial
  descricao: Criação do Cérebro Digital do founder (primeira interação crítica)
  icone: 🚀
  quando-usar: Sempre que brain.md não existir ou founder novo no sistema
  duracao-estimada: 60-90 minutos
  prioridade: CRÍTICA
  agentes-envolvidos:
    - orchestrator (Carlos)
    - elicitation-expert (Elena)
    - voice-validator (Beatriz)

  pre-requisitos:
    - Content Foundry instalado
    - Claude Code configurado
    - 60-90min de tempo focado disponível
    - Founder mentalmente preparado para introspecção

  entradas-necessarias:
    - nenhuma (processo guiado desde zero)

  saidas-geradas:
    - docs/brain.md (v1.0)
    - docs/insights-journal.md (iniciado)
    - .foundry/state.yaml (primeira sessão registrada)

passos:
  - numero: 1
    titulo: Boas-Vindas e Contexto
    agente: orchestrator
    duracao: 2-3min
    acao: |
      Carlos apresenta o Content Foundry e explica o processo de onboarding

      "Olá! Sou Carlos, seu orquestrador do Content Foundry.

      Vamos criar seu Cérebro Digital - o coração deste sistema. É um processo
      de 60-90min onde vou te conhecer profundamente: sua voz, histórias, valores,
      jeito de comunicar.

      O Cérebro Digital é o que garante que todo conteúdo gerado soe autenticamente
      como VOCÊ (não como IA genérica).

      Vou te passar para Elena, nossa especialista em elicitação. Ela vai te fazer
      perguntas. Responda naturalmente, como se falasse com um amigo.

      Pronto para começar?"

  - numero: 2
    titulo: "Fase 1: Fundação (Identidade Básica)"
    agente: elicitation-expert
    duracao: 15-20min
    tarefa: elicitar-fundacao.md
    acao: |
      Elena faz perguntas estruturadas para capturar:
      - Identidade básica (nome, empresa, nicho)
      - 3-5 pilares de conteúdo
      - Tom de voz geral
      - Safe mode inicial

      Perguntas:
      1. "Qual o nome da sua empresa e o que ela faz em 1 frase?"
      2. "Se tivesse que descrever seu nicho em 3-5 palavras?"
      3. "Sobre o que você mais fala/quer falar? 3 temas principais."
      4. "Como você descreveria seu jeito de se comunicar?"
      5. "Escala de ousadia: conservador/balanced/bold?"
      6. "Tem temas que NÃO quer nunca publicar?"

    output: |
      Preenche seção YAML do brain.md:
      - founder.nome, empresa, cargo, nicho
      - founder.pilares (3-5)
      - founder.tom.geral
      - founder.safe_mode

    validacao: |
      Elena resume e confirma:
      "Entendi que você trabalha com [nicho], fala sobre [pilares],
       tem tom [tom] e prefere safe_mode [modo]. Correto?"

  - numero: 3
    titulo: "Fase 2: Profundidade (Histórias & Contexto)"
    agente: elicitation-expert
    duracao: 20-30min
    tarefa: elicitar-historias.md
    acao: |
      Elena vai mais fundo com perguntas abertas:

      JORNADA:
      1. "Me conta em 2-3min: como você chegou até aqui?"

      FRACASSOS:
      2. "Qual foi seu maior fracasso profissional? Conta a história."
      3. "O que você aprendeu que usa até hoje?"

      VALORES:
      4. "Pelo que você luta? O que defende com unhas e dentes?"
      5. "O que te irrita profundamente no seu mercado?"

      METODOLOGIAS:
      6. "Criou algum processo/framework único?"

      REFERÊNCIAS:
      7. "Quem você admira pelo jeito de se comunicar? Por quê?"

    output: |
      Preenche seções Markdown do brain.md:
      - Jornada Profissional (resumo)
      - Fracassos & Aprendizados (1-2 principais)
      - Valores & Crenças
      - Metodologias Próprias (se aplicável)
      - Referências & Influências

  - numero: 4
    titulo: "Fase 3: Detalhes Estilísticos"
    agente: voice-validator
    duracao: 10-15min
    tarefa: capturar-estilo.md
    acao: |
      Beatriz captura detalhes de estilo:

      Se founder TEM conteúdo existente:
      - "Você tem posts/artigos já publicados?"
      - [Se sim]: "Me passa alguns links, vou analisar seu padrão"
      - Beatriz analisa: emojis, formatação, CTAs, vocabulário

      Se founder NÃO TEM conteúdo:
      - Perguntas diretas:
        1. "Você usa emojis? Quais tipos prefere?"
        2. "Prefere parágrafos curtos ou longos?"
        3. "Como costuma finalizar posts? (pergunta, call-to-action, reflexão)"
        4. "Tem palavras/frases que você usa muito?"
        5. "Tem palavras que você ODEIA e nunca usa?"

    output: |
      Preenche seção YAML do brain.md:
      - founder.estilo.emojis
      - founder.estilo.formatacao
      - founder.estilo.cta_style
      - founder.vocabulario.assinaturas
      - founder.vocabulario.evita

  - numero: 5
    titulo: Compilação e Geração do brain.md
    agente: elicitation-expert
    duracao: 5min
    acao: |
      Elena compila todas as informações coletadas e gera docs/brain.md completo

      Estrutura:
      - YAML frontmatter (dados estruturados)
      - Markdown (narrativas e histórias)
      - Seção de Aprendizados Contínuos (vazia inicialmente)

      Tag como versão v1.0

  - numero: 6
    titulo: Revisão e Aprovação
    agente: orchestrator
    duracao: 5-10min
    acao: |
      Carlos apresenta o brain.md ao founder:

      "Pronto! Seu Cérebro Digital está criado. Vou mostrar um resumo:

      📊 PILARES:
      - [Pilar 1]: [descrição]
      - [Pilar 2]: [descrição]
      - [Pilar 3]: [descrição]

      🎤 TOM DE VOZ:
      [Descrição do tom]

      🛡️ SAFE MODE: [conservador/balanced/bold]

      💡 VALORES PRINCIPAIS:
      - [Valor 1]
      - [Valor 2]

      Isso captura bem sua essência? Quer ajustar algo?"

      [Founder revisa e aprova ou pede ajustes]

      Se ajustes: Elena refina seções específicas
      Se aprovado: Salva brain.md e faz commit inicial

  - numero: 7
    titulo: Próximos Passos
    agente: orchestrator
    duracao: 2-3min
    acao: |
      Carlos sugere próxima ação:

      "Cérebro Digital criado com sucesso! ✅

      Opções agora:
      1. Criar seu primeiro post (teste rápido, 20min) - Recomendado!
      2. Planejar calendário editorial do mês (45min)
      3. Sair e voltar depois

      O que prefere?"

      [Redireciona para Jornada #1 se escolher opção 1]

finalizacao:
  - Salvar docs/brain.md (v1.0)
  - Git commit: "brain v1.0: onboarding inicial"
  - Atualizar .foundry/state.yaml
  - Marcar onboarding como completo
  - Registrar timestamp de conclusão

metricas-sucesso:
  - brain.md existe e validável
  - Todas seções obrigatórias preenchidas
  - Founder aprovou conteúdo
  - Tempo <= 90min
```

---

### Workflow #2: Planejamento Estratégico

**Arquivo:** `.content-foundry/workflows/02-planejamento-estrategico.md`

```yaml
workflow:
  id: planejamento-estrategico
  nome: Planejamento Estratégico
  descricao: Criação de calendário editorial mensal ou trimestral
  icone: 📅
  quando-usar: |
    - Founder quer planejar conteúdo do mês/trimestre
    - Precisa de visão estratégica de longo prazo
    - Quer balancear pilares e canais
  duracao-estimada: 45-60 minutos
  agentes-envolvidos:
    - orchestrator (Carlos)
    - content-strategist (Sofia)
    - research-analyst (Pedro - opcional)
    - brand-guardian (Ana)

  pre-requisitos:
    - docs/brain.md existe

  entradas-necessarias:
    - periodo: mensal | trimestral
    - canais-foco: quais canais priorizar
    - frequencia-desejada: posts/semana por canal (opcional)

  saidas-geradas:
    - docs/calendar.md (calendário editorial)
    - lista de tópicos priorizados
    - distribuição por pilar e canal

passos:
  - numero: 1
    titulo: Análise de Contexto
    agente: content-strategist
    duracao: 5-10min
    acao: |
      Sofia carrega:
      - docs/brain.md (pilares, frequência desejada, audiência)
      - Histórico de conteúdo (se existe)
      - Data atual e período a planejar

      Analisa:
      - Gaps de conteúdo (pilares subexplorados)
      - Canais prioritários
      - Frequência ideal vs realista

  - numero: 2
    titulo: Definição de Objetivos
    agente: content-strategist
    duracao: 5min
    acao: |
      Sofia pergunta ao founder:

      "Vamos planejar [período]. Algumas perguntas rápidas:

      1. Objetivo principal? (awareness | engajamento | conversão)
      2. Algum lançamento/evento importante no período?
      3. Temas específicos que QUER ou NÃO QUER abordar?
      4. Algum experimento novo? (formato, canal, tom)"

      [Captura objetivos específicos]

  - numero: 3
    titulo: Pesquisa de Tendências (Opcional)
    agente: research-analyst
    duracao: 10min
    condicional:
      se: founder aprova pesquisa adicional
      entao: Pedro pesquisa trends do nicho
      senao: pula para passo 4
    acao: |
      Pedro identifica:
      - Tendências do nicho nos últimos 30 dias
      - Tópicos em alta no LinkedIn/Instagram
      - Gaps de conteúdo no mercado

      Output: lista de 5-10 tópicos trending

  - numero: 4
    titulo: Geração de Tópicos
    agente: content-strategist
    duracao: 10-15min
    tarefa: gerar-topicos-calendario.md
    acao: |
      Sofia gera lista de tópicos baseado em:
      - Pilares do founder (respeitando % de cada)
      - Objetivos definidos
      - Trends (se pesquisados)
      - Histórias do brain.md (fracassos, casos, metodologias)

      Para período mensal (4 semanas):
      - LinkedIn: 12-16 tópicos (3-4/semana)
      - Instagram: 8-12 tópicos (2-3/semana)
      - YouTube: 4 tópicos (1/semana)
      - Newsletter: 2 tópicos (1/quinzena)

      Apresenta lista priorizada com:
      - Tópico
      - Pilar associado
      - Canal sugerido
      - Ângulo/abordagem
      - Prioridade (alta/média/baixa)

  - numero: 5
    titulo: Aprovação e Ajustes
    agente: orchestrator
    duracao: 10min
    acao: |
      Carlos apresenta calendário proposto:

      "Sofia criou um plano com [N] tópicos. Resumo:

      📊 DISTRIBUIÇÃO POR PILAR:
      - Pilar 1: 40% ([X] posts)
      - Pilar 2: 35% ([Y] posts)
      - Pilar 3: 25% ([Z] posts)

      📱 DISTRIBUIÇÃO POR CANAL:
      - LinkedIn: [N] posts
      - Instagram: [N] posts
      - YouTube: [N] vídeos

      🗓️ SEMANA 1:
      - Segunda: LinkedIn - [tópico]
      - Quarta: Instagram - [tópico]
      - Sexta: LinkedIn - [tópico]

      [...]

      Quer ajustar algo? (trocar ordem, adicionar/remover tópicos, mudar ângulo)"

      [Founder aprova ou pede ajustes]

  - numero: 6
    titulo: Validação de Marca
    agente: brand-guardian
    duracao: 5min
    acao: |
      Ana verifica calendário:
      - Todos tópicos alinhados com valores?
      - Respeita safe_mode?
      - Distribuição de pilares equilibrada?
      - Nenhum tópico controverso demais?

      Se identificar issues: alerta Carlos
      Senão: aprova calendário

  - numero: 7
    titulo: Formatação e Salvamento
    agente: content-strategist
    duracao: 5min
    acao: |
      Sofia formata docs/calendar.md:

      ```markdown
      # Calendário Editorial - [Mês/Trimestre]

      **Gerado em:** [data]
      **Período:** [datas]
      **Total de posts:** [N]

      ---

      ## Semana 1 ([datas])

      ### Segunda, [data]
      - **Canal:** LinkedIn
      - **Tópico:** [tópico]
      - **Pilar:** [pilar]
      - **Ângulo:** [descrição]
      - **Gancho sugerido:** [hook]

      ### Quarta, [data]
      [...]

      ---

      ## Banco de Ideias (Backup)
      [Tópicos extras não agendados mas prontos para usar]
      ```

      Salva e faz commit

finalizacao:
  - Salvar docs/calendar.md
  - Git commit: "calendar: plano [período]"
  - Atualizar .foundry/state.yaml
  - Sugerir próximo passo (começar produção)

metricas-sucesso:
  - Calendário criado com >= 80% das datas preenchidas
  - Distribuição de pilares dentro de ±10% do target
  - Founder aprovou plano
  - Tempo <= 60min
```

---

### Workflow #3: Produção Express

**Arquivo:** `.content-foundry/workflows/03-producao-express.md`

```yaml
workflow:
  id: producao-express
  nome: Produção Express
  descricao: Criação rápida de 1 post pronto para publicar (máximo 30min)
  icone: ⚡
  quando-usar: |
    - Founder precisa criar 1 post rapidamente
    - Teste do sistema
    - Post urgente/oportunista
  duracao-estimada: 15-30 minutos
  agentes-envolvidos:
    - orchestrator (Carlos)
    - [writer-canal] (Lucas/Marina/Daniel/Patricia)
    - voice-validator (Beatriz)
    - editor-proofreader (Rita)

  pre-requisitos:
    - docs/brain.md existe

  entradas-necessarias:
    - topico: tema do post
    - canal: linkedin | instagram | youtube | newsletter
    - urgencia: normal | urgente (pula algumas validações se urgente)

  saidas-geradas:
    - Post final pronto para copiar/publicar
    - Arquivo salvo em docs/content/[canal]/[data]-[slug].md
    - 3 opções de gancho alternativas

passos:
  - numero: 1
    titulo: Análise Rápida do Tópico
    agente: orchestrator
    duracao: 2-3min
    tarefa: analisar-topico-rapido.md
    acao: |
      Carlos:
      - Carrega brain.md
      - Identifica qual pilar o tópico se encaixa
      - Busca histórias relevantes no brain.md
      - Define ângulo inicial

      Se tópico vago: elicita rapidamente
      "Quer falar de [tópico] por qual ângulo?
       1. Caso prático
       2. Opinião/posicionamento
       3. Tutorial/educação
       4. História pessoal"

  - numero: 2
    titulo: Seleção e Delegação ao Writer
    agente: orchestrator
    duracao: 1min
    acao: |
      Carlos identifica writer correto baseado no canal:
      - LinkedIn → Lucas (linkedin-writer)
      - Instagram Feed → Marina (instagram-feed-writer)
      - Instagram Reels → Bruno (reels-script-writer)
      - YouTube → Daniel (video-script-writer)
      - Newsletter → Patricia (newsletter-writer)

      Delega com contexto completo

  - numero: 3
    titulo: Geração de Rascunho
    agente: "[writer-canal]"
    duracao: 5-10min
    tarefa: gerar-post-[canal].md
    acao: |
      Writer (ex: Lucas para LinkedIn):

      1. CARREGAR CÉREBRO:
         - Ler docs/brain.md completo
         - Focar em tom.[canal], safe_mode, vocabulário

      2. ELICITAR DETALHES (se necessário):
         "Para criar post autêntico, preciso saber:
          1. Objetivo? (educar|inspirar|debate|soft-sell)
          2. CTA desejado? (comentário|DM|link|reflexão)"

      3. CONSULTAR DADOS:
         - frameworks-conteudo.md (estrutura narrativa)
         - biblioteca-ganchos.md (inspiração)

      4. GERAR RASCUNHO:
         - Aplicar estrutura escolhida
         - Usar voz do founder
         - Respeitar safe_mode
         - 3 opções de gancho

      5. AUTO-VALIDAÇÃO:
         ✓ Soa como founder?
         ✓ Respeita safe_mode?
         ✓ Estrutura clara?

    output: |
      - post_rascunho.md
      - ganchos_alternativos (3 opções)

  - numero: 4
    titulo: Validações Paralelas
    tipo: paralelo
    duracao: 5-7min
    sub-passos:
      - 4a:
          titulo: Validação de Voz
          agente: voice-validator
          tarefa: validar-voz-founder.md
          checklist: validacao-voz.md
          acao: |
            Beatriz valida autenticidade:
            - Compara com brain.md
            - Score 0-10
            - Feedback específico se < 8

          criterio-aprovacao: score >= 8/10

      - 4b:
          titulo: Revisão Gramatical
          agente: editor-proofreader
          acao: |
            Rita verifica:
            - Gramática e ortografia
            - Clareza de mensagem
            - Formatação adequada
            - Quebras de linha

          criterio-aprovacao: sem erros críticos

  - numero: 5
    titulo: Ajustes (Se Necessário)
    agente: "[writer-canal]"
    duracao: 3-5min
    condicional:
      se: validacao_voz.score < 8
      entao: Writer ajusta baseado em feedback
      senao: pula para passo 6
    acao: |
      Writer recebe feedback de Beatriz:
      - Ajusta tom, vocabulário, estrutura
      - Resubmete para validação
      - Max 2 iterações

  - numero: 6
    titulo: Polimento Final e Entrega
    agente: orchestrator
    duracao: 2-3min
    acao: |
      Carlos compila versão final:

      "Post pronto! ✅

      [MOSTRA POST COMPLETO]

      📊 MÉTRICAS DE QUALIDADE:
      - Autenticidade: [score]/10
      - Alinhamento pilar: [pilar]
      - Estimativa de engajamento: [baixo|médio|alto]

      🎣 GANCHOS ALTERNATIVOS:
      1. [opção 1]
      2. [opção 2]
      3. [opção 3]

      Satisfeito? Precisa ajustar algo?"

      [Se founder aprova: salva em docs/content/]
      [Se pede ajuste: volta para writer]

finalizacao:
  - Salvar post em docs/content/[canal]/[arquivo].md
  - Atualizar insights-journal.md com aprendizados
  - Registrar em .foundry/analytics.yaml
  - Sugerir próximos passos:
    * Criar outro post?
    * Repurposar para outro canal?
    * Agendar publicação?

metricas-sucesso:
  - Post gerado
  - Score voz >= 8/10
  - Founder aprovou
  - Tempo <= 30min
```

---

### Workflow #4: Produção em Lote

**Arquivo:** `.content-foundry/workflows/04-producao-lote.md`

```yaml
workflow:
  id: producao-lote
  nome: Produção em Lote
  descricao: Criação de 5-10 posts de uma vez para banco de conteúdo
  icone: 📦
  quando-usar: |
    - Founder quer criar conteúdo da semana/mês de uma vez
    - Aproveitamento de tempo focado
    - Preparação antecipada
  duracao-estimada: 90-120 minutos
  agentes-envolvidos:
    - orchestrator (Carlos)
    - content-strategist (Sofia)
    - [múltiplos writers]
    - voice-validator (Beatriz)
    - editor-proofreader (Rita)

  pre-requisitos:
    - docs/brain.md existe
    - docs/calendar.md recomendado (mas não obrigatório)

  entradas-necessarias:
    - quantidade: número de posts (5-10 recomendado)
    - canais: quais canais incluir
    - usar-calendario: sim | nao

  saidas-geradas:
    - 5-10 posts prontos
    - Salvos em docs/content/[canal]/
    - Lista organizada por data sugerida

passos:
  - numero: 1
    titulo: Planejamento do Lote
    agente: content-strategist
    duracao: 10-15min
    acao: |
      Sofia define lista de tópicos:

      Se calendar.md existe:
      - Pega próximos N tópicos do calendário

      Se NÃO existe calendário:
      - Pergunta ao founder:
        "Quer posts sobre quais temas? (ou deixo Sofia sugerir baseado em pilares?)"
      - Gera lista de N tópicos balanceados por pilar

      Output: lista de tópicos + canal + pilar

  - numero: 2
    titulo: Aprovação do Plano
    agente: orchestrator
    duracao: 5min
    acao: |
      Carlos apresenta plano:

      "Vamos criar [N] posts:

      📋 LISTA:
      1. LinkedIn: [tópico] (Pilar 1)
      2. Instagram: [tópico] (Pilar 2)
      3. LinkedIn: [tópico] (Pilar 1)
      [...]

      Aprova ou quer trocar algum?"

      [Founder aprova ou ajusta]

  - numero: 3
    titulo: Produção Paralela
    tipo: paralelo
    agente: orchestrator
    duracao: 40-60min
    acao: |
      Carlos coordena produção simultânea:

      Para cada post da lista:
      - Delega para writer apropriado
      - Writers trabalham "em paralelo" (Claude pensa sobre múltiplos)
      - Cada writer segue processo padrão (carregar brain, gerar, auto-validar)

      Output: N rascunhos gerados

  - numero: 4
    titulo: Validação em Lote
    tipo: paralelo
    agente: voice-validator
    duracao: 15-20min
    acao: |
      Beatriz valida todos os posts:
      - Score para cada um
      - Identifica padrões (se vários falharem no mesmo ponto)
      - Prioriza ajustes (piores scores primeiro)

      Output:
      - Lista de posts aprovados (score >= 8)
      - Lista de posts para ajustar (score < 8)

  - numero: 5
    titulo: Ajustes Focados
    agente: "[writers]"
    duracao: 15-20min
    condicional:
      se: existem posts com score < 8
      entao: Writers ajustam posts específicos
      senao: pula para passo 6
    acao: |
      Cada writer ajusta seus posts reprovados
      Re-validação rápida
      Max 1 iteração (aceita score >= 7 neste workflow)

  - numero: 6
    titulo: Polimento em Lote
    agente: editor-proofreader
    duracao: 10-15min
    acao: |
      Rita revisa todos de uma vez:
      - Gramática
      - Consistência de formatação
      - Ajustes finais

      Output: N posts polidos

  - numero: 7
    titulo: Organização e Entrega
    agente: orchestrator
    duracao: 5-10min
    acao: |
      Carlos organiza e apresenta:

      "Lote completo! [N] posts criados. ✅

      📊 RESUMO:
      - LinkedIn: [X] posts (scores: 8.5, 8.0, 9.0)
      - Instagram: [Y] posts (scores: 8.2, 7.8)

      🗓️ SUGESTÃO DE AGENDAMENTO:
      [Se calendar.md existe: mostra datas]
      [Senão: sugere distribuição pela semana/mês]

      📁 SALVOS EM:
      docs/content/linkedin/...
      docs/content/instagram/...

      Quer revisar algum específico?"

finalizacao:
  - Salvar todos posts
  - Git commit: "batch: [N] posts criados"
  - Atualizar analytics
  - Sugerir organização em ferramenta de agendamento

metricas-sucesso:
  - >= 80% dos posts com score >= 8
  - Todos posts salvos corretamente
  - Tempo <= 120min
  - Founder satisfeito com lote
```

---

### Workflow #5: Repurposing

**Arquivo:** `.content-foundry/workflows/05-repurposing.md`

```yaml
workflow:
  id: repurposing
  nome: Repurposing Cross-Canal
  descricao: Transformar conteúdo de um canal para outro (ex: LinkedIn → Reels)
  icone: ♻️
  quando-usar: |
    - Founder tem conteúdo bom que quer reaproveitar
    - Maximizar ROI de posts de alto desempenho
    - Economizar tempo de criação
  duracao-estimada: 10-20 minutos
  agentes-envolvidos:
    - orchestrator (Carlos)
    - repurposing-specialist (Rodrigo)
    - [writer-destino]
    - voice-validator (Beatriz - opcional)

  pre-requisitos:
    - Conteúdo original existe

  entradas-necessarias:
    - conteudo-origem: arquivo ou URL do post original
    - canal-origem: linkedin | instagram | youtube | newsletter
    - canal-destino: canal para onde adaptar
    - manter-essencia: sim | adaptar-totalmente

  saidas-geradas:
    - Conteúdo adaptado para novo canal
    - Mantém autenticidade + adequado ao formato

passos:
  - numero: 1
    titulo: Análise do Conteúdo Original
    agente: repurposing-specialist
    duracao: 3-5min
    acao: |
      Rodrigo analisa conteúdo original:
      - Qual a mensagem principal?
      - Qual o gancho/hook?
      - Qual a estrutura?
      - Qual o pilar?
      - Por que funcionou? (se tiver dados de performance)

      Identifica "essência" a preservar

  - numero: 2
    titulo: Estratégia de Adaptação
    agente: repurposing-specialist
    duracao: 2min
    acao: |
      Rodrigo define estratégia baseado em:

      ORIGEM → DESTINO:

      LinkedIn → Instagram:
      - Extrair gancho + mensagem principal
      - Tornar mais visual/casual
      - Adaptar tamanho (LinkedIn 250 palavras → Insta 150)

      LinkedIn → Reels:
      - Extrair gancho
      - Criar roteiro de 30-60s
      - Pensar em visual/dinamismo

      Instagram → LinkedIn:
      - Expandir mensagem
      - Adicionar profundidade/contexto B2B
      - Tornar mais profissional

      Post → Newsletter:
      - Expandir com profundidade
      - Adicionar tom mais íntimo
      - Incluir múltiplos ângulos

      [Define abordagem específica]

  - numero: 3
    titulo: Repurposing
    agente: "[writer-destino]"
    duracao: 5-10min
    acao: |
      Writer do canal destino recebe:
      - Conteúdo original
      - Estratégia de Rodrigo
      - brain.md (tom para canal destino)

      Cria versão adaptada:
      - Mantém essência/mensagem
      - Adapta formato
      - Ajusta tom para canal
      - Respeita constraints do canal (tamanho, etc)

  - numero: 4
    titulo: Validação Rápida (Opcional)
    agente: voice-validator
    duracao: 2-3min
    condicional:
      se: founder quer validação completa
      entao: Beatriz valida voz
      senao: pula validação (confia na adaptação)
    acao: |
      Beatriz verifica se versão adaptada mantém voz do founder

  - numero: 5
    titulo: Entrega
    agente: orchestrator
    duracao: 2min
    acao: |
      Carlos apresenta:

      "Repurposing completo! ✅

      📄 ORIGINAL ([canal-origem]):
      [Preview do original]

      ♻️ ADAPTADO ([canal-destino]):
      [Preview do adaptado]

      🔄 MUDANÇAS PRINCIPAIS:
      - [Mudança 1]
      - [Mudança 2]

      Aprovado?"

finalizacao:
  - Salvar versão adaptada
  - Registrar como repurposing do original
  - Sugerir outros canais para repurposar

metricas-sucesso:
  - Conteúdo adaptado criado
  - Mantém essência do original
  - Adequado ao canal destino
  - Tempo <= 20min
```

---

### Workflow #6: Trend Jacking

**Arquivo:** `.content-foundry/workflows/06-trend-jacking.md`

```yaml
workflow:
  id: trend-jacking
  nome: Trend Jacking
  descricao: Criar conteúdo rapidamente aproveitando trend/notícia do momento
  icone: 🔥
  quando-usar: |
    - Trend relevante ao nicho surgiu
    - Notícia importante relacionada ao mercado
    - Momento cultural/viral que founder quer comentar
  duracao-estimada: 20-30 minutos
  agentes-envolvidos:
    - orchestrator (Carlos)
    - research-analyst (Pedro)
    - hook-creator (Julio)
    - [writer-canal]
    - brand-guardian (Ana - CRÍTICO)

  pre-requisitos:
    - docs/brain.md existe
    - Trend/notícia identificada

  entradas-necessarias:
    - trend: descrição ou link da trend/notícia
    - angulo-desejado: concordar | discordar | adicionar-nuance | caso-pratico
    - canal: onde publicar (geralmente LinkedIn para timeliness)

  saidas-geradas:
    - Post oportunista pronto RÁPIDO
    - Validado contra safe_mode (crítico!)

passos:
  - numero: 1
    titulo: Pesquisa Rápida da Trend
    agente: research-analyst
    duracao: 5min
    acao: |
      Pedro pesquisa rapidamente:
      - Contexto da trend/notícia
      - Principais pontos de discussão
      - O que as pessoas estão falando
      - Ângulos ainda não explorados

      Output: resumo + ângulos possíveis

  - numero: 2
    titulo: Validação de Safe Mode (CRÍTICO)
    agente: brand-guardian
    duracao: 3min
    acao: |
      Ana verifica ANTES de criar conteúdo:

      "Este tema é seguro para o safe_mode de [founder]?

      Checklist:
      - Trend é polêmica demais? (se safe_mode = conservador)
      - Envolve temas proibidos? (política, religião, etc)
      - Risco reputacional?
      - Alinhado com valores do founder?

      Se RED FLAG: bloqueia e sugere não participar desta trend
      Se YELLOW FLAG: sugere ângulo mais seguro
      Se GREEN: libera criação"

      CRÍTICO: Trend jacking tem alto risco - validação é obrigatória

  - numero: 3
    titulo: Criação de Gancho Poderoso
    agente: hook-creator
    duracao: 5min
    condicional:
      se: Ana aprovou (green light)
      entao: Julio cria ganchos
      senao: workflow abortado
    acao: |
      Julio cria 3 ganchos para trend:
      - Provocativo mas seguro
      - Conecta trend ao pilar do founder
      - Chama atenção SEM clickbait

      Exemplos:
      - "[Notícia X] mudou tudo. Aqui está o que ninguém está falando:"
      - "Todo mundo tá comentando [trend]. Vou discordar:"
      - "A real lição de [notícia] que todo [audiência] deveria saber:"

  - numero: 4
    titulo: Criação Rápida do Post
    agente: "[writer-canal]"
    duracao: 7-10min
    acao: |
      Writer cria post rapidamente:

      Estrutura recomendada:
      1. Gancho sobre a trend
      2. Opinião/posicionamento do founder
      3. Conectar ao pilar dele
      4. Lição prática ou takeaway
      5. CTA para discussão

      IMPORTANTE:
      - Responder RÁPIDO (trend tem janela curta)
      - Mas sem sacrificar autenticidade
      - Não forçar conexão (se não faz sentido, abortar)

  - numero: 5
    titulo: Validação Express
    agente: brand-guardian
    duracao: 2-3min
    acao: |
      Ana valida versão final:
      - Passou dos limites de safe_mode?
      - Alguma frase pode ser mal interpretada?
      - Tom respeitoso mesmo se discordando?

      Se aprovar: libera
      Se reprovar: ajustes ou aborta

  - numero: 6
    titulo: Entrega Urgente
    agente: orchestrator
    duracao: 2min
    acao: |
      Carlos apresenta:

      "Post de trend pronto! ⚡

      🔥 TREND: [nome]
      🎯 ÂNGULO: [ângulo escolhido]
      ✅ SAFE MODE: Aprovado por Ana

      [MOSTRA POST]

      ⏰ JANELA DE OPORTUNIDADE: [X] horas

      Publica agora ou ajusta algo?"

finalizacao:
  - Salvar post
  - Tag como "trend-jacking" + trend-name
  - Monitorar engajamento (trends geralmente performam diferente)

metricas-sucesso:
  - Post criado em <= 30min
  - Aprovado por Brand Guardian
  - Publicado dentro da janela da trend
  - Zero riscos reputacionais
```

---

### Workflows Restantes (Resumo Executivo)

**Workflow #7: Performance Review**
- **Objetivo:** Analisar posts publicados e identificar padrões de sucesso
- **Duração:** 30min
- **Agentes:** Orchestrator + Engagement Optimizer
- **Output:** Relatório com insights (tópicos que funcionam, Tom ideal, melhores horários)

**Workflow #8: Resgate de Consistência**
- **Objetivo:** Reativar founder que parou de publicar (>2 semanas sem post)
- **Duração:** 20min
- **Agentes:** Orchestrator + Content Strategist
- **Output:** 3-5 posts rápidos para retomar consistência

**Workflow #9: Atualização do Cérebro**
- **Objetivo:** Revisar e atualizar brain.md (trimestral ou quando founder evolui)
- **Duração:** 30-45min
- **Agentes:** Orchestrator + Elicitation Expert + Voice Validator
- **Output:** brain.md atualizado (versão minor ou major)

---

## 🗺️ AS 3 JORNADAS GUIADAS

### Jornada #1: Do Zero ao Primeiro Post

**Arquivo:** `.content-foundry/jornadas/01-do-zero-ao-primeiro-post.md`

```yaml
jornada:
  id: zero-ao-primeiro-post
  nome: Do Zero ao Primeiro Post
  descricao: Jornada completa para founder iniciante criar primeiro conteúdo autêntico
  icone: 🚀
  publico-alvo: Founder que nunca usou Content Foundry, quer validar rapidamente
  duracao-total: 60-90 minutos
  objetivo-final: |
    Founder tem:
    - Cérebro Digital criado (docs/brain.md)
    - 1 post publicável de alta qualidade
    - Confiança de que sistema funciona
    - Entendimento de como usar no dia-a-dia

  pre-requisitos:
    - Content Foundry instalado
    - Claude Code configurado
    - 60-90min de tempo focado
    - Founder pronto para introspecção

  resultados-entregues:
    - docs/brain.md v1.0 aprovado
    - 1 post LinkedIn OU Instagram pronto
    - Conhecimento do sistema
    - Próximos passos claros

state-machine:
  estados:
    - inicio: Founder ativa jornada
    - fase-1: Onboarding (criação brain.md)
    - checkpoint-1: Validação brain.md
    - fase-2: Primeira produção
    - checkpoint-2: Validação voz post
    - fase-3: Reflexão
    - conclusao: Jornada completa

  transicoes:
    inicio → fase-1: automático (workflow #1 inicia)
    fase-1 → checkpoint-1: brain.md gerado
    checkpoint-1 → fase-2: founder aprovou brain
    checkpoint-1 → fase-1: founder pediu ajustes (loop)
    fase-2 → checkpoint-2: post gerado
    checkpoint-2 → fase-3: post aprovado
    checkpoint-2 → fase-2: post reprovado (max 2 loops)
    fase-3 → conclusao: próximos passos definidos

fases:
  - numero: 1
    nome: "Onboarding & Criação do Cérebro Digital"
    objetivo: Capturar essência, voz e contexto do founder
    workflow: 01-onboarding.md
    duracao: 45-60min

    detalhamento:
      - Boas-vindas por Carlos
      - Elena conduz entrevista profunda:
        * Fase 1: Fundação (15-20min) - identidade, pilares, safe_mode
        * Fase 2: Profundidade (20-30min) - histórias, fracassos, valores
        * Fase 3: Estilo (10-15min) - emojis, formatação, vocabulário
      - Compilação brain.md
      - Revisão e aprovação pelo founder

    criterio-conclusao: |
      ✅ brain.md existe com >= 500 palavras
      ✅ Todas seções YAML preenchidas
      ✅ Pelo menos 1-2 histórias capturadas
      ✅ Founder aprovou conteúdo

    checkpoint:
      pergunta: "Seu Cérebro Digital captura bem sua essência?"
      opcoes:
        - sim: Avança para fase 2
        - precisa-ajustes: Elena refina seções específicas
        - refazer: Raro, mas volta ao início da fase 1

    saida: docs/brain.md v1.0

  - numero: 2
    nome: "Primeira Produção de Conteúdo"
    objetivo: Criar primeiro post autêntico para validar sistema
    workflow: 03-producao-express.md
    duracao: 15-25min

    detalhamento:
      entrada:
        - Carlos sugere: "Vamos criar seu primeiro post. Recomendo LinkedIn
          (mais profissional, bom para validar voz). Sobre qual pilar quer falar?"

      processo:
        - Founder escolhe tópico (ou Carlos sugere baseado em pilares)
        - Carlos delega para Lucas (LinkedIn Writer)
        - Lucas gera rascunho consultando brain.md
        - Beatriz valida voz (score 0-10)
        - Se score < 8: ajustes
        - Rita polimento final

      fatores-sucesso:
        - Primeira vez: aceitar score >= 7 (não precisa ser perfeito)
        - Foco em validação, não perfeição
        - Iterações: max 2 (evitar paralisia)

    criterio-conclusao: |
      ✅ Post gerado
      ✅ Score voz >= 7/10 (primeira vez, aceita 7)
      ✅ Founder se sente confortável publicando
      ✅ Post salvo em docs/content/

    checkpoint:
      pergunta: "Este post soa como você?"
      opcoes:
        - sim-publicaria: Excelente! Avança
        - quase-la: Pequenos ajustes → 1 iteração
        - nao-sou-eu: Feedback específico → refaz (max 1x)

    aprendizados-capturados:
      - Se founder disse "não sou eu", O QUE especificamente?
      - Adiciona ao brain.md seção "Aprendizados Contínuos"
      - Melhora calibração para próximos posts

    saida: Post pronto em docs/content/linkedin/

  - numero: 3
    nome: "Reflexão & Próximos Passos"
    objetivo: Consolidar aprendizado e planejar uso contínuo
    duracao: 10-15min

    detalhamento:
      processo:
        - Carlos pergunta sobre experiência:
          "Como foi? Satisfeito com o post?"
          "O que você achou do processo?"
          "Cérebro Digital capturou bem sua voz?"

        - Captura feedback:
          - Se positivo: celebra e sugere próximos passos
          - Se neutro: identifica o que pode melhorar
          - Se negativo: ajustes específicos ao brain.md

        - Apresenta opções de próximos passos:

          OPÇÃO A - Profissionalização (Recomendado):
          "Quer planejar conteúdo do próximo mês? (Jornada #2)"

          OPÇÃO B - Continuar criando:
          "Quer criar mais 2-3 posts agora? (Workflow #4 - Lote)"

          OPÇÃO C - Explorar repurposing:
          "Quer transformar esse post em Instagram? (Workflow #5)"

          OPÇÃO D - Pausar:
          "Quer parar por aqui e voltar depois?"

    criterio-conclusao: |
      ✅ Founder entende como usar framework
      ✅ Próxima ação está clara
      ✅ Feedback capturado (se aplicável)

    saida:
      - Próxima jornada/workflow definido
      - Insights capturados em insights-journal.md
      - Estado atualizado em .foundry/state.yaml

rastreamento-progresso:
  arquivo: .foundry/state.yaml
  formato:
    jornada_ativa: zero-ao-primeiro-post
    fase_atual: 2
    iniciada_em: "2025-10-21T14:00:00Z"
    tempo_decorrido: 45min
    checkpoints_passados:
      - fase-1: aprovado
    proximo_passo: "Criar primeiro post"

metricas-sucesso:
  criterioas_mvp:
    - brain_preenchido: docs/brain.md >= 500 palavras
    - post_gerado: 1 post aprovado pelo founder
    - autenticidade_score: >= 7/10 (primeira vez)
    - satisfacao_founder: Confiante para continuar
    - tempo_total: <= 90min

  classificacao:
    excelente: |
      - Score >= 8/10
      - Tempo <= 75min
      - Founder animado para continuar
    bom: |
      - Score >= 7/10
      - Tempo <= 90min
      - Founder satisfeito
    aceitavel: |
      - Score >= 6/10
      - Tempo <= 120min
      - Founder precisa de mais calibração
      - Ação: agendar sessão de refinamento do brain.md

proximos-passos-sugeridos:
  recomendado:
    - Jornada #2: Profissionalização
    - Ou: Workflow #4 para criar mais 3-5 posts

  alternativo:
    - Workflow #5: Repurposing do post criado
    - Workflow #2: Planejar calendário mensal

  nao-recomendado:
    - Pular direto para Jornada #3 (precisa de mais posts antes)
```

---

### Jornada #2: Profissionalização

**Arquivo:** `.content-foundry/jornadas/02-profissionalizacao.md`

```yaml
jornada:
  id: profissionalizacao
  nome: Profissionalização
  descricao: Evolução de ad-hoc para sistema profissional de conteúdo
  icone: 📈
  publico-alvo: Founder que já criou 1-3 posts, quer escalar produção
  duracao-total: 90-120 minutos
  objetivo-final: |
    Founder tem:
    - Calendário editorial de 30 dias
    - Banco de 10-15 posts prontos
    - Sistema de produção em lote dominado
    - Visão estratégica de conteúdo

  pre-requisitos:
    - Jornada #1 completa (ou brain.md existe + 1-3 posts criados)
    - Founder decidido a ser consistente

  resultados-entregues:
    - docs/calendar.md (30 dias planejados)
    - 10-15 posts prontos em docs/content/
    - Sistema de trabalho definido (quando criar, como agendar)

fases:
  - numero: 1
    nome: "Planejamento Estratégico"
    objetivo: Criar calendário editorial mensal
    workflow: 02-planejamento-estrategico.md
    duracao: 45-60min

    detalhamento:
      - Sofia analisa brain.md e histórico
      - Define objetivos do mês
      - Pesquisa trends (opcional)
      - Gera 30-40 tópicos balanceados
      - Founder aprova e ajusta
      - Ana valida alinhamento de marca

    saida: docs/calendar.md com 30 dias planejados

  - numero: 2
    nome: "Produção em Lote"
    objetivo: Criar banco de conteúdo (semana 1 inteira)
    workflow: 04-producao-lote.md
    duracao: 40-60min

    detalhamento:
      - Sofia pega primeiros 10 tópicos do calendário
      - Produção paralela (múltiplos writers)
      - Validação em lote
      - Ajustes focados
      - Polimento final

    saida: 10 posts prontos (cobertura semana 1)

  - numero: 3
    nome: "Sistema de Trabalho"
    objetivo: Definir rotina e ferramentas
    duracao: 15-20min

    detalhamento:
      - Carlos discute com founder:
        "Como você quer trabalhar?

        OPÇÃO A - Criação em lote semanal:
        - Segunda de manhã: cria 10 posts
        - Agenda tudo na ferramenta (Buffer/Hootsuite)
        - Semana livre de criação

        OPÇÃO B - Criação ad-hoc com calendário:
        - Consulta calendar.md diariamente
        - Cria post do dia quando tem tempo
        - Mais flexível, menos batching

        OPÇÃO C - Híbrido:
        - Lote quinzenal (20 posts)
        - Ajustes ad-hoc quando necessário

        Qual você prefere?"

      - Define:
        * Frequência de criação
        * Ferramenta de agendamento
        * Workflow padrão (Express vs Lote)

    saida: Sistema documentado em docs/roadmap.md

metricas-sucesso:
  - calendar.md criado (30 dias)
  - >= 10 posts prontos
  - Sistema de trabalho definido
  - Founder confiante para manter consistência
```

---

### Jornada #3: Eficiência Multi-Canal

**Arquivo:** `.content-foundry/jornadas/03-eficiencia-multi-canal.md`

```yaml
jornada:
  id: eficiencia-multi-canal
  nome: Eficiência Multi-Canal
  descricao: Dominar repurposing e produção para 3+ canais simultaneamente
  icone: 🎬
  publico-alvo: Founder produzindo consistentemente há 2+ semanas, quer escalar canais
  duracao-total: 60-90 minutos
  objetivo-final: |
    Founder domina:
    - Repurposing estratégico (1 post → 4 canais)
    - Produção multi-canal eficiente
    - Maximização de ROI de conteúdo

  pre-requisitos:
    - Jornada #2 completa
    - Pelo menos 10 posts publicados
    - Founder dominando 1 canal (geralmente LinkedIn)

  resultados-entregues:
    - Estratégia de repurposing definida
    - 1 peça de conteúdo → 4 adaptações (LinkedIn, Insta Feed, Reels, Newsletter)
    - Calendário multi-canal atualizado

fases:
  - numero: 1
    nome: "Seleção de Conteúdo Âncora"
    objetivo: Identificar melhor post para repurposar
    duracao: 10min

    detalhamento:
      - Rodrigo analisa posts existentes:
        * Qual teve melhor performance?
        * Qual tem mensagem mais universal?
        * Qual founder mais gostou?

      - Founder escolhe 1 post âncora

    saida: Post selecionado para repurposing

  - numero: 2
    nome: "Repurposing Multi-Canal"
    objetivo: Transformar 1 post em 4 versões
    workflow: 05-repurposing.md (executado 3x)
    duracao: 30-45min

    detalhamento:
      - Original: LinkedIn
      - Adaptação 1: Instagram Feed (Marina)
      - Adaptação 2: Instagram Reels (Bruno - roteiro)
      - Adaptação 3: Newsletter (Patricia - expandido)

      Cada adaptação:
      - Mantém essência
      - Adapta formato
      - Ajusta tom

    saida: 4 versões do mesmo conteúdo

  - numero: 3
    nome: "Estratégia de Distribuição"
    objetivo: Definir sistema de repurposing contínuo
    duracao: 20-30min

    detalhamento:
      - Carlos apresenta modelo:
        "Agora você tem 1 post em 4 versões. Vamos criar um sistema:

        SISTEMA RECOMENDADO:
        - Segunda: Post LinkedIn (âncora)
        - Terça: Aguarda performance (24h)
        - Quarta: Se performou bem → repurposing
          * Instagram Feed (mesmo dia)
          * Reels (2 dias depois)
          * Newsletter (inclui em próxima edição)

        FREQUÊNCIA:
        - 1-2x/semana: repurposing completo
        - Outros posts: single-canal

        Isso funciona para você?"

      - Atualiza calendar.md com estratégia multi-canal

    saida:
      - Sistema de repurposing documentado
      - Calendar.md atualizado
      - Founder dominando eficiência multi-canal

metricas-sucesso:
  - 1 post transformado em 4 versões
  - Sistema de repurposing definido
  - Founder confiante para executar sozinho
  - Tempo <= 90min
```

---

### Rastreamento de Progresso de Jornadas

**Sistema de State Machine:**

```yaml
# .foundry/state.yaml - exemplo durante Jornada #1

jornada:
  ativa: true
  id: zero-ao-primeiro-post
  iniciada_em: "2025-10-21T14:00:00Z"

  progresso:
    fase_atual: 2
    fases_completas:
      - 1: "Onboarding completo em 55min"

    tempo_decorrido_total: 65min
    tempo_estimado_restante: 15-25min

  checkpoints:
    - fase: 1
      checkpoint: "brain.md aprovado"
      timestamp: "2025-10-21T14:55:00Z"
      resultado: aprovado

    - fase: 2
      checkpoint: "post gerado"
      timestamp: "2025-10-21T15:10:00Z"
      resultado: aguardando_aprovacao

  proximo_passo:
    descricao: "Founder precisa aprovar post gerado"
    acao: "Revisar e dar feedback"
    opcoes:
      - aprovar: avança para fase 3
      - ajustar: volta para passo de ajustes

  pode_pausar: true
  ponto_retomada: "Fase 2, post gerado aguardando aprovação"
```

**Visualização de Progresso (apresentada ao founder):**

```
🚀 JORNADA: Do Zero ao Primeiro Post

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

PROGRESSO: 66% completo

✅ Fase 1: Onboarding (55min) - COMPLETO
   └─ brain.md criado e aprovado

🔄 Fase 2: Primeira Produção (em andamento)
   └─ Post LinkedIn gerado
   └─ Aguardando sua aprovação

⏸️  Fase 3: Reflexão (pendente)

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

⏱️  Tempo: 65min / ~90min estimado
🎯 Falta: 1 aprovação + reflexão final

PRÓXIMO PASSO: Revisar post gerado
```

---

### Resumo da Fase 2.6

**✅ Definido:**

**9 Workflows Completos:**
1. ✅ Onboarding Inicial (60-90min, CRÍTICO)
2. ✅ Planejamento Estratégico (45-60min)
3. ✅ Produção Express (15-30min, quick win)
4. ✅ Produção em Lote (90-120min)
5. ✅ Repurposing (10-20min)
6. ✅ Trend Jacking (20-30min, validação crítica)
7. ✅ Performance Review (30min, resumo)
8. ✅ Resgate Consistência (20min, resumo)
9. ✅ Atualização Cérebro (30-45min, resumo)

**3 Jornadas Guiadas:**
1. ✅ Do Zero ao Primeiro Post (60-90min) - onboarding completo
2. ✅ Profissionalização (90-120min) - escala produção
3. ✅ Eficiência Multi-Canal (60-90min) - repurposing mastery

**Sistema de State Machine:**
- ✅ Rastreamento de progresso
- ✅ Checkpoints e validações
- ✅ Possibilidade de pausar/retomar
- ✅ Visualização de progresso

**Próximo Passo:** Fase 3.7 - Templates & Outputs (como conteúdo é gerado e formatado)

---

