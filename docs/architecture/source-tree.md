# Source Tree - Content Foundry v1.0

**Versão:** 1.0.0
**Data:** 2025-10-22
**Tipo:** Config-Based Framework

---

## 🌳 Visão Geral da Árvore

```
content-foundry/
│
├── .content-foundry/         # Framework core (configurações do sistema)
├── docs/                     # Dados do founder + outputs
├── .foundry/                 # Estado runtime + cache
├── .git/                     # Versionamento
├── .gitignore               # Proteção de dados sensíveis
└── README.md                # Documentação principal
```

---

## 📂 Estrutura Detalhada

### 1. `.content-foundry/` - Framework Core

```
.content-foundry/
│
├── agents/                   # 20 agentes especializados (YAML+MD)
│   ├── orchestrator.md       # Carlos - Orquestrador principal
│   ├── elicitation-expert.md # Elena - Especialista em elicitação
│   │
│   ├── # Estratégia & Pesquisa
│   ├── research-analyst.md
│   ├── content-strategist.md
│   ├── brand-guardian.md
│   ├── audience-insights.md
│   │
│   ├── # Ideação
│   ├── hook-creator.md
│   ├── storytelling-miner.md
│   │
│   ├── # Produção (Writers)
│   ├── linkedin-writer.md    # Lucas - LinkedIn posts
│   ├── linkedin-article-writer.md
│   ├── instagram-creator.md  # Marina - Instagram content
│   ├── instagram-carousel-creator.md
│   ├── reels-script-writer.md
│   ├── stories-strategist.md
│   ├── video-script-writer.md
│   ├── newsletter-writer.md
│   │
│   ├── # Qualidade
│   ├── editor-proofreader.md
│   ├── voice-validator.md    # Beatriz - Validação de autenticidade
│   │
│   └── # Otimização
│       ├── repurposing-specialist.md
│       ├── seo-optimizer.md
│       └── engagement-optimizer.md
│
├── workflows/                # 9 workflows principais
│   ├── 01-onboarding.md
│   ├── 02-planejamento-estrategico.md
│   ├── 03-producao-express.md
│   ├── 04-producao-lote.md
│   ├── 05-repurposing.md
│   ├── 06-trend-jacking.md
│   ├── 07-performance-review.md
│   ├── 08-resgate-consistencia.md
│   └── 09-atualizacao-cerebro.md
│
├── jornadas/                 # 3 jornadas pré-definidas
│   ├── 01-do-zero-ao-primeiro-post.md
│   ├── 02-profissionalizacao.md
│   └── 03-eficiencia-multi-canal.md
│
├── tasks/                    # Tarefas executáveis reutilizáveis
│   ├── elicit-deep.md
│   ├── generate-post.md
│   ├── create-calendar.md
│   ├── validate-voice.md
│   ├── optimize-hook.md
│   ├── research-topic.md
│   └── repurpose-content.md
│
├── templates/                # Templates de outputs (YAML)
│   ├── linkedin-post.yaml
│   ├── linkedin-article.yaml
│   ├── instagram-caption.yaml
│   ├── instagram-carousel.yaml
│   ├── reels-script.yaml
│   ├── stories-brief.yaml
│   ├── youtube-script.yaml
│   ├── newsletter.yaml
│   ├── calendar-editorial.yaml
│   └── roadmap-personalizado.yaml
│
├── prompts/                  # System prompts para agentes
│   ├── linkedin-writer-system.md
│   ├── voice-validator-system.md
│   ├── brand-guardian-system.md
│   ├── storytelling-miner-system.md
│   └── ...
│
├── schemas/                  # JSON schemas para validação
│   ├── brain-schema.yaml
│   ├── linkedin-post-schema.yaml
│   ├── instagram-post-schema.yaml
│   ├── youtube-script-schema.yaml
│   └── calendar-schema.yaml
│
├── checklists/               # Validações de qualidade
│   ├── voice-validation.md
│   ├── brand-alignment.md
│   ├── ready-to-publish-linkedin.md
│   ├── ready-to-publish-instagram.md
│   ├── safe-mode-check.md
│   └── seo-checklist.md
│
├── data/                     # Dados de referência
│   ├── content-frameworks.md     # Estruturas narrativas (Hero's Journey, PAS, AIDA)
│   ├── hook-library.md           # Biblioteca de ganchos testados
│   ├── safe-mode-rules.yaml      # Regras por nível (safe/balanced/bold)
│   ├── channel-best-practices.md # Best practices por canal
│   └── archetypal-voices.md      # Exemplos de arquétipos de voz
│
├── examples/                 # Exemplos de uso
│   ├── sample-brain.md       # Cérebro exemplo preenchido
│   ├── sample-outputs/
│   │   ├── linkedin-post-example.md
│   │   ├── instagram-carousel-example.md
│   │   └── youtube-script-example.md
│   └── README.md
│
└── config.yaml               # Configuração global do framework
```

**Total estimado:** ~60-80 arquivos config

---

### 2. `docs/` - Dados do Founder

```
docs/
│
├── brain.md                  # 💎 CÉREBRO DIGITAL (coração do sistema)
│                             # Contém: YAML frontmatter + histórias markdown
│                             # CRÍTICO: chmod 600, .gitignore
│
├── architecture/             # Documentação técnica do projeto
│   ├── 01-executive-summary.md
│   ├── 02-estrutura-arquivos.md
│   ├── 03-formato-agentes-workflows.md
│   ├── 04-cerebro-digital.md
│   ├── 05-orquestracao-agentes.md
│   ├── 06-workflows-jornadas.md
│   ├── 07-templates-outputs.md
│   ├── 08-comandos-ux.md
│   ├── 09-criterios-sucesso.md
│   ├── README.md
│   ├── coding-standards.md    # Padrões de codificação
│   ├── tech-stack.md          # Stack tecnológica
│   └── source-tree.md         # Este arquivo
│
├── content/                  # Conteúdos gerados
│   ├── linkedin/
│   │   ├── 2025-10-21-content-foundry-launch.md
│   │   ├── 2025-10-22-ai-marketing-insights.md
│   │   └── ...
│   │
│   ├── instagram/
│   │   ├── feed/
│   │   │   ├── 2025-10-21-primeira-legenda.md
│   │   │   └── ...
│   │   ├── carousels/
│   │   │   ├── 2025-10-22-5-dicas-ia.md
│   │   │   └── ...
│   │   ├── reels/
│   │   │   └── scripts/
│   │   └── stories/
│   │       └── briefs/
│   │
│   ├── youtube/
│   │   └── scripts/
│   │       ├── 2025-10-23-tutorial-ai-marketing.md
│   │       └── ...
│   │
│   └── newsletter/
│       └── editions/
│           ├── 2025-10-25-edicao-001.md
│           └── ...
│
├── prd/                      # PRD fragmentado
│   ├── epic-*.md files
│   └── README.md
│
├── stories/                  # Stories de desenvolvimento
│   ├── 01.001.criar-estrutura-diretorios.md
│   ├── 01.002.configurar-protecao-dados-sensiveis.md
│   ├── ... (48 stories total)
│   └── README.md
│
├── qa/                       # Documentação de QA
│
├── calendar.md               # Calendário editorial
├── insights-journal.md       # 💡 Banco de ideias permanente (SENSÍVEL)
├── roadmap.md                # Roadmap personalizado
└── prd.md                    # PRD completo (v4)
```

**Dados CRÍTICOS protegidos:**
- `brain.md` - chmod 600, .gitignore
- `insights-journal.md` - chmod 600, .gitignore
- `content/*` - Pode conter rascunhos privados

---

### 3. `.foundry/` - Estado Runtime

```
.foundry/
│
├── state.yaml                # Estado atual do sistema
│                             # Contém: workflow ativo, última ação, configs runtime
│
├── logs/                     # Logs de execução
│   ├── 2025-10-22.log
│   ├── 2025-10-23.log
│   └── latest.log → 2025-10-23.log (symlink)
│
├── backups/                  # Backups automáticos
│   ├── brain-v1.0-2025-10-20.md
│   ├── brain-v1.0-2025-10-21.md
│   └── brain-latest.md → brain-v1.0-2025-10-21.md (symlink)
│
├── analytics.yaml            # Métricas de uso interno
│                             # Contém: posts gerados, voice scores, agentes usados
│
├── migrations/               # Scripts de migração de schema
│   └── v1.0-to-v1.1.md
│
└── versions.yaml             # Versões de componentes
```

**Características:**
- Efêmero (pode ser deletado e recriado)
- .gitignore completo (não versionar estado)
- Logs com retenção de 30 dias

---

## 📊 Estatísticas da Árvore

```yaml
estatisticas:
  total-arquivos-estimado: 100-150 arquivos

  distribuicao:
    .content-foundry/:
      agents: 20 arquivos .md
      workflows: 9 arquivos .md
      jornadas: 3 arquivos .md
      tasks: 10-15 arquivos .md
      templates: 10 arquivos .yaml
      checklists: 6 arquivos .md
      data: 5 arquivos .md/.yaml
      prompts: 20 arquivos .md
      schemas: 5 arquivos .yaml
      total: ~90 arquivos

    docs/:
      architecture: 10 arquivos .md
      stories: 48 arquivos .md
      content: Variável (crescente)
      outros: 5 arquivos principais
      total: ~65+ arquivos

    .foundry/:
      estado: 2 arquivos .yaml
      logs: Variável (30 dias)
      backups: Variável (histórico)
      total: ~10-30 arquivos
```

---

## 🔍 Navegação Rápida

### Como Encontrar Arquivos

```yaml
encontrar:
  definicao-de-agente:
    onde: .content-foundry/agents/{agent-id}.md
    exemplo: .content-foundry/agents/linkedin-writer.md

  workflow:
    onde: .content-foundry/workflows/{numero}-{nome}.md
    exemplo: .content-foundry/workflows/03-producao-express.md

  template-de-output:
    onde: .content-foundry/templates/{template-name}.yaml
    exemplo: .content-foundry/templates/linkedin-post.yaml

  post-gerado:
    onde: docs/content/{canal}/{YYYY-MM-DD-slug}.md
    exemplo: docs/content/linkedin/2025-10-22-ai-marketing.md

  cerebro-digital:
    onde: docs/brain.md
    CRITICO: Protegido (chmod 600, .gitignore)

  logs:
    onde: .foundry/logs/{YYYY-MM-DD}.log
    atalho: .foundry/logs/latest.log

  story-implementacao:
    onde: docs/stories/{epic}.{numero}.{descricao}.md
    exemplo: docs/stories/01.001.criar-estrutura-diretorios.md
```

---

## 🛠️ Comandos Úteis

### Navegação e Inspeção

```bash
# Listar estrutura completa
tree -L 3 -I 'node_modules|.git'

# Ver apenas .content-foundry/
tree .content-foundry/ -L 2

# Listar todos agentes
ls -la .content-foundry/agents/

# Listar posts gerados (LinkedIn)
ls -ltr docs/content/linkedin/

# Ver último log
tail -f .foundry/logs/latest.log

# Verificar tamanho do brain.md
ls -lh docs/brain.md

# Contar arquivos por tipo
find . -name "*.md" | wc -l
find . -name "*.yaml" | wc -l

# Listar stories
ls -la docs/stories/ | grep -E "^-"
```

### Validação

```bash
# Validar YAML syntax
yamllint .content-foundry/

# Validar Markdown
markdownlint docs/

# Validar brain.md
/cf-validate-brain

# Verificar .gitignore
cat .gitignore | grep -E "brain|insights|foundry"

# Verificar permissões
ls -la docs/brain.md  # Deve mostrar -rw------- (600)
```

---

## 🔐 Arquivos Sensíveis

### Lista de Proteção

```yaml
arquivos-criticos:
  nivel-critico:
    - docs/brain.md
      protecao:
        - chmod 600
        - .gitignore
        - backup encrypted
      conteudo: Histórias, valores, estratégias do founder

  nivel-sensivel:
    - docs/insights-journal.md
      protecao:
        - chmod 600
        - .gitignore
      conteudo: Banco de ideias permanente

    - .foundry/state.yaml
      protecao:
        - .gitignore
      conteudo: Estado privado do sistema

  nivel-privado:
    - docs/content/*
      protecao:
        - .gitignore (opcional)
        - Revisar antes de commit
      conteudo: Pode conter rascunhos privados

gitignore-obrigatorio: |
  # Sensitive founder data
  docs/brain.md
  docs/insights-journal.md

  # Runtime state
  .foundry/

  # Optional: content drafts
  docs/content/*
```

---

## 📈 Crescimento da Árvore

### Como a Estrutura Cresce

```yaml
crescimento:
  fase-inicial:
    - .content-foundry/: Estável (~90 arquivos)
    - docs/: Pequeno (brain.md + poucos posts)
    - .foundry/: Mínimo

  apos-1-mes:
    - .content-foundry/: Estável (possíveis novos agentes)
    - docs/content/: 20-30 posts
    - .foundry/logs/: 30 dias de logs
    - .foundry/backups/: 4-5 backups brain.md

  apos-6-meses:
    - .content-foundry/: +5-10 novos agentes
    - docs/content/: 100-150 posts
    - .foundry/analytics.yaml: Dados ricos
    - Tamanho total: ~500MB-1GB
```

---

## 🧹 Manutenção

### Limpeza Periódica

```bash
# Limpar logs antigos (>30 dias)
find .foundry/logs/ -name "*.log" -mtime +30 -delete

# Limpar backups antigos (manter últimos 10)
cd .foundry/backups/
ls -t brain-*.md | tail -n +11 | xargs rm

# Verificar tamanho do projeto
du -sh .content-foundry/
du -sh docs/
du -sh .foundry/
```

### Arquivos Seguros para Deletar

```yaml
safe-to-delete:
  temporarios:
    - .foundry/logs/*.log (exceto latest.log)
    - .foundry/state.yaml (será recriado)
    - .foundry/analytics.yaml (será recriado)

  backups-antigos:
    - .foundry/backups/brain-* (manter últimos 5)

NUNCA-deletar:
  - docs/brain.md (CRÍTICO)
  - .content-foundry/* (framework core)
  - docs/content/* (outputs valiosos)
```

---

## ✅ Checklist de Saúde da Árvore

```yaml
health-checklist:
  estrutura:
    - [ ] .content-foundry/ existe
    - [ ] Todos subdiretorios criados
    - [ ] docs/ existe
    - [ ] .foundry/ existe

  arquivos-criticos:
    - [ ] docs/brain.md existe
    - [ ] .content-foundry/config.yaml válido
    - [ ] .gitignore protege dados sensíveis

  permissoes:
    - [ ] brain.md tem chmod 600
    - [ ] insights-journal.md tem chmod 600
    - [ ] Outros arquivos com permissões corretas

  limpeza:
    - [ ] Logs antigos removidos (>30 dias)
    - [ ] Backups antigos removidos (>10)
    - [ ] Sem arquivos temporários acumulados

  versionamento:
    - [ ] .git inicializado
    - [ ] .gitignore configurado
    - [ ] Dados sensíveis NÃO commitados
```

---

## 🔗 Referências Cruzadas

```yaml
ver-tambem:
  estrutura-detalhada: docs/architecture/02-estrutura-arquivos.md
  formato-agentes: docs/architecture/03-formato-agentes-workflows.md
  padroes-codigo: docs/architecture/coding-standards.md
  tech-stack: docs/architecture/tech-stack.md
```

---

## 📝 Notas Finais

**Esta árvore representa:**
- ✅ Config-based framework (YAML + Markdown)
- ✅ Zero código executável (Python/Node)
- ✅ Separação clara: framework / dados / estado
- ✅ Proteção de dados sensíveis
- ✅ Escalável para v2.0 standalone

**Próximos passos após deployment:**
1. Executar `/cf-onboarding` para criar brain.md
2. Validar estrutura com checklist acima
3. Gerar primeiro post para testar sistema
4. Configurar backup strategy
