# Tech Stack - Content Foundry v1.0

**Versão:** 1.0.0 (MVP Config-Based)
**Data:** 2025-10-22
**Decisão:** Config-Based Framework (sem código, apenas YAML/Markdown)

---

## 🎯 Stack Tecnológica MVP v1.0

### Runtime Environment

```yaml
runtime:
  platform: Claude Code CLI
  version: Latest stable at implementation
  supported-os:
    - macOS (Darwin 25.0.0+)
    - Linux
    - Windows (with Claude Code support)
```

### LLM Provider

```yaml
llm:
  provider: Anthropic Claude API
  model-default: claude-sonnet-4-5-20250929
  model-fallback: claude-opus (max quality tasks)
  api-version: "2024-10-22"

  usage:
    - Deep Mode: 100% brain.md loaded (MVP padrão)
    - Context windows: Full context para autenticidade
    - Quality gates: Voice score >= 8.5/10
```

### Formato de Configuração

```yaml
configuration:
  yaml:
    spec: YAML 1.2
    usage: Agentes, workflows, templates, dados
    frontmatter: Jekyll-style YAML frontmatter

  markdown:
    spec: CommonMark 0.30
    usage: Documentação, brain.md, tarefas
    renderer: Claude Code (monospace font)
```

### Storage & Versioning

```yaml
storage:
  filesystem: Native OS filesystem
  version-control: Git 2.x+

  estrutura:
    - .content-foundry/: Framework configs
    - docs/: Dados do founder (brain.md, content)
    - .foundry/: Estado/cache (efêmero)
```

---

## 🚫 O Que NÃO Usamos (MVP v1.0)

```yaml
nao-usamos:
  linguagens-programacao:
    - Python: Não (v2.0 standalone)
    - Node.js: Não (v2.0 standalone)
    - JavaScript: Não (MVP config-based)

  frameworks-web:
    - React/Vue/Next: Não (sem UI web no MVP)
    - Express/FastAPI: Não (sem backend no MVP)

  databases:
    - PostgreSQL/MongoDB: Não (filesystem only)
    - Redis/Cache: Não (MVP simples)

  dependencies:
    - package.json: Não existe
    - requirements.txt: Não existe
    - Zero npm/pip dependencies: Correto
```

**Rationale:** MVP valida conceito com zero complexidade técnica. Config-based permite iteração ultra-rápida.

---

## 📦 Dependências Mínimas

```yaml
dependencias:
  required:
    - Claude Code: CLI oficial da Anthropic
    - Git: Versionamento de configs
    - OS: macOS/Linux/Windows com filesystem

  optional:
    - VS Code: Editor recomendado para .md/.yaml
    - YAML Extension: Syntax highlighting
    - Markdown Preview: Visualização de docs
```

---

## 🔄 Roadmap Tecnológico

### v1.0 (MVP - Atual)

```yaml
v1.0:
  stack: Config-based (YAML + Markdown)
  runtime: Claude Code
  deployment: Local filesystem
  target: Single founder, validação interna
```

### v2.0 (Standalone - Futuro)

```yaml
v2.0-planejado:
  backend:
    language: Python 3.11+ ou Node.js 20+
    framework: FastAPI ou Express

  storage:
    brain: Encrypted SQLite ou PostgreSQL
    content: S3/MinIO para outputs

  deployment:
    type: Standalone app
    packaging: Docker container
    hosting: Self-hosted ou cloud

  features:
    - Multi-founder support
    - Web UI dashboard
    - API pública
    - Cloud sync
```

---

## 🔐 Segurança & Proteção

```yaml
seguranca:
  mvp-v1.0:
    - OS-level user authentication
    - File permissions (chmod 600 brain.md)
    - .gitignore para dados sensíveis
    - Manual encrypted backups

  v2.0-planejado:
    - User authentication (OAuth)
    - Encrypted storage (git-crypt)
    - Audit logging
    - API keys
```

---

## 📊 Versionamento de Configs

```yaml
config-versioning:
  brain-schema:
    version: 1.0.0
    format: YAML frontmatter + Markdown
    location: docs/brain.md

  framework-version:
    version: 1.0.0
    location: .content-foundry/config.yaml

  migration-strategy:
    - Semantic versioning (MAJOR.MINOR.PATCH)
    - Backup automático antes de migrations
    - Scripts de migration em .foundry/migrations/
```

---

## 🛠️ Ferramentas de Desenvolvimento

```yaml
dev-tools:
  editor:
    - VS Code (recomendado)
    - Extensions: YAML, Markdown, GitLens

  validation:
    - YAML Lint: Validação de sintaxe
    - Markdown Lint: Qualidade de docs

  debugging:
    - Claude Code verbose mode
    - .foundry/logs/ inspection
    - /cf-debug-mode on
```

---

## 📝 Convenções Técnicas

```yaml
convencoes:
  nomenclatura:
    - Padrão: kebab-case
    - Arquivos: lowercase com hífen
    - IDs: kebab-case (ex: linkedin-writer)

  idioma:
    - Framework: 100% Português Brasileiro
    - Comentários: PT-BR
    - Documentação: PT-BR
    - Comandos: PT-BR com prefixo * (ex: *ajuda)

  estrutura:
    - Separação clara: framework / dados / estado
    - Config como código (versionável)
    - Documentação inline (YAML comments)
```

---

## 🎓 Rationale das Decisões

### Por que Config-Based?

```yaml
beneficios:
  time-to-market: 2-4 semanas (vs 2-3 meses standalone)
  validacao-rapida: Teste com founder real antes de investir
  reutilizacao: 80% dos YAMLs migram para v2.0
  simplicidade: Zero deps, zero build, zero deploy
  iteracao: Mudanças = editar .yaml/.md, não code
  aprendizado: Learnings informam v2.0 standalone

trade-offs:
  performance: Aceitável para MVP (single user)
  escalabilidade: Limitado (ok para validação)
  features: Básico (suficiente para provar conceito)
```

### Por que Claude-Only?

```yaml
beneficios:
  qualidade: Superior para autenticidade de voz
  integracao: Natural com Claude Code
  consistencia: Sem variação multi-provider
  custo: Aceitável para teste interno

futuro:
  v2.0: Considerar multi-provider se validar
  optimization: Claude para critical, OpenAI para simple tasks
```

---

## 📈 Métricas de Performance

```yaml
performance-targets:
  mvp-v1.0:
    post-generation: 10-20s (aceitável)
    brain-load: 2-5s (ok para deep mode)
    voice-validation: 5-10s (qualidade > velocidade)

  v2.0-targets:
    post-generation: 5-10s (otimizado)
    brain-load: <1s (cached)
    parallel-generation: 10 posts simultâneos
```

---

## ✅ Checklist de Stack

```yaml
stack-checklist:
  ambiente:
    - [ ] Claude Code instalado e funcionando
    - [ ] Git configurado
    - [ ] Editor com YAML/Markdown support

  configs:
    - [ ] .content-foundry/config.yaml válido
    - [ ] docs/brain.md schema v1.0
    - [ ] .gitignore protege dados sensíveis

  validacao:
    - [ ] /cf-validate-brain passa
    - [ ] Post gerado com sucesso
    - [ ] Voice score >= 8.5/10
