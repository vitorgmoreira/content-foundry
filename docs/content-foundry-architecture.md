# Content Foundry - Arquitetura Técnica v1.0

**Data:** 2025-10-21
**Versão:** 1.0 (Config-Based MVP)
**Arquiteto:** Winston (BMad Architect)
**Product Owner:** Vitor Garcia

---

## 📋 EXECUTIVE SUMMARY

**Content Foundry** é um framework AI-First de produção de conteúdo para Founder-Led Marketing. A versão 1.0 é baseada em configuração (inspirada no BMad Method), rodando dentro do Claude Code para validação rápida com teste interno.

**Diferenciais:**
- Cérebro Digital profundo que captura autenticidade do founder
- 20 agentes especializados trabalhando em conjunto
- Sistema de produção (não consultoria) - entrega conteúdo pronto
- 9 workflows + 3 jornadas pré-definidas

---

## 🎯 FASE 1.1: DECISÕES ESTRATÉGICAS & CONSTRAINTS

### Deployment Model
**Decisão:** Config-Based Framework (opção A)

**Detalhes:**
- Framework baseado em arquivos YAML + Markdown
- Roda dentro do Claude Code (interpreta configs)
- Inspirado no BMad Method
- Zero código Python/Node no MVP
- Pura configuração e templates

**Rationale:**
- Time-to-market ultra-rápido (2-4 semanas vs 2-3 meses)
- Validação com usuário real (Vitor) antes de investir em standalone
- 80% dos YAMLs/templates reutilizáveis na v2.0 standalone
- Menor risco, maior aprendizado

**Roadmap Futuro:**
- v1.0 (MVP): Config-based para validação interna
- v2.0 (Scale): Standalone app Python/Node se validar
- Possível path to SaaS na v2.0

---

### Runtime Environment
**Decisão:** Claude Code

**Detalhes:**
- CLI oficial da Anthropic
- Interpreta arquivos `.content-foundry/`
- Agentes são "personas" que Claude assume
- Templates guiam outputs

**Dependências:**
- Claude Code instalado
- Acesso à API Claude (Sonnet/Opus)
- Projeto estruturado com `.content-foundry/`

---

### Estratégia de Teste
**Decisão:** Teste interno (single founder)

**Fases:**
1. **Interno (Semana 1-8):** Vitor usa para próprio conteúdo
2. **Validação:** Se funcionar bem, considerar v2.0 standalone
3. **Escala:** Standalone app para comercialização

**Cenário de Uso MVP:**
- 1 founder (Vitor Garcia)
- Teste real em produção (conteúdo próprio)
- Iteração rápida baseada em uso real
- Coleta de learnings para v2.0

---

### Armazenamento de Dados

#### Cérebro Digital
**Decisão:** Hybrid (Markdown + YAML frontmatter)

**Estrutura:**
```markdown
---
founder:
  name: Vitor Garcia
  nicho: Marketing Tech & AI
  empresa: [nome da empresa]

  tom:
    geral: Técnico mas acessível
    linkedin: Profissional, thought leadership
    instagram: Mais casual, inspiracional

  arquetipo: [Hero, Sage, Creator, etc]

  safe_mode: balanced  # conservador, balanced, bold

  pilares:
    - Pilar 1: IA aplicada a marketing
    - Pilar 2: Founder-led marketing
    - Pilar 3: Automação de conteúdo
---

# Histórias do Founder

## Jornada Profissional
[Conteúdo em markdown natural...]

## Fracassos & Aprendizados
[Histórias autênticas...]

## Valores & Crenças
[O que defendo, contra o que luto...]

## Metodologias Próprias
[Frameworks que criei, processos únicos...]
```

**Localização:** `docs/brain.md`

**Versionamento:**
- Git para histórico
- Tags para versões (v1.0, v2.0 quando founder evolui)

**Rationale:**
- Humano-legível (pode editar manualmente)
- Estruturado (YAML frontmatter validável)
- Versionável (git)
- Consultável por todos os agentes

---

### Multi-Founder Support
**Decisão:** Single Founder (MVP)

**MVP (v1.0):**
- Apenas 1 founder
- Estrutura simplificada: `docs/brain.md` direto
- Sem namespacing de founders

**Futuro (v2.0 standalone):**
- Multi-founder com `docs/founders/{name}/brain.md`
- Contexto compartilhado empresa: `docs/company/brand.md`
- Comandos tipo: `foundry --founder=vitor generate-post`

---

### LLM Provider
**Decisão:** Claude-Only

**Modelo Default:** Claude Sonnet 4.5
**Fallback:** Claude Opus (para tarefas críticas de qualidade máxima)

**Rationale:**
- Qualidade superior para autenticidade
- Já usa Claude Code (integração natural)
- Simplicidade (sem multi-provider no MVP)
- Custo aceitável para teste interno

**Futuro (v2.0):**
- Possibilidade de multi-provider (Claude + OpenAI)
- Claude para conteúdo crítico, OpenAI para tarefas simples
- Otimização de custo

---

### Canais Prioritários (MVP)
**Decisão:** 4 canais principais

**Canais MVP:**
1. **LinkedIn** - Thought leadership, networking B2B
2. **Instagram** - Feed, Carrossel, Reels, Stories
3. **YouTube** - Roteiros de vídeos
4. **Newsletter** - Email marketing, relacionamento

**Canais Futuros (v2.0):**
- TikTok
- Blog/Website
- Podcast
- Twitter/X

**Agentes Necessários por Canal:**
- LinkedIn: LinkedIn Post Writer, LinkedIn Article Writer
- Instagram: Instagram Feed Writer, Carousel Creator, Reels Script Writer, Stories Strategist
- YouTube: Video Script Writer, Thumbnail Prompt Creator
- Newsletter: Newsletter Writer

---

### Timeline & Esforço

**Timeline:** 6-8 semanas (robusto completo)
**Dedicação:** Full-time (40h+/semana)

**Priorização de Desenvolvimento:**

**Semana 1-2 (Fundação):**
- ✅ Workflow #1: Onboarding Inicial (CRÍTICO)
- ✅ Workflow #3: Produção Express (quick win)
- ✅ Jornada #1: "Do Zero ao Primeiro Post"
- ✅ 5-7 agentes essenciais:
  - Orchestrator
  - Elicitation Expert
  - LinkedIn Post Writer
  - Instagram Caption Writer
  - Voice Validator
  - Brand Guardian
  - Hook & Angle Creator

**Semana 3-4 (Escala):**
- Workflow #2: Planejamento Estratégico
- Workflow #4: Produção em Lote
- Jornada #2: "Profissionalização"
- +5-8 agentes adicionais:
  - Content Strategist
  - Research Analyst
  - Reels Script Writer
  - Newsletter Writer
  - Editor/Proofreader
  - Storytelling Miner
  - Repurposing Specialist
  - Video Script Writer

**Semana 5-6 (Avançado):**
- Workflow #5: Repurposing
- Workflow #6: Trend Jacking
- Workflow #7: Performance Review
- Workflow #8: Resgate de Consistência
- Workflow #9: Atualização do Cérebro
- Jornada #3: "Eficiência Multi-Canal"
- Agentes restantes (completar os 20)

**Semana 7-8 (Polimento):**
- Refinamento baseado em uso real
- Documentação completa
- Checklists de qualidade
- Testes end-to-end

---

## 🏗️ FASE 1.2: ESTRUTURA DE ARQUIVOS

### Arquitetura de Diretórios

```
projeto/
│
├── .content-foundry/              # Framework core (config-based)
│   │
│   ├── agents/                    # 20 agentes especializados
│   │   ├── orchestrator.md
│   │   ├── elicitation-expert.md
│   │   │
│   │   ├── # Estratégia & Pesquisa
│   │   ├── research-analyst.md
│   │   ├── content-strategist.md
│   │   ├── brand-guardian.md
│   │   ├── audience-insights.md
│   │   │
│   │   ├── # Ideação
│   │   ├── hook-creator.md
│   │   ├── storytelling-miner.md
│   │   │
│   │   ├── # Produção (Writers)
│   │   ├── linkedin-writer.md
│   │   ├── linkedin-article-writer.md
│   │   ├── instagram-feed-writer.md
│   │   ├── instagram-carousel-creator.md
│   │   ├── reels-script-writer.md
│   │   ├── stories-strategist.md
│   │   ├── video-script-writer.md
│   │   ├── newsletter-writer.md
│   │   │
│   │   ├── # Qualidade
│   │   ├── editor-proofreader.md
│   │   ├── voice-validator.md
│   │   │
│   │   └── # Otimização
│   │       ├── repurposing-specialist.md
│   │       ├── seo-optimizer.md
│   │       └── engagement-optimizer.md
│   │
│   ├── workflows/                 # 9 workflows principais
│   │   ├── 01-onboarding.md
│   │   ├── 02-planejamento-estrategico.md
│   │   ├── 03-producao-express.md
│   │   ├── 04-producao-lote.md
│   │   ├── 05-repurposing.md
│   │   ├── 06-trend-jacking.md
│   │   ├── 07-performance-review.md
│   │   ├── 08-resgate-consistencia.md
│   │   └── 09-atualizacao-cerebro.md
│   │
│   ├── jornadas/                  # 3 jornadas pré-definidas
│   │   ├── 01-do-zero-ao-primeiro-post.md
│   │   ├── 02-profissionalizacao.md
│   │   └── 03-eficiencia-multi-canal.md
│   │
│   ├── tasks/                     # Tarefas executáveis reutilizáveis
│   │   ├── elicit-deep.md
│   │   ├── generate-post.md
│   │   ├── create-calendar.md
│   │   ├── validate-voice.md
│   │   ├── optimize-hook.md
│   │   ├── research-topic.md
│   │   └── repurpose-content.md
│   │
│   ├── templates/                 # Templates de outputs
│   │   ├── linkedin-post.yaml
│   │   ├── linkedin-article.yaml
│   │   ├── instagram-caption.yaml
│   │   ├── instagram-carousel.yaml
│   │   ├── reels-script.yaml
│   │   ├── stories-brief.yaml
│   │   ├── youtube-script.yaml
│   │   ├── newsletter.yaml
│   │   ├── calendar-editorial.yaml
│   │   └── roadmap-personalizado.yaml
│   │
│   ├── prompts/                   # System prompts para agentes
│   │   ├── linkedin-writer-system.md
│   │   ├── voice-validator-system.md
│   │   ├── brand-guardian-system.md
│   │   ├── storytelling-miner-system.md
│   │   └── ...
│   │
│   ├── schemas/                   # JSON schemas para validação
│   │   ├── brain-schema.yaml
│   │   ├── linkedin-post-schema.yaml
│   │   ├── instagram-post-schema.yaml
│   │   ├── youtube-script-schema.yaml
│   │   └── calendar-schema.yaml
│   │
│   ├── checklists/                # Validações de qualidade
│   │   ├── voice-validation.md
│   │   ├── brand-alignment.md
│   │   ├── ready-to-publish-linkedin.md
│   │   ├── ready-to-publish-instagram.md
│   │   ├── safe-mode-check.md
│   │   └── seo-checklist.md
│   │
│   ├── data/                      # Dados de referência
│   │   ├── content-frameworks.md  # Story structures, frameworks
│   │   ├── hook-library.md        # Biblioteca de hooks testados
│   │   ├── safe-mode-rules.yaml   # Regras por nível (safe/balanced/bold)
│   │   ├── channel-best-practices.md
│   │   └── archetypal-voices.md   # Exemplos de arquétipos
│   │
│   ├── examples/                  # Exemplos de uso
│   │   ├── sample-brain.md        # Cérebro exemplo preenchido
│   │   ├── sample-outputs/
│   │   │   ├── linkedin-post-example.md
│   │   │   ├── instagram-carousel-example.md
│   │   │   └── youtube-script-example.md
│   │   └── README.md              # Como usar os exemplos
│   │
│   └── config.yaml                # Configuração global do framework
│
├── docs/                          # Documentação do founder (fora do framework)
│   │
│   ├── brain.md                   # 💎 CÉREBRO DIGITAL (coração do sistema)
│   │
│   ├── content/                   # Conteúdos gerados
│   │   ├── linkedin/
│   │   │   ├── 2025-10-21-content-foundry-launch.md
│   │   │   └── ...
│   │   ├── instagram/
│   │   │   ├── feed/
│   │   │   ├── carousels/
│   │   │   ├── reels/
│   │   │   └── stories/
│   │   ├── youtube/
│   │   │   └── scripts/
│   │   └── newsletter/
│   │       └── editions/
│   │
│   ├── calendar.md                # Calendário editorial
│   ├── insights-journal.md        # 💡 Banco de ideias permanente
│   └── roadmap.md                 # Roadmap personalizado do founder
│
└── .foundry/                      # Metadados e cache (opcional)
    ├── state.yaml                 # Estado atual (workflow ativo, etc)
    └── analytics.yaml             # Métricas de uso interno
```

---

### Rationale da Estrutura

**Separação de Concerns:**
- `.content-foundry/` = Framework (configs, lógica)
- `docs/` = Dados do founder (conteúdo, brain)
- `.foundry/` = Estado/cache (efêmero)

**Escalabilidade:**
- Fácil adicionar novos agentes (novo .md em `/agents/`)
- Fácil adicionar novos canais (novos templates)
- Fácil adicionar workflows

**Versionamento:**
- Todo framework versionável via git
- Brain do founder separado (pode ter repo próprio)

**Reutilização v1→v2:**
- 80% dos YAMLs/templates migram direto
- Lógica de negócio já testada e refinada
- Prompts já otimizados

---

## 🔧 FASE 1.3: FORMATO DE AGENTES & WORKFLOWS

### Convenções de Nomenclatura (Português)

**Decisão:** Framework 100% em português brasileiro

**Padrão kebab-case para todos os identificadores:**
- Comandos: `gerar-post`, `criar-calendario`, `validar-voz`
- Arquivos: `gerar-post-linkedin.md`, `instagram-legenda.yaml`
- Campos YAML: `quando-usar`, `principios-chave`, `comandos`

**Nomes de Agentes:** Nomes brasileiros comuns
- Lucas (LinkedIn Writer)
- Marina (Instagram Creator)
- Rafael (Storyteller Miner)
- Ana (Brand Guardian)
- Carlos (Orchestrator)
- Beatriz (Voice Validator)

**Rationale:**
- Usuário brasileiro (Vitor)
- Melhor UX em português nativo
- Consistência de idioma em todo framework
- Fácil entendimento e adoção

---

### Formato de Agente (Agent Format)

**Arquivo:** `.content-foundry/agents/{agent-id}.md`

**Estrutura:**

```markdown
<!-- Powered by Content Foundry™ -->

# {agent-id}

AVISO DE ATIVAÇÃO: Este arquivo contém as diretrizes completas de operação do agente.
NÃO carregue arquivos externos - a configuração completa está no bloco YAML abaixo.

CRÍTICO: Leia o bloco YAML completo para entender seus parâmetros de operação,
siga exatamente as instruções de ativação para alterar seu estado de ser,
e permaneça nesta persona até ser instruído a sair:

## DEFINIÇÃO COMPLETA DO AGENTE - NENHUM ARQUIVO EXTERNO NECESSÁRIO

```yaml
RESOLUCAO-DE-ARQUIVOS:
  - APENAS PARA USO POSTERIOR - NÃO PARA ATIVAÇÃO
  - Dependências mapeiam para .content-foundry/{tipo}/{nome}
  - tipo=pasta (tarefas|templates|checklists|dados|etc), nome=nome-arquivo
  - Exemplo: gerar-post.md → .content-foundry/tarefas/gerar-post.md
  - IMPORTANTE: Só carregue estes arquivos quando usuário solicitar execução

RESOLUCAO-DE-REQUISICOES:
  - Combine requisições do usuário aos comandos/dependências com flexibilidade
  - Exemplo: "criar post" → comando gerar-post
  - SEMPRE peça esclarecimento se não houver correspondência clara

instrucoes-ativacao:
  - PASSO 1: Leia ESTE ARQUIVO INTEIRO - contém sua definição de persona completa
  - PASSO 2: Adote a persona definida nas seções 'agente' e 'persona' abaixo
  - PASSO 3: Carregue e leia `docs/brain.md` (cérebro digital do founder)
  - PASSO 4: Carregue e leia `.content-foundry/config.yaml` (configuração do projeto)
  - PASSO 5: Cumprimente o usuário com seu nome/papel e execute `*ajuda` automaticamente
  - NÃO: Carregue outros arquivos de agentes durante ativação
  - SÓ carregue arquivos de dependências quando usuário os solicitar via comando
  - O campo agente.customizacao SEMPRE tem precedência sobre instruções conflitantes
  - REGRA CRÍTICA DE WORKFLOW: Ao executar tarefas, siga instruções exatamente como escritas
  - REGRA OBRIGATÓRIA DE INTERAÇÃO: Tarefas com elicitar=true REQUEREM interação do usuário
  - Ao listar tarefas/templates, sempre mostre como lista numerada para seleção
  - MANTENHA-SE NO PERSONAGEM!
  - CRÍTICO: Na ativação, APENAS cumprimente, execute `*ajuda`, e PARE para aguardar solicitação

agente:
  nome: {Nome do Agente}
  id: {agent-id}
  titulo: {Título do Papel}
  icone: {emoji}
  quando-usar: {Descrição de quando ativar este agente}
  customizacao: null  # Instruções específicas que sobrescrevem defaults

persona:
  papel: {Papel principal do agente}
  estilo: {Estilo de comunicação - ex: técnico, criativo, analítico}
  identidade: {Descrição de identidade em 1-2 frases}
  foco: {Áreas primárias de foco}
  principios-chave:
    - Princípio 1: Descrição
    - Princípio 2: Descrição
    - Princípio 3: Descrição
    - ...

# Todos os comandos usam prefixo * (ex: *ajuda)
comandos:
  - ajuda: Mostra lista numerada dos comandos disponíveis
  - {comando-1} {args}: Descrição do comando (executa tarefa X com template Y)
  - {comando-2}: Descrição do comando
  - doc-out: Salva documento em progresso no arquivo de destino
  - yolo: Ativa/desativa Modo Yolo (pula validações)
  - sair: Despede-se e abandona a persona

dependencias:
  dados:
    - {arquivo-referencia-1}.md
    - {arquivo-referencia-2}.md
  tarefas:
    - {tarefa-1}.md
    - {tarefa-2}.md
  templates:
    - {template-1}.yaml
    - {template-2}.yaml
  checklists:
    - {checklist-1}.md
```
\```
```

**Exemplo Completo - LinkedIn Writer:**

```yaml
agente:
  nome: Lucas
  id: linkedin-writer
  titulo: Escritor de Posts LinkedIn
  icone: 💼
  quando-usar: Criação de posts LinkedIn com autenticidade do founder
  customizacao: |
    - SEMPRE consulte docs/brain.md antes de escrever
    - SEMPRE valide tom contra o safe_mode do founder
    - NUNCA use chavões de coach ou autopromoção excessiva

persona:
  papel: Especialista em LinkedIn Thought Leadership
  estilo: Profissional, estratégico, autêntico, direto
  identidade: Expert em transformar ideias do founder em posts que engajam no LinkedIn
  foco: Autenticidade, estrutura narrativa, engajamento B2B, thought leadership
  principios-chave:
    - Autenticidade Acima de Tudo - Voz do founder é sagrada
    - Estrutura Clara - Gancho forte, desenvolvimento, CTA natural
    - Storytelling Estratégico - Conectar histórias pessoais a insights profissionais
    - Engajamento Intencional - Cada post tem propósito claro
    - Respeito ao Safe Mode - Seguir nível de ousadia do founder
    - Anti-Genérico - Fugir de clichês e frases batidas
    - Conversacional mas Profissional - Escrever como o founder fala

comandos:
  - ajuda: Mostra lista numerada dos comandos disponíveis
  - gerar-post {tópico}: Cria post LinkedIn sobre o tópico especificado
  - otimizar-gancho: Melhora as primeiras 3 linhas do post atual
  - criar-carrossel {tema}: Gera estrutura de PDF carrossel LinkedIn (10 slides)
  - validar-voz: Verifica se o post soa autenticamente como o founder
  - expandir-artigo: Transforma post curto em artigo longo LinkedIn
  - analisar-engajamento {post-id}: Sugere melhorias baseadas em performance
  - doc-out: Salva post no arquivo de destino
  - yolo: Ativa/desativa modo Yolo
  - sair: Despede-se como Lucas e abandona a persona

dependencias:
  dados:
    - frameworks-conteudo.md        # Estruturas narrativas, frameworks
    - biblioteca-ganchos.md         # Biblioteca de ganchos testados
    - boas-praticas-linkedin.md     # Best practices LinkedIn 2025
  tarefas:
    - gerar-post-linkedin.md        # Workflow de criação de post
    - validar-voz-founder.md        # Validação de autenticidade
    - otimizar-engajamento.md       # Otimização de performance
    - criar-carrossel-linkedin.md   # Geração de carrosséis
  templates:
    - linkedin-post.yaml            # Template de post
    - linkedin-carrossel.yaml       # Template de carrossel
    - linkedin-artigo.yaml          # Template de artigo longo
  checklists:
    - validacao-voz.md              # Checklist de autenticidade
    - pronto-para-publicar-linkedin.md  # Checklist pré-publicação
    - safe-mode-check.md            # Validação de safe mode
```

---

### Formato de Workflow

**Arquivo:** `.content-foundry/workflows/{numero}-{nome}.md`

**Estrutura:**

```yaml
workflow:
  id: {workflow-id}
  nome: {Nome do Workflow}
  descricao: {Descrição de 1-2 linhas do que faz}
  icone: {emoji}
  quando-usar: {Cenários de uso}
  duracao-estimada: {tempo estimado}
  agentes-envolvidos:
    - {agente-1}
    - {agente-2}

  entradas-necessarias:
    - {input-1}: {descrição}
    - {input-2}: {descrição}

  saidas-geradas:
    - {output-1}: {descrição}
    - {output-2}: {descrição}

passos:
  - numero: 1
    titulo: {Título do Passo}
    agente: {agente responsável}
    acao: {Descrição da ação}
    tarefa: {tarefa a executar}
    template: {template a usar (opcional)}
    validacao: {checklist de validação (opcional)}

  - numero: 2
    titulo: {Título do Passo}
    agente: {agente responsável}
    acao: {Descrição da ação}
    condicional:
      - se: {condição}
        entao: {ação}
      - senao: {ação alternativa}

  - numero: 3
    titulo: {Título do Passo}
    tipo: paralelo  # Passos 3a, 3b executam em paralelo
    sub-passos:
      - 3a: {ação paralela 1}
      - 3b: {ação paralela 2}

finalizacao:
  - Validação final de qualidade
  - Salvar outputs
  - Atualizar estado do projeto
```

**Exemplo Completo - Workflow #3: Produção Express:**

```yaml
workflow:
  id: producao-express
  nome: Produção Express
  descricao: Criação rápida de 1 post para publicação imediata
  icone: ⚡
  quando-usar: Founder precisa criar 1 post rapidamente (max 30min)
  duracao-estimada: 15-30 minutos
  agentes-envolvidos:
    - orchestrator (Carlos)
    - linkedin-writer (Lucas) OU instagram-writer (Marina)
    - voice-validator (Beatriz)
    - brand-guardian (Ana)

  entradas-necessarias:
    - topico: Tema ou ideia do post
    - canal: LinkedIn, Instagram Feed, ou Stories
    - tom-opcional: Se quiser sobrescrever tom padrão

  saidas-geradas:
    - post-final: Post pronto para copiar e publicar
    - insights: Sugestões de melhoria para próximos posts
    - metricas-qualidade: Scores de autenticidade e alinhamento

passos:
  - numero: 1
    titulo: Análise Rápida do Tópico
    agente: orchestrator
    acao: Entender contexto, consultar brain.md, definir ângulo
    tarefa: analisar-topico-rapido.md
    duracao: 2-3 min

  - numero: 2
    titulo: Geração de Rascunho
    agente: {canal-writer}  # Lucas ou Marina dependendo do canal
    acao: Criar primeira versão do post
    condicional:
      - se: canal == "linkedin"
        entao:
          agente: linkedin-writer
          tarefa: gerar-post-linkedin.md
          template: linkedin-post.yaml
      - se: canal == "instagram-feed"
        entao:
          agente: instagram-writer
          tarefa: gerar-post-instagram.md
          template: instagram-caption.yaml
      - se: canal == "instagram-stories"
        entao:
          agente: stories-strategist
          tarefa: criar-sequencia-stories.md
          template: stories-brief.yaml
    duracao: 5-10 min

  - numero: 3
    titulo: Validações Paralelas
    tipo: paralelo
    duracao: 5-7 min
    sub-passos:
      - 3a:
          titulo: Validação de Voz
          agente: voice-validator
          tarefa: validar-voz-founder.md
          checklist: validacao-voz.md
          criterio-aprovacao: score >= 8/10
      - 3b:
          titulo: Validação de Marca
          agente: brand-guardian
          tarefa: validar-alinhamento-marca.md
          checklist: brand-alignment.md
          criterio-aprovacao: sem red flags

  - numero: 4
    titulo: Revisão e Ajustes
    agente: {canal-writer}
    acao: Incorporar feedback das validações
    condicional:
      - se: validacoes.score < 8
        entao:
          - Ajustar tom e linguagem
          - Re-validar com voice-validator
      - senao:
          - Prosseguir para finalização
    duracao: 3-5 min

  - numero: 5
    titulo: Polimento Final
    agente: editor-proofreader
    acao: Revisar gramática, pontuação, formatação
    tarefa: revisar-post-final.md
    checklist: pronto-para-publicar-{canal}.md
    duracao: 2-3 min

finalizacao:
  - Salvar post em docs/content/{canal}/
  - Gerar relatório de qualidade
  - Sugerir próximos tópicos relacionados
  - Atualizar insights-journal.md com learnings
```

---

### Formato de Jornada (Journey)

**Arquivo:** `.content-foundry/jornadas/{numero}-{nome}.md`

**Estrutura:**

```yaml
jornada:
  id: {jornada-id}
  nome: {Nome da Jornada}
  descricao: {Descrição completa}
  icone: {emoji}
  publico-alvo: {Para quem é esta jornada}
  duracao-total: {tempo estimado}
  objetivo-final: {O que o founder alcança ao completar}

  pre-requisitos:
    - {requisito-1}
    - {requisito-2}

  resultados-entregues:
    - {resultado-1}
    - {resultado-2}

fases:
  - numero: 1
    nome: {Nome da Fase}
    objetivo: {Objetivo desta fase}
    workflows:
      - {workflow-1}
      - {workflow-2}
    criterio-conclusao: {Como saber que fase foi concluída}
    tempo-estimado: {duração}

  - numero: 2
    nome: {Nome da Fase}
    objetivo: {Objetivo desta fase}
    workflows:
      - {workflow-3}
    criterio-conclusao: {critério}
    tempo-estimado: {duração}

metricas-sucesso:
  - metrica-1: {descrição e target}
  - metrica-2: {descrição e target}

proximos-passos:
  - Sugestão de próxima jornada
  - Recursos adicionais
```

**Exemplo Completo - Jornada #1: Do Zero ao Primeiro Post:**

```yaml
jornada:
  id: zero-ao-primeiro-post
  nome: Do Zero ao Primeiro Post
  descricao: Jornada completa de onboarding e criação do primeiro conteúdo autêntico
  icone: 🚀
  publico-alvo: Founder que nunca usou Content Foundry, quer validar rapidamente
  duracao-total: 60-90 minutos
  objetivo-final: |
    Founder tem seu Cérebro Digital criado + 1 post publicável de alta qualidade
    que soa autenticamente como ele/ela

  pre-requisitos:
    - Content Foundry instalado
    - Claude Code configurado
    - 60-90min de tempo focado disponível

  resultados-entregues:
    - docs/brain.md preenchido (Cérebro Digital)
    - 1 post LinkedIn OU Instagram pronto para publicar
    - Entendimento de como usar o framework
    - Confiança na autenticidade do output

fases:
  - numero: 1
    nome: Onboarding & Criação do Cérebro Digital
    objetivo: Capturar essência, voz e contexto do founder
    workflows:
      - 01-onboarding.md
    atividades:
      - Entrevista profunda com Elicitation Expert (Elena)
      - Captura de histórias, valores, tom de voz
      - Definição de pilares de conteúdo
      - Configuração de safe_mode
      - Criação do brain.md
    criterio-conclusao: |
      - brain.md existe e está preenchido
      - Founder aprova tom e pilares capturados
      - Voice Validator consegue identificar padrões de voz
    tempo-estimado: 30-45 minutos

  - numero: 2
    nome: Primeira Produção de Conteúdo
    objetivo: Criar primeiro post autêntico e publicável
    workflows:
      - 03-producao-express.md
    atividades:
      - Escolher tópico (sugestões do Orchestrator)
      - Escolher canal (LinkedIn recomendado para primeira vez)
      - Geração do post
      - Validação de voz e marca
      - Ajustes baseados em feedback
    criterio-conclusao: |
      - Post gerado passa validação de voz (>=8/10)
      - Founder aprova e se sente confortável publicando
      - Post salvo em docs/content/
    tempo-estimado: 20-30 minutos

  - numero: 3
    nome: Reflexão e Próximos Passos
    objetivo: Consolidar aprendizado e planejar uso contínuo
    workflows:
      - Não usa workflow formal, apenas conversa com Orchestrator
    atividades:
      - Founder dá feedback sobre o processo
      - Ajustes finos no brain.md se necessário
      - Planejamento de próximos 3-5 posts
      - Escolha da próxima jornada (Profissionalização)
    criterio-conclusao: |
      - Founder entende como usar o framework
      - Próximos passos estão claros
    tempo-estimado: 10-15 minutos

metricas-sucesso:
  - brain_preenchido: docs/brain.md existe com >=500 palavras
  - post_gerado: 1 post em docs/content/ aprovado pelo founder
  - autenticidade_score: Voice Validator dá >=8/10
  - satisfacao_founder: Founder está confiante para continuar usando
  - tempo_total: Concluída em <=90min

proximos-passos:
  - Jornada #2: Profissionalização (criar calendário editorial)
  - Ou continuar com Workflow #3 (Produção Express) para mais posts
  - Ou experimentar Workflow #5 (Repurposing) se já tem conteúdo antigo
```

---

### Formato de Tarefa (Task)

**Arquivo:** `.content-foundry/tasks/{nome-tarefa}.md`

**Estrutura:**

```yaml
tarefa:
  id: {task-id}
  nome: {Nome da Tarefa}
  descricao: {O que esta tarefa faz}
  duracao-estimada: {tempo}
  agente-responsavel: {qual agente normalmente executa}
  elicitar: {true|false}  # Requer interação com usuário?

entradas:
  - {input-1}: {descrição}
  - {input-2}: {tipo e formato}

saidas:
  - {output-1}: {descrição}
  - {output-2}: {formato}

passos-execucao:
  - 1. {Passo detalhado}
  - 2. {Passo detalhado}
  - 3. {Se elicitar=true, formato exato de perguntas}

validacoes:
  - checklist: {arquivo-checklist.md}
  - criterios:
    - {critério 1}
    - {critério 2}

notas:
  - {Nota importante sobre execução}
```

**Exemplo - gerar-post-linkedin.md:**

```yaml
tarefa:
  id: gerar-post-linkedin
  nome: Gerar Post LinkedIn
  descricao: Cria post LinkedIn autêntico baseado no brain.md do founder
  duracao-estimada: 8-12 minutos
  agente-responsavel: linkedin-writer (Lucas)
  elicitar: true

entradas:
  - topico: Tema ou ideia do post (string)
  - angulo-opcional: Perspectiva específica (opcional)
  - tom-override: Sobrescrever tom padrão (opcional)
  - brain: Conteúdo de docs/brain.md

saidas:
  - post_linkedin: Post formatado segundo template linkedin-post.yaml
  - alternativas_gancho: 3 opções de primeiras linhas
  - insights: Sugestões de melhoria

passos-execucao:
  - 1. CARREGAR CONTEXTO
    - Ler docs/brain.md completo
    - Identificar tom, safe_mode, pilares
    - Identificar histórias relevantes ao tópico

  - 2. ELICITAR DETALHES (se elicitar=true)
    - Formato:
      "Entendi que você quer falar sobre {tópico}.
       Para criar um post autêntico, preciso saber:

       1. Qual ângulo específico? (ex: caso de uso, opinião polêmica, história pessoal)
       2. Objetivo do post? (educar, inspirar, gerar debate, soft selling)
       3. CTA desejado? (comentário, DM, link, apenas reflexão)

       Responda numerado ou peça sugestões."

  - 3. CONSULTAR DADOS DE REFERÊNCIA
    - Ler .content-foundry/data/frameworks-conteudo.md
    - Escolher estrutura narrativa apropriada
    - Consultar biblioteca-ganchos.md para inspiração

  - 4. GERAR RASCUNHO INICIAL
    - Aplicar estrutura: Gancho (3 linhas) + Desenvolvimento + CTA
    - Usar voz do founder (consultar brain.md constantemente)
    - Respeitar safe_mode (conservador/balanced/bold)
    - Evitar clichês listados em boas-praticas-linkedin.md

  - 5. GERAR ALTERNATIVAS DE GANCHO
    - Criar 3 opções de primeiras linhas
    - Testar diferentes abordagens (pergunta, afirmação, história)

  - 6. FORMATAR OUTPUT
    - Preencher template linkedin-post.yaml
    - Incluir metadados (data, tópico, pilar)

  - 7. AUTO-VALIDAÇÃO
    - Checklist rápida:
      ✓ Soa como o founder?
      ✓ Respeita safe_mode?
      ✓ Estrutura clara?
      ✓ CTA natural?

validacoes:
  - checklist: validacao-voz.md
  - criterios:
    - Tom consistente com brain.md
    - Sem chavões genéricos de coach
    - Estrutura narrativa clara
    - CTA alinhado com objetivo

notas:
  - Se safe_mode=conservador, evitar opiniões muito polêmicas
  - Se safe_mode=bold, pode ser mais provocativo
  - Sempre priorizar autenticidade sobre "regras" de LinkedIn
  - Perguntar ao founder se tiver dúvida entre 2 abordagens
```

---

### Formato de Template

**Arquivo:** `.content-foundry/templates/{nome-template}.yaml`

**Estrutura:**

```yaml
template:
  id: {template-id}
  nome: {Nome do Template}
  tipo: {output-type}  # post, carrossel, roteiro, newsletter, etc
  canal: {linkedin|instagram|youtube|newsletter|etc}
  versao: "1.0"

metadados:
  data-criacao: {ISO date}
  topico: {string}
  pilar-conteudo: {qual dos pilares do founder}
  safe-mode-usado: {conservador|balanced|bold}
  agente-criador: {agent-id}

conteudo:
  # Estrutura varia por tipo
  # Exemplo para LinkedIn Post:
  gancho: |
    {Primeiras 3 linhas que prendem atenção}

  corpo: |
    {Desenvolvimento da ideia}

  cta: |
    {Call-to-action natural}

  hashtags:
    - {tag1}
    - {tag2}

alternativas:
  ganchos-alternativos:
    - opcao-1: {texto}
    - opcao-2: {texto}
    - opcao-3: {texto}

metricas-qualidade:
  autenticidade-score: {0-10}
  alinhamento-pilar: {0-10}
  clareza-mensagem: {0-10}
  potencial-engajamento: {baixo|medio|alto}

insights:
  - {Sugestão de melhoria 1}
  - {Sugestão de melhoria 2}

proximos-passos-sugeridos:
  - {Ideia de follow-up post}
  - {Oportunidade de repurposing}
```

### Formato de Checklist

**Arquivo:** `.content-foundry/checklists/{nome-checklist}.md`

**Estrutura:**

```markdown
# {Nome do Checklist}

**Propósito:** {Para que serve este checklist}
**Quando usar:** {Em que momento do workflow}
**Critério de aprovação:** {Score mínimo ou condições}

---

## Seção 1: {Nome da Seção}

- [ ] **{Critério 1}**
  - Como validar: {Instruções}
  - Exemplo bom: {exemplo}
  - Exemplo ruim: {exemplo}

- [ ] **{Critério 2}**
  - Como validar: {Instruções}
  - Peso: {Alto|Médio|Baixo}

---

## Seção 2: {Nome da Seção}

- [ ] **{Critério 3}**
  - ...

---

## Scoring

**Total de itens:** {número}
**Mínimo para aprovar:** {número ou %}

**Classificação:**
- 90-100%: Excelente - Publicar com confiança
- 80-89%: Bom - Pequenos ajustes opcionais
- 70-79%: Aceitável - Revisar pontos críticos
- <70%: Requer revisão - Não publicar ainda
```

**Exemplo - validacao-voz.md:**

```markdown
# Validação de Voz do Founder

**Propósito:** Garantir que o conteúdo soa autenticamente como o founder
**Quando usar:** Após geração de qualquer conteúdo, antes de publicação
**Critério de aprovação:** Score >= 8/10 (80%)

---

## Seção 1: Tom e Estilo

- [ ] **Tom consistente com brain.md**
  - Como validar: Comparar tom do post com campo `founder.tom.{canal}` do brain.md
  - Pergunta-chave: "Se eu mostrasse isso sem nome, o founder reconheceria como dele?"
  - Peso: ALTO

- [ ] **Nível de formalidade correto**
  - Como validar: Verificar se linguagem está no nível certo (muito formal/informal)
  - Exemplo bom (LinkedIn, tom profissional): "Aprendi isso da pior forma possível."
  - Exemplo ruim: "Aprendi isso da pior forma possível, mano 🤙"
  - Peso: ALTO

- [ ] **Uso de primeira pessoa consistente**
  - Como validar: Founder costuma usar "eu" ou "nós"? Verificar padrão.
  - Peso: MÉDIO

---

## Seção 2: Vocabulário e Expressões

- [ ] **Palavras-chave do founder presentes**
  - Como validar: Buscar no brain.md por termos únicos que o founder usa
  - Exemplos: metodologias próprias, termos técnicos preferidos
  - Peso: MÉDIO

- [ ] **Ausência de clichês genéricos**
  - Como validar: Verificar contra lista de chavões em `data/cliches-evitar.md`
  - Red flags: "jornada", "quebrar paradigmas", "ressignificar", "disruptivo" (sem contexto)
  - Peso: ALTO

- [ ] **Complexidade de vocabulário apropriada**
  - Como validar: Founder usa linguagem técnica ou simplificada? Checar brain.md
  - Peso: MÉDIO

---

## Seção 3: Estrutura e Storytelling

- [ ] **Padrão narrativo do founder**
  - Como validar: Founder começa com história ou vai direto ao ponto?
  - Consultar: brain.md seção "Estilo Narrativo"
  - Peso: MÉDIO

- [ ] **Uso de analogias/metáforas (se aplicável)**
  - Como validar: Founder usa comparações? Que tipo?
  - Peso: BAIXO

---

## Seção 4: Valores e Posicionamento

- [ ] **Alinhado com valores declarados**
  - Como validar: Cruzar com seção "Valores & Crenças" do brain.md
  - Red flag crítico: Contradizer valores core
  - Peso: CRÍTICO

- [ ] **Respeita safe_mode configurado**
  - Como validar: Verificar `founder.safe_mode` no brain.md
  - Conservador: Evitar polêmicas, opiniões fortes
  - Balanced: Opinião clara mas respeitosa
  - Bold: Pode ser provocativo, tomar posições firmes
  - Peso: CRÍTICO

---

## Seção 5: Detalhes Específicos

- [ ] **Emojis: frequência e tipo**
  - Como validar: Founder usa emojis? Quantos? Que tipo?
  - Exemplo: Alguns founders nunca usam, outros usam 2-3 por post
  - Peso: BAIXO

- [ ] **Formatação (quebras de linha, listas)**
  - Como validar: Founder prefere parágrafos longos ou listas?
  - Peso: BAIXO

---

## Scoring

**Total de itens:** 10
**Peso dos itens:**
- CRÍTICO (2 itens): Deve passar 100% (reprovação automática se falhar)
- ALTO (3 itens): 3 pontos cada
- MÉDIO (4 itens): 2 pontos cada
- BAIXO (3 itens): 1 ponto cada

**Pontuação máxima:** 20 pontos
**Mínimo para aprovar:** 16/20 (80%)

**Classificação:**
- 18-20pts (90-100%): EXCELENTE - Indistinguível do original
- 16-17pts (80-89%): BOM - Publicar com confiança
- 14-15pts (70-79%): ACEITÁVEL - Revisar itens de peso alto
- <14pts (<70%): REQUER REVISÃO - Não publicar

**Ação se reprovar:**
1. Identificar itens que falharam
2. Consultar brain.md para detalhes
3. Ajustar conteúdo
4. Re-validar
```

---

### Formato de Dados de Referência

**Arquivo:** `.content-foundry/data/{nome-arquivo}.md`

**Propósito:** Armazenar conhecimento reutilizável que agentes consultam

**Exemplos de arquivos:**

**`frameworks-conteudo.md`:**
```markdown
# Frameworks de Conteúdo

## Estruturas Narrativas

### 1. Hero's Journey (Jornada do Herói)
- Situação inicial → Problema → Luta → Vitória → Lição
- Melhor para: Histórias de transformação, casos de sucesso
- Canais: LinkedIn, Instagram Carrossel, YouTube

### 2. Problema-Agitação-Solução (PAS)
- Problema: Apresenta a dor
- Agitação: Amplifica consequências
- Solução: Oferece caminho
- Melhor para: Posts educativos, soft selling
- Canais: LinkedIn, Newsletter

### 3. AIDA (Atenção-Interesse-Desejo-Ação)
- Atenção: Gancho forte
- Interesse: Desenvolve curiosidade
- Desejo: Mostra benefícios
- Ação: CTA claro
- Melhor para: Posts de conversão, lançamentos
- Canais: Instagram, LinkedIn

[... mais frameworks ...]
```

**`biblioteca-ganchos.md`:**
```markdown
# Biblioteca de Ganchos Testados

## Categoria: Contrarian (Opinião Controversa)

### Template 1: "Todo mundo diz X, mas..."
Exemplo: "Todo mundo diz que consistência é a chave. Discordo."

### Template 2: "Você está fazendo X errado"
Exemplo: "Você está fazendo networking errado (e eu também fazia)."

## Categoria: Storytelling

### Template 3: "Momento específico"
Exemplo: "3h da manhã. Olhando para o teto. Pensei: 'Não dá mais'."

### Template 4: "Diálogo real"
Exemplo: "'Você vai falir em 6 meses.' Foi isso que ouvi em 2019."

[... mais ganchos categorizados ...]
```

**`safe-mode-rules.yaml`:**
```yaml
safe_mode_levels:
  conservador:
    descricao: Mínimo risco, máxima segurança profissional
    permitido:
      - Opiniões bem fundamentadas
      - Histórias pessoais neutras
      - Educação/ensino
      - Inspiração suave
    evitar:
      - Críticas diretas a pessoas/empresas
      - Opiniões políticas
      - Temas polêmicos (religião, política, etc)
      - Autopromoção agressiva
      - Linguagem muito informal
    tom:
      - Profissional
      - Respeitoso
      - Equilibrado

  balanced:
    descricao: Equilíbrio entre autenticidade e profissionalismo
    permitido:
      - Opiniões claras (mas respeitosas)
      - Histórias com vulnerabilidade moderada
      - Críticas construtivas ao mercado
      - Posicionamento sobre temas da indústria
      - Humor leve
    evitar:
      - Ataques pessoais
      - Opiniões extremas
      - Temas muito sensíveis
    tom:
      - Autêntico mas profissional
      - Pode ser provocativo (com respeito)
      - Conversacional

  bold:
    descricao: Máxima autenticidade, aceita polêmica calculada
    permitido:
      - Opiniões fortes e polarizantes
      - Críticas diretas (mas fundamentadas)
      - Vulnerabilidade total
      - Posições contrarians
      - Humor ácido/sarcasmo
      - Temas controversos (se relevantes)
    evitar:
      - Ofensas gratuitas
      - Fake news
      - Discriminação
    tom:
      - 100% autêntico
      - Provocativo
      - Sem filtro (com responsabilidade)
```

---

### Resumo da Fase 1.3

**Decisões Finalizadas:**

✅ **Idioma:** Framework 100% em português brasileiro
✅ **Nomenclatura:** kebab-case para todos identificadores
✅ **Nomes de Agentes:** Nomes brasileiros comuns (Lucas, Marina, Ana, etc)
✅ **Prefixo de Comandos:** `*` (ex: `*ajuda`, `*gerar-post`)

**Formatos Definidos:**

1. **Agente (.md):** YAML embedded com persona, comandos, dependências
2. **Workflow (.md):** YAML com passos sequenciais/paralelos, condicionais
3. **Jornada (.md):** YAML com fases, workflows, métricas de sucesso
4. **Tarefa (.md):** YAML com passos de execução, elicitação, validações
5. **Template (.yaml):** Estruturas de output por tipo de conteúdo
6. **Checklist (.md):** Validações com scoring e critérios de aprovação
7. **Dados (.md/.yaml):** Conhecimento reutilizável (frameworks, ganchos, regras)

**Inspiração:** BMad Method (mantendo compatibilidade conceitual)

**Próximo Passo:** Fase 2.4 - Arquitetura detalhada do Cérebro Digital

---

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

## 📄 FASE 3.7: TEMPLATES & OUTPUTS

### Visão Geral

Templates são a camada de formatação e estruturação de conteúdo. Eles garantem que todo output seja consistente, validável e pronto para uso.

**Propósito:**
- Estruturar outputs de forma previsível
- Validar qualidade antes de entregar
- Facilitar consumo (founder copia e publica)
- Capturar metadados para analytics

**Localização:** `.content-foundry/templates/`

---

### Arquitetura de Templates

**Hierarquia:**

```
.content-foundry/templates/
├── base-template.yaml          # Template pai (estrutura comum)
├── linkedin-post.yaml          # Post curto LinkedIn
├── linkedin-artigo.yaml        # Artigo longo LinkedIn
├── linkedin-carrossel.yaml     # Carrossel PDF
├── instagram-caption.yaml      # Legenda feed
├── instagram-carrossel.yaml    # Carrossel visual
├── reels-script.yaml           # Roteiro Reels
├── stories-brief.yaml          # Sequência Stories
├── youtube-script.yaml         # Roteiro YouTube
├── newsletter.yaml             # Newsletter completa
├── calendario-editorial.yaml   # Calendário mensal
└── roadmap-personalizado.yaml  # Roadmap do founder
```

---

### Template Base (Estrutura Comum)

**Arquivo:** `.content-foundry/templates/base-template.yaml`

```yaml
# Estrutura base que todos templates herdam

template:
  id: {template-id}
  nome: {Nome do Template}
  versao: "1.0"
  tipo: {tipo-output}  # post | artigo | roteiro | calendario | etc
  canal: {canal}       # linkedin | instagram | youtube | newsletter | multi

# Metadados padrão (todos templates têm)
metadados:
  criado-em: {ISO timestamp}
  criado-por: {agente-id}
  brain-version: {versão do brain.md usada}

  contexto:
    topico: {string}
    pilar: {pilar-id}
    safe-mode: {conservador|balanced|bold}
    angulo: {descrição do ângulo}

# Conteúdo (varia por template)
conteudo:
  # Estrutura específica de cada template
  # Ver exemplos abaixo

# Métricas de qualidade (geradas automaticamente)
qualidade:
  autenticidade-score: {0-10}      # Voice Validator
  alinhamento-pilar: {0-10}        # Content Strategist
  clareza-mensagem: {0-10}         # Editor
  potencial-engajamento: {baixo|medio|alto}  # Engagement Optimizer

  aprovacoes:
    voice-validator: {aprovado|reprovado}
    brand-guardian: {aprovado|reprovado}
    editor: {aprovado|reprovado}

# Alternativas (quando aplicável)
alternativas:
  # Ex: 3 opções de gancho, variações de CTA, etc

# Insights e sugestões
insights:
  melhorias-sugeridas:
    - {sugestão 1}
    - {sugestão 2}

  proximos-passos:
    - {ação sugerida 1}
    - {ação sugerida 2}

# Estado
estado:
  status: {rascunho|validando|aprovado|publicado}
  necessita-revisao: {true|false}
  historico-versoes:
    - v1: {timestamp} - criação inicial
    - v2: {timestamp} - ajustes pós-validação
```

---

### Templates por Canal

#### LinkedIn Post

**Arquivo:** `.content-foundry/templates/linkedin-post.yaml`

```yaml
template:
  id: linkedin-post
  nome: Post LinkedIn
  versao: "1.0"
  tipo: post
  canal: linkedin

metadados:
  criado-em: "2025-10-21T15:30:00Z"
  criado-por: linkedin-writer
  brain-version: "v1.0"

  contexto:
    topico: "IA aplicada a marketing"
    pilar: pilar-1
    safe-mode: balanced
    angulo: "Opinião baseada em experiência pessoal"

conteudo:
  # Gancho (primeiras 3 linhas - CRÍTICO)
  gancho: |
    Gastei R$50k em IA para marketing.

    Metade foi desperdício. A outra metade 10x meu resultado.

    A diferença? Contexto.

  # Corpo (desenvolvimento da ideia)
  corpo: |
    A maioria das empresas usa IA como "content generator genérico":
    - Joga prompt vago
    - Aceita output medíocre
    - Publica sem pensar

    Resultado: conteúdo que soa como todo mundo.

    O que funciona (aprendi na marra):

    1. Contexto profundo
    Não "escreva post sobre IA". Mas sim: "escreva como [nome], que trabalha com [nicho],
    para audiência de [perfil], com tom [X], evitando [Y]".

    2. Feedback loop
    IA gera → humano valida → IA ajusta → repete.
    Não é "gera e publica". É "gera e refina".

    3. Voz autêntica
    Use suas histórias, fracassos, jeito de falar.
    IA amplifica você, não substitui.

    Deixei de tentar "automatizar tudo" e comecei a "amplificar minha voz".
    Mudou o jogo.

  # CTA (call to action)
  cta: |
    Você usa IA para conteúdo? Como evita soar genérico?

  # Hashtags (3-5 recomendadas)
  hashtags:
    - "#IAMarketing"
    - "#ContentMarketing"
    - "#FounderLed"

  # Formatação especial (se aplicável)
  formatacao:
    usa-emojis: false
    paragrafos-curtos: true
    listas-numeradas: true
    espacamento-generoso: true

qualidade:
  autenticidade-score: 8.5
  alinhamento-pilar: 9.0
  clareza-mensagem: 8.0
  potencial-engajamento: alto

  aprovacoes:
    voice-validator: aprovado
    brand-guardian: aprovado
    editor: aprovado

alternativas:
  ganchos:
    - opcao-1: |
        R$50k investidos em IA para marketing.
        Metade jogado fora. Metade 10x ROI.

    - opcao-2: |
        Todo mundo usa IA para marketing agora.
        99% faz errado.

    - opcao-3: |
        Vou falar algo impopular: IA não resolve seu problema de conteúdo.
        Contexto resolve.

  ctas:
    - "Como você diferencia seu conteúdo de IA do genérico?"
    - "Discorda? Me convence nos comentários."
    - "Qual sua maior dificuldade com IA em marketing?"

insights:
  melhorias-sugeridas:
    - "Considerar adicionar métrica específica (ex: '10x = de X para Y')"
    - "Gancho alternativo #3 é mais provocativo (se safe_mode=bold)"

  proximos-passos:
    - "Repurposar para Instagram Carrossel (3 slides)"
    - "Expandir para artigo LinkedIn (1500 palavras)"
    - "Criar Reels com 3 dicas principais"

estado:
  status: aprovado
  necessita-revisao: false
  publicado-em: null  # será preenchido quando publicar

  historico-versoes:
    - v1: "2025-10-21T15:30:00Z" - criação inicial
    - v2: "2025-10-21T15:42:00Z" - ajuste de tom após validação
```

---

#### Instagram Caption

**Arquivo:** `.content-foundry/templates/instagram-caption.yaml`

```yaml
template:
  id: instagram-caption
  nome: Legenda Instagram Feed
  versao: "1.0"
  tipo: caption
  canal: instagram

metadados:
  criado-em: "2025-10-21T16:00:00Z"
  criado-por: instagram-feed-writer
  brain-version: "v1.0"

  contexto:
    topico: "Consistência vs Perfeição"
    pilar: pilar-2
    safe-mode: balanced
    angulo: "Inspiracional com lição prática"

conteudo:
  # Gancho visual (primeira linha + emoji)
  gancho: |
    🎯 Publiquei 47 posts imperfeitos este ano.

  # Corpo (storytelling + lição)
  corpo: |
    Cada um tinha algo "errado":
    - Typo no texto
    - Foto não perfeita
    - Timing "não ideal"

    Sabe o que aprendi?

    Ninguém se importa com sua versão de "perfeito".
    Pessoas se importam com REAL.

    Post #12: typo no gancho → 2.3k likes (recorde)
    Post #33: foto de celular → mais saves que posts "profissionais"
    Post #41: publicado às 11h (não 9h) → melhor engajamento da semana

    Pare de esperar perfeição.
    Comece a compartilhar verdade.

  # CTA (mais casual que LinkedIn)
  cta: |
    Qual seu "post imperfeito" favorito que você já fez? 👇

  # Hashtags Instagram (mais que LinkedIn, 8-12)
  hashtags:
    - "#MarketingReal"
    - "#ConteudoAutentico"
    - "#FounderLife"
    - "#Consistencia"
    - "#MarketingDePessoa"
    - "#Autenticidade"
    - "#ConteudoDeValor"
    - "#GrowthMarketing"

  # Especificidades Instagram
  instagram:
    primeira-linha: "🎯 Publiquei 47 posts imperfeitos este ano."
    comprimento: 150  # palavras (ideal: 125-175)
    quebras-linha: 8   # para legibilidade
    mencoes: []        # @mentions se aplicável
    localizacao: null  # se aplicável

qualidade:
  autenticidade-score: 9.0
  alinhamento-pilar: 9.5
  clareza-mensagem: 8.5
  potencial-engajamento: alto

  aprovacoes:
    voice-validator: aprovado
    brand-guardian: aprovado
    editor: aprovado

alternativas:
  ganchos:
    - "💥 47 posts. Todos imperfeitos. Zero arrependimentos."
    - "📸 Vou confessar algo: nenhum dos meus posts é perfeito."
    - "✨ O post que mudou tudo tinha um typo."

  emojis-alternativos:
    principais: ["🎯", "💡", "⚡"]
    evitar: ["🔥", "💪", "👊"]  # muito usado, pouco autêntico

insights:
  melhorias-sugeridas:
    - "Considerar carrossel com os 3 posts citados (#12, #33, #41)"
    - "Formato lista funciona bem no Instagram - manter"

  proximos-passos:
    - "Criar carrossel mostrando os 3 posts mencionados"
    - "Reels: '3 lições de 47 posts imperfeitos'"
    - "Stories: poll 'Você espera perfeição para publicar?'"

instrucoes-publicacao:
  visual-sugerido: |
    - Foto casual (não produzida)
    - Você trabalhando ou pensativo
    - Ou screenshot de analytics dos posts mencionados

  melhor-horario: "18h-20h (terça ou quinta)"
  tipo-post: "Single image + caption longa"

estado:
  status: aprovado
  necessita-revisao: false
```

---

#### Reels Script

**Arquivo:** `.content-foundry/templates/reels-script.yaml`

```yaml
template:
  id: reels-script
  nome: Roteiro Instagram Reels
  versao: "1.0"
  tipo: roteiro
  canal: instagram-reels

metadados:
  criado-em: "2025-10-21T16:30:00Z"
  criado-por: reels-script-writer
  brain-version: "v1.0"

  contexto:
    topico: "3 erros de marketing com IA"
    pilar: pilar-1
    safe-mode: balanced
    angulo: "Educativo rápido com ganchos visuais"

conteudo:
  # Duração estimada
  duracao: "45 segundos"

  # Gancho visual (primeiros 3 segundos - CRÍTICO)
  gancho:
    texto-tela: "3 erros fatais com IA em marketing"
    audio: "Se você comete o erro #3, está queimando dinheiro."
    visual: "Você olhando sério para câmera, texto overlay"
    duracao: "0:00 - 0:03"

  # Cenas (desenvolvimento)
  cenas:
    - numero: 1
      titulo: "Erro #1"
      duracao: "0:03 - 0:15"
      visual: "B-roll: tela com ChatGPT genérico"
      texto-tela: "Erro #1: Prompt genérico"
      audio: |
        Erro 1: Usar prompts vagos.
        "Escreva post sobre marketing" não funciona.
        IA precisa de CONTEXTO.
        Seu nicho, audiência, tom, objetivos.
      transicao: "Corte rápido"

    - numero: 2
      titulo: "Erro #2"
      duracao: "0:15 - 0:27"
      visual: "Você mostrando exemplo ruim vs bom"
      texto-tela: "Erro #2: Copiar e colar direto"
      audio: |
        Erro 2: Copiar output direto.
        IA gera primeiro rascunho.
        VOCÊ refina, adiciona voz, ajusta tom.
        Copy-paste = conteúdo genérico.
      transicao: "Swipe"

    - numero: 3
      titulo: "Erro #3"
      duracao: "0:27 - 0:40"
      visual: "Close-up seu rosto, enfático"
      texto-tela: "Erro #3: Zero validação"
      audio: |
        Erro 3: Publicar sem validar.
        Soa como você?
        Alinhado com marca?
        Sem validação = risco.
        5 minutos de revisão salvam sua reputação.
      transicao: "Zoom in"

  # CTA final
  cta:
    duracao: "0:40 - 0:45"
    visual: "Você apontando para botão seguir"
    texto-tela: "Mais dicas: @seu_usuario"
    audio: "Quer mais dicas de IA e marketing? Me segue aqui."

  # Elementos técnicos
  elementos-tecnicos:
    formato: "9:16 (vertical)"
    fps: 30
    resolucao: "1080x1920"
    audio: "Voice-over + música de fundo (baixa)"
    legendas: "Sempre (acessibilidade + sem som)"
    cortes: "Rápidos (manter atenção)"

  # Música sugerida
  musica:
    estilo: "Upbeat, energética mas não agressiva"
    volume: "20-30% (voice-over prioridade)"
    exemplos:
      - "Trending sounds Instagram (checar semanalmente)"
      - "Ou música sem copyright do Instagram library"

qualidade:
  autenticidade-score: 8.0
  alinhamento-pilar: 9.0
  clareza-mensagem: 9.5
  potencial-engajamento: alto

  aprovacoes:
    voice-validator: aprovado
    brand-guardian: aprovado

alternativas:
  ganchos:
    - "❌ Você está usando IA errado (e perdendo dinheiro)"
    - "💸 3 erros que matam seu marketing com IA"
    - "🚨 IA não funciona? Você está cometendo esses erros"

  formatos-alternativos:
    - "Trending: Falar para câmera com cortes dinâmicos"
    - "B-roll com voice-over"
    - "Texto na tela com transições (se câmera tímido)"

insights:
  melhorias-sugeridas:
    - "Considerar adicionar exemplo visual de prompt ruim vs bom"
    - "Se engajamento baixo: testar gancho mais provocativo"

  proximos-passos:
    - "Filmar versão completa (45s)"
    - "Criar versão curta (30s) para teste A/B"
    - "Carrossel complementar explicando cada erro em detalhe"

instrucoes-producao:
  equipamento:
    - "Celular (câmera boa o suficiente)"
    - "Tripé ou gimbal (evitar tremor)"
    - "Microfone lapela (opcional mas recomendado)"
    - "Iluminação natural ou ring light"

  edicao:
    app: "CapCut, InShot ou Reels nativo"
    ordem:
      - "1. Filmar todas cenas"
      - "2. Adicionar cortes dinâmicos"
      - "3. Inserir texto overlay"
      - "4. Voice-over ou áudio"
      - "5. Música de fundo"
      - "6. Legendas (auto ou manual)"
      - "7. Review final"

  checklist-pre-publicacao:
    - "[ ] Primeiros 3s prendem atenção?"
    - "[ ] Legendas corretas?"
    - "[ ] Som funciona (mas também sem som)?"
    - "[ ] CTA claro no final?"
    - "[ ] Hashtags na legenda (5-8)"

estado:
  status: aprovado
  necessita-gravacao: true
```

---

### Template Engine (Como Templates São Preenchidos)

**Processo de Geração:**

```yaml
template_engine:
  input:
    - conteudo_gerado: Output do agente writer
    - brain_context: Dados do brain.md
    - metadata: Metadados da sessão

  processo:
    1_selecionar_template:
      - Baseado em canal e tipo
      - Carregar template correto

    2_preencher_metadados:
      - Timestamp automático
      - Agente criador
      - Versão brain.md
      - Contexto (tópico, pilar, safe_mode)

    3_preencher_conteudo:
      - Estruturar conteúdo nas seções do template
      - Aplicar formatação específica do canal
      - Validar comprimento (se aplicável)

    4_gerar_metricas:
      - Voice Validator: score autenticidade
      - Brand Guardian: alinhamento marca
      - Editor: clareza
      - Engagement Optimizer: potencial

    5_gerar_alternativas:
      - Se template suporta (ganchos, CTAs)
      - Baseado em biblioteca-ganchos.md

    6_gerar_insights:
      - Sugestões de melhoria
      - Próximos passos
      - Oportunidades repurposing

    7_definir_estado:
      - Status inicial: validando
      - Após aprovações: aprovado
      - Registrar histórico

  output:
    - Arquivo YAML completo
    - Salvo em docs/content/{canal}/{data}-{slug}.yaml
    - Versão "limpa" em .md para consumo fácil
```

---

### Quality Gates (Validação Automática)

**Sistema de Quality Gates:**

```yaml
quality_gates:
  # Gate 1: Estrutura
  gate_estrutura:
    verifica:
      - Template tem todas seções obrigatórias?
      - Conteúdo preenche campos requeridos?
      - Metadados completos?

    criterio-aprovacao: 100% dos campos obrigatórios preenchidos
    acao-se-falhar: "Erro crítico - não continuar"

  # Gate 2: Comprimento
  gate_comprimento:
    regras:
      linkedin-post:
        minimo: 100 palavras
        ideal: 200-300 palavras
        maximo: 500 palavras

      instagram-caption:
        minimo: 50 palavras
        ideal: 125-175 palavras
        maximo: 300 palavras

      reels-script:
        duracao_minima: 15s
        duracao_ideal: 30-60s
        duracao_maxima: 90s

    criterio-aprovacao: "Dentro do range ideal OU justificativa válida"
    acao-se-falhar: "Warning (não bloqueia, mas alerta)"

  # Gate 3: Autenticidade
  gate_autenticidade:
    validador: voice-validator
    score_minimo: 8.0
    score_primeira_vez: 7.0  # Mais leniente na primeira vez

    criterio-aprovacao: score >= mínimo
    acao-se-falhar:
      - se score >= 6.0: "Permitir com warning + captura feedback"
      - se score < 6.0: "Bloquear + solicitar ajustes"

  # Gate 4: Marca
  gate_marca:
    validador: brand-guardian
    verifica:
      - Alinhado com valores? (brain.md valores & crenças)
      - Respeita safe_mode?
      - Sem violações de limites?
      - Tom consistente com canal?

    criterio-aprovacao: "Nenhuma red flag"
    acao-se-falhar:
      - red_flag: "Bloquear publicação"
      - yellow_flag: "Warning + revisar específico"

  # Gate 5: Qualidade Editorial
  gate_editorial:
    validador: editor-proofreader
    verifica:
      - Gramática e ortografia
      - Clareza de mensagem
      - Formatação adequada
      - CTAs funcionam?

    criterio-aprovacao: "Sem erros críticos"
    acao-se-falhar: "Corrigir automaticamente ou alertar"

  # Sequência de execução
  sequencia:
    - gate_estrutura: "Obrigatório, bloqueante"
    - gate_comprimento: "Não-bloqueante, apenas avisa"
    - gate_autenticidade: "Bloqueante se score < 6"
    - gate_marca: "Bloqueante se red flag"
    - gate_editorial: "Não-bloqueante (corrige automaticamente)"

  resultado_final:
    todos_aprovados: "Status → aprovado"
    algum_reprovado: "Status → necessita_revisao"
    critico_reprovado: "Status → bloqueado"
```

---

### Outputs Finais (Formatos de Entrega)

**Formatos gerados:**

```yaml
outputs:
  # Formato 1: YAML completo (para sistema)
  yaml_completo:
    arquivo: "docs/content/linkedin/2025-10-21-ia-marketing.yaml"
    conteudo: "Template YAML completo com todos metadados"
    uso: "Rastreamento, analytics, histórico"

  # Formato 2: Markdown limpo (para founder)
  markdown_limpo:
    arquivo: "docs/content/linkedin/2025-10-21-ia-marketing.md"
    conteudo: |
      # Post LinkedIn - IA Aplicada a Marketing

      **Data:** 2025-10-21
      **Pilar:** IA Aplicada a Marketing
      **Score:** 8.5/10

      ---

      ## Conteúdo

      Gastei R$50k em IA para marketing.

      Metade foi desperdício. A outra metade 10x meu resultado.

      A diferença? Contexto.

      [... resto do post ...]

      ---

      ## Alternativas de Gancho

      1. R$50k investidos em IA para marketing...
      2. Todo mundo usa IA para marketing agora...
      3. Vou falar algo impopular...

      ---

      ## Hashtags

      #IAMarketing #ContentMarketing #FounderLed

      ---

      ## Próximos Passos Sugeridos

      - Repurposar para Instagram Carrossel
      - Expandir para artigo longo
      - Criar Reels com 3 dicas

    uso: "Founder lê, aprova, copia para publicar"

  # Formato 3: Texto puro (copy-paste direto)
  texto_puro:
    arquivo: "docs/content/linkedin/2025-10-21-ia-marketing.txt"
    conteudo: |
      Gastei R$50k em IA para marketing.

      Metade foi desperdício. A outra metade 10x meu resultado.

      A diferença? Contexto.

      [... post completo sem formatação ...]

      #IAMarketing #ContentMarketing #FounderLed

    uso: "Copy-paste direto para LinkedIn/Instagram"

  # Formato 4: JSON (para integração)
  json_export:
    arquivo: ".foundry/exports/2025-10-21-ia-marketing.json"
    conteudo: "Template em JSON para ferramentas de agendamento"
    uso: "Integração com Buffer, Hootsuite, etc"
```

---

### Resumo da Fase 3.7

**✅ Definido:**

1. **Arquitetura de Templates:** Base + 10 templates especializados
2. **Template Base:** Estrutura comum (metadados, qualidade, insights)
3. **Templates Detalhados:**
   - LinkedIn Post (completo)
   - Instagram Caption (completo)
   - Reels Script (completo com instruções de produção)
4. **Template Engine:** Processo de preenchimento automatizado
5. **Quality Gates:** 5 validações automáticas (estrutura, comprimento, autenticidade, marca, editorial)
6. **Outputs Finais:** 4 formatos (YAML, Markdown, TXT, JSON)

**Próximo Passo:** Fase 3.8 - Comandos & UX do Framework

---

---

# FASE 3.8: COMANDOS & UX DO FRAMEWORK

**Objetivo:** Definir interface completa de interação entre founder e Content Foundry

**Decisões Técnicas:**
- **Ambiente:** Claude Code CLI
- **Idioma:** 100% Português Brasileiro
- **Estilo:** Conversacional mas eficiente
- **Convenções:** kebab-case para comandos e arquivos

---

## 1. Sistema de Comandos (Slash Commands)

### 1.1 Estrutura de Comandos

**Convenção de nomenclatura:**
```
/cf-{categoria}-{acao}

Exemplos:
/cf-cerebro-onboarding
/cf-conteudo-criar
/cf-planejamento-calendario
```

**Prefixo `cf-` = Content Foundry**
- Evita conflitos com outros comandos
- Identifica claramente comandos do framework
- Mantém consistência visual

---

### 1.2 Comandos Principais (20 comandos essenciais)

#### **CATEGORIA: Cérebro Digital**

```yaml
# 1. Comando: /cf-cerebro-onboarding
comando: /cf-cerebro-onboarding
descricao: Inicia processo de onboarding do founder (60-90min)
aliases: ["/cf-onboard", "/cf-inicio"]
agente: orchestrator → onboarding-facilitator
argumentos: null
exemplo: "/cf-cerebro-onboarding"
fluxo:
  - Apresentação do processo (4 fases)
  - Fase 1: Identidade & Voz (20-25min)
  - Fase 2: Posicionamento (15-20min)
  - Fase 3: Preferências de Produção (10-15min)
  - Fase 4: Revisão & Validação (15-20min)
output: brain.md (v1.0.0)

# 2. Comando: /cf-cerebro-atualizar
comando: /cf-cerebro-atualizar
descricao: Atualiza brain.md com novos insights/preferências
aliases: ["/cf-atualizar", "/cf-cerebro-sync"]
agente: onboarding-facilitator
argumentos:
  secao: [identidade|voz|pilares|preferencias|historias] (opcional)
exemplo: "/cf-cerebro-atualizar voz"
fluxo:
  - Se sem argumento: modo interativo (escolhe seção)
  - Se com argumento: atualiza seção específica
  - Mostra diff antes de salvar
  - Pede confirmação
output: brain.md (novo patch version)

# 3. Comando: /cf-cerebro-ver
comando: /cf-cerebro-ver
descricao: Exibe resumo ou seção específica do brain.md
aliases: ["/cf-ver", "/cf-cerebro-info"]
agente: orchestrator
argumentos:
  secao: [resumo|completo|voz|pilares|safe-mode] (opcional)
exemplo: "/cf-cerebro-ver voz"
output: Texto formatado no terminal

# 4. Comando: /cf-cerebro-backup
comando: /cf-cerebro-backup
descricao: Cria backup timestamped do brain.md
aliases: ["/cf-backup"]
agente: system
exemplo: "/cf-cerebro-backup"
output: .content-foundry/backups/brain-2025-10-21-143022.md
```

---

#### **CATEGORIA: Planejamento Estratégico**

```yaml
# 5. Comando: /cf-planejamento-calendario
comando: /cf-planejamento-calendario
descricao: Cria calendário editorial estratégico
aliases: ["/cf-calendario", "/cf-planejar"]
agente: orchestrator → content-strategist (Marina)
argumentos:
  periodo: [semanal|mensal|trimestral] (obrigatório)
  canais: [linkedin|instagram|youtube|newsletter|todos] (opcional)
exemplo: "/cf-planejamento-calendario mensal linkedin,instagram"
fluxo:
  - Analisa brain.md (pilares, frequências, objetivos)
  - Analisa contexto atual (datas importantes, tendências)
  - Propõe calendário balanceado
  - Founder aprova/ajusta
output: docs/calendarios/calendario-2025-11.yaml

# 6. Comando: /cf-planejamento-pilar
comando: /cf-planejamento-pilar
descricao: Gera batch de ideias para um pilar específico
aliases: ["/cf-ideias-pilar"]
agente: content-strategist
argumentos:
  pilar: [id do pilar] (obrigatório)
  quantidade: [numero] (opcional, default: 10)
exemplo: "/cf-planejamento-pilar pilar-1 15"
output: Lista de 15 ideias para "IA Aplicada a Marketing"

# 7. Comando: /cf-planejamento-analise
comando: /cf-planejamento-analise
descricao: Analisa produção recente e sugere ajustes
aliases: ["/cf-analise"]
agente: content-strategist
argumentos:
  periodo: [7d|30d|90d] (opcional, default: 30d)
exemplo: "/cf-planejamento-analise 30d"
output:
  - Distribuição de pilares (vs target)
  - Performance por canal
  - Sugestões de rebalanceamento
```

---

#### **CATEGORIA: Produção de Conteúdo**

```yaml
# 8. Comando: /cf-conteudo-criar
comando: /cf-conteudo-criar
descricao: Cria conteúdo novo (workflow completo)
aliases: ["/cf-criar", "/cf-produzir"]
agente: orchestrator
argumentos:
  canal: [linkedin|instagram|youtube|newsletter] (obrigatório)
  tipo: [post|carrossel|reels|video|thread] (obrigatório)
  topico: [texto livre] (opcional)
exemplo: "/cf-conteudo-criar linkedin post 'IA vs estratégia de conteúdo'"
fluxo:
  - Se sem tópico: sugere baseado em calendário/pilares
  - Founder escolhe ou fornece tópico
  - Executa workflow de produção express/completo
  - Passa por quality gates
  - Gera 4 formatos de output
interativo: sim (pode pedir aprovações/ajustes)

# 9. Comando: /cf-conteudo-repurposar
comando: /cf-conteudo-repurposar
descricao: Adapta conteúdo existente para outro canal
aliases: ["/cf-repurposar", "/cf-adaptar"]
agente: orchestrator → repurposing-specialist (Beatriz)
argumentos:
  arquivo: [caminho do conteúdo original] (obrigatório)
  destino: [linkedin|instagram|youtube|newsletter] (obrigatório)
exemplo: "/cf-conteudo-repurposar docs/content/linkedin/post-001.yaml instagram"
fluxo:
  - Analisa conteúdo original
  - Adapta para formato/tom do canal destino
  - Mantém essência e autenticidade
  - Gera novo template preenchido

# 10. Comando: /cf-conteudo-otimizar
comando: /cf-conteudo-otimizar
descricao: Otimiza rascunho existente
aliases: ["/cf-otimizar", "/cf-melhorar"]
agente: [agente do canal específico]
argumentos:
  arquivo: [caminho do rascunho] (obrigatório)
  foco: [gancho|estrutura|cta|voz|completo] (opcional)
exemplo: "/cf-conteudo-otimizar docs/drafts/post-rascunho.md gancho"
output: Versão otimizada + explicação das mudanças

# 11. Comando: /cf-conteudo-validar
comando: /cf-conteudo-validar
descricao: Executa todas as quality gates manualmente
aliases: ["/cf-validar"]
agente: orchestrator → voice-validator
argumentos:
  arquivo: [caminho do conteúdo] (obrigatório)
exemplo: "/cf-conteudo-validar docs/content/linkedin/post-002.yaml"
output:
  - Score de cada gate (1-5)
  - Feedback específico
  - Sugestões de melhoria

# 12. Comando: /cf-conteudo-batch
comando: /cf-conteudo-batch
descricao: Produção em lote (workflow batch 90-120min)
aliases: ["/cf-batch", "/cf-producao-batch"]
agente: orchestrator
argumentos:
  quantidade: [numero] (obrigatório)
  canais: [lista de canais] (opcional)
exemplo: "/cf-conteudo-batch 5 linkedin,instagram"
fluxo:
  - Analisa calendário e pilares
  - Propõe batch balanceado
  - Founder aprova lista
  - Executa produção paralela
  - Revisa e ajusta batch completo
output: 5 conteúdos prontos para agendamento
```

---

#### **CATEGORIA: Workflows & Jornadas**

```yaml
# 13. Comando: /cf-workflow-iniciar
comando: /cf-workflow-iniciar
descricao: Inicia workflow específico pelo ID
aliases: ["/cf-workflow"]
agente: orchestrator
argumentos:
  workflow-id: [id do workflow] (obrigatório)
exemplo: "/cf-workflow-iniciar producao-express"
workflows-disponiveis:
  - onboarding-completo
  - planejamento-estrategico
  - producao-express
  - producao-batch
  - repurposing-sprint
  - trend-jacking
  - analise-performance
  - otimizacao-pilar
  - revisao-mensal

# 14. Comando: /cf-jornada-iniciar
comando: /cf-jornada-iniciar
descricao: Inicia jornada guiada multi-sessão
aliases: ["/cf-jornada"]
agente: orchestrator
argumentos:
  jornada-id: [id da jornada] (obrigatório)
exemplo: "/cf-jornada-iniciar zero-to-first"
jornadas-disponiveis:
  - zero-to-first (Checkpoint 0 → 4)
  - profissionalizacao (Checkpoint 5 → 8)
  - multi-channel (Checkpoint 9 → 12)
fluxo:
  - Carrega jornada e estado atual
  - Apresenta próximo checkpoint
  - Executa tasks do checkpoint
  - Salva progresso automaticamente
  - Permite pause/resume

# 15. Comando: /cf-jornada-status
comando: /cf-jornada-status
descricao: Mostra progresso atual em jornada ativa
aliases: ["/cf-progresso"]
agente: orchestrator
exemplo: "/cf-jornada-status"
output:
  - Nome da jornada
  - Checkpoint atual (X de Y)
  - Tempo investido
  - Próximos passos
  - Estimativa para conclusão
```

---

#### **CATEGORIA: Assistência & Utilidades**

```yaml
# 16. Comando: /cf-ajuda
comando: /cf-ajuda
descricao: Mostra ajuda contextual ou comando específico
aliases: ["/cf-help", "/cf-?"]
agente: orchestrator
argumentos:
  comando: [nome do comando] (opcional)
exemplo: "/cf-ajuda /cf-conteudo-criar"
output:
  - Se sem argumento: lista todos os comandos por categoria
  - Se com argumento: detalhes do comando específico

# 17. Comando: /cf-sugerir
comando: /cf-sugerir
descricao: Orchestrator sugere próxima ação baseada em contexto
aliases: ["/cf-next", "/cf-proximo"]
agente: orchestrator
exemplo: "/cf-sugerir"
contexto-analisado:
  - Estado do brain.md
  - Calendário editorial
  - Último conteúdo criado
  - Histórico recente
output: 3-5 sugestões priorizadas com rationale

# 18. Comando: /cf-status
comando: /cf-status
descricao: Dashboard de status geral do framework
aliases: ["/cf-dashboard"]
agente: system
exemplo: "/cf-status"
output:
  - Brain version atual
  - Jornada ativa (se houver)
  - Conteúdos em draft
  - Calendário próximos 7 dias
  - Safe mode atual
  - Últimas atualizações

# 19. Comando: /cf-config
comando: /cf-config
descricao: Visualiza ou altera configurações do framework
aliases: ["/cf-settings"]
agente: system
argumentos:
  chave: [safe-mode|output-path|auto-save] (opcional)
  valor: [novo valor] (opcional)
exemplo: "/cf-config safe-mode bold"
output: Configuração atual ou confirmação de mudança

# 20. Comando: /cf-debug
comando: /cf-debug
descricao: Modo debug para troubleshooting
aliases: ["/cf-troubleshoot"]
agente: system
argumentos:
  componente: [brain|templates|agents|workflows] (opcional)
exemplo: "/cf-debug brain"
output: Informações técnicas para diagnóstico
```

---

## 2. Padrões de Interação (UX)

### 2.1 Fluxo de Conversação Padrão

**Estrutura de toda interação:**

```yaml
# Fase 1: Entrada do Usuário
usuario: "/cf-conteudo-criar linkedin post"

# Fase 2: Confirmação & Contextualização
sistema: |
  🎯 Vou criar um post LinkedIn para você.

  📊 Contexto atual:
  - Brain: v1.2.3 (atualizado há 3 dias)
  - Safe Mode: balanced
  - Pilar sugerido: IA Aplicada (40% vs 35% target - ok)

  💡 Quer que eu sugira um tópico ou você já tem uma ideia?

  1. Sugira baseado no calendário
  2. Tenho um tópico específico
  3. Mostrar ideias salvas

# Fase 3: Execução com Feedback
usuario: "1"

sistema: |
  ✅ Analisando calendário e tendências...

  📝 Sugiro 3 tópicos para hoje:

  1. **"IA generativa não substitui estratégia"** (pilar-1, engagement alto)
  2. **"Como validei minha startup com IA em 2 semanas"** (pilar-3, storytelling)
  3. **"3 erros que vi founders cometerem com IA"** (pilar-1, educacional)

  Qual te anima mais?

usuario: "2"

sistema: |
  🚀 Ótima escolha! Vou usar a estrutura de storytelling.

  ⏱️ Gerando rascunho... (15-30 segundos)

  [progress indicator]

  ✅ Rascunho pronto! Passando pelas quality gates...

  Gate 1 (Estrutura): ✅ 10/10
  Gate 2 (Comprimento): ✅ 1.247 caracteres (ideal)
  Gate 3 (Autenticidade): ✅ 8.5/10 (soa como você!)
  Gate 4 (Marca): ✅ Sem red flags
  Gate 5 (Editorial): ⚠️ 2 ajustes sugeridos

  Quer ver o rascunho ou aplicar os ajustes automáticos primeiro?

  1. Ver rascunho agora
  2. Aplicar ajustes e depois ver
  3. Mostrar o que precisa ajustar

# Fase 4: Revisão Interativa
usuario: "2"

sistema: |
  ✅ Ajustes aplicados!

  Mudanças:
  - Linha 3: "muito" → removido (palavra fraca)
  - CTA: Reescrito para ser mais direto

  📄 Aqui está o post final:

  [GANCHO]
  Validei minha startup em 2 semanas usando IA.

  Não foi mágica. Foi método.

  [CORPO]
  Em julho, tinha uma hipótese:
  "Founders desperdiçam 60% do tempo em conteúdo genérico"

  [... resto do post ...]

  ---

  O que você quer fazer?

  1. ✅ Aprovar e salvar (4 formatos)
  2. ✏️ Ajustar gancho
  3. ✏️ Ajustar corpo
  4. ✏️ Ajustar CTA
  5. 🔄 Gerar versão alternativa
  6. ❌ Descartar e começar de novo

# Fase 5: Finalização & Próximos Passos
usuario: "1"

sistema: |
  🎉 Post salvo com sucesso!

  📁 Arquivos criados:
  ✓ docs/content/linkedin/2025-10-21-validacao-startup.yaml (completo)
  ✓ docs/content/linkedin/2025-10-21-validacao-startup.md (limpo)
  ✓ docs/content/linkedin/2025-10-21-validacao-startup.txt (copy-paste)
  ✓ .foundry/exports/2025-10-21-validacao-startup.json (API)

  📊 Estatísticas:
  - Tempo total: 4min 23seg
  - Autenticidade: 8.5/10
  - Alinhamento pilar-3: 9/10

  💡 Próximos passos sugeridos:

  1. Repurposar para Instagram Carrossel (5min)
  2. Criar Reels com a história (10min)
  3. Agendar publicação (LinkedIn)
  4. Ver próximo conteúdo do calendário

  O que você quer fazer agora?
```

---

### 2.2 Princípios de UX

**8 Princípios Fundamentais:**

```yaml
1. Transparência Sempre:
   - Mostrar o que está acontecendo
   - Indicar tempo estimado
   - Revelar decisões do orchestrator
   exemplo: "📊 Analisando brain.md... escolhi Lucas (LinkedIn Writer) porque..."

2. Feedback Imediato:
   - Confirmar cada ação
   - Progress indicators para operações >3seg
   - Emojis para quick scanning (🎯✅⚠️❌)
   exemplo: "✅ Brain atualizado (v1.2.3 → v1.2.4)"

3. Sempre Oferecer Saída:
   - Permitir cancelamento a qualquer momento
   - Comando universal: "cancelar" ou "voltar"
   - Salvar progresso automaticamente
   exemplo: "Digite 'cancelar' a qualquer momento para interromper"

4. Contexto é Rei:
   - Mostrar contexto relevante antes de agir
   - Brain version, safe mode, pilar atual
   - Não assumir que founder lembra de tudo
   exemplo: "📊 Contexto: Safe Mode = conservador (você pediu isso ontem)"

5. Sugestões Inteligentes:
   - Sempre oferecer 2-4 opções numeradas
   - Incluir rationale para cada sugestão
   - Opção "outro" para input livre
   exemplo: "1. Tópico A (align com pilar-1) | 2. Tópico B (trending) | 3. Outro"

6. Linguagem Humana:
   - Português conversacional (não robótico)
   - Evitar jargão técnico desnecessário
   - Usar analogias quando explicar conceitos
   exemplo: "Vou usar o 'safe mode balanced' - nem conservador demais, nem ousado demais"

7. Progressive Disclosure:
   - Mostrar informação essencial primeiro
   - Detalhes técnicos sob demanda ("ver detalhes")
   - Não overwhelming com dados
   exemplo: "Gate 3: ✅ 8.5/10 [ver detalhes]"

8. Celebrar Conquistas:
   - Comemorar milestones
   - Mostrar progresso em jornadas
   - Estatísticas positivas
   exemplo: "🎉 10º post criado! Você já economizou ~18 horas de trabalho"
```

---

### 2.3 Padrões de Mensagens

#### **Mensagens de Sucesso**

```yaml
Template: ✅ [Ação] concluída com sucesso! [Detalhe relevante]

Exemplos:
✅ Post criado com sucesso! (autenticidade: 8.5/10)
✅ Brain atualizado! (v1.2.3 → v1.2.4)
✅ Calendário mensal salvo! (18 posts planejados)
✅ Jornada "Zero to First" completa! 🎉
```

#### **Mensagens de Erro**

```yaml
Template: ❌ [Problema claro] | 💡 [Solução sugerida]

Exemplos:
❌ Brain.md não encontrado
💡 Execute '/cf-cerebro-onboarding' para criar

❌ Safe mode "ultra-bold" não existe
💡 Opções válidas: conservador, balanced, bold

❌ Arquivo não encontrado: docs/post-abc.yaml
💡 Verifique o caminho ou use '/cf-ajuda' para listar conteúdos

❌ Template inválido (campo "gancho" obrigatório está vazio)
💡 Vou preencher automaticamente baseado no tópico
```

#### **Mensagens de Warning**

```yaml
Template: ⚠️ [Alerta] | [Contexto] | [Opções]

Exemplos:
⚠️ Autenticidade baixa (5.2/10)
Este rascunho não soa como você. Isso é intencional?
1. Regenerar com mais contexto
2. Continuar mesmo assim
3. Revisar manualmente

⚠️ Pilar "IA Aplicada" está em 58% (target: 40%)
Você está focando muito neste tema. Quer balancear?
1. Sugerir tópico de outro pilar
2. Continuar com este pilar
3. Ver distribuição completa

⚠️ Brain.md desatualizado (última atualização: 45 dias)
Suas preferências podem ter mudado. Quer atualizar?
1. Sim, vamos atualizar agora (15min)
2. Lembrar depois
3. Não, está ok
```

#### **Mensagens de Progress**

```yaml
Template: ⏱️ [Ação em andamento]... [ETA] [Progress bar opcional]

Exemplos:
⏱️ Analisando brain.md... (3-5 seg)

⏱️ Gerando 5 posts em batch... (2-3 min)
[████████░░] 80% (4/5 completos)

⏱️ Validando autenticidade... (5-10 seg)
Comparando com 47 posts anteriores seus
```

#### **Mensagens de Sugestão**

```yaml
Template: 💡 [Sugestão] | [Rationale]

Exemplos:
💡 Sugiro criar um carrossel Instagram
Este tópico funciona bem visual e você não posta carrossel há 2 semanas

💡 Hora de atualizar seu brain.md
Notei que você começou a usar mais metáforas técnicas - vamos capturar isso?

💡 Próximo post: "Como escolher stack de IA" (pilar-1, alta demanda)
DMs recentes mostram que seu público tem esta dúvida
```

---

## 3. Feedback Loops (Aprendizado Contínuo)

### 3.1 Sistema de Aprendizado Automático

**3 níveis de feedback:**

```yaml
# Nível 1: Implícito (automático, não requer ação do founder)
implicito:
  triggers:
    - Founder aprova conteúdo sem ajustes → +1 autenticidade
    - Founder pede regeneração → analisa o que falhou
    - Founder ajusta gancho 3x seguidas → aprende padrão preferido
    - Founder sempre muda CTA → atualiza preferência de CTAs

  acoes:
    - Atualiza seção "continuous-learnings" do brain.md
    - Incrementa contadores de preferências
    - Ajusta pesos de templates

  exemplo: |
    # Em brain.md (auto-updated)
    continuous-learnings:
      - aprendizado-id: learn-001
        data: 2025-10-21
        categoria: estrutura-post
        insight: "Founder sempre reduz ganchos de 4 para 2 linhas"
        acao: "Gerar ganchos mais curtos por padrão"
        confianca: 0.85 (17/20 últimos posts)

# Nível 2: Explícito Leve (rating rápido)
explicito-leve:
  triggers:
    - Após aprovar conteúdo
    - Após concluir workflow

  formato: |
    ⭐ Como ficou este post?
    1. Perfeito (9-10/10)
    2. Bom (7-8/10)
    3. Precisa melhorar (4-6/10)
    4. Não está no meu tom (0-3/10)

  acoes:
    - Se ≥7: reforça padrões usados
    - Se <7: solicita feedback específico
    - Se <4: marca para revisão de voice validation

# Nível 3: Explícito Profundo (feedback estruturado)
explicito-profundo:
  triggers:
    - Founder solicita via "/cf-feedback"
    - Sistema detecta inconsistências
    - Após 10 posts criados (milestone)

  formato: |
    📊 Vamos melhorar sua experiência (5 perguntas, 2min)

    1. A autenticidade dos posts está melhorando?
       [Escala 1-5 + campo aberto]

    2. Algum padrão que você sempre muda?
       [Lista de padrões identificados + "outro"]

    3. Que tipo de conteúdo você está evitando criar?
       [Livre]

    4. Safe mode está adequado?
       [conservador|balanced|bold + motivo]

    5. O que mais te frustra no processo?
       [Livre]

  acoes:
    - Atualiza brain.md com novos insights
    - Ajusta configurações do framework
    - Cria tasks para melhorias identificadas
```

---

### 3.2 Métricas de Uso (Tracking)

**Dashboard de métricas (visível via `/cf-status`):**

```yaml
metricas-rastreadas:
  producao:
    - total-posts-criados: 47
    - posts-por-canal:
        linkedin: 23
        instagram: 15
        youtube: 6
        newsletter: 3
    - taxa-aprovacao-primeira: 68% (aumentou 12% em 30d)
    - tempo-medio-producao: 6min (vs 2h manual = 95% economia)

  qualidade:
    - autenticidade-media: 8.3/10 (target: 8+) ✅
    - score-voice-validation: 8.7/10 (melhorando)
    - taxa-passagem-gates: 94%

  uso:
    - comandos-mais-usados:
        1: /cf-conteudo-criar (47x)
        2: /cf-sugerir (23x)
        3: /cf-conteudo-repurposar (18x)
    - workflows-favoritos:
        1: producao-express (32x)
        2: repurposing-sprint (18x)
    - jornadas-completas: 2/3

  brain-health:
    - versao-atual: v1.4.2
    - ultima-atualizacao: 3 dias atrás
    - learnings-capturados: 34
    - confianca-media-learnings: 0.78

  satisfacao:
    - rating-medio-posts: 8.1/10
    - uso-consistente: 4.2 posts/semana (target: 3+) ✅
    - tempo-medio-sessao: 18min
```

---

### 3.3 Ciclos de Melhoria

**Periodicidade de revisões:**

```yaml
# A cada 10 posts criados
milestone-10:
  trigger: 10, 20, 30, 40... posts
  acao: |
    🎉 Parabéns! 10 posts criados.

    📊 Quick check:
    - Autenticidade média: 8.2/10 ✅
    - Tempo médio: 5min ✅
    - Aprovação na primeira: 70% ✅

    💡 Notei que você sempre ajusta CTAs.
    Quer que eu aprenda seu estilo de CTA? (2min)
  output: Micro-ajuste em templates

# A cada 30 dias
revisao-mensal:
  trigger: 30 dias desde último onboarding
  acao: |
    📅 Revisão Mensal

    Seu conteúdo evolui. Seu brain.md também deveria.

    📊 Mudanças que notei:
    - Você está usando mais dados/números
    - Histórias pessoais aumentaram 40%
    - Tom ficou 15% mais direto

    Vamos atualizar o brain.md para refletir isso? (15-20min)
  output: Brain.md minor version bump (v1.3.0 → v1.4.0)

# A cada 90 dias
revisao-trimestral:
  trigger: 90 dias
  acao: |
    🎯 Revisão Estratégica Trimestral

    Hora de avaliar o big picture:

    1. Pilares ainda fazem sentido? (adicionar/remover/ajustar)
    2. Safe mode adequado? (conservador→balanced→bold)
    3. Canais estão balanceados?
    4. Objetivos mudaram?

    Vamos fazer uma sessão de planejamento? (30-45min)
  output: Brain.md major version bump (v1.x.x → v2.0.0)
```

---

## 4. Error Handling & Edge Cases

### 4.1 Casos de Erro Comuns

```yaml
# Erro 1: Brain.md incompleto ou corrompido
erro: "Brain.md tem campos obrigatórios vazios"
deteccao: Ao iniciar qualquer comando de produção
acao: |
  ❌ Seu brain.md está incompleto

  Campos vazios encontrados:
  - founder.tom.caracteristicas
  - founder.pilares (precisa de pelo menos 2)

  💡 Vamos completar agora (5-10min) ou continuar depois?
  1. Completar agora
  2. Usar modo "safe defaults" temporariamente
  3. Cancelar operação
fallback: Modo "safe defaults" (tom neutro, sem personalização)

# Erro 2: Template inválido
erro: "Template linkedin-post.yaml está corrompido"
deteccao: Ao tentar gerar conteúdo
acao: |
  ❌ Template corrompido detectado

  💡 Vou usar backup automático (última versão válida)

  Quer que eu restaure o template padrão? (recomendado)
  1. Sim, restaurar padrão
  2. Não, usar backup
  3. Cancelar e investigar
fallback: Template de backup ou template padrão

# Erro 3: Quality gate falha crítica
erro: "Voice validation score: 3.2/10 (threshold: 6.0)"
deteccao: Durante quality gates
acao: |
  ⚠️ Autenticidade muito baixa (3.2/10)

  Este conteúdo NÃO soa como você.

  Possíveis causas:
  - Tópico muito fora do seu nicho
  - Brain.md desatualizado
  - Conflito com safe mode

  O que você quer fazer?
  1. Regenerar com mais contexto do brain.md
  2. Mudar de tópico (sugerir alternativas)
  3. Ver o que está "off" especificamente
  4. Continuar mesmo assim (não recomendado)
bloqueio: Sim (não permite prosseguir sem confirmação explícita)

# Erro 4: Comando não encontrado
erro: "Comando /cf-xyz não existe"
deteccao: Parser de comandos
acao: |
  ❌ Comando '/cf-xyz' não encontrado

  💡 Você quis dizer:
  1. /cf-conteudo-criar (85% similar)
  2. /cf-criar (70% similar)
  3. /cf-ajuda (ver todos os comandos)

  Ou descreva o que você quer fazer:
fuzzy-matching: Sim (suggest similar commands)

# Erro 5: Operação interrompida
erro: "Usuário digitou 'cancelar' durante workflow"
deteccao: A qualquer momento
acao: |
  ⏸️ Operação cancelada

  💾 Progresso salvo automaticamente em:
  .content-foundry/drafts/interrupted-2025-10-21-143022.yaml

  Você pode retomar depois com:
  /cf-workflow-retomar interrupted-2025-10-21-143022

  Ou descartar com:
  /cf-workflow-descartar interrupted-2025-10-21-143022
auto-save: Sim (sempre salva estado antes de cancelar)
```

---

### 4.2 Graceful Degradation

**Estratégia de fallback:**

```yaml
# Cenário 1: Brain.md não existe
fallback-brain:
  condicao: "Arquivo brain.md não encontrado"
  acao: "Usar modo 'First Time User'"
  comportamento:
    - Assumir safe mode = conservador
    - Tom neutro/profissional
    - Não usar personalizações
    - Solicitar onboarding ao finalizar
  mensagem: |
    💡 Primeira vez aqui?
    Este post vai ser genérico. Para autenticidade real,
    execute '/cf-cerebro-onboarding' (60-90min)

# Cenário 2: Template não encontrado
fallback-template:
  condicao: "Template específico ausente"
  acao: "Usar template base genérico"
  comportamento:
    - Carregar template-base.yaml
    - Adaptar para canal requisitado
    - Adicionar warning de qualidade reduzida
  mensagem: |
    ⚠️ Template específico não encontrado
    Usando template genérico (qualidade pode ser menor)

# Cenário 3: Agente não disponível
fallback-agente:
  condicao: "Agente específico com erro"
  acao: "Orchestrator assume função"
  comportamento:
    - Orchestrator tenta executar tarefa
    - Registra falha para debug
    - Avisa que experiência será subótima
  mensagem: |
    ⚠️ Agente especializado indisponível
    Vou fazer meu melhor, mas resultado pode ser diferente do usual

# Cenário 4: Validação offline
fallback-validation:
  condicao: "Voice validator não responde"
  acao: "Bypass com warning"
  comportamento:
    - Pula quality gate 3
    - Marca conteúdo para validação posterior
    - Continua workflow
  mensagem: |
    ⚠️ Validação de voz temporariamente offline
    Conteúdo gerado sem verificação de autenticidade
    Revise manualmente antes de publicar
```

---

## 5. Onboarding & Discovery

### 5.1 Primeira Experiência (First Run)

```yaml
# Detecta primeiro uso
primeira-vez:
  trigger: "Qualquer comando /cf-* sem brain.md existente"
  fluxo: |
    👋 Bem-vindo ao Content Foundry!

    Eu sou o Carlos, o Orchestrator.
    Vou coordenar tudo para você criar conteúdo autêntico em minutos.

    Para começar, preciso te conhecer. São 4 fases (~60-90min):

    1️⃣ Identidade & Voz (20-25min)
       - Quem você é, como você fala
       - Tom, vocabulário, estilo

    2️⃣ Posicionamento (15-20min)
       - Pilares de conteúdo
       - Objetivos, público-alvo

    3️⃣ Preferências de Produção (10-15min)
       - Canais, formatos
       - Safe mode, frequência

    4️⃣ Revisão & Validação (15-20min)
       - Validamos tudo juntos
       - Ajustes finais

    💡 Você pode pausar a qualquer momento e retomar depois.

    Vamos começar? (recomendo reservar 90min sem interrupções)

    1. Sim, vamos lá! (iniciar onboarding)
    2. Quero entender melhor primeiro
    3. Tenho pressa, existe atalho? (quick start 15min)

  opcao-1: "Executa /cf-cerebro-onboarding completo"
  opcao-2: "Mostra tour interativo do framework"
  opcao-3: "Quick start mode (cria brain.md mínimo + primeiro post)"
```

---

### 5.2 Comando de Descoberta

```yaml
# /cf-tour - Tour interativo do framework
comando: /cf-tour
descricao: "Tour guiado das capacidades do Content Foundry"
duracao: "10-15 minutos"
conteudo: |
  🎯 Tour do Content Foundry

  Vou te mostrar as 5 coisas mais importantes:

  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

  1/5: CÉREBRO DIGITAL (brain.md)

  O coração do sistema. Aprende com você e mantém sua voz autêntica.

  Ele contém:
  • Sua identidade, tom, vocabulário
  • Pilares de conteúdo e objetivos
  • Histórias e contextos importantes
  • Learnings contínuos (auto-atualiza)

  Comando principal: /cf-cerebro-onboarding

  [continuar] → próximo

  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

  2/5: PRODUÇÃO EXPRESS (15-30min)

  De ideia a post pronto em minutos.

  Processo:
  1. Você dá um tópico (ou sistema sugere)
  2. Agente especializado cria rascunho
  3. Quality gates validam autenticidade
  4. Você aprova ou ajusta
  5. Sistema gera 4 formatos de output

  Comando principal: /cf-conteudo-criar

  [continuar] → próximo

  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

  3/5: PLANEJAMENTO ESTRATÉGICO

  Calendário editorial automático baseado nos seus pilares.

  Sistema analisa:
  • Distribuição de pilares (garante balanceamento)
  • Calendário e tendências
  • Performance histórica
  • Contexto do founder

  Comando principal: /cf-planejamento-calendario mensal

  [continuar] → próximo

  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

  4/5: REPURPOSING INTELIGENTE

  Um conteúdo vira 4. Mantendo autenticidade em cada canal.

  Exemplo:
  Post LinkedIn → Instagram Carrossel + Reels + Newsletter

  Sistema adapta:
  • Formato (texto → visual)
  • Tom (formal → casual se necessário)
  • Comprimento (longo → curto)

  Comando principal: /cf-conteudo-repurposar

  [continuar] → próximo

  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

  5/5: APRENDIZADO CONTÍNUO

  Quanto mais você usa, melhor fica.

  Sistema aprende:
  • Padrões que você sempre ajusta
  • Tom que está evoluindo
  • Tópicos que performam
  • Preferências implícitas

  Tudo vai para brain.md automaticamente.

  [finalizar tour]

  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

  ✅ Tour concluído!

  Próximo passo:
  /cf-cerebro-onboarding (criar seu cérebro digital)

  Ou se tiver dúvidas:
  /cf-ajuda (lista completa de comandos)
```

---

## 6. Configuração & Personalização

### 6.1 Configurações Globais

**Arquivo: `.content-foundry/config.yaml`**

```yaml
# Configurações do Content Foundry
config:
  version: "1.0.0"

  # Paths
  paths:
    brain: ".content-foundry/brain.md"
    output: "docs/content"
    drafts: ".content-foundry/drafts"
    backups: ".content-foundry/backups"
    templates: ".content-foundry/templates"

  # Comportamento padrão
  defaults:
    safe-mode: "balanced"  # conservador|balanced|bold
    auto-save: true
    auto-backup: true
    backup-frequency: "7d"  # backup a cada 7 dias
    voice-validation-threshold: 7.0  # 0-10
    progressive-disclosure: true  # mostrar menos info por padrão
    celebration-mode: true  # emojis e comemorações

  # Quality Gates
  quality-gates:
    gate-1-blocking: true   # estrutura
    gate-2-blocking: false  # comprimento (warning only)
    gate-3-blocking: true   # autenticidade
    gate-4-blocking: true   # marca
    gate-5-blocking: false  # editorial (auto-fix)

  # Feedback & Learning
  feedback:
    implicit-learning: true
    explicit-light-frequency: "post-criacao"  # sempre|nunca|post-criacao
    explicit-deep-frequency: "10-posts"  # 10-posts|30-dias|manual
    metrics-tracking: true

  # UX
  ux:
    language: "pt-BR"
    emoji-style: "minimal"  # none|minimal|full
    verbosity: "balanced"  # concise|balanced|detailed
    sempre-sugerir-proximos-passos: true

  # Integrações (para futuro)
  integrations:
    linkedin-api: false
    instagram-api: false
    buffer: false
    analytics: false
```

---

### 6.2 Personalização via Comando

```yaml
# Alterar configurações via CLI
comando: /cf-config
exemplos:
  - input: "/cf-config safe-mode bold"
    output: |
      ✅ Safe mode alterado: balanced → bold

      Agora vou gerar conteúdo mais ousado e experimental.
      Você ainda pode revisar antes de publicar.

      Para voltar: /cf-config safe-mode balanced

  - input: "/cf-config voice-validation-threshold 8.5"
    output: |
      ✅ Threshold de autenticidade: 7.0 → 8.5

      Agora sou mais exigente com autenticidade.
      Posts com score <8.5 serão marcados para revisão.

  - input: "/cf-config auto-backup false"
    output: |
      ⚠️ Auto-backup desativado

      Você é responsável por backups manuais.
      Recomendo: /cf-cerebro-backup semanalmente

  - input: "/cf-config"
    output: |
      ⚙️ Configurações atuais:

      Safe Mode: balanced
      Voice Threshold: 7.0/10
      Auto-save: ✅ ativo
      Auto-backup: ✅ ativo (a cada 7 dias)
      Celebration Mode: ✅ ativo

      Para alterar: /cf-config [chave] [valor]
      Lista completa: /cf-ajuda /cf-config
```

---

## 7. Comandos Avançados & Power Users

### 7.1 Comandos de Debug & Inspeção

```yaml
# Para troubleshooting e power users
comandos-avancados:

  # Inspecionar decisões do orchestrator
  - comando: /cf-debug-decisao
    uso: "Ver por que orchestrator escolheu agente X"
    output: |
      🔍 Última decisão do orchestrator:

      Comando: /cf-conteudo-criar linkedin post

      Análise de contexto:
      ✓ Canal: LinkedIn (explicit)
      ✓ Brain version: v1.2.3 (ok)
      ✓ Safe mode: balanced
      ✓ Pilar sugerido: pilar-1 (40% vs 35% target)

      Agente escolhido: Lucas (linkedin-writer)
      Confiança: 0.95

      Agentes considerados:
      1. Lucas (linkedin-writer) - 0.95 ⭐
      2. Ana (content-repurposer) - 0.15
      3. Carlos (orchestrator fallback) - 0.05

  # Ver templates brutos
  - comando: /cf-debug-template {template-id}
    uso: "Inspecionar template YAML bruto"
    output: "Conteúdo completo do template (para edição manual)"

  # Validar brain.md
  - comando: /cf-debug-brain
    uso: "Verificar integridade e completude do brain.md"
    output: |
      ✅ Brain.md válido

      Estrutura:
      ✓ YAML frontmatter válido
      ✓ Todos os campos obrigatórios preenchidos
      ✓ Versioning correto (v1.2.3)

      Warnings:
      ⚠️ Seção "historias" tem apenas 2 itens (recomendado: 5+)
      ⚠️ Última atualização: 14 dias atrás

      Health Score: 8.5/10

  # Re-processar conteúdo com novo brain
  - comando: /cf-reprocessar {arquivo} --brain-version {version}
    uso: "Recriar conteúdo com versão diferente do brain"
    exemplo: "/cf-reprocessar post-001.yaml --brain-version v1.1.0"

  # Batch operations
  - comando: /cf-batch-validar {pasta}
    uso: "Validar autenticidade de múltiplos conteúdos"
    exemplo: "/cf-batch-validar docs/content/linkedin/"
    output: |
      📊 Validando 23 posts LinkedIn...

      Resultados:
      ✅ 18 posts (8+/10) - autênticos
      ⚠️ 4 posts (6-7.9/10) - revisar
      ❌ 1 post (3.2/10) - refazer

      Média: 8.1/10

      Ver detalhes: /cf-batch-validar docs/content/linkedin/ --detalhes
```

---

### 7.2 Atalhos & Aliases

```yaml
# Criar aliases personalizados
atalhos-nativos:
  # Atalho 1: Comando do dia
  - alias: "/cf-hoje"
    expande-para: "/cf-sugerir + /cf-conteudo-criar [sugestão top 1]"
    descricao: "Cria o conteúdo mais relevante para hoje (1-click)"

  # Atalho 2: Produção rápida
  - alias: "/cf-rapido {canal}"
    expande-para: "/cf-conteudo-criar {canal} --modo express"
    descricao: "Versão ultra-rápida (pula confirmações)"
    exemplo: "/cf-rapido linkedin"

  # Atalho 3: Repurposing em massa
  - alias: "/cf-explode {arquivo}"
    expande-para: "/cf-conteudo-repurposar {arquivo} --todos-canais"
    descricao: "Repurpose para TODOS os canais de uma vez"
    exemplo: "/cf-explode post-001.yaml"

  # Atalho 4: Status rápido
  - alias: "/cf"
    expande-para: "/cf-status --resumo"
    descricao: "Dashboard rápido"

  # Atalho 5: Próxima ação
  - alias: "/cf-next"
    expande-para: "/cf-sugerir --top-1-auto"
    descricao: "Executa automaticamente a próxima ação sugerida"

# Criar aliases customizados
customizacao:
  comando: /cf-alias-criar
  exemplo: |
    > /cf-alias-criar

    Nome do alias: /post-linkedin
    Comando completo: /cf-conteudo-criar linkedin post

    ✅ Alias criado!
    Agora você pode usar: /post-linkedin

  arquivo: ".content-foundry/aliases.yaml"
```

---

### Resumo da Fase 3.8

**✅ Definido:**

1. **20 Comandos Principais:** Organizados em 5 categorias (Cérebro, Planejamento, Produção, Workflows, Assistência)
2. **Convenção de Nomenclatura:** `/cf-{categoria}-{acao}` (100% PT-BR, kebab-case)
3. **Padrões de Interação:** 5 fases (Entrada → Confirmação → Execução → Revisão → Finalização)
4. **8 Princípios de UX:** Transparência, Feedback Imediato, Saída Sempre, Contexto, Sugestões, Linguagem Humana, Progressive Disclosure, Celebração
5. **Mensagens Padronizadas:** Templates para sucesso (✅), erro (❌), warning (⚠️), progress (⏱️), sugestão (💡)
6. **3 Níveis de Feedback:** Implícito (automático), Explícito Leve (rating), Explícito Profundo (estruturado)
7. **Sistema de Métricas:** Tracking de produção, qualidade, uso, brain health, satisfação
8. **Ciclos de Melhoria:** Milestone-10, Revisão Mensal (30d), Revisão Trimestral (90d)
9. **Error Handling:** 5 casos comuns + estratégia de graceful degradation
10. **Onboarding & Discovery:** Primeira experiência + `/cf-tour` interativo
11. **Configuração:** `config.yaml` + comando `/cf-config` para personalização
12. **Comandos Avançados:** Debug, inspeção, batch operations
13. **Atalhos & Aliases:** 5 nativos + sistema de aliases customizados

---

## 🎯 SUCCESS CRITERIA (MVP v1.0)

**Critérios de Sucesso:**

1. ✅ Onboarding completo de Vitor (brain.md preenchido)
2. ✅ Geração de 1 post LinkedIn autêntico e publicável
3. ✅ Geração de 1 post Instagram (feed + stories)
4. ✅ Geração de 1 roteiro YouTube
5. ✅ Geração de 1 newsletter
6. ✅ Calendário editorial de 30 dias criado
7. ✅ Voice Validation passa (conteúdo indistinguível do original)
8. ✅ Vitor usa para criar conteúdo real por 2 semanas
9. ✅ 80%+ de satisfação com autenticidade
10. ✅ 50%+ redução de tempo vs criar manualmente

**Métricas de Validação:**
- Tempo para primeiro post: <30min (vs 2h manual)
- Autenticidade percebida: 8+/10
- Uso consistente: 3+ posts/semana gerados
- Satisfação geral: 8+/10

**Decisão Go/No-Go para v2.0:**
- Se atingir 8/10 critérios → Investir em standalone
- Se <6/10 → Iterar no MVP antes de v2.0

---

# 📋 RESUMO EXECUTIVO

## Status do Projeto

**Versão:** Content Foundry v1.0 - Arquitetura Completa
**Última atualização:** 2025-10-21
**Arquiteto:** Winston 🏗️
**Status:** ✅ ARQUITETURA 100% COMPLETA (8/8 fases)

---

## Fases Completadas

| Fase | Título | Status |
|------|--------|--------|
| 1.1 | Decisões Estratégicas | ✅ Completa |
| 1.2 | Estrutura de Arquivos | ✅ Completa |
| 1.3 | Formato de Agentes/Workflows | ✅ Completa |
| 2.4 | Cérebro Digital (brain.md) | ✅ Completa |
| 2.5 | Sistema de Orquestração | ✅ Completa |
| 2.6 | Workflows & Jornadas | ✅ Completa |
| 3.7 | Templates & Outputs | ✅ Completa |
| 3.8 | Comandos & UX | ✅ Completa |

**Progresso:** 8/8 fases (100%)

---

## Visão Geral da Solução

**Content Foundry v1.0** é um framework AI-first para produção de conteúdo autêntico de Founder-Led Marketing. O sistema:

### 🎯 Proposta de Valor
- **95% redução no tempo** de produção de conteúdo (2h → 6min)
- **Autenticidade garantida** via Voice Validation (8+/10)
- **Multi-canal nativo:** LinkedIn, Instagram, YouTube, Newsletter
- **100% em Português:** Comandos, interfaces, e interações

### 🏗️ Arquitetura
- **Runtime:** Claude Code (Anthropic oficial CLI)
- **Deployment:** Config-based (YAML + Markdown)
- **Core:** 20+ agentes especializados em português
- **Cérebro:** brain.md (3 layers: YAML + Narrativas + Continuous Learning)
- **Orquestração:** Carlos (orchestrator) coordena todos os agentes

### 🔄 Workflows Principais
1. **Onboarding:** 60-90min para capturar voz do founder
2. **Produção Express:** 15-30min (tópico → post publicável)
3. **Batch Production:** 90-120min (5-10 posts balanceados)
4. **Repurposing:** 10-20min (1 conteúdo → 4 canais)
5. **Trend Jacking:** 20-30min (trend → post rápido)

### ✨ Diferenciais Técnicos
1. **Voice Validation:** Sistema de 5 quality gates
2. **Safe Mode:** 3 níveis (conservador/balanced/bold)
3. **Continuous Learning:** Brain.md auto-atualiza baseado em uso
4. **State Machine:** Jornadas com pause/resume
5. **Portuguese-First:** Agentes com nomes brasileiros, comandos em PT-BR

---

## Decisões Técnicas Principais

### ✅ Aprovadas

| Decisão | Opção Escolhida | Rationale |
|---------|----------------|-----------|
| **Deployment** | Config-based (opção A) | MVP rápido (2-4 semanas vs 2-3 meses) |
| **Runtime** | Claude Code | Ambiente já familiar ao founder |
| **Storage** | Hybrid (YAML + MD) | Structured + Human-readable |
| **Testing** | Internal (single founder) | Validação antes de escalar |
| **LLM** | Claude-only | Consistência de qualidade |
| **Channels** | 4 canais | LinkedIn, Instagram, YouTube, Newsletter |
| **Language** | 100% PT-BR | Experiência nativa brasileira |
| **Timeline** | 6-8 semanas full-time | Balança escopo vs velocidade |

---

## Componentes Principais

### 1. Cérebro Digital (brain.md)

**3 Layers:**
```yaml
# Layer 1: YAML Frontmatter (structured data)
founder:
  nome: "Vitor Garcia"
  tom: { geral: "Técnico mas acessível" }
  pilares: [...]
  safe_mode: "balanced"

# Layer 2: Markdown Narratives
# Histórias, contexto, valores

# Layer 3: Continuous Learnings (auto-updated)
continuous-learnings:
  - insight: "Founder prefere ganchos curtos (2 linhas)"
    confianca: 0.85
```

**Versioning:** Semantic (major.minor.patch)

---

### 2. Sistema de Agentes (20+ agentes)

**Categorias:**
- **Core:** Carlos (Orchestrator), Onboarding Facilitator, Voice Validator
- **Produção:** Lucas (LinkedIn), Marina (Content Strategist), Rafael (Instagram), etc.
- **Especialistas:** Beatriz (Repurposing), Diego (SEO), Ana (Data Analyst)

**Formato (Portuguese):**
```yaml
agente:
  nome: Lucas
  id: linkedin-writer
  titulo: Escritor de Posts LinkedIn
  quando-usar: "Criação de posts LinkedIn..."

comandos:
  - ajuda: Mostra lista numerada
  - gerar-post {tópico}: Cria post
  - otimizar-gancho: Melhora primeiras 3 linhas
```

---

### 3. Orquestração Inteligente

**Carlos (Orchestrator) decide baseado em:**
1. **Pattern Matching:** keywords_trigger nos agentes
2. **Contextual Analysis:** brain.md, calendário, histórico
3. **Priority Scoring:** Confiança 0-1

**Pipelines:** Sequential, Parallel, Hybrid

---

### 4. Workflows & Jornadas

**9 Workflows:**
- Onboarding Completo (60-90min)
- Planejamento Estratégico (45-60min)
- Produção Express (15-30min)
- Batch Production (90-120min)
- Repurposing Sprint (10-20min)
- Trend Jacking (20-30min)
- Análise de Performance (30min)
- Otimização de Pilar (20min)
- Revisão Mensal (45min)

**3 Jornadas Guiadas:**
1. Zero to First Post (4 checkpoints)
2. Profissionalização (checkpoints 5-8)
3. Multi-Channel Efficiency (checkpoints 9-12)

---

### 5. Templates & Quality Gates

**Templates (YAML):**
- Base template + 10 especializados
- 4 formatos de output: YAML, Markdown, TXT, JSON

**5 Quality Gates:**
1. **Estrutura** (blocking): Campos obrigatórios
2. **Comprimento** (warning): Limites ideais
3. **Autenticidade** (blocking): Voice score 7+/10
4. **Marca** (blocking): Red flags de marca
5. **Editorial** (auto-fix): Gramática, clareza

---

### 6. Comandos & UX

**20 Comandos Principais:**
```bash
# Cérebro
/cf-cerebro-onboarding    # Onboarding inicial
/cf-cerebro-atualizar     # Atualiza brain.md
/cf-cerebro-ver           # Exibe resumo

# Planejamento
/cf-planejamento-calendario  # Gera calendário editorial
/cf-planejamento-pilar       # Ideias para pilar
/cf-planejamento-analise     # Analisa produção

# Produção
/cf-conteudo-criar          # Cria conteúdo novo
/cf-conteudo-repurposar     # Adapta para outro canal
/cf-conteudo-validar        # Executa quality gates

# Workflows
/cf-workflow-iniciar        # Inicia workflow
/cf-jornada-iniciar         # Inicia jornada guiada

# Utilidades
/cf-ajuda                   # Ajuda contextual
/cf-sugerir                 # Sugere próxima ação
/cf-status                  # Dashboard
```

**Princípios UX:**
1. Transparência (mostra decisões)
2. Feedback imediato (emojis, progress bars)
3. Sempre oferecer saída (cancelar)
4. Contexto é rei (brain version, safe mode)
5. Sugestões inteligentes (2-4 opções)
6. Linguagem humana (PT-BR conversacional)
7. Progressive disclosure
8. Celebrar conquistas

---

## Próximos Passos: Implementação

### FASE 4: IMPLEMENTAÇÃO (6-8 semanas)

#### **Sprint 1-2: Core Infrastructure (2 semanas)**

**Objetivo:** Estrutura base + brain.md funcional

**Tasks:**
1. Criar estrutura de diretórios `.content-foundry/`
2. Implementar brain.md schema (YAML + validation)
3. Criar agente Carlos (Orchestrator básico)
4. Implementar comando `/cf-cerebro-onboarding`
5. Sistema de versioning do brain.md

**Entregável:** Founder consegue fazer onboarding e gerar brain.md v1.0.0

---

#### **Sprint 3-4: Agentes & Produção (2 semanas)**

**Objetivo:** Produção de conteúdo funcional (1 canal)

**Tasks:**
1. Implementar Lucas (LinkedIn Writer)
2. Criar template linkedin-post.yaml
3. Implementar Voice Validator básico
4. Sistema de quality gates (gates 1, 3, 4)
5. Comando `/cf-conteudo-criar linkedin post`
6. 4 formatos de output (YAML, MD, TXT, JSON)

**Entregável:** Founder cria primeiro post LinkedIn autêntico

---

#### **Sprint 5-6: Multi-Canal & Workflows (2 semanas)**

**Objetivo:** Expandir para 4 canais + workflows

**Tasks:**
1. Implementar agentes: Rafael (Instagram), Pedro (YouTube), Camila (Newsletter)
2. Templates: instagram-caption, reels-script, youtube-script, newsletter
3. Implementar Beatriz (Repurposing Specialist)
4. Comando `/cf-conteudo-repurposar`
5. Workflow: Produção Express
6. Workflow: Batch Production

**Entregável:** Founder produz conteúdo para 4 canais + repurposing

---

#### **Sprint 7-8: Planejamento & Jornadas (2 semanas)**

**Objetivo:** Planejamento estratégico + experiência completa

**Tasks:**
1. Implementar Marina (Content Strategist)
2. Comando `/cf-planejamento-calendario`
3. Sistema de pilares e balanceamento
4. Jornada: Zero to First Post (completa)
5. Continuous learning (feedback implícito)
6. Métricas básicas (`/cf-status`)
7. Polimento de UX (mensagens, emojis, confirmações)

**Entregável:** MVP v1.0 completo e pronto para uso

---

### Checklist de Go-Live

**Antes de lançar MVP:**

- [ ] Brain.md criado e validado com Vitor
- [ ] 5+ posts LinkedIn gerados com voice score 8+
- [ ] 3+ posts Instagram criados
- [ ] 1 roteiro YouTube completo
- [ ] 1 newsletter escrita
- [ ] Calendário mensal de 30 dias gerado
- [ ] Repurposing testado (1 post → 3 canais)
- [ ] Voice Validator calibrado (compare com 10 posts reais de Vitor)
- [ ] Quality gates funcionando (taxa de passagem >90%)
- [ ] Documentação de comandos (`/cf-ajuda`) completa
- [ ] Feedback loops testados (implicit + explicit)

---

### Critérios de Sucesso (Validação 2 semanas)

**Métricas Obrigatórias:**

| Métrica | Target | Como Medir |
|---------|--------|------------|
| Tempo de produção | <30min/post | Timer no workflow |
| Autenticidade | 8+/10 | Voice Validator score |
| Uso consistente | 3+ posts/semana | Tracking em brain.md |
| Satisfação | 8+/10 | Rating pós-criação |
| Taxa de aprovação | 70%+ | Aprovação sem ajustes |
| Redução de tempo | 50%+ | vs baseline manual (2h) |

**Decisão Go/No-Go para v2.0:**
- ✅ **Se ≥8/10 critérios atingidos:** Investir em versão standalone (Python/Node)
- ⚠️ **Se 6-7/10:** Iterar no MVP (mais 2-4 semanas)
- ❌ **Se <6/10:** Rever proposta de valor

---

## Apêndices

### A. Tecnologias Confirmadas

- **Runtime:** Claude Code (Anthropic official CLI)
- **LLM:** Claude 3.5 Sonnet
- **Formato Config:** YAML + Markdown
- **Storage:** Filesystem (sem banco de dados no MVP)
- **Versioning:** Semantic Versioning (semver)
- **Language:** 100% Português Brasileiro

### B. Convenções de Código

**Nomenclatura:**
- Arquivos: kebab-case (`linkedin-writer.md`)
- Comandos: `/cf-{categoria}-{acao}`
- IDs: kebab-case (`linkedin-writer`, `pilar-1`)
- Nomes de agentes: Nomes brasileiros comuns

**Estrutura de pastas:**
```
.content-foundry/
├── agents/          # 20 agentes .md
├── workflows/       # 9 workflows .yaml
├── templates/       # 10 templates .yaml
├── brain.md         # Cérebro do founder
└── config.yaml      # Configurações globais
```

### C. Referências

- **BMad Method:** Inspiração para estrutura config-based
- **Claude Code:** https://docs.claude.com/claude-code
- **Founder-Led Marketing:** Metodologia de autenticidade em conteúdo

---

## 🎉 Conclusão

**Content Foundry v1.0** está 100% arquitetado e pronto para implementação.

**Estimativa de esforço:**
- **Implementação:** 6-8 semanas full-time
- **Validação:** 2 semanas de uso real
- **Timeline total:** ~10 semanas (2,5 meses)

**Próximo passo imediato:**
Começar Sprint 1 - Core Infrastructure (criar estrutura + brain.md)

**Comando para iniciar:**
```bash
mkdir -p .content-foundry/{agents,workflows,templates,tasks,prompts,schemas,checklists,data,examples,drafts,backups}
```

---

*Documento completo e finalizado*

**Versão:** v1.0.0
**Data:** 2025-10-21
**Arquiteto:** Winston 🏗️
**Status:** ✅ ARQUITETURA COMPLETA - PRONTA PARA IMPLEMENTAÇÃO
