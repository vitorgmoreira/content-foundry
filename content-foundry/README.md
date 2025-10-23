# Content Foundry

**Framework AI-First de Produção de Conteúdo para Founder-Led Marketing**

Versão: 1.0.0 (MVP Config-Based)

---

## 🎯 O Que É

Content Foundry é um sistema de produção de conteúdo autêntico baseado em agentes AI especializados. O framework captura a voz única do founder e gera conteúdo indistinguível da escrita manual.

**Diferencial:** Não é consultoria, é produção. Entrega conteúdo pronto para publicar.

---

## 📂 Estrutura

```
content-foundry/
  ├── .content-foundry/   # Framework core (agentes, workflows, templates)
  ├── docs/               # Dados do founder + conteúdos gerados
  ├── .foundry/           # Runtime state + logs
  └── README.md           # Este arquivo
```

---

## 🚀 Quick Start

### 1. Onboarding Inicial (30-45min)
```bash
/cf-onboarding
```
Cria seu Cérebro Digital (`docs/brain.md`) capturando voz, histórias e pilares de conteúdo.

### 2. Primeiro Post (15-20min)
```bash
/cf-gerar-post-rapido linkedin "seu tópico"
```

### 3. Validação
- Voice score >= 8.5/10 (autenticidade)
- Conteúdo pronto para publicar sem edições

---

## 🧠 Conceitos Core

### Cérebro Digital (`docs/brain.md`)
YAML frontmatter + histórias markdown contendo:
- Tom de voz por canal
- Pilares de conteúdo
- Histórias pessoais
- Valores e crenças
- Safe mode (conservador/balanced/bold)

**CRÍTICO:** Protegido (chmod 600, .gitignore)

### Agentes Especializados (20 total)
- **Carlos** (Orchestrator) - Coordena tudo
- **Elena** (Elicitation Expert) - Captura voz do founder
- **Lucas** (LinkedIn Writer) - Posts LinkedIn
- **Marina** (Instagram Creator) - Conteúdo Instagram
- **Beatriz** (Voice Validator) - Validação de autenticidade
- **Ana** (Brand Guardian) - Alinhamento de marca
- +14 agentes adicionais

### Workflows (9 principais)
1. Onboarding Inicial
2. Planejamento Estratégico
3. Produção Express (1 post rápido)
4. Produção em Lote
5. Repurposing Cross-Channel
6. Trend Jacking
7. Performance Review
8. Resgate de Consistência
9. Atualização do Cérebro

---

## 📋 Jornadas Pré-Definidas

### 1. Do Zero ao Primeiro Post (60-90min)
Onboarding + primeiro post publicável

### 2. Profissionalização (2-3h)
Calendário editorial + produção sistemática

### 3. Eficiência Multi-Canal (4-6h)
Repurposing + múltiplos canais

---

## 🎨 Canais Suportados (MVP v1.0)

- ✅ **LinkedIn** - Posts, artigos, carrosséis
- ✅ **Instagram** - Feed, carrossel, Reels, Stories
- ✅ **YouTube** - Roteiros de vídeos
- ✅ **Newsletter** - Email marketing

Futuros (v2.0): TikTok, Blog, Podcast, Twitter/X

---

## 🔐 Segurança & Proteção

```yaml
arquivos-criticos:
  - docs/brain.md          # Histórias, valores, estratégias (CRÍTICO)
  - docs/insights-journal.md  # Banco de ideias (SENSÍVEL)
  - .foundry/              # Estado privado (PRIVADO)

protecao:
  - chmod 600 brain.md
  - .gitignore configurado
  - Backup encrypted manual
```

---

## 📊 Métricas de Qualidade

**MVP valida AUTENTICIDADE (não velocidade):**
- Voice score >= 8.5/10 obrigatório
- Deep Mode: 100% do brain.md carregado
- Taxa de aprovação sem edições: target 70%+
- Anti-detecção IA ativada

---

## 🛠️ Comandos Principais

```bash
# Ajuda e status
/cf-ajuda
/cf-status

# Produção
/cf-gerar-post-rapido {canal} {tópico}
/cf-criar-calendario-mensal
/cf-repurposing {arquivo-origem} {canal-destino}

# Validação
/cf-validate-brain
/cf-voice-score {arquivo-post}

# Manutenção
/cf-backup-brain
/cf-atualizar-cerebro
```

---

## 📖 Documentação Completa

- **Arquitetura:** `docs/architecture/`
- **Stories:** `docs/stories/`
- **PRD:** `docs/prd.md`

---

## 🔄 Roadmap

### v1.0 (MVP - Atual)
Config-based, Claude Code, single founder, validação interna

### v2.0 (Standalone - Futuro)
Standalone app Python/Node, multi-founder, web UI, cloud sync

---

## ✅ Critérios de Sucesso (MVP)

1. Voice score >= 8.5/10 em todos os posts
2. Founder aprova 70%+ sem edições
3. 30 posts gerados em 4 semanas
4. Tempo médio de geração < 20s
5. Conteúdo indistinguível de escrita manual

---

## 🆘 Troubleshooting

### Brain.md não encontrado
```bash
/cf-onboarding  # Executar onboarding
```

### Voice validation < 8.5
Adicionar mais contexto ao brain.md (histórias, exemplos de voz)

### Agente não carrega brain.md
```bash
/cf-validate-brain  # Verificar sintaxe YAML
```

---

## 📝 Convenções

- **Idioma:** 100% Português do Brasil
- **Nomenclatura:** kebab-case
- **Formato:** YAML + Markdown
- **Comandos:** Prefixo * quando dentro de agente

---

## 👨‍💻 Desenvolvido por

**Vitor Garcia** (Product Owner & Founder)
**Winston** (BMad Architect)

Framework baseado no BMad Method.

---

**Status:** ✅ Estrutura criada
**Próximo passo:** Implementar agentes e workflows
