## 🎭 FASE 2.5: SISTEMA DE ORQUESTRAÇÃO DE AGENTES

### Visão Geral

O **Orchestrator (Carlos)** é o maestro do Content Foundry. Ele coordena os 20+ agentes especializados, gerencia workflows, delega tarefas, e garante que tudo funcione harmoniosamente.

**Papel do Orchestrator:**
- Ponto de entrada para o founder (primeira interação)
- Analisa requisições e decide qual agente(s) chamar
- Coordena pipelines complexos (múltiplos agentes em sequência/paralelo)
- Gerencia estado e contexto compartilhado
- Lida com erros e fallbacks
- Facilita handoffs entre agentes

**Localização:** `.content-foundry/agents/orchestrator.md`

---

### Arquitetura do Orchestrator

**Estrutura do Agente Carlos:**

```yaml
agente:
  nome: Carlos
  id: orchestrator
  titulo: Orquestrador & Maestro
  icone: 🎯
  quando-usar: Ponto de entrada principal, coordenação de workflows complexos
  customizacao: |
    - É o agente "padrão" quando founder inicia sessão
    - Nunca gera conteúdo diretamente - sempre delega
    - Mantém visão holística do projeto
    - Conhece todos os 20 agentes e quando usar cada um

persona:
  papel: Coordenador estratégico e facilitador
  estilo: Eficiente, claro, orientado a resultados, empático
  identidade: Maestro que orquestra agentes especializados para entregar resultados
  foco: Eficiência, qualidade, experiência do founder
  principios-chave:
    - Delegar ao Especialista Certo - Nunca fazer o que outro agente faz melhor
    - Contexto é Rei - Sempre carregar brain.md e estado do projeto
    - Transparência Total - Explicar o que está fazendo e por quê
    - Eficiência sem Pressa - Fazer rápido, mas fazer certo
    - Aprendizado Contínuo - Capturar insights para melhorar sistema

comandos:
  - ajuda: Mostra comandos disponíveis + sugere próximos passos baseado em estado
  - status: Mostra estado atual do projeto (brain.md existe? conteúdo gerado? workflows ativos?)
  - sugerir: Analisa contexto e sugere o que fazer (ex: "Você tem brain.md mas nenhum post ainda. Quer criar um?")
  - chamar-agente {agente-id}: Delega tarefa para agente específico
  - workflow {workflow-id}: Executa workflow completo
  - jornada {jornada-id}: Inicia jornada guiada
  - criar-calendario: Delega para content-strategist criar calendário editorial
  - gerar-post-rapido {canal} {topico}: Atalho para Workflow #3 (Produção Express)
  - revisar-brain: Sugere atualizações no brain.md baseado em uso
  - sair: Despede-se e encerra sessão

dependencias:
  dados:
    - agent-registry.yaml  # Registro de todos os agentes e capacidades
    - workflow-registry.yaml  # Registro de workflows disponíveis
  tarefas:
    - analisar-requisicao.md  # Analisa o que founder quer e decide rota
    - selecionar-agente.md  # Escolhe agente(s) apropriado(s)
    - executar-pipeline.md  # Coordena múltiplos agentes
    - gerenciar-estado.md  # Atualiza .foundry/state.yaml
  templates:
    - session-summary.yaml  # Resumo de sessão
```

---

### Sistema de Decisão: Qual Agente Chamar?

**Agent Registry (`.content-foundry/data/agent-registry.yaml`):**

```yaml
# Registro de todos os agentes e suas capacidades

agentes:
  # --------------------
  # CORE
  # --------------------
  - id: orchestrator
    nome: Carlos
    categoria: core
    capacidades:
      - Coordenação de workflows
      - Delegação de tarefas
      - Análise de requisições
    quando_usar:
      - Ponto de entrada padrão
      - Workflows complexos multi-agente
      - Dúvidas sobre o que fazer

  - id: elicitation-expert
    nome: Elena
    categoria: core
    capacidades:
      - Onboarding de founders
      - Extração de conhecimento profundo
      - Entrevistas estruturadas
    quando_usar:
      - Criar/atualizar brain.md
      - Capturar histórias do founder
      - Aprofundar pilares de conteúdo
    keywords_trigger:
      - "onboarding"
      - "criar cérebro"
      - "atualizar brain"
      - "conhecer melhor"

  # --------------------
  # ESTRATÉGIA & PESQUISA
  # --------------------
  - id: content-strategist
    nome: Sofia
    categoria: estrategia
    capacidades:
      - Planejamento de calendário editorial
      - Estratégia de conteúdo multi-canal
      - Análise de gaps de conteúdo
    quando_usar:
      - Criar calendário editorial
      - Planejar campanha de conteúdo
      - Definir estratégia trimestral
    keywords_trigger:
      - "calendário"
      - "planejar"
      - "estratégia"
      - "próximos posts"

  - id: research-analyst
    nome: Pedro
    categoria: estrategia
    capacidades:
      - Pesquisa de mercado
      - Análise de tendências
      - Competitive intelligence
    quando_usar:
      - Pesquisar tópico antes de criar conteúdo
      - Analisar concorrência
      - Identificar trends
    keywords_trigger:
      - "pesquisar"
      - "tendência"
      - "competidor"
      - "mercado"

  - id: brand-guardian
    nome: Ana
    categoria: estrategia
    capacidades:
      - Validação de alinhamento de marca
      - Proteção de valores do founder
      - Checagem de consistência
    quando_usar:
      - Validar conteúdo antes de publicar
      - Verificar alinhamento com valores
      - Review final de qualidade
    keywords_trigger:
      - "validar marca"
      - "alinhamento"
      - "está consistente"

  # --------------------
  # IDEAÇÃO
  # --------------------
  - id: hook-creator
    nome: Julio
    categoria: ideacao
    capacidades:
      - Criação de ganchos poderosos
      - Otimização de primeiras linhas
      - Teste A/B de hooks
    quando_usar:
      - Melhorar gancho de post existente
      - Gerar opções de abertura
      - Post não está prendendo atenção
    keywords_trigger:
      - "gancho"
      - "hook"
      - "primeiras linhas"
      - "chamar atenção"

  - id: storytelling-miner
    nome: Rafael
    categoria: ideacao
    capacidades:
      - Extrair histórias do brain.md
      - Transformar experiências em narrativas
      - Identificar momentos storytelling-worthy
    quando_usar:
      - Encontrar história relevante para tópico
      - Transformar caso em narrativa
      - Humanizar conteúdo técnico
    keywords_trigger:
      - "história"
      - "narrativa"
      - "caso"
      - "experiência"

  # --------------------
  # PRODUÇÃO (WRITERS)
  # --------------------
  - id: linkedin-writer
    nome: Lucas
    categoria: producao
    canal: linkedin
    capacidades:
      - Posts LinkedIn (thought leadership)
      - Artigos longos LinkedIn
      - Carrosséis PDF
    quando_usar:
      - Criar post para LinkedIn
      - Expandir post em artigo
      - Criar carrossel educativo
    keywords_trigger:
      - "linkedin"
      - "post profissional"
      - "b2b"
      - "artigo"

  - id: linkedin-article-writer
    nome: Fernanda
    categoria: producao
    canal: linkedin
    capacidades:
      - Artigos longos LinkedIn (1000-2000 palavras)
      - Conteúdo aprofundado B2B
    quando_usar:
      - Transformar post em artigo
      - Conteúdo educativo profundo
      - Thought leadership extenso
    keywords_trigger:
      - "artigo linkedin"
      - "conteúdo longo"
      - "aprofundar"

  - id: instagram-feed-writer
    nome: Marina
    categoria: producao
    canal: instagram
    capacidades:
      - Legendas Instagram Feed
      - Carrosséis visuais (texto para designer)
      - Posts inspiracionais
    quando_usar:
      - Post para Instagram feed
      - Carrossel educativo Instagram
      - Conteúdo mais visual/casual
    keywords_trigger:
      - "instagram"
      - "feed"
      - "carrossel"
      - "visual"

  - id: reels-script-writer
    nome: Bruno
    categoria: producao
    canal: instagram
    capacidades:
      - Roteiros de Reels
      - Scripts curtos e dinâmicos
      - Hooks para vídeo
    quando_usar:
      - Criar Reels
      - Vídeo curto Instagram
      - Conteúdo dinâmico
    keywords_trigger:
      - "reels"
      - "vídeo curto"
      - "instagram video"

  - id: stories-strategist
    nome: Camila
    categoria: producao
    canal: instagram
    capacidades:
      - Sequências de Stories
      - Conteúdo efêmero estratégico
      - Engajamento direto
    quando_usar:
      - Stories Instagram
      - Conteúdo diário/rápido
      - Engajamento direto com audiência
    keywords_trigger:
      - "stories"
      - "temporário"
      - "diário"

  - id: video-script-writer
    nome: Daniel
    categoria: producao
    canal: youtube
    capacidades:
      - Roteiros YouTube
      - Scripts educativos longos
      - Estrutura de vídeo
    quando_usar:
      - Vídeo YouTube
      - Conteúdo educativo longo
      - Tutorial em vídeo
    keywords_trigger:
      - "youtube"
      - "vídeo"
      - "roteiro"
      - "script"

  - id: newsletter-writer
    nome: Patricia
    categoria: producao
    canal: newsletter
    capacidades:
      - Newsletters
      - Email marketing
      - Conteúdo íntimo/pessoal
    quando_usar:
      - Newsletter
      - Email para lista
      - Conteúdo mais pessoal/profundo
    keywords_trigger:
      - "newsletter"
      - "email"
      - "lista"

  # --------------------
  # QUALIDADE
  # --------------------
  - id: editor-proofreader
    nome: Rita
    categoria: qualidade
    capacidades:
      - Revisão gramatical
      - Edição de clareza
      - Polimento final
    quando_usar:
      - Revisar antes de publicar
      - Polir conteúdo
      - Verificar gramática/ortografia
    keywords_trigger:
      - "revisar"
      - "editar"
      - "polir"
      - "gramática"

  - id: voice-validator
    nome: Beatriz
    categoria: qualidade
    capacidades:
      - Validação de autenticidade
      - Verificação de voz do founder
      - Scoring de similaridade
    quando_usar:
      - Validar se soa como founder
      - Verificar autenticidade
      - Score de voz
    keywords_trigger:
      - "validar voz"
      - "autenticidade"
      - "soa como eu"
      - "parece meu"

  # --------------------
  # OTIMIZAÇÃO
  # --------------------
  - id: repurposing-specialist
    nome: Rodrigo
    categoria: otimizacao
    capacidades:
      - Repurposing cross-canal
      - Adaptação de formatos
      - Maximizar ROI de conteúdo
    quando_usar:
      - Transformar post LinkedIn em Reels
      - Adaptar conteúdo para outro canal
      - Aproveitar conteúdo existente
    keywords_trigger:
      - "repurposing"
      - "transformar"
      - "adaptar"
      - "reaproveitar"

  - id: seo-optimizer
    nome: Guilherme
    categoria: otimizacao
    capacidades:
      - Otimização SEO
      - Keywords strategy
      - Discoverability
    quando_usar:
      - Otimizar para busca
      - Melhorar discoverability
      - SEO de artigos/YouTube
    keywords_trigger:
      - "seo"
      - "busca"
      - "palavras-chave"
      - "descoberta"

  - id: engagement-optimizer
    nome: Larissa
    categoria: otimizacao
    capacidades:
      - Otimização de engajamento
      - A/B testing de elementos
      - Análise de performance
    quando_usar:
      - Melhorar engajamento
      - Otimizar CTA
      - Aumentar interação
    keywords_trigger:
      - "engajamento"
      - "interação"
      - "performance"
      - "otimizar"
```

**Lógica de Decisão do Orchestrator:**

```yaml
# Tarefa: analisar-requisicao.md

decisao_flow:
  1_analise_inicial:
    - Carregar docs/brain.md (contexto do founder)
    - Carregar .foundry/state.yaml (estado atual do projeto)
    - Analisar requisição do founder

  2_pattern_matching:
    # Tenta match com keywords conhecidos
    - Buscar keywords_trigger em agent-registry.yaml
    - Identificar canal mencionado (linkedin/instagram/youtube/newsletter)
    - Identificar tipo de conteúdo (post/artigo/vídeo/carrossel)
    - Identificar intent (criar/revisar/planejar/validar)

  3_decisao:
    casos:
      # Caso 1: Requisição clara e específica
      - se: "keyword match claro + canal identificado"
        entao: Delegar diretamente ao agente apropriado
        exemplo: "criar post linkedin sobre IA" → linkedin-writer

      # Caso 2: Requisição vaga
      - se: "intent claro mas detalhes faltando"
        entao: Elicitar detalhes antes de delegar
        exemplo:
          founder: "quero criar conteúdo"
          carlos: "Sobre qual canal? (LinkedIn/Instagram/YouTube/Newsletter)"
          founder: "linkedin"
          carlos: "Post curto ou artigo longo?"
          → delega para linkedin-writer

      # Caso 3: Workflow complexo
      - se: "requisição envolve múltiplos passos"
        entao: Executar workflow apropriado
        exemplo: "quero planejar mês de conteúdo" → workflow #2 (Planejamento Estratégico)

      # Caso 4: Primeiro uso (sem brain.md)
      - se: "brain.md não existe"
        entao: Sempre redirecionar para onboarding
        exemplo:
          carlos: "Você ainda não tem Cérebro Digital. Vamos criar? (60-90min)"
          → workflow #1 (Onboarding)

      # Caso 5: Dúvida/ajuda
      - se: "founder não sabe o que fazer"
        entao: Comando *sugerir (análise contextual)
        exemplo:
          carlos analisa:
          - brain.md existe? ✅
          - conteúdo já gerado? ❌
          - calendário existe? ❌
          → sugere: "Quer criar seu primeiro post? Ou prefere planejar um mês inteiro?"

  4_delegacao:
    - Carregar arquivo do agente selecionado
    - Passar contexto necessário (brain.md, inputs do founder)
    - Monitorar execução
    - Receber output do agente
    - Apresentar ao founder

  5_pos_delegacao:
    - Atualizar .foundry/state.yaml (registro de ação)
    - Perguntar: "Ficou bom? Precisa ajustar algo?"
    - Sugerir próximos passos relacionados
    exemplo:
      - Post LinkedIn criado ✅
      - Carlos: "Post pronto! Próximos passos:
        1. Repurposing para Instagram? (chamo Rodrigo)
        2. Criar outro post para esta semana?
        3. Validar voz com Beatriz antes de publicar?"
```

---

### Pipelines: Sequencial vs Paralelo

**Pipeline Sequencial (passos dependentes):**

```yaml
# Exemplo: Workflow #3 - Produção Express

pipeline_sequencial:
  contexto: Cada passo depende do anterior

  passos:
    - passo_1:
        agente: orchestrator
        acao: Analisar tópico e canal
        output: contexto_topico

    - passo_2:
        agente: linkedin-writer (ou outro writer)
        acao: Gerar rascunho de post
        input: contexto_topico + brain.md
        output: post_rascunho

    - passo_3:
        agente: voice-validator
        acao: Validar autenticidade
        input: post_rascunho + brain.md
        output: validacao_score + feedback

    - passo_4:
        agente: linkedin-writer
        acao: Ajustar baseado em feedback
        input: post_rascunho + feedback
        output: post_ajustado

    - passo_5:
        agente: editor-proofreader
        acao: Polimento final
        input: post_ajustado
        output: post_final

  fluxo_dados:
    orchestrator → writer → validator → writer (v2) → editor → DONE
```

**Pipeline Paralelo (passos independentes):**

```yaml
# Exemplo: Validação Paralela (economiza tempo)

pipeline_paralelo:
  contexto: Passos podem executar simultaneamente

  trigger: post_rascunho gerado

  passos_paralelos:
    - validacao_voz:
        agente: voice-validator
        acao: Verificar autenticidade
        input: post_rascunho + brain.md
        output: score_voz
        tempo: 30s

    - validacao_marca:
        agente: brand-guardian
        acao: Verificar alinhamento valores
        input: post_rascunho + brain.md (valores)
        output: score_marca
        tempo: 20s

    - validacao_seo:
        agente: seo-optimizer
        acao: Verificar otimização (se aplicável)
        input: post_rascunho
        output: sugestoes_seo
        tempo: 15s

  agregacao:
    - Aguardar todos terminarem
    - Compilar feedbacks
    - Passar para próximo passo (ajustes)

  vantagem:
    - Tempo total: max(30s, 20s, 15s) = 30s
    - Se fosse sequencial: 30s + 20s + 15s = 65s
    - Economia: 54% de tempo
```

**Pipeline Híbrido (sequencial + paralelo):**

```yaml
# Exemplo: Workflow #4 - Produção em Lote

pipeline_hibrido:
  fase_1_planejamento:
    tipo: sequencial
    passos:
      - orchestrator: analisar necessidade
      - content-strategist: criar plano de 10 posts
      - orchestrator: aprovar plano com founder

  fase_2_producao:
    tipo: paralelo  # Múltiplos posts ao mesmo tempo
    passos_paralelos:
      - post_1: linkedin-writer gera post sobre tópico A
      - post_2: linkedin-writer gera post sobre tópico B
      - post_3: instagram-writer gera post sobre tópico C
    # Claude pode "pensar" sobre múltiplos posts em uma iteração

  fase_3_validacao:
    tipo: paralelo
    para_cada_post:
      - voice-validator
      - brand-guardian

  fase_4_polimento:
    tipo: sequencial
    passos:
      - editor-proofreader revisa todos
      - orchestrator compila e apresenta lote completo
```

---

### Comunicação Entre Agentes

**Protocolo de Handoff (passagem de bastão):**

```yaml
handoff_protocol:
  quando: Agente A termina tarefa e passa para Agente B

  formato:
    de: {agente-id-origem}
    para: {agente-id-destino}
    contexto:
      - resumo_ate_agora: {o que já foi feito}
      - artefato_gerado: {output do agente anterior}
      - proxima_acao: {o que o próximo agente deve fazer}
      - restricoes: {constraints específicos}

  exemplo:
    # LinkedIn Writer → Voice Validator
    handoff:
      de: linkedin-writer (Lucas)
      para: voice-validator (Beatriz)
      contexto:
        resumo_ate_agora: "Gerei post LinkedIn sobre IA em marketing, 250 palavras, estrutura problema-solução"
        artefato_gerado: post_rascunho_v1.md
        proxima_acao: "Validar se soa como Vitor. Ele usa safe_mode=balanced, pilares=IA+marketing. Verificar se não ficou muito genérico."
        restricoes: "Score mínimo 8/10 para aprovar. Se <8, retornar feedback específico para eu ajustar."

    # Voice Validator → LinkedIn Writer (feedback loop)
    handoff_retorno:
      de: voice-validator (Beatriz)
      para: linkedin-writer (Lucas)
      contexto:
        resumo_ate_agora: "Validei post, score 7/10"
        artefato_gerado: validacao_feedback.yaml
        feedback_especifico:
          - "Tom muito formal (Vitor é mais casual no LinkedIn)"
          - "Faltou assinatura dele ('Olha só' ou similar)"
          - "CTA genérico - trocar por pergunta provocativa"
        proxima_acao: "Ajustar post aplicando feedback acima, re-submeter para validação"
```

**Contexto Compartilhado (.foundry/state.yaml):**

```yaml
# .foundry/state.yaml - Estado da sessão atual

sessao:
  id: "sess_2025-10-21_143022"
  iniciada_em: "2025-10-21T14:30:22Z"
  agente_ativo: "linkedin-writer"
  workflow_ativo: "producao-express"

  historico_agentes:
    - agente: orchestrator
      acao: "Analisou requisição inicial"
      timestamp: "2025-10-21T14:30:25Z"

    - agente: linkedin-writer
      acao: "Gerou post sobre IA em marketing"
      timestamp: "2025-10-21T14:35:10Z"
      artefato: "docs/content/linkedin/2025-10-21-ia-marketing.md"

    - agente: voice-validator
      acao: "Validou voz (score 7/10)"
      timestamp: "2025-10-21T14:36:05Z"
      resultado: "precisa_ajustes"

  contexto_atual:
    topico: "IA aplicada a marketing"
    canal: "linkedin"
    pilar: "pilar-1"
    artefatos_gerados:
      - post_rascunho_v1: "docs/content/linkedin/draft_v1.md"
      - feedback_validacao: ".foundry/temp/validacao_feedback.yaml"

  proximos_passos:
    - "LinkedIn Writer ajustar post baseado em feedback"
    - "Re-validar com Voice Validator"
    - "Se aprovar: Editor final"
    - "Salvar e apresentar ao founder"
```

---

### Error Handling e Fallbacks

**Estratégias de Recuperação:**

```yaml
error_handling:
  # Erro 1: Agente não consegue completar tarefa
  agente_falha:
    deteccao:
      - Agente retorna erro explícito
      - Output vazio ou inválido
      - Timeout (>5min sem resposta)

    estrategia:
      1_retry:
        - Tentar novamente com prompt refinado
        - Max 2 tentativas

      2_agente_alternativo:
        - Se disponível, chamar agente backup
        - Exemplo: linkedin-writer falha → linkedin-article-writer tenta versão curta

      3_escalacao_humana:
        - Informar founder do problema
        - Pedir input manual
        - Exemplo: "Lucas tentou gerar post mas não conseguiu capturar seu tom. Você pode dar um exemplo de como escreveria isso?"

  # Erro 2: Validação falha repetidamente
  validacao_loop:
    deteccao:
      - Voice Validator reprova 3x seguidas
      - Score não melhora entre iterações

    estrategia:
      1_analise_gap:
        - Orchestrator analisa: por que não está passando?
        - Identifica padrão nos feedbacks

      2_ajuste_estrategia:
        - Mudar abordagem (ex: pedir exemplo real do founder)
        - Consultar seção diferente do brain.md

      3_aceitar_imperfeicao:
        - Se score >= 7/10 após 3 tentativas
        - Perguntar ao founder: "Não consegui 8/10, mas chegou em 7/10. Quer publicar assim ou continuar refinando?"

  # Erro 3: Brain.md incompleto/desatualizado
  brain_insuficiente:
    deteccao:
      - Agente precisa de informação não presente no brain
      - Múltiplos agentes fazem mesma pergunta

    estrategia:
      1_elicitacao_just_in_time:
        - Orchestrator pausa workflow
        - Chama Elicitation Expert para preencher gap
        - Retoma workflow

      2_update_brain:
        - Adiciona informação elicitada ao brain.md
        - Tag como v1.x.y (patch update)

  # Erro 4: Requisição ambígua
  requisicao_ambigua:
    deteccao:
      - Múltiplos agentes poderiam fazer a tarefa
      - Faltam parâmetros críticos

    estrategia:
      1_clarificacao:
        - Orchestrator pergunta especificamente
        - Apresenta opções numeradas
        - Exemplo:
          Founder: "quero criar conteúdo sobre IA"
          Carlos: "Entendi! Algumas opções:
            1. Post LinkedIn (profissional, B2B)
            2. Carrossel Instagram (visual, casual)
            3. Roteiro YouTube (educativo, profundo)
            4. Newsletter (pessoal, íntimo)
            Qual você prefere? Ou posso sugerir baseado no seu calendário?"

  # Erro 5: Conteúdo gerado viola Safe Mode
  safe_mode_violation:
    deteccao:
      - Brand Guardian identifica violação
      - Conteúdo muito polêmico/arriscado para safe_mode configurado

    estrategia:
      1_bloquear:
        - Não apresentar ao founder
        - Regenerar automaticamente com restrições mais claras

      2_avisar:
        - "Este conteúdo está mais ousado que seu safe_mode (balanced). Quer ver mesmo assim ou prefiro regenerar?"

      3_sugerir_ajuste:
        - "Quer mudar temporariamente para safe_mode=bold para este post específico?"
```

**Logging e Debug:**

```yaml
# .foundry/debug-log.md

debug_logging:
  quando: Sempre (em desenvolvimento), opcional (em produção)

  nivel:
    - ERROR: Falhas críticas
    - WARN: Problemas não-críticos
    - INFO: Ações importantes (delegações, handoffs)
    - DEBUG: Detalhes de execução (para debugging)

  formato:
    timestamp: ISO 8601
    nivel: ERROR|WARN|INFO|DEBUG
    agente: {agente-id}
    acao: {descrição}
    contexto: {dados relevantes}

  exemplo:
    - "[2025-10-21T14:35:10Z] INFO [orchestrator] Delegando para linkedin-writer (tópico: IA em marketing)"
    - "[2025-10-21T14:36:05Z] WARN [voice-validator] Score baixo (7/10) - feedback enviado para ajustes"
    - "[2025-10-21T14:37:22Z] ERROR [linkedin-writer] Falha ao gerar post - brain.md sem seção 'Histórias'. Iniciando elicitação just-in-time."
```

---

### Inteligência do Orchestrator

**Análise Contextual (comando *sugerir):**

```yaml
sugestao_inteligente:
  inputs:
    - Estado atual (.foundry/state.yaml)
    - Brain.md do founder
    - Calendário editorial (se existe)
    - Histórico de conteúdo gerado
    - Data/hora atual
    - Dia da semana

  logica:
    # Cenário 1: Novo usuário
    - se: brain.md não existe
      sugestao: "Vamos criar seu Cérebro Digital? (60min)"
      prioridade: CRÍTICA

    # Cenário 2: Brain criado, nenhum conteúdo ainda
    - se: brain.md existe + conteúdo_gerado == 0
      sugestao:
        - "Primeira vez aqui! Opções:
           1. Criar seu primeiro post (teste rápido, 20min)
           2. Planejar mês inteiro (calendário de 30 dias, 45min)
           Qual você prefere?"

    # Cenário 3: Dia de publicação (baseado em calendário)
    - se: calendario existe + hoje tem post agendado
      sugestao:
        - "Segundo seu calendário, hoje é dia de post LinkedIn sobre '{topico}'.
           Quer que eu gere agora? (15min)"

    # Cenário 4: Semana sem publicar
    - se: ultimo_post > 7 dias atrás
      sugestao:
        - "Faz 7 dias sem postar. Quer:
           1. Criar post rápido (20min)
           2. Repurposar conteúdo antigo (10min)
           3. Adiar para outro dia?"

    # Cenário 5: Conteúdo pendente de validação
    - se: drafts existem + status == "aguardando_aprovacao"
      sugestao:
        - "Você tem 2 posts aguardando sua aprovação.
           Quer revisar agora?"

    # Cenário 6: Brain desatualizado
    - se: brain.versao.ultima_atualizacao > 90 dias
      sugestao:
        - "Seu brain.md tem 3 meses. Quer revisá-lo?
           Pessoas evoluem, seu conteúdo também deveria. (20min)"

    # Cenário 7: Performance insights disponíveis
    - se: posts_publicados >= 10
      sugestao:
        - "Já publicou 10+ posts! Quer análise de performance?
           Posso identificar o que funciona melhor para você."

  output:
    - Sugestão clara e acionável
    - Estimativa de tempo
    - Opções numeradas (fácil de escolher)
```

**Aprendizado do Sistema:**

```yaml
# .foundry/analytics.yaml (métricas internas)

aprendizado_continuo:
  metricas_capturadas:
    - tempo_medio_por_workflow
    - taxa_aprovacao_primeira_tentativa
    - agentes_mais_usados
    - score_medio_voice_validation
    - topicos_mais_frequentes
    - horarios_uso_founder

  insights_gerados:
    exemplo_1:
      observacao: "Posts sobre 'fracassos' têm score voice 9/10 (vs média 7.5/10)"
      acao: "Orchestrator sugere mais posts nesse tema"

    exemplo_2:
      observacao: "Founder sempre usa sistema terça 9h e quinta 15h"
      acao: "Orchestrator manda lembrete nesses horários se calendário tem post agendado"

    exemplo_3:
      observacao: "LinkedIn Writer precisa de média 2.3 iterações para atingir score 8/10"
      acao: "Calibrar prompts do Lucas para melhorar primeira tentativa"

  otimizacao_automatica:
    - Se agente falha >30% das vezes: sugerir refinamento do agente
    - Se workflow específico nunca é usado: considerar remover ou simplificar
    - Se founder sempre pula validação X: perguntar se quer desabilitar
```

---

### Resumo da Fase 2.5

**✅ Definido:**

1. **Orchestrator (Carlos):** Maestro que coordena 20+ agentes
2. **Agent Registry:** Catálogo completo de agentes + capacidades + triggers
3. **Sistema de Decisão:** Como Carlos escolhe qual agente chamar (pattern matching + análise contextual)
4. **Pipelines:** Sequencial, Paralelo, Híbrido (com exemplos)
5. **Comunicação:** Protocolo de handoff + contexto compartilhado
6. **Error Handling:** 5 tipos de erro + estratégias de recuperação
7. **Inteligência:** Sugestões contextuais + aprendizado contínuo

**Próximo Passo:** Fase 2.6 - Implementação detalhada dos 9 Workflows & 3 Jornadas

---

