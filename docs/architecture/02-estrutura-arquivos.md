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

### Fluxo de Dados Principal

**Workflow Típico: Criação de Post LinkedIn**

```
┌─────────────────────────────────────────────────────────────────┐
│ 1. USER INPUT                                                   │
│    Founder: "/cf-conteudo-criar linkedin {tópico}"              │
└────────────────────────┬────────────────────────────────────────┘
                         ↓
┌─────────────────────────────────────────────────────────────────┐
│ 2. CARLOS (ORCHESTRATOR)                                        │
│    ├─ Carrega: docs/brain.md (100% - deep mode)                │
│    ├─ Carrega: .content-foundry/config.yaml                    │
│    ├─ Analisa requisição: canal=linkedin, tipo=post            │
│    └─ Decisão: Chamar Lucas (LinkedIn Writer)                  │
└────────────────────────┬────────────────────────────────────────┘
                         ↓
┌─────────────────────────────────────────────────────────────────┐
│ 3. LUCAS (LINKEDIN WRITER)                                      │
│    ├─ Carrega: docs/brain.md (contexto completo)               │
│    │   └─ YAML frontmatter + histórias + aprendizados          │
│    ├─ Carrega: .content-foundry/templates/linkedin-post.yaml   │
│    ├─ Carrega: .content-foundry/data/hook-library.md           │
│    ├─ Gera: draft do post                                      │
│    │   ├─ Aplica tom de voz do founder                         │
│    │   ├─ Usa vocabulário autêntico                            │
│    │   └─ Incorpora storytelling pessoal                       │
│    └─ Passa para: Beatriz (Voice Validator)                    │
└────────────────────────┬────────────────────────────────────────┘
                         ↓
┌─────────────────────────────────────────────────────────────────┐
│ 4. BEATRIZ (VOICE VALIDATOR)                                    │
│    ├─ Carrega: docs/brain.md (padrões de voz)                  │
│    ├─ Carrega: .content-foundry/checklists/voice-validation.md │
│    ├─ Analisa draft vs voice patterns                          │
│    │   ├─ Tom: ✅ match                                        │
│    │   ├─ Vocabulário: ✅ autêntico                            │
│    │   ├─ Estrutura: ✅ típica do founder                      │
│    │   └─ Safe mode: ✅ dentro dos limites                     │
│    ├─ Calcula: voice_score = 8.7/10                            │
│    └─ Decisão: ✅ APROVADO (score >= 8.5)                      │
└────────────────────────┬────────────────────────────────────────┘
                         ↓
┌─────────────────────────────────────────────────────────────────┐
│ 5. OUTPUT FINAL                                                 │
│    ├─ Salva: docs/content/linkedin/2025-10-21-{slug}.md        │
│    ├─ Atualiza: .foundry/state.yaml (última ação)              │
│    ├─ Log: .foundry/logs/2025-10-21.log                        │
│    └─ Apresenta ao founder:                                    │
│        ┌───────────────────────────────────────┐               │
│        │ ✅ Post criado com sucesso!           │               │
│        │ Voice score: 8.7/10                   │               │
│        │ Arquivo: ...linkedin/2025-10-21-*.md  │               │
│        │                                       │               │
│        │ [Ver post] [Editar] [Publicar]       │               │
│        └───────────────────────────────────────┘               │
└─────────────────────────────────────────────────────────────────┘
```

**Fluxo de Dados - Detalhamento:**

```
brain.md ────────┬──────────────────────┬─────────────────┐
                 ↓                      ↓                 ↓
            Orchestrator          Agent (Lucas)    Validator (Beatriz)
                 │                      │                 │
                 ├──→ agent-registry ───┤                 │
                 │                      │                 │
                 └──→ seleciona ────────┤                 │
                                        │                 │
config.yaml ────────────────────────────┤                 │
                                        │                 │
templates/*.yaml ───────────────────────┤                 │
                                        │                 │
data/*.md (hooks, frameworks) ──────────┤                 │
                                        │                 │
checklists/*.md ─────────────────────────────────────────┤
                                        │                 │
                                        ↓                 ↓
                                    [DRAFT] ──────→ [VALIDATION]
                                                          │
                                                          ↓
                                                    voice_score >= 8.5?
                                                          │
                                    ┌─────────────────────┴─────────────┐
                                    ↓                                   ↓
                                 ✅ PASS                             ❌ FAIL
                                    │                                   │
                                    ↓                                   ↓
                        docs/content/.../*.md               Refazer com ajustes
                                    │
                                    ├──→ .foundry/state.yaml (update)
                                    └──→ .foundry/logs/*.log (append)
```

**Workflows Complexos (Multi-Agente):**

```
Workflow: Batch Production (10 posts)
═══════════════════════════════════════

Orchestrator (Carlos)
    ↓
Content Strategist (Marina) ─── gera calendar de 10 tópicos
    │
    ├──→ brain.md (pilares, frequência)
    ├──→ data/channel-best-practices.md
    └──→ OUTPUT: calendar.yaml (10 tópicos balanceados)

    ↓

Para cada tópico (loop 1-10):
    ↓
    LinkedIn Writer (Lucas) ─── gera post
        ├──→ brain.md
        ├──→ templates/linkedin-post.yaml
        └──→ tópico do calendar

        ↓

    Voice Validator (Beatriz) ─── valida
        ├──→ brain.md
        ├──→ checklists/voice-validation.md
        └──→ score >= 8.5? → ✅ ou ❌

        ↓

    docs/content/linkedin/post-{n}.md

Loop completo → 10 posts gerados
```

---

### Observability & Debugging

**Logging Strategy:**

```yaml
logging:
  enabled: true
  location: .foundry/logs/
  format: "{timestamp} [{agent-id}] {action} - {result}"
  retention: 30 days (auto-cleanup)

  log-levels:
    - DEBUG: Detalhes de cada passo (desenvolvimento)
    - INFO: Ações principais (produção)
    - WARN: Avisos não críticos
    - ERROR: Erros que bloqueiam ação

  exemplo-log:
    2025-10-21 14:32:01 [orchestrator] User command: /cf-conteudo-criar linkedin
    2025-10-21 14:32:02 [orchestrator] Loaded brain.md v1.2.0 (15.2KB)
    2025-10-21 14:32:02 [orchestrator] Selected agent: linkedin-writer
    2025-10-21 14:32:05 [linkedin-writer] Loaded brain.md (15.2KB)
    2025-10-21 14:32:06 [linkedin-writer] Loaded template: linkedin-post.yaml
    2025-10-21 14:32:12 [linkedin-writer] Generated draft (245 words)
    2025-10-21 14:32:12 [linkedin-writer] Calling: voice-validator
    2025-10-21 14:32:15 [voice-validator] Loaded brain.md (15.2KB)
    2025-10-21 14:32:18 [voice-validator] Voice score: 8.7/10 - PASS
    2025-10-21 14:32:18 [orchestrator] Saved: docs/content/linkedin/2025-10-21-ai-marketing.md
    2025-10-21 14:32:18 [orchestrator] Session duration: 17s
```

**Error Handling Strategy:**

```yaml
error-handling:
  philosophy: "Graceful degradation with helpful guidance"

  common-errors:
    - error: brain.md não encontrado
      recovery: |
        1. Detectar que brain.md não existe
        2. Mostrar mensagem amigável:
           "❌ Cérebro Digital não encontrado!
            Parece que você ainda não fez o onboarding.

            Quer criar seu Cérebro Digital agora? (15-30min)
            Digite: /cf-cerebro-onboarding"
        3. Oferecer atalho para onboarding

    - error: Voice validation score < 8.5
      recovery: |
        1. Não bloqueia, mas avisa:
           "⚠️ Voice score: 7.2/10 (abaixo do ideal 8.5+)

            O que fazer?
            1. Aceitar mesmo assim (pode editar depois)
            2. Refazer com ajustes
            3. Ajustar safe_mode (atualmente: balanced)"
        2. Oferece opções claras
        3. Aprende com decisão (se aceitar 7.2, ajusta threshold?)

    - error: Agente timeout (> 60s)
      recovery: |
        1. Cancela operação atual
        2. Mensagem:
           "⏱️ Operação demorou muito (>60s)

            Possíveis causas:
            - brain.md muito grande (atual: 150KB)
            - Requisição muito complexa
            - API Claude lenta

            Sugestões:
            - Simplifique o pedido
            - Tente novamente
            - Contate suporte se persistir"

    - error: Template não encontrado
      recovery: |
        1. Lista templates disponíveis
        2. Sugere template similar
        3. Oferece criar custom template

    - error: brain.md corrompido (YAML inválido)
      recovery: |
        1. Detecta erro de sintaxe YAML
        2. Mostra linha do erro
        3. Oferece:
           - Restaurar de backup (.foundry/backups/brain-*.md)
           - Editar manualmente
           - Revalidar schema
```

**Debugging Tools:**

```yaml
debugging:
  verbose-mode:
    enabled-via: /cf-debug-mode on
    output: |
      Mostra cada passo em tempo real:
      [DEBUG] Carregando brain.md...
      [DEBUG] brain.md carregado: 15.2KB, versão 1.2.0
      [DEBUG] Parsing YAML frontmatter...
      [DEBUG] Found 3 pilares, 12 histórias
      [DEBUG] Selecionando agente para 'linkedin post'...
      [DEBUG] Match score: linkedin-writer (0.95)
      [DEBUG] Calling linkedin-writer...

  context-inspection:
    command: /cf-context
    output: |
      Mostra estado atual:
      - Brain version: v1.2.0
      - Last updated: 2025-10-15
      - Active agent: linkedin-writer
      - Session duration: 45s
      - Brain size: 15.2KB
      - Context tokens: ~8500

  validation-report:
    command: /cf-validate-brain
    output: |
      Valida brain.md:
      ✅ YAML syntax: valid
      ✅ Required fields: present
      ✅ Pilares: 3 defined (ok)
      ⚠️ Histórias: 2 sections (recommend 5+)
      ✅ Tom de voz: defined
      ✅ Safe mode: balanced (valid)
```

**Métricas & Analytics:**

```yaml
analytics:
  location: .foundry/analytics.yaml
  metrics-tracked:
    - Total posts gerados: 127
    - Posts por canal:
        linkedin: 65
        instagram: 42
        youtube: 15
        newsletter: 5
    - Voice score médio: 8.6/10
    - Taxa de aprovação: 82% (sem edições)
    - Tempo médio de geração: 18s
    - Agentes mais usados:
        1. linkedin-writer (65x)
        2. instagram-feed-writer (30x)
        3. voice-validator (127x)
    - Pilares mais produzidos:
        1. IA Aplicada (45%)
        2. Founder-Led (35%)
        3. Produtividade (20%)

  dashboard-command: /cf-status
  output: |
    📊 Content Foundry Status

    Brain: v1.2.0 (atualizado há 6 dias)
    Posts gerados: 127 total
    Voice score médio: 8.6/10 ⭐

    Esta semana:
    - 8 posts criados
    - 6 aprovados sem edição (75%)
    - Tempo médio: 16s

    Próxima sugestão:
    💡 Você está com 45% de conteúdo em "IA Aplicada"
       Considere balancear com "Produtividade" (20%)
```

---

