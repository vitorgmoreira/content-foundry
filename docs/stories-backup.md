# Content Foundry - USER STORIES

**Projeto:** Content Foundry MVP v1.0
**Total de Epics:** 9
**Total de Stories:** 47
**Timeline:** 8 semanas (4 sprints)
**Metodologia:** BMad

---

## 📊 ÍNDICE DE STORIES POR EPIC

| Epic | Nome | Stories | Total Story Points |
|------|------|---------|-------------------|
| EPIC-01 | Foundation & Infrastructure | 5 | 8 pts |
| EPIC-02 | Digital Brain Creation | 6 | 13 pts |
| EPIC-03 | LinkedIn Content Production | 7 | 13 pts |
| EPIC-04 | Voice & Brand Validation | 5 | 8 pts |
| EPIC-05 | Multi-Channel Content | 6 | 13 pts |
| EPIC-06 | Content Strategy & Planning | 5 | 8 pts |
| EPIC-07 | Content Repurposing | 5 | 8 pts |
| EPIC-08 | Performance Analytics | 4 | 5 pts |
| EPIC-09 | System Polish & Documentation | 4 | 5 pts |
| **TOTAL** | | **47** | **81 pts** |

**Velocidade assumida:** 20 pts/sprint → 81 pts cabem em 4 sprints

---

# 🎯 SPRINT 1 (Semanas 1-2): Foundation + First Content

## EPIC-01: Foundation & Infrastructure (8 pts)

### STORY-001: Criar Estrutura de Diretórios

**Epic:** EPIC-01
**Prioridade:** P0 - CRÍTICA
**Status:** Backlog

**Como founder, eu quero que os diretórios do projeto estejam criados para que o sistema tenha estrutura organizada.**

#### Descrição
Criar toda a estrutura de diretórios necessária para o Content Foundry funcionar: `.content-foundry/` (config), `docs/` (conteúdo e brain), `.foundry/` (runtime e logs).

#### Critérios de Aceite
- [ ] Diretório `.content-foundry/` criado com subpastas:
  - `agents/` - Agentes especializados
  - `workflows/` - Workflows guiados
  - `tasks/` - Tarefas reutilizáveis
  - `templates/` - Templates de conteúdo
  - `checklists/` - Checklists de validação
  - `data/` - Dados de referência
  - `hooks/` - Hooks customizados
- [ ] Diretório `docs/` criado com subpastas:
  - `content/` - Conteúdo gerado
  - `architecture/` - Docs de arquitetura (já existe)
- [ ] Diretório `.foundry/` criado com subpastas:
  - `logs/` - Logs do sistema
  - `backups/` - Backups automáticos
  - `state/` - Estado do sistema
- [ ] Todos diretórios têm permissões corretas (755)
- [ ] README.md em cada diretório explicando propósito

#### Tasks Técnicas
- [ ] Executar `mkdir -p` para criar estrutura completa
- [ ] Criar `.gitkeep` em diretórios vazios
- [ ] Criar README.md em cada pasta principal
- [ ] Validar estrutura com script de verificação

#### Estimativa
**2 horas** (1 story point)

#### Dependências
Nenhuma

---

### STORY-002: Configurar Proteção de Dados Sensíveis

**Epic:** EPIC-01
**Prioridade:** P0 - CRÍTICA
**Status:** Backlog

**Como founder, eu quero que o .gitignore proteja meus dados sensíveis para que brain.md nunca seja commitado acidentalmente.**

#### Descrição
Configurar `.gitignore` para proteger brain.md, insights-journal.md, calendário editorial, e toda pasta `.foundry/` de commits acidentais. Configurar permissões Unix para camada adicional de proteção.

#### Critérios de Aceite
- [ ] `.gitignore` criado na raiz do projeto (já existe, validar)
- [ ] `.gitignore` protege:
  - `docs/brain.md`
  - `docs/insights-journal.md`
  - `docs/calendar.md`
  - `docs/roadmap.md`
  - `docs/content/` (conteúdo gerado)
  - `.foundry/` (todo diretório)
  - `.cache/`, `.temp/`
- [ ] File permissions configuradas:
  - `chmod 600 docs/brain.md` (quando criado)
  - `chmod 700 .foundry/`
- [ ] Teste: tentar `git add docs/brain.md` deve ser ignorado
- [ ] Documentação de segurança em README

#### Tasks Técnicas
- [ ] Validar `.gitignore` existente
- [ ] Adicionar entradas faltantes se necessário
- [ ] Criar script `setup-permissions.sh`
- [ ] Executar script após criar brain.md
- [ ] Testar com git status

#### Estimativa
**1 hora** (1 story point)

#### Dependências
STORY-001 (diretórios criados)

---

### STORY-003: Criar Configuração Principal

**Epic:** EPIC-01
**Prioridade:** P0 - CRÍTICA
**Status:** Backlog

**Como founder, eu quero que o config.yaml principal esteja configurado para que o sistema saiba minhas preferências.**

#### Descrição
Criar `.content-foundry/config.yaml` com configurações globais do projeto: nome, versão, founder, preferências de deep mode, voice validation threshold, auto-save, etc.

#### Critérios de Aceite
- [ ] Arquivo `.content-foundry/config.yaml` criado
- [ ] Estrutura YAML válida
- [ ] Seções obrigatórias:
  - `projeto`: nome, versão, founder, data_criacao
  - `configuracoes`: deep-mode (true), voice-validation-threshold (8.5), auto-save (true)
  - `canais`: linkedin (enabled), instagram (enabled)
  - `logging`: enabled (true), level (info), retention (30 days)
- [ ] Valores defaults sensatos
- [ ] Comentários explicativos em YAML
- [ ] Validação de sintaxe YAML passa

#### Tasks Técnicas
- [ ] Criar arquivo `.content-foundry/config.yaml`
- [ ] Preencher campos obrigatórios
- [ ] Adicionar comentários YAML
- [ ] Validar sintaxe: `yamllint config.yaml` ou Python script
- [ ] Criar schema de validação (opcional)

#### Estimativa
**2 horas** (1 story point)

#### Dependências
STORY-001 (diretório .content-foundry/ criado)

---

### STORY-004: Implementar Orchestrator (Carlos)

**Epic:** EPIC-01
**Prioridade:** P0 - CRÍTICA
**Status:** Backlog

**Como founder, eu quero que o Orchestrator (Carlos) esteja funcional para que eu tenha ponto de entrada no sistema.**

#### Descrição
Criar arquivo do agente Carlos (Orchestrator), o maestro que coordena todos os outros agentes. É o ponto de entrada padrão e delega tarefas aos agentes especializados.

#### Critérios de Aceite
- [ ] Arquivo `.content-foundry/agents/orchestrator.md` criado
- [ ] Estrutura completa:
  - Header markdown + avisos
  - YAML com: agente, persona, comandos, dependencias
  - Instruções de ativação (5 passos)
- [ ] Campos preenchidos:
  - nome: Carlos
  - id: orchestrator
  - titulo: Orquestrador & Maestro
  - icone: 🎯
  - quando-usar: Ponto de entrada principal
  - customizacao: Nunca gera conteúdo, sempre delega
- [ ] Comandos definidos:
  - `*ajuda` - Lista comandos disponíveis
  - `*status` - Mostra estado do projeto
  - `*sugerir` - Sugere próximos passos
  - `*chamar-agente {id}` - Delega para agente
  - `*workflow {id}` - Executa workflow
  - `*sair` - Encerra sessão
- [ ] Dependências mapeadas:
  - `data/agent-registry.yaml`
  - `data/workflow-registry.yaml`
  - `tasks/analisar-requisicao.md`
  - `tasks/selecionar-agente.md`
- [ ] Ativação funcional no Claude Code
- [ ] Executa `*ajuda` automaticamente ao ativar

#### Tasks Técnicas
- [ ] Criar `.content-foundry/agents/orchestrator.md`
- [ ] Copiar template de agente do doc 03
- [ ] Preencher todos campos
- [ ] Testar ativação: carregar arquivo no Claude Code
- [ ] Validar que `*ajuda` executa
- [ ] Validar que carrega config.yaml (quando existir)

#### Estimativa
**4 horas** (2 story points)

#### Dependências
STORY-003 (config.yaml criado)

---

### STORY-005: Implementar Comandos Básicos

**Epic:** EPIC-01
**Prioridade:** P0 - CRÍTICA
**Status:** Backlog

**Como founder, eu quero que comandos básicos funcionem (/cf-status, /cf-help) para que eu saiba o estado do sistema.**

#### Descrição
Implementar comandos slash básicos para o founder interagir com o sistema: `/cf-status` (estado do projeto), `/cf-help` (ajuda), `/cf-chamar-agente` (ativar agente).

#### Critérios de Aceite
- [ ] Comando `/cf-status` funcional:
  - Mostra se brain.md existe
  - Mostra total de posts gerados
  - Mostra último workflow executado
  - Mostra configurações ativas (deep mode, threshold)
- [ ] Comando `/cf-help` funcional:
  - Lista comandos disponíveis
  - Mostra exemplos de uso
  - Sugere próximos passos baseado em estado
- [ ] Comando `/cf-chamar-agente {id}` funcional:
  - Ativa agente específico
  - Valida que agente existe
  - Mostra erro claro se não existe
- [ ] Logging básico funciona:
  - Logs salvos em `.foundry/logs/YYYY-MM-DD.log`
  - Formato: `{timestamp} [{comando}] {resultado}`
  - Retention: 30 dias (auto-cleanup)
- [ ] Mensagens de feedback claras

#### Tasks Técnicas
- [ ] Criar script helper ou documento de comandos
- [ ] Implementar `/cf-status` (pode ser tarefa ou comando do Carlos)
- [ ] Implementar `/cf-help`
- [ ] Implementar `/cf-chamar-agente`
- [ ] Configurar logging em `.foundry/logs/`
- [ ] Criar script de cleanup de logs antigos
- [ ] Testar cada comando

#### Estimativa
**3 horas** (2 story points)

#### Dependências
STORY-004 (Orchestrator funcional)

---

## EPIC-02: Digital Brain Creation (13 pts)

### STORY-006: Implementar Elicitation Expert (Elena)

**Epic:** EPIC-02
**Prioridade:** P0 - CRÍTICA
**Status:** Backlog

**Como founder, eu quero que Elena (Elicitation Expert) esteja funcional para que eu seja guiado no onboarding.**

#### Descrição
Criar agente Elena, especialista em extração de conhecimento que conduz o onboarding do founder e captura sua voz, histórias, valores e pilares de conteúdo.

#### Critérios de Aceite
- [ ] Arquivo `.content-foundry/agents/elicitation-expert.md` criado
- [ ] Campos preenchidos:
  - nome: Elena
  - id: elicitation-expert
  - titulo: Especialista em Elicitação de Conhecimento
  - icone: 🎤
  - categoria: core
- [ ] Comandos definidos:
  - `*ajuda` - Lista comandos
  - `*iniciar-onboarding` - Inicia Workflow #1
  - `*atualizar-brain` - Atualiza brain.md existente
  - `*capturar-historia` - Captura história específica
  - `*sair` - Despede-se
- [ ] Dependências:
  - `tasks/elicitar-fundacao.md`
  - `tasks/elicitar-aprofundamento.md`
  - `tasks/elicitar-refinamento.md`
- [ ] Persona clara: empática, curiosa, estruturada
- [ ] Princípios-chave:
  - Perguntas abertas
  - Escuta ativa
  - Captura de nuances
  - Sem julgamento
- [ ] Ativação funcional no Claude Code

#### Tasks Técnicas
- [ ] Criar `.content-foundry/agents/elicitation-expert.md`
- [ ] Preencher todos campos do template
- [ ] Definir persona e princípios
- [ ] Listar dependências (tasks, templates)
- [ ] Testar ativação

#### Estimativa
**3 horas** (2 story points)

#### Dependências
STORY-004 (Orchestrator)

---

### STORY-007: Criar Tarefas de Elicitação

**Epic:** EPIC-02
**Prioridade:** P0 - CRÍTICA
**Status:** Backlog

**Como founder, eu quero tarefas de elicitação estruturadas para que onboarding seja guiado e eficiente.**

#### Descrição
Criar 3 tarefas de elicitação (Fundação, Aprofundamento, Refinamento) que guiam Elena através do processo de onboarding. Cada tarefa tem perguntas específicas e outputs esperados.

#### Critérios de Aceite
- [ ] Arquivo `.content-foundry/tasks/elicitar-fundacao.md` criado:
  - Duração: 15-20 min
  - Elicitar: true (requer interação)
  - Perguntas: identidade básica, pilares, tom inicial, safe_mode
  - Output: seção `identidade` e `pilares` do brain.md
- [ ] Arquivo `.content-foundry/tasks/elicitar-aprofundamento.md` criado:
  - Duração: 30-40 min
  - Perguntas: histórias profundas, valores, experiências marcantes
  - Output: seção `historias` e `valores` do brain.md
- [ ] Arquivo `.content-foundry/tasks/elicitar-refinamento.md` criado:
  - Duração: 15-20 min
  - Perguntas: exemplos de voz, padrões de linguagem, palavras preferidas
  - Output: seção `voz.exemplos` do brain.md
- [ ] Cada tarefa tem:
  - Lista de perguntas (5-10)
  - Formato de captura (como registrar respostas)
  - Validações (mínimo de palavras, qualidade)
  - Próximo passo claro
- [ ] Formato YAML + Markdown consistente

#### Tasks Técnicas
- [ ] Criar `.content-foundry/tasks/elicitar-fundacao.md`
- [ ] Criar `.content-foundry/tasks/elicitar-aprofundamento.md`
- [ ] Criar `.content-foundry/tasks/elicitar-refinamento.md`
- [ ] Definir perguntas para cada fase
- [ ] Definir outputs esperados
- [ ] Validar estrutura YAML

#### Estimativa
**4 horas** (3 story points)

#### Dependências
STORY-006 (Elena criada)

---

### STORY-008: Implementar Voice Validator (Beatriz)

**Epic:** EPIC-02
**Prioridade:** P0 - CRÍTICA
**Status:** Backlog

**Como founder, eu quero que Beatriz (Voice Validator) valide minha voz para que conteúdo gerado seja autêntico.**

#### Descrição
Criar agente Beatriz, especialista em validação de autenticidade que analisa se conteúdo gerado soa como o founder (não como IA genérica). Retorna score 1-10.

#### Critérios de Aceite
- [ ] Arquivo `.content-foundry/agents/voice-validator.md` criado
- [ ] Campos preenchidos:
  - nome: Beatriz
  - id: voice-validator
  - titulo: Validadora de Autenticidade de Voz
  - icone: 🎯
  - categoria: core
- [ ] Comandos definidos:
  - `*validar-voz {conteudo}` - Valida autenticidade (score 1-10)
  - `*analisar-padroes` - Analisa padrões de voz no brain.md
  - `*comparar {texto}` - Compara texto com exemplos do founder
  - `*sair`
- [ ] Dependências:
  - `checklists/validacao-voz.md`
- [ ] Lógica de scoring definida:
  - Compara com seção `voz.exemplos` do brain.md
  - Verifica vocabulário similar
  - Verifica estrutura de frases
  - Verifica tom consistente
  - Detecta chavões genéricos
  - Retorna score 1-10 + breakdown
- [ ] Threshold: >= 8.5 para aprovar
- [ ] Se < 8.5: sugere melhorias específicas

#### Tasks Técnicas
- [ ] Criar `.content-foundry/agents/voice-validator.md`
- [ ] Definir algoritmo de scoring (10 critérios)
- [ ] Criar checklist de validação
- [ ] Testar com exemplos (deve detectar IA genérica)
- [ ] Validar ativação

#### Estimativa
**5 horas** (3 story points)

#### Dependências
STORY-006 (Elena)

---

### STORY-009: Criar Checklist de Validação de Voz

**Epic:** EPIC-02
**Prioridade:** P0 - CRÍTICA
**Status:** Backlog

**Como founder, eu quero checklist de validação de voz estruturada para que scoring seja consistente.**

#### Descrição
Criar checklist com 10 critérios de validação de autenticidade que Beatriz usa para calcular score. Cada critério vale 1 ponto, total 10.

#### Critérios de Aceite
- [ ] Arquivo `.content-foundry/checklists/validacao-voz.md` criado
- [ ] 10 critérios definidos:
  1. Usa vocabulário do founder? (0-1 pt)
  2. Estrutura de frase similar? (0-1 pt)
  3. Tom consistente com exemplos? (0-1 pt)
  4. Histórias pessoais ou específicas presentes? (0-1 pt)
  5. Evita chavões de coach genérico? (0-1 pt)
  6. Comprimento de parágrafo similar? (0-1 pt)
  7. Uso de emojis consistente? (0-1 pt)
  8. CTA no estilo do founder? (0-1 pt)
  9. Safe mode respeitado? (0-1 pt)
  10. Soa "humano" não "IA"? (0-1 pt)
- [ ] Cada critério tem:
  - Descrição clara
  - Exemplos de pass/fail
  - Peso (todos peso 1 no MVP)
- [ ] Scoring: Soma dos pontos / 10 = score final
- [ ] Threshold: >= 8.5 (85%) para aprovar

#### Tasks Técnicas
- [ ] Criar `.content-foundry/checklists/validacao-voz.md`
- [ ] Definir 10 critérios
- [ ] Adicionar exemplos de cada
- [ ] Documentar fórmula de scoring
- [ ] Testar com exemplos reais

#### Estimativa
**2 horas** (1 story point)

#### Dependências
STORY-008 (Beatriz)

---

### STORY-010: Implementar Workflow #1 (Onboarding)

**Epic:** EPIC-02
**Prioridade:** P0 - CRÍTICA
**Status:** Backlog

**Como founder, eu quero executar Workflow #1 (Onboarding) para que meu brain.md seja criado de forma guiada.**

#### Descrição
Criar Workflow #1 que orquestra o processo completo de onboarding: Carlos apresenta → Elena elicita → Beatriz valida → brain.md v1.0 criado.

#### Critérios de Aceite
- [ ] Arquivo `.content-foundry/workflows/01-onboarding.md` criado
- [ ] Estrutura YAML:
  - id: onboarding
  - nome: Onboarding Inicial
  - duração: 60-90 min
  - agentes: orchestrator, elicitation-expert, voice-validator
  - prioridade: CRÍTICA
- [ ] 5 passos sequenciais:
  1. Boas-vindas (Carlos, 2-3 min)
  2. Fase 1: Fundação (Elena, 15-20 min)
  3. Fase 2: Aprofundamento (Elena, 30-40 min)
  4. Fase 3: Refinamento (Elena, 15-20 min)
  5. Validação inicial (Beatriz, 5-10 min)
- [ ] Outputs gerados:
  - `docs/brain.md` (v1.0)
  - `docs/insights-journal.md` (iniciado)
  - `.foundry/state.yaml` (primeira sessão)
- [ ] Workflow pode ser executado via `/cf-workflow onboarding`
- [ ] Progresso mostrado (Step 1/5, Step 2/5, etc)

#### Tasks Técnicas
- [ ] Criar `.content-foundry/workflows/01-onboarding.md`
- [ ] Definir passos sequenciais
- [ ] Mapear agentes envolvidos
- [ ] Definir outputs
- [ ] Testar execução end-to-end
- [ ] Validar duração (~60-90 min)

#### Estimativa
**3 horas** (2 story points)

#### Dependências
STORY-006 (Elena), STORY-008 (Beatriz), STORY-007 (Tarefas de elicitação)

---

### STORY-011: Gerar brain.md v1.0

**Epic:** EPIC-02
**Prioridade:** P0 - CRÍTICA
**Status:** Backlog

**Como founder, eu quero que brain.md seja gerado com meus dados para que sistema tenha minha voz capturada.**

#### Descrição
Durante Workflow #1, criar arquivo `docs/brain.md` com dados do founder capturados por Elena. Formato: YAML frontmatter + Markdown body.

#### Critérios de Aceite
- [ ] Arquivo `docs/brain.md` criado
- [ ] Estrutura híbrida (YAML + Markdown):
  - Frontmatter YAML com metadados
  - Body Markdown com conteúdo narrativo
- [ ] Seções obrigatórias:
  - `identidade`: nome, empresa, nicho, público-alvo
  - `pilares`: 3-5 pilares de conteúdo
  - `voz`: tom, estilo, palavras-chave, exemplos
  - `historias`: 5-10 histórias pessoais marcantes
  - `valores`: valores core do founder
  - `safe_mode`: conservative/balanced/bold
  - `versao`: 1.0.0 (semantic versioning)
- [ ] Conteúdo mínimo:
  - >= 500 palavras totais
  - >= 3 pilares definidos
  - >= 5 histórias capturadas
  - >= 3 exemplos de voz
- [ ] Sintaxe YAML válida
- [ ] Voice validation inicial >= 7.0/10
- [ ] File permissions: chmod 600 (proteção)
- [ ] Backup automático em `.foundry/backups/brain-v1.0.0.md`

#### Tasks Técnicas
- [ ] Definir schema YAML de brain.md
- [ ] Criar template vazio
- [ ] Durante Workflow #1, preencher com dados de Elena
- [ ] Validar sintaxe YAML
- [ ] Executar voice validation (Beatriz)
- [ ] Configurar chmod 600
- [ ] Criar backup
- [ ] Salvar em docs/brain.md

#### Estimativa
**2 horas** (2 story points)

#### Dependências
STORY-010 (Workflow #1)

---

## EPIC-03: LinkedIn Content Production (13 pts)

### STORY-012: Implementar LinkedIn Writer (Lucas)

**Epic:** EPIC-03
**Prioridade:** P0 - CRÍTICA
**Status:** Backlog

**Como founder, eu quero que Lucas (LinkedIn Writer) esteja funcional para que eu crie posts LinkedIn autênticos.**

#### Descrição
Criar agente Lucas, especialista em LinkedIn thought leadership que gera posts profissionais soando como o founder.

#### Critérios de Aceite
- [ ] Arquivo `.content-foundry/agents/linkedin-writer.md` criado
- [ ] Usar exemplo completo do doc 03 como base (copy-paste ready)
- [ ] Campos preenchidos:
  - nome: Lucas
  - id: linkedin-writer
  - categoria: producao
  - canal: linkedin
- [ ] Comandos definidos:
  - `*gerar-post {tópico}` - Cria post LinkedIn
  - `*otimizar-gancho` - Melhora hook (3 primeiras linhas)
  - `*criar-carrossel {tema}` - Gera carrossel PDF
  - `*validar-voz` - Verifica autenticidade
  - `*doc-out` - Salva post
  - `*sair`
- [ ] Customizações específicas:
  - SEMPRE carrega 100% brain.md (Deep Mode)
  - SEMPRE valida voice >= 8.5 antes de aprovar
  - NUNCA usa chavões de coach
- [ ] Princípios-chave (8):
  - Autenticidade Acima de Tudo
  - Estrutura Clara (gancho + corpo + CTA)
  - Storytelling Estratégico
  - Engajamento Intencional
  - Respeito ao Safe Mode
  - Anti-Genérico
  - Conversacional mas Profissional
  - Deep Context Always
- [ ] Ativação funcional

#### Tasks Técnicas
- [ ] Criar `.content-foundry/agents/linkedin-writer.md`
- [ ] Copiar exemplo do doc 03
- [ ] Ajustar campos se necessário
- [ ] Testar ativação
- [ ] Validar que carrega brain.md

#### Estimativa
**3 horas** (2 story points)

#### Dependências
STORY-011 (brain.md criado)

---

### STORY-013: Criar Tarefa de Geração de Post LinkedIn

**Epic:** EPIC-03
**Prioridade:** P0 - CRÍTICA
**Status:** Backlog

**Como founder, eu quero tarefa estruturada de geração de post para que processo seja consistente.**

#### Descrição
Criar tarefa `gerar-post-linkedin.md` que define o workflow passo-a-passo de criação de post: elicitar tópico → gerar 3 variações → validar voz → aplicar quality gates → salvar.

#### Critérios de Aceite
- [ ] Arquivo `.content-foundry/tasks/gerar-post-linkedin.md` criado
- [ ] Estrutura:
  - id: gerar-post-linkedin
  - duração: 15-20 min
  - elicitar: true (requer interação)
  - agente: linkedin-writer
- [ ] 6 passos definidos:
  1. Elicitar tópico e contexto do founder (perguntas: qual aspecto? história pessoal? mensagem?)
  2. Carregar 100% brain.md (Deep Mode)
  3. Gerar 3 variações de post (diferentes ângulos)
  4. Validar voz (Beatriz, >= 8.5)
  5. Aplicar quality gates (5 layers)
  6. Salvar post aprovado em docs/content/
- [ ] Para cada variação:
  - Estrutura: gancho (3 linhas) + corpo + CTA
  - Comprimento: 800-1300 caracteres
  - Formato LinkedIn-friendly
- [ ] Validações:
  - Voice score >= 8.5
  - Sem chavões
  - Safe mode respeitado
  - Estrutura correta
- [ ] Output: arquivo .md em docs/content/

#### Tasks Técnicas
- [ ] Criar `.content-foundry/tasks/gerar-post-linkedin.md`
- [ ] Definir 6 passos
- [ ] Definir perguntas de elicitação
- [ ] Definir formato de output
- [ ] Documentar validações
- [ ] Testar execução

#### Estimativa
**4 horas** (2 story points)

#### Dependências
STORY-012 (Lucas criado)

---

### STORY-014: Criar Template de Post LinkedIn

**Epic:** EPIC-03
**Prioridade:** P0 - CRÍTICA
**Status:** Backlog

**Como founder, eu quero template de post LinkedIn para que estrutura seja consistente.**

#### Descrição
Criar template YAML que define estrutura de post LinkedIn: gancho, corpo, CTA, hashtags, comprimento, formato.

#### Critérios de Aceite
- [ ] Arquivo `.content-foundry/templates/linkedin-post.yaml` criado
- [ ] Estrutura definida:
  - `gancho`: 3 primeiras linhas (critical para feed stop)
  - `corpo`: 3-8 parágrafos
  - `cta`: call-to-action claro
  - `hashtags`: 3-5 hashtags relevantes (opcional)
  - `emojis`: uso opcional baseado em voz do founder
- [ ] Comprimento:
  - Mínimo: 800 caracteres
  - Máximo: 1300 caracteres
  - Ideal: 1000-1200 caracteres
- [ ] Formato LinkedIn-friendly:
  - Quebras de linha para leitura
  - Parágrafos curtos (2-3 linhas)
  - Gancho sem reticências
  - CTA não agressivo
- [ ] Exemplos incluídos no template
- [ ] Comentários YAML explicativos

#### Tasks Técnicas
- [ ] Criar `.content-foundry/templates/linkedin-post.yaml`
- [ ] Definir estrutura de seções
- [ ] Definir constraints (comprimento, formato)
- [ ] Adicionar exemplos
- [ ] Validar sintaxe YAML

#### Estimativa
**2 horas** (1 story point)

#### Dependências
STORY-013 (tarefa de geração)

---

### STORY-015: Implementar Quality Gates

**Epic:** EPIC-03
**Prioridade:** P0 - CRÍTICA
**Status:** Backlog

**Como founder, eu quero quality gates automáticos para que apenas conteúdo de alta qualidade seja aprovado.**

#### Descrição
Implementar 5 layers de quality gates que validam post antes de salvar: Structure, Length, Authenticity, Brand Alignment, Editorial.

#### Critérios de Aceite
- [ ] 5 quality gates implementados:
  1. **Layer 1: Structure**
     - Tem gancho (3 linhas)?
     - Tem corpo?
     - Tem CTA?
     - Pass/Fail
  2. **Layer 2: Length**
     - >= 800 caracteres?
     - <= 1300 caracteres?
     - Pass/Fail
  3. **Layer 3: Authenticity**
     - Voice score >= 8.5?
     - Sem chavões?
     - Pass/Fail (crítico)
  4. **Layer 4: Brand Alignment**
     - Alinhado com pilares?
     - Alinhado com valores?
     - Pass/Fail
  5. **Layer 5: Editorial**
     - Safe mode respeitado?
     - Sem typos/erros?
     - Pass/Fail
- [ ] Se QUALQUER gate falha:
  - Post rejeitado
  - Feedback específico gerado
  - Sugestões de correção
  - Loop de revisão
- [ ] Se TODOS gates passam:
  - Post aprovado
  - Salvo em docs/content/
  - Log de sucesso
- [ ] Checklist `pronto-para-publicar-linkedin.md` criada

#### Tasks Técnicas
- [ ] Definir lógica de cada gate
- [ ] Criar checklist `.content-foundry/checklists/pronto-para-publicar-linkedin.md`
- [ ] Implementar validações
- [ ] Gerar feedback específico por gate
- [ ] Testar com posts bons e ruins

#### Estimativa
**5 horas** (3 story points)

#### Dependências
STORY-008 (Beatriz - voice validation)

---

### STORY-016: Implementar Workflow #3 (Produção Express)

**Epic:** EPIC-03
**Prioridade:** P0 - CRÍTICA
**Status:** Backlog

**Como founder, eu quero executar Workflow #3 (Produção Express) para que eu crie posts rapidamente.**

#### Descrição
Criar Workflow #3 que orquestra produção rápida de 1 post: Carlos ativa Lucas → Lucas elicita tópico → Gera post → Valida voz → Quality gates → Salva.

#### Critérios de Aceite
- [ ] Arquivo `.content-foundry/workflows/03-producao-express.md` criado
- [ ] Estrutura:
  - id: producao-express
  - nome: Produção Express (Post Único)
  - duração: 15-20 min
  - agentes: orchestrator, linkedin-writer, voice-validator, brand-guardian
- [ ] 4 passos:
  1. Carlos pergunta canal e tópico (2 min)
  2. Lucas elicita contexto e gera 3 variações (8-10 min)
  3. Beatriz valida voz >= 8.5 (2 min)
  4. Quality gates aplicados, post salvo (3-5 min)
- [ ] Output:
  - Post em `docs/content/linkedin-YYYY-MM-DD-{slug}.md`
  - Log em `.foundry/logs/`
  - State atualizado
- [ ] Executável via `/cf-workflow producao-express`
- [ ] Duração real <= 20 min

#### Tasks Técnicas
- [ ] Criar `.content-foundry/workflows/03-producao-express.md`
- [ ] Definir passos sequenciais
- [ ] Mapear agentes
- [ ] Definir formato de output
- [ ] Testar end-to-end
- [ ] Medir duração

#### Estimativa
**3 horas** (2 story points)

#### Dependências
STORY-012 (Lucas), STORY-013 (tarefa de geração), STORY-015 (quality gates)

---

### STORY-017: Salvar Posts Gerados

**Epic:** EPIC-03
**Prioridade:** P0 - CRÍTICA
**Status:** Backlog

**Como founder, eu quero que posts gerados sejam salvos para que eu tenha histórico e possa publicar.**

#### Descrição
Implementar lógica de salvamento de posts em `docs/content/` com naming convention, metadados, e versionamento.

#### Critérios de Aceite
- [ ] Posts salvos em `docs/content/`
- [ ] Naming convention:
  - `linkedin-YYYY-MM-DD-{slug}.md`
  - Exemplo: `linkedin-2025-10-22-autenticidade-ia.md`
  - Slug: primeiras 3-5 palavras do tópico (kebab-case)
- [ ] Formato do arquivo:
  - Frontmatter YAML com metadados
  - Body Markdown com conteúdo
- [ ] Metadados incluídos:
  - `canal`: linkedin
  - `data_criacao`: YYYY-MM-DD HH:MM:SS
  - `topico`: tópico do post
  - `pilar`: pilar relacionado
  - `voice_score`: score de validação
  - `status`: draft/approved/published
  - `versao`: 1.0.0
- [ ] Conteúdo:
  - Post completo (gancho + corpo + CTA)
  - Hashtags (se houver)
  - Notas (opcional)
- [ ] Comando `*doc-out` do Lucas salva arquivo
- [ ] Confirmação clara ao founder: "Post salvo em..."

#### Tasks Técnicas
- [ ] Definir naming convention
- [ ] Definir schema de metadados YAML
- [ ] Implementar função de salvamento
- [ ] Gerar slug automaticamente
- [ ] Testar salvamento
- [ ] Validar formato de output

#### Estimativa
**3 horas** (2 story points)

#### Dependências
STORY-016 (Workflow #3)

---

### STORY-018: Validar Primeiro Post End-to-End

**Epic:** EPIC-03
**Prioridade:** P0 - CRÍTICA
**Status:** Backlog

**Como founder, eu quero gerar meu primeiro post completo para que eu valide que sistema funciona.**

#### Descrição
Executar Workflow #3 end-to-end e gerar primeiro post LinkedIn real do founder, validando todos os componentes funcionam juntos.

#### Critérios de Aceite
- [ ] Workflow #3 executado com sucesso
- [ ] Post gerado passa validações:
  - Voice score >= 8.5/10
  - Estrutura correta (gancho + corpo + CTA)
  - Comprimento adequado (800-1300 chars)
  - Sem chavões de coach
  - Safe mode respeitado
  - 5 quality gates passam
- [ ] Post salvo em `docs/content/linkedin-YYYY-MM-DD-{slug}.md`
- [ ] Founder aprova post manualmente
- [ ] Founder se sente confortável publicando
- [ ] Duração <= 20 min
- [ ] Log completo em `.foundry/logs/`
- [ ] Celebração ao finalizar! 🎉

#### Tasks Técnicas
- [ ] Executar `/cf-workflow producao-express`
- [ ] Founder fornece tópico
- [ ] Lucas gera 3 variações
- [ ] Founder escolhe melhor variação
- [ ] Validações executadas
- [ ] Post salvo
- [ ] Founder revisa arquivo final
- [ ] Founder aprova ou rejeita
- [ ] Documentar resultado

#### Estimativa
**1 hora** (1 story point)

#### Dependências
STORY-016 (Workflow #3), todas stories anteriores do EPIC-03

---

# 🎯 SPRINT 2 (Semanas 3-4): Quality + More Channels

## EPIC-04: Voice & Brand Validation (8 pts)

### STORY-019: Implementar Brand Guardian (Ana)

**Epic:** EPIC-04
**Prioridade:** P1 - ALTA
**Status:** Backlog

**Como founder, eu quero que Ana (Brand Guardian) valide alinhamento de marca para que valores sejam respeitados.**

#### Descrição
Criar agente Ana, guardião de marca que valida se conteúdo está alinhado com pilares, valores e safe_mode do founder.

#### Critérios de Aceite
- [ ] Arquivo `.content-foundry/agents/brand-guardian.md` criado
- [ ] Campos:
  - nome: Ana
  - id: brand-guardian
  - categoria: estrategia
- [ ] Comandos:
  - `*validar-marca {conteudo}` - Valida alinhamento
  - `*verificar-valores` - Checa consistência com valores
  - `*review-final` - Review completo antes de publicar
  - `*sair`
- [ ] Valida:
  - Alinhamento com pilares de conteúdo
  - Consistência com valores do founder
  - Respeito ao safe_mode
  - Proteção contra off-brand
- [ ] Retorna:
  - Pass/Fail
  - Score de alinhamento (1-10)
  - Problemas identificados
  - Sugestões de ajuste
- [ ] Integrada no Workflow #3 (Quality Gate Layer 4)

#### Tasks Técnicas
- [ ] Criar `.content-foundry/agents/brand-guardian.md`
- [ ] Definir algoritmo de validação
- [ ] Criar checklist de brand alignment
- [ ] Testar com posts on-brand e off-brand
- [ ] Integrar no Workflow #3

#### Estimativa
**4 horas** (2 story points)

#### Dependências
STORY-011 (brain.md com valores e pilares)

---

### STORY-020: Aprimorar Voice Validator (Beatriz)

**Epic:** EPIC-04
**Prioridade:** P1 - ALTA
**Status:** Backlog

**Como founder, eu quero score detalhado de voice validation para que eu entenda por que passou/falhou.**

#### Descrição
Aprimorar Beatriz para retornar score detalhado com breakdown: quais critérios passaram, quais falharam, sugestões específicas de melhoria.

#### Critérios de Aceite
- [ ] Beatriz atualizada com scoring detalhado
- [ ] Output de validação inclui:
  - Score total (1-10)
  - Breakdown por critério (10 critérios)
  - Para cada critério: Pass/Fail + razão
  - Problemas identificados (lista)
  - Sugestões de melhoria (específicas, não genéricas)
- [ ] Exemplo de output:
  ```
  Voice Score: 7.2/10 ❌ (threshold: 8.5)

  Breakdown:
  1. Vocabulário: 0.8/1 ✅
  2. Estrutura de frase: 0.6/1 ⚠️
  3. Tom: 0.9/1 ✅
  4. Histórias: 0.4/1 ❌
  5. Sem chavões: 0.5/1 ❌
  ...

  Problemas:
  - Usa "jornada" (chavão genérico)
  - Falta história pessoal
  - Estrutura muito formal

  Sugestões:
  - Trocar "jornada" por exemplo concreto
  - Adicionar história da seção brain.md
  - Tornar tom mais conversacional
  ```
- [ ] Integrado no Workflow #3

#### Tasks Técnicas
- [ ] Atualizar `.content-foundry/agents/voice-validator.md`
- [ ] Implementar scoring detalhado
- [ ] Gerar breakdown por critério
- [ ] Identificar problemas específicos
- [ ] Gerar sugestões acionáveis
- [ ] Testar com posts com diferentes scores

#### Estimativa
**4 horas** (2 story points)

#### Dependências
STORY-008 (Beatriz básica), STORY-009 (checklist)

---

### STORY-021: Criar Checklist de Safe Mode

**Epic:** EPIC-04
**Prioridade:** P1 - ALTA
**Status:** Backlog

**Como founder, eu quero checklist de safe mode para que tom seja validado corretamente.**

#### Descrição
Criar checklist que valida se conteúdo respeita safe_mode configurado (conservative/balanced/bold).

#### Critérios de Aceite
- [ ] Arquivo `.content-foundry/checklists/safe-mode-check.md` criado
- [ ] 3 modos definidos:
  1. **Conservative:**
     - Permitido: opiniões suaves, profissionalismo, conteúdo educativo
     - Evitar: polêmica, autopromoção, linguagem informal
     - Tom: profissional, respeitoso, equilibrado
  2. **Balanced:**
     - Permitido: opiniões claras (respeitosas), histórias com vulnerabilidade, críticas construtivas
     - Evitar: ataques pessoais, opiniões extremas, temas sensíveis
     - Tom: autêntico mas profissional, pode ser provocativo
  3. **Bold:**
     - Permitido: opiniões fortes, críticas diretas, vulnerabilidade total, posições contrarians
     - Evitar: ofensas gratuitas, fake news, discriminação
     - Tom: 100% autêntico, provocativo, sem filtro (com responsabilidade)
- [ ] Para cada modo:
  - Lista de verificação (5-8 itens)
  - Exemplos de Pass/Fail
  - Red flags a evitar
- [ ] Usado por Ana (Brand Guardian) no Layer 5 (Editorial)

#### Tasks Técnicas
- [ ] Criar `.content-foundry/checklists/safe-mode-check.md`
- [ ] Definir critérios para cada modo
- [ ] Adicionar exemplos
- [ ] Documentar red flags
- [ ] Integrar na validação de Ana

#### Estimativa
**2 horas** (1 story point)

#### Dependências
STORY-019 (Ana)

---

### STORY-022: Implementar Loop de Revisão

**Epic:** EPIC-04
**Prioridade:** P1 - ALTA
**Status:** Backlog

**Como founder, eu quero loop de revisão automático para que posts com score < 8.5 sejam melhorados.**

#### Descrição
Implementar lógica de loop de revisão: se voice score < 8.5, rejeitar post, mostrar feedback, sugerir melhorias, permitir regeneração ou edição manual.

#### Critérios de Aceite
- [ ] Se voice score < 8.5:
  - Post rejeitado automaticamente
  - Feedback detalhado mostrado (breakdown de Beatriz)
  - 3 opções oferecidas ao founder:
    1. Regenerar post com feedback (Lucas tenta novamente)
    2. Editar manualmente (founder ajusta)
    3. Cancelar (descartar)
- [ ] Se founder escolhe "Regenerar":
  - Lucas usa feedback de Beatriz
  - Gera nova versão
  - Valida novamente
  - Loop até score >= 8.5 OU founder cancelar
- [ ] Se founder escolhe "Editar":
  - Post aberto para edição
  - Founder faz ajustes
  - Valida novamente
  - Loop até score >= 8.5 OU founder aprovar manualmente
- [ ] Limite: máximo 3 tentativas de regeneração (evitar loop infinito)
- [ ] Tracking de tentativas em logs

#### Tasks Técnicas
- [ ] Implementar lógica de loop de revisão
- [ ] Adicionar opções de ação (regenerar/editar/cancelar)
- [ ] Integrar feedback de Beatriz
- [ ] Limitar a 3 tentativas
- [ ] Testar cenário de score baixo
- [ ] Documentar em Workflow #3

#### Estimativa
**4 horas** (2 story points)

#### Dependências
STORY-020 (Beatriz detalhada)

---

### STORY-023: Testar Quality Gates End-to-End

**Epic:** EPIC-04
**Prioridade:** P1 - ALTA
**Status:** Backlog

**Como founder, eu quero validar que quality gates funcionam para que apenas conteúdo excelente seja aprovado.**

#### Descrição
Testar os 5 quality gates com posts intencionalmente ruins: sem estrutura, muito curto, genérico, off-brand, fora do safe_mode. Validar que todos são rejeitados corretamente.

#### Critérios de Aceite
- [ ] 5 cenários de teste criados:
  1. Post sem estrutura (sem gancho ou CTA) → Fail Layer 1
  2. Post muito curto (< 800 chars) → Fail Layer 2
  3. Post genérico (chavões, voice < 8.5) → Fail Layer 3
  4. Post off-brand (fora dos pilares) → Fail Layer 4
  5. Post fora do safe_mode (bold em conservative) → Fail Layer 5
- [ ] Cada cenário testado:
  - Post rejeitado
  - Gate específico identificado
  - Feedback correto gerado
  - Sugestões relevantes fornecidas
- [ ] 1 cenário de sucesso testado:
  - Post perfeito (passa todos gates)
  - Aprovado
  - Salvo corretamente
- [ ] Documentação de testes em `.foundry/test-results.md`

#### Tasks Técnicas
- [ ] Criar 5 posts intencionalmente ruins
- [ ] Criar 1 post perfeito
- [ ] Executar Workflow #3 com cada um
- [ ] Validar que rejeições funcionam
- [ ] Validar feedback
- [ ] Documentar resultados

#### Estimativa
**2 horas** (1 story point)

#### Dependências
STORY-015 (Quality Gates), STORY-022 (Loop de revisão)

---

## EPIC-05: Multi-Channel Content (Instagram) (13 pts)

### STORY-024: Implementar Instagram Creator (Marina)

**Epic:** EPIC-05
**Prioridade:** P1 - ALTA
**Status:** Backlog

**Como founder, eu quero que Marina (Instagram Creator) esteja funcional para que eu crie legendas Instagram autênticas.**

#### Descrição
Criar agente Marina, especialista em Instagram que gera legendas e carrosséis adaptados ao tom mais casual do canal.

#### Critérios de Aceite
- [ ] Arquivo `.content-foundry/agents/instagram-feed-writer.md` criado
- [ ] Campos:
  - nome: Marina
  - id: instagram-feed-writer
  - categoria: producao
  - canal: instagram
- [ ] Comandos:
  - `*gerar-legenda {tópico}` - Cria legenda Instagram
  - `*criar-carrossel {tema}` - Gera estrutura de carrossel
  - `*otimizar-hashtags` - Melhora hashtags
  - `*validar-voz` - Voice validation
  - `*doc-out` - Salva legenda
  - `*sair`
- [ ] Adaptação de tom:
  - Mais casual que LinkedIn
  - Mais emojis (se voz do founder permite)
  - Parágrafos mais curtos
  - Hashtags estratégicas (8-15)
  - CTA mais direto
- [ ] SEMPRE carrega 100% brain.md (Deep Mode)
- [ ] Voice threshold >= 8.5 (mesmo rigor)
- [ ] Respeita safe_mode

#### Tasks Técnicas
- [ ] Criar `.content-foundry/agents/instagram-feed-writer.md`
- [ ] Definir adaptação de tom Instagram
- [ ] Listar comandos e dependências
- [ ] Testar ativação
- [ ] Validar adaptação funciona

#### Estimativa
**3 horas** (2 story points)

#### Dependências
STORY-012 (Lucas - similar lógica)

---

### STORY-025: Criar Template de Legenda Instagram

**Epic:** EPIC-05
**Prioridade:** P1 - ALTA
**Status:** Backlog

**Como founder, eu quero template de legenda Instagram para que estrutura seja consistente.**

#### Descrição
Criar template YAML que define estrutura de legenda Instagram: gancho, corpo, CTA, hashtags, emojis.

#### Critérios de Aceite
- [ ] Arquivo `.content-foundry/templates/instagram-legenda.yaml` criado
- [ ] Estrutura:
  - `gancho`: primeira linha (hook visual + textual)
  - `corpo`: 3-8 parágrafos curtos (2-3 linhas cada)
  - `cta`: call-to-action claro
  - `hashtags`: 8-15 hashtags relevantes
  - `emojis`: uso estratégico (opcional, baseado em voz)
- [ ] Comprimento:
  - Mínimo: 800 caracteres
  - Máximo: 2000 caracteres
  - Ideal: 1200-1500 caracteres
- [ ] Formato Instagram-friendly:
  - Quebras de linha generosas
  - Parágrafos muito curtos
  - Hashtags no final (ou quebra de linha + hashtags)
  - Emojis no início de parágrafos (opcional)
- [ ] Hashtags:
  - Mix de nicho (baixo volume, alta relevância)
  - Mix de trending (alto volume, média relevância)
  - 1-2 branded hashtags
- [ ] Exemplos incluídos

#### Tasks Técnicas
- [ ] Criar `.content-foundry/templates/instagram-legenda.yaml`
- [ ] Definir estrutura
- [ ] Definir constraints
- [ ] Estratégia de hashtags
- [ ] Adicionar exemplos
- [ ] Validar YAML

#### Estimativa
**2 horas** (1 story point)

#### Dependências
STORY-024 (Marina)

---

### STORY-026: Criar Tarefa de Geração de Legenda Instagram

**Epic:** EPIC-05
**Prioridade:** P1 - ALTA
**Status:** Backlog

**Como founder, eu quero tarefa de geração de legenda Instagram para que processo seja guiado.**

#### Descrição
Criar tarefa similar a `gerar-post-linkedin.md` mas adaptada para Instagram: tom mais casual, hashtags obrigatórias, emojis estratégicos.

#### Critérios de Aceite
- [ ] Arquivo `.content-foundry/tasks/gerar-legenda-instagram.md` criado
- [ ] 6 passos:
  1. Elicitar tópico e contexto (perguntas adaptadas para Instagram)
  2. Carregar 100% brain.md
  3. Gerar 3 variações (tom mais casual)
  4. Adicionar 8-15 hashtags relevantes
  5. Validar voz (>= 8.5, mesmo rigor)
  6. Salvar em docs/content/
- [ ] Adaptações Instagram:
  - Parágrafos mais curtos
  - Mais quebras de linha
  - Hashtags obrigatórias
  - Emojis se voz do founder permite
  - CTA mais direto ("Comenta aqui", "Salva este post")
- [ ] Quality gates aplicados (5 layers)
- [ ] Output: `docs/content/instagram-YYYY-MM-DD-{slug}.md`

#### Tasks Técnicas
- [ ] Criar `.content-foundry/tasks/gerar-legenda-instagram.md`
- [ ] Definir passos
- [ ] Adaptar perguntas de elicitação
- [ ] Adicionar geração de hashtags
- [ ] Documentar validações
- [ ] Testar

#### Estimativa
**3 horas** (2 story points)

#### Dependências
STORY-025 (template)

---

### STORY-027: Adaptar Workflow #3 para Instagram

**Epic:** EPIC-05
**Prioridade:** P1 - ALTA
**Status:** Backlog

**Como founder, eu quero executar Workflow #3 para Instagram para que eu crie legendas rapidamente.**

#### Descrição
Adaptar Workflow #3 (Produção Express) para funcionar com Instagram: Carlos pergunta canal → se Instagram, ativa Marina em vez de Lucas.

#### Critérios de Aceite
- [ ] Workflow #3 atualizado para suportar múltiplos canais
- [ ] Carlos pergunta: "Qual canal? (1) LinkedIn (2) Instagram"
- [ ] Se LinkedIn:
  - Ativa Lucas
  - Usa template linkedin-post.yaml
  - Salva em linkedin-YYYY-MM-DD.md
- [ ] Se Instagram:
  - Ativa Marina
  - Usa template instagram-legenda.yaml
  - Salva em instagram-YYYY-MM-DD.md
- [ ] Mesmas validações (voice >= 8.5, quality gates)
- [ ] Duração <= 20 min (ambos canais)
- [ ] Executável via `/cf-workflow producao-express`

#### Tasks Técnicas
- [ ] Atualizar `.content-foundry/workflows/03-producao-express.md`
- [ ] Adicionar decisão de canal
- [ ] Mapear canal → agente
- [ ] Mapear canal → template
- [ ] Testar com ambos canais
- [ ] Validar duração

#### Estimativa
**3 horas** (2 story points)

#### Dependências
STORY-026 (tarefa Instagram)

---

### STORY-028: Criar Template de Carrossel Instagram

**Epic:** EPIC-05
**Prioridade:** P1 - ALTA
**Status:** Backlog

**Como founder, eu quero template de carrossel Instagram para que conteúdo educativo seja visual.**

#### Descrição
Criar template YAML para carrosséis Instagram: 10 slides máximo, slide 1 hook, slides 2-9 conteúdo, slide 10 CTA.

#### Critérios de Aceite
- [ ] Arquivo `.content-foundry/templates/instagram-carrossel.yaml` criado
- [ ] Estrutura de 10 slides:
  - Slide 1: Hook visual + título impactante
  - Slides 2-9: Conteúdo educativo (1 ideia por slide)
  - Slide 10: Summary + CTA
- [ ] Para cada slide:
  - `titulo`: título do slide (3-8 palavras)
  - `conteudo`: texto do slide (20-50 palavras)
  - `visual_sugestao`: sugestão de visual (cor, ícone, layout)
- [ ] Comprimento total do carrossel:
  - Mínimo: 5 slides
  - Máximo: 10 slides
  - Ideal: 7-8 slides
- [ ] Guidelines visuais:
  - Slide 1: cores chamativas, texto grande
  - Slides 2-9: consistência visual, fácil leitura
  - Slide 10: CTA claro, incita ação
- [ ] Nota: MVP não gera imagens, apenas estrutura de texto

#### Tasks Técnicas
- [ ] Criar `.content-foundry/templates/instagram-carrossel.yaml`
- [ ] Definir estrutura de slides
- [ ] Guidelines visuais
- [ ] Exemplos de carrossel
- [ ] Validar YAML

#### Estimativa
**2 horas** (1 story point)

#### Dependências
STORY-024 (Marina)

---

### STORY-029: Testar Geração de Posts Instagram

**Epic:** EPIC-05
**Prioridade:** P1 - ALTA
**Status:** Backlog

**Como founder, eu quero gerar 3+ posts Instagram para que eu valide funcionamento do canal.**

#### Descrição
Executar Workflow #3 (Instagram) 3+ vezes, gerar legendas, validar que voz é mantida e formato é correto.

#### Critérios de Aceite
- [ ] 3+ legendas Instagram geradas
- [ ] Cada legenda:
  - Voice score >= 8.5
  - Estrutura correta (gancho + corpo + CTA + hashtags)
  - Hashtags relevantes (8-15)
  - Tom mais casual que LinkedIn (mas autêntico)
  - Safe mode respeitado
  - 5 quality gates passam
- [ ] Posts salvos em `docs/content/instagram-YYYY-MM-DD-{slug}.md`
- [ ] Founder aprova cada post
- [ ] Founder se sente confortável publicando
- [ ] Adaptação de tom funciona (não é apenas LinkedIn reescrito)

#### Tasks Técnicas
- [ ] Executar `/cf-workflow producao-express` 3+ vezes
- [ ] Escolher canal Instagram
- [ ] Fornecer tópicos diversos
- [ ] Validar outputs
- [ ] Comparar tom LinkedIn vs Instagram
- [ ] Founder review e aprovação

#### Estimativa
**2 horas** (1 story point)

#### Dependências
STORY-027 (Workflow adaptado)

---

### STORY-030: Validar Voice Score Consistente Entre Canais

**Epic:** EPIC-05
**Prioridade:** P1 - ALTA
**Status:** Backlog

**Como founder, eu quero que voice score seja >= 8.5 em ambos canais para que autenticidade seja mantida.**

#### Descrição
Comparar voice scores de posts LinkedIn vs Instagram. Validar que ambos atingem >= 8.5 apesar de tons diferentes (profissional vs casual).

#### Critérios de Aceite
- [ ] Voice scores comparados:
  - LinkedIn: média >= 8.5
  - Instagram: média >= 8.5
- [ ] Diferenças de tom identificadas e validadas:
  - Instagram deve ser mais casual
  - Instagram pode ter mais emojis
  - Instagram tem hashtags
  - MAS: ambos devem soar como founder
- [ ] Beatriz valida ambos canais corretamente:
  - Entende diferença de tom por canal
  - Não penaliza Instagram por ser casual
  - Não penaliza LinkedIn por ser formal
  - Foca em autenticidade, não formalidade
- [ ] Se voice score Instagram < LinkedIn consistentemente:
  - Investigar causa
  - Ajustar validação ou template

#### Tasks Técnicas
- [ ] Gerar 5 posts LinkedIn
- [ ] Gerar 5 posts Instagram
- [ ] Comparar voice scores
- [ ] Analisar diferenças de tom
- [ ] Validar consistência de autenticidade
- [ ] Ajustar se necessário
- [ ] Documentar findings

#### Estimativa
**4 horas** (2 story points)

#### Dependências
STORY-029 (posts Instagram gerados)

---

# 🎯 SPRINT 3 (Semanas 5-6): Strategy + Scale

## EPIC-06: Content Strategy & Planning (8 pts)

### STORY-031: Implementar Content Strategist (Sofia)

**Epic:** EPIC-06
**Prioridade:** P2 - MÉDIA
**Status:** Backlog

**Como founder, eu quero que Sofia (Content Strategist) esteja funcional para que eu planeje meu conteúdo.**

#### Descrição
Criar agente Sofia, estrategista de conteúdo que planeja calendário editorial, sugere tópicos baseados em pilares, e balanceia canais.

#### Critérios de Aceite
- [ ] Arquivo `.content-foundry/agents/content-strategist.md` criado
- [ ] Campos:
  - nome: Sofia
  - id: content-strategist
  - categoria: estrategia
- [ ] Comandos:
  - `*criar-calendario {periodo}` - Cria calendário (mensal/trimestral)
  - `*sugerir-topicos {quantidade}` - Sugere N tópicos
  - `*balancear-canais` - Distribui posts entre LinkedIn/Instagram
  - `*analisar-gaps` - Identifica gaps de conteúdo
  - `*sair`
- [ ] Analisa brain.md:
  - Pilares de conteúdo
  - Histórias ainda não usadas
  - Valores a explorar
- [ ] Sugere tópicos:
  - Alinhados com pilares
  - Variedade (educativo, inspiracional, storytelling)
  - Mix de formatos (post, carrossel, artigo)
- [ ] Balanceamento:
  - 60% LinkedIn / 40% Instagram (ajustável)
  - Mix de pilares (não repetir mesmo pilar 3x seguidas)

#### Tasks Técnicas
- [ ] Criar `.content-foundry/agents/content-strategist.md`
- [ ] Definir algoritmo de sugestão de tópicos
- [ ] Definir lógica de balanceamento
- [ ] Listar dependências
- [ ] Testar ativação

#### Estimativa
**4 horas** (2 story points)

#### Dependências
STORY-011 (brain.md com pilares)

---

### STORY-032: Criar Workflow #2 (Planejamento Mensal)

**Epic:** EPIC-06
**Prioridade:** P2 - MÉDIA
**Status:** Backlog

**Como founder, eu quero executar Workflow #2 (Planejamento Mensal) para que eu tenha calendário editorial.**

#### Descrição
Criar Workflow #2 que orquestra planejamento de 1 mês de conteúdo: Carlos ativa Sofia → Sofia elicita objetivos → Sugere 12-20 tópicos → Distribui entre canais → Gera calendário.

#### Critérios de Aceite
- [ ] Arquivo `.content-foundry/workflows/02-planejamento-mensal.md` criado
- [ ] Estrutura:
  - id: planejamento-mensal
  - duração: 30-45 min
  - agentes: orchestrator, content-strategist
- [ ] 5 passos:
  1. Carlos pergunta objetivos do mês (5 min)
  2. Sofia analisa brain.md e pilares (5 min)
  3. Sofia sugere 12-20 tópicos (10-15 min)
  4. Sofia distribui entre LinkedIn/Instagram (5 min)
  5. Sofia gera calendário em docs/calendar.md (5-10 min)
- [ ] Output: `docs/calendar.md` (calendário editável)
- [ ] Executável via `/cf-workflow planejamento-mensal`

#### Tasks Técnicas
- [ ] Criar `.content-foundry/workflows/02-planejamento-mensal.md`
- [ ] Definir passos
- [ ] Mapear agentes
- [ ] Definir formato de output (calendar.md)
- [ ] Testar end-to-end

#### Estimativa
**3 horas** (2 story points)

#### Dependências
STORY-031 (Sofia)

---

### STORY-033: Criar Template de Calendário Editorial

**Epic:** EPIC-06
**Prioridade:** P2 - MÉDIA
**Status:** Backlog

**Como founder, eu quero template de calendário editorial para que planejamento seja estruturado.**

#### Descrição
Criar template YAML/Markdown para calendário editorial mensal: semanas, dias, canal, tópico, pilar, status.

#### Critérios de Aceite
- [ ] Arquivo `.content-foundry/templates/calendario-editorial.yaml` criado
- [ ] Estrutura:
  - Mês/Ano
  - Objetivo do mês
  - 4-5 semanas
  - Para cada semana:
    - Tema da semana (opcional)
    - Dias de publicação (ex: Seg, Qua, Sex)
    - Para cada dia:
      - Data
      - Canal (LinkedIn/Instagram)
      - Tópico
      - Pilar relacionado
      - Formato (post/carrossel/artigo)
      - Status (planejado/rascunho/publicado)
- [ ] Exemplo de entrada:
  ```yaml
  mes: Outubro 2025
  objetivo: Aumentar autoridade em IA + Founder-led marketing

  semana-1:
    tema: IA na produção de conteúdo
    posts:
      - data: 2025-10-06
        canal: LinkedIn
        topico: Como validar autenticidade em conteúdo gerado por IA
        pilar: IA & Autenticidade
        formato: post
        status: planejado
  ```
- [ ] Formato editável (founder pode ajustar)
- [ ] Salvo em `docs/calendar.md`

#### Tasks Técnicas
- [ ] Criar `.content-foundry/templates/calendario-editorial.yaml`
- [ ] Definir estrutura
- [ ] Adicionar exemplos
- [ ] Validar YAML

#### Estimativa
**2 horas** (1 story point)

#### Dependências
STORY-032 (Workflow #2)

---

### STORY-034: Implementar Sugestão Inteligente de Tópicos

**Epic:** EPIC-06
**Prioridade:** P2 - MÉDIA
**Status:** Backlog

**Como founder, eu quero que Sofia sugira tópicos inteligentemente para que ideias sejam relevantes.**

#### Descrição
Implementar algoritmo de Sofia que analisa brain.md e sugere tópicos alinhados com pilares, histórias não usadas, e variedade de formatos.

#### Critérios de Aceite
- [ ] Sofia analisa:
  - Pilares de conteúdo do brain.md
  - Histórias ainda não usadas
  - Valores a explorar
  - Posts já gerados (evitar repetição)
- [ ] Sugere 12-20 tópicos:
  - Alinhados com pilares (distribuição balanceada)
  - Variedade de tipos:
    - 40% educativo (how-to, frameworks, best practices)
    - 30% storytelling (histórias pessoais, casos)
    - 20% inspiracional (lições, reflexões)
    - 10% opinião (hot takes, contrarian views)
  - Variedade de formatos:
    - 70% posts
    - 20% carrosséis
    - 10% artigos longos
- [ ] Para cada tópico sugerido:
  - Título/descrição
  - Pilar relacionado
  - Formato sugerido
  - Canal sugerido (LinkedIn/Instagram)
  - Razão da sugestão
- [ ] Founder pode:
  - Aceitar sugestão
  - Modificar sugestão
  - Rejeitar sugestão
  - Adicionar tópico próprio

#### Tasks Técnicas
- [ ] Implementar algoritmo de sugestão
- [ ] Analisar brain.md (pilares, histórias)
- [ ] Gerar tópicos diversos
- [ ] Balancear tipos e formatos
- [ ] Permitir edição pelo founder
- [ ] Testar com brain.md real

#### Estimativa
**4 horas** (2 story points)

#### Dependências
STORY-031 (Sofia)

---

### STORY-035: Testar Planejamento de 1 Mês

**Epic:** EPIC-06
**Prioridade:** P2 - MÉDIA
**Status:** Backlog

**Como founder, eu quero gerar calendário de 1 mês para que eu valide planejamento.**

#### Descrição
Executar Workflow #2, gerar calendário editorial de 1 mês completo (12-20 posts), validar que tópicos são relevantes e distribuição é balanceada.

#### Critérios de Aceite
- [ ] Workflow #2 executado com sucesso
- [ ] Calendário gerado em `docs/calendar.md`
- [ ] Conteúdo do calendário:
  - 12-20 posts planejados
  - 60% LinkedIn / 40% Instagram (ou ratio definido)
  - Pilares balanceados (não repetir mesmo 3x seguidas)
  - Mix de formatos (posts, carrosséis, artigos)
  - Mix de tipos (educativo, storytelling, inspiracional)
- [ ] Tópicos são:
  - Alinhados com pilares do founder
  - Relevantes ao nicho
  - Específicos (não genéricos tipo "dicas de produtividade")
  - Variados (não repetitivos)
- [ ] Founder aprova calendário
- [ ] Duração <= 45 min

#### Tasks Técnicas
- [ ] Executar `/cf-workflow planejamento-mensal`
- [ ] Fornecer objetivos do mês
- [ ] Sofia sugere tópicos
- [ ] Founder revisa sugestões
- [ ] Sofia gera calendário
- [ ] Validar docs/calendar.md criado
- [ ] Analisar qualidade de tópicos
- [ ] Founder aprova

#### Estimativa
**1 hora** (1 story point)

#### Dependências
STORY-034 (sugestão de tópicos)

---

## EPIC-07: Content Repurposing (8 pts)

### STORY-036: Criar Workflow #5 (Repurposing)

**Epic:** EPIC-07
**Prioridade:** P2 - MÉDIA
**Status:** Backlog

**Como founder, eu quero executar Workflow #5 (Repurposing) para que eu reutilize conteúdo eficientemente.**

#### Descrição
Criar Workflow #5 que adapta conteúdo existente para outro canal ou formato: LinkedIn → Instagram, Post → Artigo, Artigo → Série.

#### Critérios de Aceite
- [ ] Arquivo `.content-foundry/workflows/05-repurposing.md` criado
- [ ] Estrutura:
  - id: repurposing
  - duração: 10-15 min
  - agentes: orchestrator, linkedin-writer, instagram-creator
- [ ] 3 tipos de repurposing suportados:
  1. **Cross-channel:** LinkedIn → Instagram (ou vice-versa)
  2. **Expansion:** Post curto → Artigo longo
  3. **Breakdown:** Artigo longo → 3-5 posts série
- [ ] 4 passos:
  1. Carlos pergunta: conteúdo original + tipo de repurposing
  2. Agente apropriado faz adaptação
  3. Validação de voz (>= 8.5 mantido)
  4. Salvar conteúdo adaptado
- [ ] Preserva autenticidade (voice score >= 8.5)
- [ ] Executável via `/cf-workflow repurposing`

#### Tasks Técnicas
- [ ] Criar `.content-foundry/workflows/05-repurposing.md`
- [ ] Definir 3 tipos de repurposing
- [ ] Mapear agentes por tipo
- [ ] Definir passos
- [ ] Testar end-to-end

#### Estimativa
**3 horas** (2 story points)

#### Dependências
STORY-012 (Lucas), STORY-024 (Marina)

---

### STORY-037: Criar Tarefa de Adaptação Cross-Channel

**Epic:** EPIC-07
**Prioridade:** P2 - MÉDIA
**Status:** Backlog

**Como founder, eu quero adaptar post LinkedIn para Instagram para que conteúdo alcance múltiplos canais.**

#### Descrição
Criar tarefa `adaptar-canal.md` que adapta conteúdo de um canal para outro: LinkedIn → Instagram (torna mais casual, adiciona hashtags) ou Instagram → LinkedIn (torna mais profissional).

#### Critérios de Aceite
- [ ] Arquivo `.content-foundry/tasks/adaptar-canal.md` criado
- [ ] 2 direções suportadas:
  1. **LinkedIn → Instagram:**
     - Torna tom mais casual
     - Parágrafos mais curtos
     - Adiciona 8-15 hashtags
     - Adiciona emojis (se voz permite)
     - CTA mais direto
  2. **Instagram → LinkedIn:**
     - Torna tom mais profissional
     - Parágrafos mais longos e estruturados
     - Remove/reduz emojis
     - Remove hashtags ou converte para conceitos
     - CTA mais sutil
- [ ] Mantém:
  - Núcleo da mensagem
  - Histórias pessoais
  - Autenticidade (voice >= 8.5)
  - Safe mode
- [ ] Voice validation após adaptação
- [ ] Output salvo em canal destino

#### Tasks Técnicas
- [ ] Criar `.content-foundry/tasks/adaptar-canal.md`
- [ ] Definir adaptações LinkedIn → Instagram
- [ ] Definir adaptações Instagram → LinkedIn
- [ ] Implementar preservação de núcleo
- [ ] Validar voz após adaptação
- [ ] Testar ambas direções

#### Estimativa
**3 horas** (2 story points)

#### Dependências
STORY-036 (Workflow #5)

---

### STORY-038: Criar Tarefa de Expansão (Post → Artigo)

**Epic:** EPIC-07
**Prioridade:** P2 - MÉDIA
**Status:** Backlog

**Como founder, eu quero expandir post curto em artigo longo para que eu aprofunde tópicos.**

#### Descrição
Criar tarefa `expandir-conteudo.md` que transforma post de 800-1300 chars em artigo de 1500-2000 palavras, mantendo voz e adicionando profundidade.

#### Critérios de Aceite
- [ ] Arquivo `.content-foundry/tasks/expandir-conteudo.md` criado
- [ ] Input: post existente (800-1300 chars)
- [ ] Output: artigo LinkedIn longo (1500-2000 palavras)
- [ ] Processo:
  1. Identifica núcleo do post original
  2. Elicita do founder: que aspectos aprofundar?
  3. Consulta brain.md (histórias adicionais, contexto)
  4. Expande cada seção do post
  5. Adiciona introdução e conclusão
  6. Estrutura em seções (H2, H3)
  7. Valida voz >= 8.5
- [ ] Mantém:
  - Voz autêntica
  - Núcleo da mensagem
  - Storytelling
- [ ] Adiciona:
  - Profundidade (frameworks, exemplos)
  - Histórias adicionais
  - Seções estruturadas
  - Takeaways claros

#### Tasks Técnicas
- [ ] Criar `.content-foundry/tasks/expandir-conteudo.md`
- [ ] Definir algoritmo de expansão
- [ ] Perguntas de elicitação
- [ ] Estrutura de artigo longo
- [ ] Validação de voz
- [ ] Testar com post real

#### Estimativa
**3 horas** (2 story points)

#### Dependências
STORY-036 (Workflow #5)

---

### STORY-039: Criar Tarefa de Breakdown (Artigo → Série)

**Epic:** EPIC-07
**Prioridade:** P2 - MÉDIA
**Status:** Backlog

**Como founder, eu quero quebrar artigo longo em série de posts para que conteúdo seja distribuído.**

#### Descrição
Criar tarefa `quebrar-conteudo.md` que divide artigo longo (1500-2000 palavras) em 3-5 posts sequenciais, cada um standalone mas conectado.

#### Critérios de Aceite
- [ ] Arquivo `.content-foundry/tasks/quebrar-conteudo.md` criado
- [ ] Input: artigo longo (1500-2000 palavras)
- [ ] Output: 3-5 posts sequenciais
- [ ] Processo:
  1. Analisa artigo, identifica seções principais
  2. Quebra em 3-5 "capítulos"
  3. Cada capítulo → 1 post (800-1300 chars)
  4. Adiciona conectores entre posts ("No último post falei sobre X, hoje...")
  5. Numera posts (Post 1/4, Post 2/4, etc)
  6. Valida voz de cada post >= 8.5
- [ ] Cada post:
  - Standalone (pode ser lido sozinho)
  - Conectado (referencia posts anteriores/seguintes)
  - Voice >= 8.5
  - Estrutura completa (gancho + corpo + CTA)
- [ ] Série mantém flow narrativo

#### Tasks Técnicas
- [ ] Criar `.content-foundry/tasks/quebrar-conteudo.md`
- [ ] Algoritmo de divisão em seções
- [ ] Adicionar conectores
- [ ] Numeração de série
- [ ] Validar cada post individualmente
- [ ] Testar com artigo real

#### Estimativa
**3 horas** (2 story points)

#### Dependências
STORY-036 (Workflow #5)

---

### STORY-040: Testar Repurposing End-to-End

**Epic:** EPIC-07
**Prioridade:** P2 - MÉDIA
**Status:** Backlog

**Como founder, eu quero testar 3 tipos de repurposing para que eu valide funcionamento.**

#### Descrição
Executar Workflow #5 três vezes, testando cada tipo de repurposing: LinkedIn → Instagram, Post → Artigo, Artigo → Série.

#### Critérios de Aceite
- [ ] 3 repurposing executados:
  1. **LinkedIn → Instagram:**
     - Post LinkedIn existente adaptado
     - Tom mais casual, hashtags adicionadas
     - Voice >= 8.5 mantido
     - Salvo em instagram-*.md
  2. **Post → Artigo:**
     - Post curto expandido
     - Artigo 1500-2000 palavras gerado
     - Profundidade adicionada
     - Voice >= 8.5 mantido
  3. **Artigo → Série:**
     - Artigo longo quebrado
     - 3-5 posts gerados
     - Cada post standalone e conectado
     - Voice >= 8.5 em todos
- [ ] Founder aprova todos repurposing
- [ ] Autenticidade preservada em todos casos
- [ ] Duração <= 15 min por repurposing

#### Tasks Técnicas
- [ ] Executar Workflow #5 (LinkedIn → Instagram)
- [ ] Executar Workflow #5 (Post → Artigo)
- [ ] Executar Workflow #5 (Artigo → Série)
- [ ] Validar voice scores
- [ ] Comparar original vs adaptado
- [ ] Founder approval
- [ ] Documentar resultados

#### Estimativa
**1 hora** (1 story point)

#### Dependências
STORY-037, STORY-038, STORY-039 (todas tarefas de repurposing)

---

# 🎯 SPRINT 4 (Semanas 7-8): Analytics + Polish

## EPIC-08: Performance Analytics (5 pts)

### STORY-041: Implementar Tracking de Métricas

**Epic:** EPIC-08
**Prioridade:** P3 - BAIXA
**Status:** Backlog

**Como founder, eu quero que sistema rastreie métricas de posts para que eu entenda minha produção.**

#### Descrição
Implementar tracking automático de métricas: total de posts gerados, posts por canal, voice score médio, pilares mais usados.

#### Critérios de Aceite
- [ ] Métricas rastreadas automaticamente:
  - Total de posts gerados
  - Posts por canal (LinkedIn, Instagram)
  - Posts por formato (post, carrossel, artigo)
  - Voice score médio
  - Voice score mínimo/máximo
  - Taxa de aprovação (% posts >= 8.5)
  - Pilares mais utilizados (ranking)
  - Tópicos mais frequentes
  - Tempo médio de geração
- [ ] Dados salvos em `.foundry/analytics.yaml`
- [ ] Atualização automática após cada post gerado
- [ ] Formato estruturado (YAML)
- [ ] Histórico mantido (não sobrescrever)

#### Tasks Técnicas
- [ ] Criar schema `.foundry/analytics.yaml`
- [ ] Implementar coleta de métricas
- [ ] Atualizar após cada post gerado
- [ ] Calcular médias e aggregações
- [ ] Testar com posts gerados

#### Estimativa
**3 horas** (2 story points)

#### Dependências
STORY-017 (salvamento de posts)

---

### STORY-042: Criar Dashboard de Analytics

**Epic:** EPIC-08
**Prioridade:** P3 - BAIXA
**Status:** Backlog

**Como founder, eu quero visualizar métricas em dashboard para que eu entenda performance rapidamente.**

#### Descrição
Criar dashboard em Markdown com tabelas e ASCII art mostrando métricas principais de forma visual.

#### Critérios de Aceite
- [ ] Arquivo `.foundry/analytics-dashboard.md` gerado
- [ ] Seções:
  1. **Overview:**
     - Total de posts: 27
     - Voice score médio: 8.7/10
     - Taxa de aprovação: 85%
  2. **Por Canal:**
     - LinkedIn: 16 posts (59%)
     - Instagram: 11 posts (41%)
  3. **Por Formato:**
     - Posts: 22 (81%)
     - Carrosséis: 3 (11%)
     - Artigos: 2 (8%)
  4. **Por Pilar:**
     - IA & Autenticidade: 12 posts
     - Founder-led Marketing: 9 posts
     - Produtividade: 6 posts
  5. **Tendências:**
     - Voice score ao longo do tempo (ASCII chart)
     - Posts por semana (ASCII chart)
- [ ] Atualizado via comando `/cf-analytics`
- [ ] Formato legível e visual

#### Tasks Técnicas
- [ ] Criar template de dashboard
- [ ] Gerar tabelas de métricas
- [ ] Criar ASCII charts
- [ ] Implementar comando `/cf-analytics`
- [ ] Testar com dados reais

#### Estimativa
**2 horas** (1 story point)

#### Dependências
STORY-041 (tracking de métricas)

---

### STORY-043: Implementar Sugestões de Melhoria

**Epic:** EPIC-08
**Prioridade:** P3 - BAIXA
**Status:** Backlog

**Como founder, eu quero sugestões de melhoria baseadas em dados para que eu evolua meu conteúdo.**

#### Descrição
Analisar métricas e gerar sugestões automáticas de melhoria: pilares sub-utilizados, formatos pouco explorados, voice score baixo em certos tópicos.

#### Critérios de Aceite
- [ ] Sistema analisa métricas e identifica:
  - Pilares sub-utilizados (< 20% do total)
  - Canais desbalanceados (> 70% em um canal)
  - Voice score baixo em certos tópicos/pilares
  - Formatos pouco explorados (0 carrosséis em 1 mês)
  - Repetição excessiva de temas
- [ ] Gera sugestões específicas:
  - "Pilar 'Produtividade' está sub-utilizado (15%). Considere criar 2-3 posts."
  - "Voice score em posts sobre 'IA' é 8.2 (abaixo da média 8.7). Revise abordagem."
  - "Nenhum carrossel gerado este mês. Considere criar 1-2 para variedade."
- [ ] Sugestões incluídas no dashboard
- [ ] Acionáveis e específicas (não genéricas)

#### Tasks Técnicas
- [ ] Implementar análise de métricas
- [ ] Identificar padrões e gaps
- [ ] Gerar sugestões específicas
- [ ] Adicionar ao dashboard
- [ ] Testar com dados reais

#### Estimativa
**3 horas** (2 story points)

#### Dependências
STORY-042 (dashboard)

---

### STORY-044: Testar Analytics End-to-End

**Epic:** EPIC-08
**Prioridade:** P3 - BAIXA
**Status:** Backlog

**Como founder, eu quero visualizar analytics do meu conteúdo para que eu entenda minha produção.**

#### Descrição
Executar comando `/cf-analytics` com pelo menos 20 posts gerados, validar que métricas estão corretas e insights são úteis.

#### Critérios de Aceite
- [ ] >= 20 posts gerados (LinkedIn + Instagram)
- [ ] Comando `/cf-analytics` executado
- [ ] Dashboard `.foundry/analytics-dashboard.md` gerado
- [ ] Métricas corretas:
  - Total de posts correto
  - Voice score médio calculado corretamente
  - Distribuição por canal correta
  - Pilares contados corretamente
- [ ] Sugestões são:
  - Relevantes aos dados
  - Acionáveis
  - Específicas (não genéricas)
- [ ] Founder acha insights úteis
- [ ] Dashboard é legível

#### Tasks Técnicas
- [ ] Garantir >= 20 posts gerados
- [ ] Executar `/cf-analytics`
- [ ] Validar métricas
- [ ] Validar sugestões
- [ ] Feedback do founder
- [ ] Ajustar se necessário

#### Estimativa
**1 hora** (1 story point)

#### Dependências
STORY-043 (sugestões)

---

## EPIC-09: System Polish & Documentation (5 pts)

### STORY-045: Aprimorar Error Handling

**Epic:** EPIC-09
**Prioridade:** P2 - MÉDIA
**Status:** Backlog

**Como founder, eu quero mensagens de erro claras para que eu saiba o que fazer quando algo falha.**

#### Descrição
Melhorar mensagens de erro em todos workflows e agentes: erros devem ser claros, não técnicos, com sugestões de solução.

#### Critérios de Aceite
- [ ] 5 erros comuns melhorados:
  1. **brain.md não encontrado:**
     - ❌ Antes: "FileNotFoundError: docs/brain.md"
     - ✅ Depois: "Cérebro Digital não encontrado. Execute /cf-onboarding para criar."
  2. **Voice score < 8.5:**
     - ❌ Antes: "Validation failed"
     - ✅ Depois: "Voice score: 7.2/10 (threshold: 8.5). [Breakdown detalhado]. Tente: 1) Regenerar 2) Editar 3) Cancelar"
  3. **Comando inválido:**
     - ❌ Antes: "Command not found"
     - ✅ Depois: "Comando '*gera-post' não existe. Você quis dizer '*gerar-post'? Use *ajuda para ver comandos."
  4. **Agente não existe:**
     - ❌ Antes: "Agent 'foo' not found"
     - ✅ Depois: "Agente 'foo' não existe. Agentes disponíveis: [lista]. Use /cf-help para mais."
  5. **YAML inválido:**
     - ❌ Antes: "YAMLError line 42"
     - ✅ Depois: "brain.md tem erro de sintaxe na linha 42. Execute /cf-validate-brain para diagnóstico."
- [ ] Todos erros têm:
  - Descrição clara (não técnica)
  - Causa provável
  - Sugestão de solução
  - Comando para resolver (se aplicável)
- [ ] Graceful degradation (sistema não quebra)

#### Tasks Técnicas
- [ ] Identificar 5+ erros comuns
- [ ] Reescrever mensagens
- [ ] Adicionar sugestões
- [ ] Testar cada cenário de erro
- [ ] Documentar error handling

#### Estimativa
**2 horas** (1 story point)

#### Dependências
Nenhuma (melhoria incremental)

---

### STORY-046: Criar README de Uso

**Epic:** EPIC-09
**Prioridade:** P2 - MÉDIA
**Status:** Backlog

**Como founder, eu quero documentação de uso (README) para que eu relembre como usar o sistema.**

#### Descrição
Criar `README.md` na raiz do projeto com Quick Start, comandos principais, exemplos práticos, troubleshooting.

#### Critérios de Aceite
- [ ] Arquivo `README.md` criado na raiz
- [ ] Seções:
  1. **Quick Start (5 min):**
     - Pré-requisitos (Claude Code)
     - Setup inicial (estrutura, config)
     - Primeiro uso (/cf-onboarding)
     - Primeiro post (/cf-workflow producao-express)
  2. **Comandos Principais:**
     - /cf-status, /cf-help, /cf-analytics
     - /cf-onboarding, /cf-validate-brain
     - /cf-workflow producao-express
     - /cf-workflow planejamento-mensal
     - /cf-chamar-agente {id}
  3. **Agentes Disponíveis:**
     - Lista de 6+ agentes com quando usar
     - Carlos, Elena, Lucas, Marina, Ana, Beatriz, Sofia
  4. **Exemplos Práticos:**
     - Como criar post LinkedIn
     - Como criar legenda Instagram
     - Como planejar mês de conteúdo
     - Como adaptar post entre canais
  5. **Troubleshooting:**
     - brain.md não encontrado → solução
     - Voice score baixo → solução
     - Post rejeitado → solução
  6. **Arquitetura (resumo):**
     - Link para docs/architecture/
     - Visão geral de 1 parágrafo
- [ ] Linguagem clara e acessível
- [ ] Exemplos concretos
- [ ] Links para documentação detalhada

#### Tasks Técnicas
- [ ] Criar README.md
- [ ] Escrever Quick Start
- [ ] Listar comandos
- [ ] Adicionar exemplos
- [ ] Troubleshooting comum
- [ ] Links para docs
- [ ] Review e polish

#### Estimativa
**3 horas** (2 story points)

#### Dependências
Nenhuma (documentação)

---

### STORY-047: Criar Comando de Demo

**Epic:** EPIC-09
**Prioridade:** P2 - MÉDIA
**Status:** Backlog

**Como founder, eu quero comando de demo para que eu mostre capabilities do sistema rapidamente.**

#### Descrição
Criar comando `/cf-demo` que executa demonstração interativa do sistema: mostra agentes, gera post exemplo, mostra validações.

#### Critérios de Aceite
- [ ] Comando `/cf-demo` criado
- [ ] 5 etapas da demo:
  1. **Introdução:**
     - "Bem-vindo ao Content Foundry!"
     - Explicação rápida (2-3 frases)
     - Lista de capabilities
  2. **Agentes:**
     - Lista 6+ agentes disponíveis
     - Mostra exemplo de ativação
  3. **Geração de Post:**
     - Gera 1 post LinkedIn exemplo
     - Mostra processo (elicitação → geração → validação)
     - Mostra voice score
  4. **Quality Gates:**
     - Explica 5 layers
     - Mostra exemplo de validação
  5. **Próximos Passos:**
     - Sugere: /cf-onboarding (se brain.md não existe)
     - Sugere: /cf-workflow producao-express (se brain.md existe)
     - Link para README
- [ ] Duração: 3-5 min
- [ ] Interativo (founder pode pular etapas)
- [ ] Usa dados exemplo (não brain.md real)

#### Tasks Técnicas
- [ ] Criar comando `/cf-demo`
- [ ] Definir 5 etapas
- [ ] Criar dados exemplo
- [ ] Implementar interatividade
- [ ] Testar demo end-to-end
- [ ] Polish apresentação

#### Estimativa
**3 horas** (2 story points)

#### Dependências
Nenhuma (usa features existentes)

---

### STORY-048: UX Final Polish

**Epic:** EPIC-09
**Prioridade:** P2 - MÉDIA
**Status:** Backlog

**Como founder, eu quero UX polida para que experiência seja excelente.**

#### Descrição
Refinar UX de todos workflows: mensagens consistentes, progresso claro, celebrações de sucesso, comandos intuitivos.

#### Critérios de Aceite
- [ ] Mensagens de feedback aprimoradas:
  - Confirmações de ações: "Post salvo em docs/content/linkedin-2025-10-22.md ✅"
  - Progresso de workflows: "Step 2/5: Gerando 3 variações... ⏳"
  - Celebrações: "Post aprovado! Voice score: 8.9/10 🎉"
- [ ] Comandos consistentes:
  - Sempre prefixo `*` para comandos de agente
  - Sempre prefixo `/cf-` para comandos do sistema
  - Naming intuitivo (*gerar-post, *validar-voz)
- [ ] Fluxos suaves:
  - Transições claras entre agentes
  - Handoffs explícitos ("Passando você para Lucas...")
  - Contexto mantido (não pedir info já fornecida)
- [ ] Ajudas contextuais:
  - Se founder erra comando, sugerir correto
  - Se workflow falha, explicar por quê e como resolver
  - Se primeira vez, oferecer ajuda extra
- [ ] Visual polish:
  - Emojis consistentes (📝 para posts, 🎯 para validação, etc)
  - Formatação Markdown consistente
  - Quebras de linha apropriadas

#### Tasks Técnicas
- [ ] Audit de todas mensagens
- [ ] Padronizar feedback
- [ ] Adicionar progressos
- [ ] Melhorar transições
- [ ] Adicionar ajudas contextuais
- [ ] Polish visual
- [ ] Teste de usabilidade com founder

#### Estimativa
**2 horas** (1 story point)

#### Dependências
Todos workflows e agentes criados

---

## 📊 RESUMO FINAL

**Total de Stories:** 47
**Total de Story Points:** 81 pts
**Distribuição por Sprint:**
- Sprint 1: 21 pts (STORY-001 a STORY-018)
- Sprint 2: 21 pts (STORY-019 a STORY-030)
- Sprint 3: 16 pts (STORY-031 a STORY-040)
- Sprint 4: 10 pts (STORY-041 a STORY-048)

**Velocidade assumida:** 20 pts/sprint
**Sprints necessários:** 4 sprints (8 semanas)

---

## 🎯 PRÓXIMOS PASSOS

**Imediato (Hoje):**
1. ✅ Stories criadas - DONE
2. 📝 Selecionar primeiras 5 stories para começar (Sprint 1, Semana 1)
3. 📝 Começar implementação amanhã

**Amanhã:**
- Iniciar STORY-001 (Estrutura de diretórios)
- Iniciar STORY-002 (Proteção de dados)
- Iniciar STORY-003 (Config principal)

---

**Documento criado:** 2025-10-21
**Autor:** Winston (BMad Architect) + Vitor Garcia
**Versão:** 1.0
