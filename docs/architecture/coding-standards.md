# Coding Standards - Content Foundry v1.0

**Versão:** 1.0.0
**Data:** 2025-10-22
**Aplicável a:** Config-Based Framework (YAML + Markdown)

---

## 🎯 Princípios Gerais

```yaml
principios-core:
  1-legibilidade: Configs devem ser humano-legíveis e auto-documentadas
  2-consistencia: Seguir convenções uniformemente em todo framework
  3-simplicidade: Preferir simples sobre complexo
  4-versionamento: Tudo versionável via git
  5-documentacao: Inline comments e docs externas
```

---

## 📝 Convenções de Nomenclatura

### Padrão Universal: kebab-case

```yaml
nomenclatura:
  regra-geral: kebab-case para TUDO

  arquivos:
    correto:
      - linkedin-writer.md
      - gerar-post-linkedin.md
      - validacao-voz.md
    incorreto:
      - LinkedInWriter.md  # ❌ PascalCase
      - gerar_post.md      # ❌ snake_case
      - GerarPost.MD       # ❌ Mixed case

  ids-yaml:
    correto:
      - linkedin-writer
      - producao-express
      - voice-validator
    incorreto:
      - linkedinWriter     # ❌ camelCase
      - LINKEDIN_WRITER    # ❌ SCREAMING_SNAKE

  comandos:
    formato: "*{verbo}-{objeto}"
    exemplos:
      - *gerar-post
      - *criar-calendario
      - *validar-voz
      - *ajuda
    prefixo: Sempre usar * antes do comando
```

### Nomenclatura de Agentes

```yaml
agentes:
  estrutura: "{nome-proprio}"

  nomes:
    usar: Nomes brasileiros comuns
    exemplos:
      - Lucas (LinkedIn Writer)
      - Marina (Instagram Creator)
      - Carlos (Orchestrator)
      - Beatriz (Voice Validator)
      - Ana (Brand Guardian)
      - Elena (Elicitation Expert)

  arquivo:
    formato: "{funcao-descritiva}.md"
    exemplos:
      - linkedin-writer.md
      - orchestrator.md
      - voice-validator.md
```

### Nomenclatura de Workflows

```yaml
workflows:
  formato: "{numero}-{nome-descritivo}.md"

  exemplos:
    - 01-onboarding.md
    - 02-planejamento-estrategico.md
    - 03-producao-express.md

  regras:
    - Sempre com número (2 dígitos)
    - Hífen entre número e nome
    - Nome descritivo e claro
    - Lowercase
```

---

## 📂 Estrutura de Arquivos

### Organização de Diretórios

```yaml
estrutura-padrao:
  .content-foundry/:
    descricao: Framework core (configs imutáveis)
    subdiretorios:
      - agents/: Definições de agentes (.md)
      - workflows/: Workflows principais (.md)
      - jornadas/: Jornadas pré-definidas (.md)
      - tasks/: Tarefas reutilizáveis (.md)
      - templates/: Templates de outputs (.yaml)
      - checklists/: Validações de qualidade (.md)
      - data/: Dados de referência (.md/.yaml)
      - prompts/: System prompts para agentes (.md)
      - schemas/: JSON schemas (.yaml)

  docs/:
    descricao: Dados do founder (mutáveis)
    subdiretorios:
      - brain.md: Cérebro Digital (CRÍTICO)
      - content/: Conteúdos gerados
      - calendar.md: Calendário editorial
      - insights-journal.md: Banco de ideias
      - roadmap.md: Roadmap personalizado

  .foundry/:
    descricao: Metadados e estado (efêmero)
    subdiretorios:
      - state.yaml: Estado atual
      - logs/: Logs de execução
      - backups/: Backups automáticos
      - analytics.yaml: Métricas de uso
```

### Localização de Arquivos

```yaml
localizacao:
  regra-de-ouro: "Place things where they're expected"

  agente-novo:
    onde: .content-foundry/agents/{agent-id}.md
    exemplo: .content-foundry/agents/twitter-thread-writer.md

  tarefa-nova:
    onde: .content-foundry/tasks/{task-name}.md
    exemplo: .content-foundry/tasks/gerar-thread-twitter.md

  template-novo:
    onde: .content-foundry/templates/{template-name}.yaml
    exemplo: .content-foundry/templates/twitter-thread.yaml

  conteudo-gerado:
    onde: docs/content/{canal}/{YYYY-MM-DD-slug}.md
    exemplo: docs/content/linkedin/2025-10-22-ai-marketing.md
```

---

## 🔤 Convenções YAML

### Formatação YAML

```yaml
yaml-style:
  indentacao: 2 espaços (não tabs)
  quotes: Usar aspas duplas para strings multi-linha
  comentarios: Usar # para explicações inline

  exemplo-correto: |
    agente:
      nome: Lucas
      id: linkedin-writer  # ID único do agente
      titulo: Escritor de Posts LinkedIn
      icone: 💼

  exemplo-incorreto: |
    agente:
        nome:Lucas           # ❌ Sem espaço, indentação errada
        id:'linkedin_writer' # ❌ Aspas simples, underscore
```

### Campos Obrigatórios vs Opcionais

```yaml
campos-yaml:
  obrigatorios:
    agente:
      - nome
      - id
      - titulo
      - icone
      - quando-usar

    workflow:
      - id
      - nome
      - descricao
      - passos

  opcionais:
    - customizacao
    - notas
    - exemplos

  regra: "Sempre preencher obrigatórios, opcionais só se relevante"
```

### YAML Frontmatter (Markdown)

```yaml
frontmatter-style:
  formato: |
    ---
    campo1: valor
    campo2: valor
    ---

    # Conteúdo Markdown

  exemplo-brain.md: |
    ---
    founder:
      name: Vitor Garcia
      nicho: Marketing Tech & AI

      tom:
        geral: Técnico mas acessível
        linkedin: Profissional

      safe_mode: balanced

      pilares:
        - IA aplicada a marketing
        - Founder-led marketing
    ---

    # Histórias do Founder

    ## Jornada Profissional
    ...
```

---

## 📄 Convenções Markdown

### Formatação de Documentos

```markdown
markdown-style:
  headers:
    - H1 (#): Título do documento (1 por arquivo)
    - H2 (##): Seções principais
    - H3 (###): Subseções
    - H4 (####): Detalhes (evitar H5+)

  listas:
    - Usar hífen (-) para listas não ordenadas
    - Usar números (1.) para listas ordenadas
    - Indentar sub-listas com 2 espaços

  code-blocks:
    - Sempre especificar linguagem (yaml, markdown, bash)
    - Usar ``` para blocos multi-linha
    - Usar `backticks` para inline code

  enfase:
    - **Negrito** para ênfase forte
    - *Itálico* para ênfase suave
    - ~~Riscado~~ para deprecated
```

### Estrutura de Arquivos .md

```markdown
estrutura-md-agente:
  1-header: |
    <!-- Powered by Content Foundry™ -->

    # {agent-id}

  2-aviso-ativacao: |
    AVISO DE ATIVAÇÃO: Este arquivo contém...
    CRÍTICO: Leia o bloco YAML...

  3-yaml-block: |
    ```yaml
    RESOLUCAO-DE-ARQUIVOS: ...
    instrucoes-ativacao: ...
    agente: ...
    persona: ...
    comandos: ...
    dependencias: ...
    ```

  4-notas-adicionais: (opcional)
    Exemplos de uso, troubleshooting, etc.
```

---

## 🎨 Convenções de Estilo

### Idioma

```yaml
idioma:
  principal: Português do Brasil (PT-BR)

  uso:
    - Campos YAML: PT-BR
    - Comentários: PT-BR
    - Documentação: PT-BR
    - Comandos: PT-BR (*ajuda, *gerar-post)
    - Nomes de agentes: Nomes brasileiros

  excecoes:
    - IDs técnicos: Inglês ok (linkedin-writer)
    - Tech terms: Inglês quando necessário (brain.md, deep mode)
```

### Emojis

```yaml
emojis:
  uso: Permitido para melhorar legibilidade

  contextos:
    - Títulos de seções: ✅ 🎯 📋 🔧
    - Ícones de agentes: 💼 📸 🎨 🔍
    - Checklist items: ✅ ❌ ⚠️

  regra: Não exagerar (max 1-2 por seção principal)
```

### Formatação de Comentários

```yaml
comentarios-yaml:
  inline:
    formato: "campo: valor  # Comentário explicativo"
    exemplo: "safe_mode: balanced  # Equilibrado entre autenticidade e profissionalismo"

  block:
    formato: |
      # Comentário de bloco explicando
      # múltiplas linhas de contexto
      campo: valor

  quando-usar:
    - Campos não óbvios precisam explicação
    - Valores com rationale importante
    - Alertas críticos (IMPORTANTE, ATENÇÃO)
```

---

## ✅ Validação de Qualidade

### Checklist de Qualidade de Config

```yaml
quality-checklist:
  yaml-syntax:
    - [ ] YAML válido (sem erros de sintaxe)
    - [ ] Indentação consistente (2 espaços)
    - [ ] Quotes corretas (duplas para multi-linha)

  nomenclatura:
    - [ ] kebab-case em todos IDs
    - [ ] Nomes de arquivo lowercase
    - [ ] Comandos com prefixo *

  estrutura:
    - [ ] Arquivos no diretório correto
    - [ ] Campos obrigatórios preenchidos
    - [ ] Dependências existem e são válidas

  documentacao:
    - [ ] Comentários inline onde necessário
    - [ ] README atualizado se novo feature
    - [ ] Exemplos de uso quando aplicável
```

### Ferramentas de Validação

```yaml
validation-tools:
  yaml-lint:
    uso: Validar sintaxe YAML
    comando: yamllint .content-foundry/

  markdown-lint:
    uso: Validar qualidade de Markdown
    comando: markdownlint docs/

  custom-validation:
    comando: /cf-validate-brain
    uso: Validar brain.md schema

  manual-checks:
    - Review de nomenclatura
    - Consistência de estilo
    - Completude de documentação
```

---

## 🚫 Anti-Patterns (O Que Evitar)

### Anti-Patterns Comuns

```yaml
anti-patterns:
  nomenclatura:
    - ❌ CamelCase em arquivos
    - ❌ snake_case em IDs
    - ❌ UPPERCASE em nomes
    - ❌ Espaços em nomes de arquivo
    - ❌ Caracteres especiais (ã, é, ç) em IDs

  estrutura:
    - ❌ Colocar agente em /workflows/
    - ❌ Template .md (deve ser .yaml)
    - ❌ Workflow sem número
    - ❌ Arquivo no diretório errado

  yaml:
    - ❌ Tabs para indentação
    - ❌ Campos obrigatórios vazios
    - ❌ Sintaxe YAML inválida
    - ❌ Comentários sem # prefix

  conteudo:
    - ❌ Hardcoded paths absolutos
    - ❌ Dados sensíveis em configs
    - ❌ Duplicação de lógica
    - ❌ Falta de validação de inputs
```

---

## 🔄 Versionamento e Git

### Commits

```yaml
commit-style:
  formato: "{tipo}: {descricao-curta}"

  tipos:
    - feat: Nova feature/agente
    - fix: Correção de bug
    - docs: Apenas documentação
    - refactor: Refatoração de config
    - chore: Manutenção/organização

  exemplos:
    - "feat: adiciona agente twitter-thread-writer"
    - "fix: corrige validação de voz no linkedin-writer"
    - "docs: atualiza README com novos comandos"
```

### .gitignore

```yaml
gitignore-critico:
  dados-sensiveis:
    - docs/brain.md              # CRÍTICO
    - docs/insights-journal.md   # SENSÍVEL
    - .foundry/state.yaml        # PRIVADO
    - docs/content/*             # Pode conter rascunhos privados

  temporarios:
    - .foundry/logs/             # Logs locais
    - .foundry/backups/          # Backups locais
    - .DS_Store                  # macOS
```

---

## 📊 Métricas de Qualidade

### Targets de Qualidade

```yaml
quality-targets:
  readability:
    - Configs legíveis por humanos sem tooling
    - Documentação inline suficiente
    - Nomes descritivos e claros

  maintainability:
    - Zero duplicação de lógica
    - Separação clara de concerns
    - Dependências explícitas e válidas

  consistency:
    - 100% aderência a kebab-case
    - Estrutura de diretórios uniforme
    - Comentários em PT-BR
```

---

## 🎓 Exemplos de Referência

### Exemplo: Agente Bem Formatado

```yaml
# Ver: .content-foundry/agents/linkedin-writer.md
exemplo-completo:
  header: "<!-- Powered by Content Foundry™ -->"
  aviso-ativacao: Presente e claro
  yaml-block:
    - RESOLUCAO-DE-ARQUIVOS: ✅
    - instrucoes-ativacao: ✅ (5 passos)
    - agente: ✅ (todos campos obrigatórios)
    - persona: ✅ (8 princípios-chave)
    - comandos: ✅ (9 comandos com *)
    - dependencias: ✅ (13 arquivos mapeados)

  qualidade:
    - Nomenclatura: 100% kebab-case
    - Comentários: PT-BR inline
    - Completude: Sem placeholders vazios
```

### Exemplo: Template YAML

```yaml
# Ver: .content-foundry/templates/linkedin-post.yaml
template:
  id: linkedin-post
  nome: Post LinkedIn
  tipo: post
  canal: linkedin
  versao: "1.0"

metadados:
  data-criacao: "2025-10-22"
  topico: "{string}"
  pilar-conteudo: "{pilar do founder}"
  safe-mode-usado: "{conservador|balanced|bold}"
  agente-criador: "linkedin-writer"

conteudo:
  gancho: |
    {Primeiras 3 linhas que prendem atenção}

  corpo: |
    {Desenvolvimento da ideia}

  cta: |
    {Call-to-action natural}

  hashtags:
    - "{tag1}"
    - "{tag2}"
```

---

## ✅ Checklist de Compliance

```yaml
compliance-checklist:
  novo-arquivo:
    - [ ] Nome em kebab-case lowercase
    - [ ] Localizado no diretório correto
    - [ ] YAML sintaxe válida
    - [ ] Campos obrigatórios preenchidos
    - [ ] Comentários PT-BR onde necessário
    - [ ] Sem dados sensíveis hardcoded
    - [ ] Documentação inline adequada

  novo-agente:
    - [ ] Segue estrutura padrão
    - [ ] 5 passos de ativação presentes
    - [ ] Comandos com prefixo *
    - [ ] Dependências mapeadas corretamente
    - [ ] Princípios-chave definidos (min 5)
    - [ ] Testado com /cf-chamar-agente

  novo-workflow:
    - [ ] Numerado (01-XX)
    - [ ] Passos claramente definidos
    - [ ] Agentes responsáveis identificados
    - [ ] Critérios de conclusão explícitos
    - [ ] Testado end-to-end
