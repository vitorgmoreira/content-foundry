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

### Qualidade de Conteúdo (Content Quality Strategy)
**Decisão:** Always Deep Mode (MVP v1.0)

**Detalhes:**
- Todos os agentes usam modo "Deep" (contexto máximo) por padrão
- 100% do brain.md carregado em todos os agentes
- Voice Validation rigorosa (score >= 8.5/10)
- Anti-detecção IA ativada por padrão
- Sem opção de "fast mode" ou "shallow mode" no MVP

**Rationale:**
- **MVP valida AUTENTICIDADE, não velocidade**
- Single founder, baixo volume (3-5 posts/semana)
- Se deep mode passar voice validation → conceito PROVADO
- Latência aceitável (10-15s/post) para validação
- Simplicidade arquitetural (zero decisões de modo)
- Performance não é crítica em fase de validação

**Técnicas Deep Mode:**
- Quirks específicos do founder
- Variação sintática avançada
- Referências sutis a histórias pessoais
- Uso de vocabulário único do founder
- Padrões estilísticos autênticos

**Futuro (v2.0 standalone):**
- Adicionar "Fast Mode" opcional se necessário
- Trade-off: velocidade vs autenticidade
- Apenas implementar se usuário solicitar produção em massa
- Deep mode continua sendo o padrão recomendado

**Métricas de Validação:**
- Voice score >= 8.5/10 em todos os posts
- Founder aprova sem edições em 70%+ dos casos
- Conteúdo indistinguível de escrita manual
- Anti-detecção IA efetiva (passa testes de detecção)

---

### Segurança & Proteção de Dados
**Decisão:** Proteção Filesystem-Based (MVP v1.0)

**Contexto:**
O `brain.md` contém dados EXTREMAMENTE sensíveis:
- Histórias pessoais e profissionais
- Fracassos e aprendizados privados
- Valores e crenças pessoais
- Estratégias de negócio
- Metodologias proprietárias
- Informações que identificam o founder

**Estratégia de Proteção MVP:**

1. **Git Protection (.gitignore)**
```gitignore
# Sensitive founder data
docs/brain.md
docs/insights-journal.md

# Runtime state
.foundry/
```

2. **File Permissions (Unix/Mac)**
```bash
# Ao criar brain.md durante onboarding
chmod 600 docs/brain.md        # Apenas owner read/write
chmod 600 docs/insights-journal.md
chmod 700 .foundry/             # Apenas owner acessa diretório
```

3. **Documentação & Onboarding**
- Avisar founder durante onboarding: "brain.md contém dados privados"
- Instruções claras: "NÃO compartilhar pasta do projeto"
- Checklist de segurança no workflow de onboarding

4. **Backup Strategy**
```yaml
backups:
  location: Private, encrypted location only
  frequency: Manual (founder responsável)
  tools:
    - Git commits locais (sem push para público)
    - Encrypted backup service (recomendado: Backblaze, iCloud com criptografia)
  warning: "NUNCA fazer backup para cloud pública sem criptografia"
```

**Arquivos Sensíveis Protegidos:**
- `docs/brain.md` (CRÍTICO)
- `docs/insights-journal.md` (SENSÍVEL)
- `.foundry/state.yaml` (PRIVADO)
- `docs/content/*` (depende do conteúdo - pode conter rascunhos privados)

**Riscos Mitigados:**
- ✅ Git push acidental para repo público
- ✅ Acesso por outros usuários no mesmo sistema
- ✅ Compartilhamento não intencional de pasta
- ⚠️ Backup não criptografado (documentado, founder responsável)

**Riscos Residuais (Aceitáveis no MVP):**
- ⚠️ Sem criptografia em disco (requires git-crypt ou similar - v2.0)
- ⚠️ Sem autenticação de acesso ao framework (MVP single-user local)
- ⚠️ Sem audit trail de acessos (v2.0 standalone)

**Futuro (v2.0 standalone):**
- Criptografia de arquivo (git-crypt ou equivalente)
- Repo privado separado para dados do founder
- Autenticação e autorização de acesso
- Audit trail de todas as operações no brain.md
- Multi-founder: isolamento entre founders

**Onboarding Security Checklist:**
- [ ] .gitignore configurado (brain.md, insights-journal.md, .foundry/)
- [ ] File permissions definidas (chmod 600 brain.md)
- [ ] Founder ciente da sensibilidade dos dados
- [ ] Estratégia de backup privado definida
- [ ] Confirmação: "Não fazer push para GitHub público"

---

### Tech Stack Versioning
**Decisão:** Latest Stable at Implementation (MVP v1.0)

**Versões Utilizadas:**

```yaml
runtime:
  claude-code: "Latest official release at implementation"
  platform: "macOS / Linux / Windows (Claude Code supported)"

llm:
  provider: "Anthropic Claude API"
  model-default: "Claude Sonnet 4.5 (claude-sonnet-4-5-20250929)"
  model-fallback: "Claude Opus (if needed for max quality)"
  api-version: "2024-10-22 (current stable)"

configuration:
  yaml-spec: "YAML 1.2"
  markdown-spec: "CommonMark 0.30"
  frontmatter: "YAML frontmatter (Jekyll-style)"

storage:
  filesystem: "Native OS filesystem"
  version-control: "Git 2.x+"

dependencies:
  none: "Zero dependencies - pure config-based"
```

**Rationale:**
- **MVP usa latest stable** - Foco em validação, não reprodutibilidade exata
- **Claude API estável** - Mudanças são raras e backward-compatible
- **Config-based = sem deps** - Sem package.json, requirements.txt, etc.
- **v2.0 fixará versões** - Quando standalone, pinará versões específicas

**Upgrade Strategy:**

```yaml
upgrades:
  claude-code:
    frequency: "Follow Anthropic official releases"
    breaking-changes: "Rare - backwards compatible"
    testing: "Test with sample brain.md after upgrade"

  claude-api:
    model-updates: "Automatic (API handles versioning)"
    fallback: "Can specify older model if needed"

  yaml-markdown:
    stable-specs: "No changes expected"
```

**Version Tracking:**

```yaml
version-manifest:
  location: .foundry/versions.yaml
  content: |
    # Auto-generated on first run
    content-foundry:
      version: 1.0.0
      implemented: 2025-10-21

    environment:
      claude-code: 0.x.x (detected)
      claude-api: claude-sonnet-4-5-20250929
      os: macOS 14.x / Linux / Windows

    brain-schema:
      version: 1.0.0
      compatible-with: ["1.0.x"]
```

---

### Authentication & Authorization
**Decisão:** No Authentication (MVP v1.0 - Single-User Local Only)

**Contexto:**
MVP v1.0 é single-user, rodando localmente no computador do founder. Não há multi-user, não há acesso remoto, não há API pública.

**Estratégia MVP:**

```yaml
authentication:
  mvp-v1.0: NONE
  rationale: |
    - Single founder usando localmente
    - Proteção via OS-level (login do usuário)
    - File permissions (chmod 600) como camada básica
    - Não há rede, não há multi-user

  security-model: "OS-level only"
    - macOS/Linux: User account + file permissions
    - Windows: User account + NTFS permissions

authorization:
  mvp-v1.0: NONE
  rationale: "Single user = full access to everything"

  role-model: "N/A in MVP"
```

**Proteção Atual:**

```yaml
protection-layers:
  layer-1: OS User Account
    - Founder faz login no computador
    - Apenas ele tem acesso aos arquivos

  layer-2: File Permissions
    - brain.md: chmod 600 (owner only)
    - .foundry/: chmod 700 (owner only)

  layer-3: Git Protection
    - .gitignore previne commit acidental
    - Dados sensíveis não vão para repos públicos
```

**Futuro (v2.0 Standalone):**

```yaml
v2.0-authentication:
  when-needed: |
    - Multi-founder support
    - Team collaboration
    - Cloud deployment
    - API access

  planned-approach:
    - User accounts (email + password)
    - Role-based access (founder, editor, viewer)
    - API keys para integrations
    - OAuth para third-party apps

  brain-isolation:
    - Each founder has separate brain.md
    - No cross-founder access
    - Admin can manage users but not read brains
```

**Nota Importante:**

```
⚠️ MVP v1.0 NÃO TEM autenticação porque:
   - É single-user local
   - Proteção vem do OS (login do computador)
   - File permissions impedem acesso de outros usuários no mesmo sistema

   Se precisar de auth → use v2.0 standalone
```

---

### Data Migration & Backup Strategy
**Decisão:** Manual Backups + Git Versioning (MVP v1.0)

**Brain.md Versioning:**

```yaml
brain-versioning:
  semantic-versioning: "MAJOR.MINOR.PATCH"

  version-increments:
    MAJOR: Schema changes (breaking)
      - Ex: v1.0.0 → v2.0.0
      - Requires migration

    MINOR: Additive changes (non-breaking)
      - Ex: v1.0.0 → v1.1.0
      - New optional fields
      - Backwards compatible

    PATCH: Content updates (no schema change)
      - Ex: v1.0.0 → v1.0.1
      - Founder updates stories
      - No migration needed

  tracking:
    location: "brain.md YAML frontmatter"
    field: "brain_version: 1.0.0"
```

**Migration Strategy:**

```yaml
schema-migration:
  when-needed: "Only if brain schema changes (MAJOR version)"

  migration-process:
    1-backup:
      - Auto-backup current brain.md
      - Location: .foundry/backups/brain-v{old-version}-{timestamp}.md

    2-migration-script:
      - Create: .foundry/migrations/v{old}-to-v{new}.md
      - Script contains: transformation instructions
      - Example: "Add new field 'arquetipo' with default 'Sage'"

    3-apply:
      - Run migration
      - Validate new schema
      - Preserve all content

    4-verify:
      - Command: /cf-validate-brain
      - Check: All required fields present
      - Test: Generate sample post

  example-migration:
    scenario: "brain v1.0 → v1.1 (add 'estilo.emojis' field)"
    steps:
      - Backup: brain-v1.0-2025-10-21.md
      - Add field: estilo.emojis.usa = true
      - Validate: /cf-validate-brain
      - Test: Generate 1 post to confirm
```

**Backup Strategy:**

```yaml
backup-strategy:
  automatic-backups:
    trigger: "Before any schema migration"
    location: .foundry/backups/
    naming: "brain-v{version}-{YYYY-MM-DD}.md"
    retention: "Keep all (manual cleanup)"

  manual-backups:
    frequency: "Founder's choice (recommended: weekly)"
    command: /cf-backup-brain
    location: .foundry/backups/

  git-versioning:
    strategy: "Commit brain.md changes with meaningful messages"
    frequency: "After significant updates"
    commands:
      - git add docs/brain.md
      - git commit -m "brain: added 3 new stories about failures"
      - git tag brain-v1.0.5

  external-backups:
    recommended: "Encrypted cloud backup"
    services:
      - iCloud (with encryption)
      - Backblaze (encrypted)
      - 1Password Secure Notes
    frequency: "Weekly or after major updates"
    warning: "NEVER unencrypted cloud!"
```

**Recovery Procedures:**

```yaml
restore-procedures:
  scenario-1: "brain.md corrupted (YAML syntax error)"
    detection: "Error on agent load: 'Invalid YAML syntax'"
    recovery:
      1-list-backups: "ls -lt .foundry/backups/"
      2-inspect: "cat .foundry/backups/brain-v1.0-2025-10-20.md"
      3-restore: "cp .foundry/backups/brain-v1.0-2025-10-20.md docs/brain.md"
      4-validate: "/cf-validate-brain"
      5-test: "Generate sample post"

  scenario-2: "Acidental deletion of brain.md"
    detection: "Error: brain.md not found"
    recovery:
      option-a-git:
        - "git checkout docs/brain.md"
        - "Restores last committed version"
      option-b-backup:
        - "cp .foundry/backups/brain-latest.md docs/brain.md"
      option-c-time-machine:
        - "macOS Time Machine restore"

  scenario-3: "Want to rollback to older version"
    recovery:
      git-method:
        - "git log docs/brain.md"
        - "git checkout <commit-hash> docs/brain.md"
      backup-method:
        - "ls .foundry/backups/"
        - "cp .foundry/backups/brain-v1.0-{date}.md docs/brain.md"

  scenario-4: "Complete system failure / lost computer"
    recovery:
      requirement: "External encrypted backup exists"
      steps:
        - "Setup new computer"
        - "Install Claude Code"
        - "Restore project from encrypted backup"
        - "Restore brain.md from encrypted backup"
        - "Verify: /cf-validate-brain"
```

**Backup Automation (Future):**

```yaml
v2.0-backup-automation:
  auto-backup-triggers:
    - Before schema migration
    - After every 10 posts generated
    - Daily (if brain.md changed)
    - Before major updates to brain

  cloud-sync:
    - Encrypted sync to private cloud
    - Version history (keep last 30 days)
    - Cross-device sync (if multi-device)
```

**Checklist: Backup Hygiene**

```yaml
backup-checklist:
  weekly:
    - [ ] Backup brain.md to .foundry/backups/
    - [ ] Commit brain.md changes to git
    - [ ] Verify encrypted cloud backup exists

  monthly:
    - [ ] Test restore procedure
    - [ ] Review .foundry/backups/ size
    - [ ] Cleanup old backups (keep last 3 months)

  before-major-changes:
    - [ ] Manual backup
    - [ ] Git commit with tag
    - [ ] External encrypted backup
```

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

