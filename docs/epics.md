# Content Foundry - EPICS

**Projeto:** Content Foundry MVP v1.0
**Metodologia:** BMad
**Timeline:** 8 semanas (4 sprints de 2 semanas)
**Objetivo:** Founder pode criar conteúdo autêntico LinkedIn + Instagram com IA

---

## 📊 VISÃO GERAL DOS EPICS

| Epic | Nome | Sprint | Prioridade | Valor ao Founder |
|------|------|--------|------------|------------------|
| **EPIC-01** | Foundation & Infrastructure | 1 | CRÍTICA | Sistema funcional básico |
| **EPIC-02** | Digital Brain Creation | 1 | CRÍTICA | Captura de voz e contexto |
| **EPIC-03** | LinkedIn Content Production | 1 | CRÍTICA | Primeiro post autêntico |
| **EPIC-04** | Voice & Brand Validation | 2 | ALTA | Garantia de autenticidade |
| **EPIC-05** | Multi-Channel Content | 2 | ALTA | Expandir para Instagram |
| **EPIC-06** | Content Strategy & Planning | 3 | MÉDIA | Calendário editorial |
| **EPIC-07** | Content Repurposing | 3 | MÉDIA | Reuso eficiente |
| **EPIC-08** | Performance Analytics | 4 | BAIXA | Insights de melhoria |
| **EPIC-09** | System Polish & Documentation | 4 | MÉDIA | Usabilidade refinada |

**Total:** 9 epics distribuídos em 4 sprints

---

## 🎯 SPRINT 1 (Semanas 1-2): Foundation + First Content

### EPIC-01: Foundation & Infrastructure

**Como founder, eu quero ter a infraestrutura base do Content Foundry funcionando para que eu possa começar a usar o sistema.**

#### User Stories Incluídas

- Como founder, eu quero que os diretórios do projeto estejam criados (.content-foundry/, docs/, .foundry/) para que o sistema tenha estrutura organizada
- Como founder, eu quero que o config.yaml principal esteja configurado para que o sistema saiba minhas preferências
- Como founder, eu quero que o .gitignore proteja meus dados sensíveis para que brain.md nunca seja commitado
- Como founder, eu quero que o Orchestrator (Carlos) esteja funcional para que eu tenha ponto de entrada no sistema
- Como founder, eu quero que comandos básicos funcionem (/cf-status, /cf-help) para que eu saiba o estado do sistema

#### Critérios de Aceite

- [ ] Estrutura de diretórios completa criada:
  - `.content-foundry/{agents,workflows,tasks,templates,checklists,data,hooks}`
  - `docs/{content,architecture}`
  - `.foundry/{logs,backups,state}`
- [ ] `.content-foundry/config.yaml` existe e é válido
- [ ] `.gitignore` protege brain.md, insights-journal.md, .foundry/
- [ ] Orchestrator (Carlos) ativa corretamente no Claude Code
- [ ] Comandos básicos funcionais:
  - `/cf-status` - mostra estado do projeto
  - `/cf-help` - lista comandos disponíveis
  - `/cf-chamar-agente {id}` - delega para agente específico
- [ ] Logging básico funciona (.foundry/logs/)
- [ ] File permissions configuradas (chmod 600 para arquivos sensíveis)

#### Dependências

- Nenhuma (primeiro epic)

#### Estimativa

**2 pontos** (4-6 horas)

#### Prioridade

**P0 - CRÍTICA** (bloqueia tudo)

---

### EPIC-02: Digital Brain Creation (Onboarding)

**Como founder, eu quero criar meu Cérebro Digital para que o sistema capture minha voz, histórias e valores autênticos.**

#### User Stories Incluídas

- Como founder, eu quero ser guiado por perguntas estruturadas para que eu capture minha essência facilmente
- Como founder, eu quero que o sistema extraia meus pilares de conteúdo para que posts futuros sejam relevantes
- Como founder, eu quero que meu tom de voz seja capturado para que conteúdo gerado soe como eu
- Como founder, eu quero definir meu safe_mode para que conteúdo respeite meu nível de ousadia
- Como founder, eu quero validar o brain.md criado para que eu confie nos dados capturados

#### Agentes Implementados

- **Elena (Elicitation Expert)** - Conduz onboarding e extrai conhecimento
- **Beatriz (Voice Validator)** - Valida voz capturada (score inicial)

#### Workflow Implementado

- **Workflow #1: Onboarding Inicial** (60-90 min guiado)

#### Critérios de Aceite

- [ ] Elena (Elicitation Expert) está funcional:
  - Arquivo `.content-foundry/agents/elicitation-expert.md` criado
  - Ativação funcional via `/cf-chamar-agente elicitation-expert`
  - Comandos: *ajuda, *iniciar-onboarding, *atualizar-brain, *sair
- [ ] Beatriz (Voice Validator) está funcional:
  - Arquivo `.content-foundry/agents/voice-validator.md` criado
  - Valida voz e retorna score 1-10
  - Comandos: *validar-voz, *analisar-padroes
- [ ] Workflow #1 (Onboarding) implementado:
  - Arquivo `.content-foundry/workflows/01-onboarding.md` criado
  - 3 fases: Fundação, Aprofundamento, Refinamento
  - Duração total: 60-90 minutos
- [ ] brain.md v1.0 gerado com sucesso:
  - Estrutura YAML válida
  - Seções: identidade, voz, pilares, historias, safe_mode
  - Mínimo 500 palavras de conteúdo
  - Voice validation inicial >= 7.0/10
- [ ] Comando `/cf-validate-brain` funcional
- [ ] docs/insights-journal.md iniciado

#### Dependências

- EPIC-01 (Foundation) deve estar completo

#### Estimativa

**5 pontos** (10-12 horas)

#### Prioridade

**P0 - CRÍTICA** (bloqueia produção de conteúdo)

---

### EPIC-03: LinkedIn Content Production

**Como founder, eu quero criar meu primeiro post LinkedIn autêntico para que eu valide que o sistema funciona e entrega valor real.**

#### User Stories Incluídas

- Como founder, eu quero gerar um post LinkedIn sobre um tópico para que eu publique conteúdo profissional
- Como founder, eu quero que o post soe autenticamente como eu para que minha audiência reconheça minha voz
- Como founder, eu quero que ganchos sejam fortes para que posts parem o scroll
- Como founder, eu quero validar voice score antes de publicar para que eu confie no output
- Como founder, eu quero salvar posts gerados para que eu tenha histórico

#### Agentes Implementados

- **Lucas (LinkedIn Writer)** - Escritor especializado LinkedIn

#### Workflow Implementado

- **Workflow #3: Produção Express** (post único, 15-20 min)

#### Tarefas Criadas

- `gerar-post-linkedin.md` - Workflow de criação de post
- `otimizar-gancho.md` - Melhoria de hook

#### Templates Criados

- `linkedin-post.yaml` - Estrutura de post LinkedIn

#### Checklists Criadas

- `pronto-para-publicar-linkedin.md` - Validação pré-publicação

#### Critérios de Aceite

- [ ] Lucas (LinkedIn Writer) está funcional:
  - Arquivo `.content-foundry/agents/linkedin-writer.md` criado
  - Comandos: *gerar-post, *otimizar-gancho, *validar-voz, *doc-out
  - Carrega 100% brain.md antes de gerar (Deep Mode)
- [ ] Tarefa `gerar-post-linkedin.md` implementada:
  - Elicita tópico e contexto do founder
  - Gera 3 variações de post
  - Aplica quality gates
  - Salva em docs/content/
- [ ] Template `linkedin-post.yaml` criado:
  - Estrutura: gancho (3 linhas), corpo, CTA
  - Comprimento: 800-1300 caracteres
  - Formato LinkedIn-friendly (quebras de linha, emojis opcionais)
- [ ] Workflow #3 (Produção Express) implementado
- [ ] Post gerado passa validações:
  - Voice score >= 8.5/10 (rigoroso)
  - Estrutura correta (gancho + corpo + CTA)
  - Sem chavões de coach genérico
  - Safe mode respeitado
  - Founder aprova manualmente
- [ ] Post salvo em `docs/content/linkedin-YYYY-MM-DD-{slug}.md`
- [ ] Logs registrados em `.foundry/logs/`

#### Dependências

- EPIC-02 (brain.md criado) deve estar completo

#### Estimativa

**5 pontos** (10-12 horas)

#### Prioridade

**P0 - CRÍTICA** (primeira validação de valor)

---

## 🎯 SPRINT 2 (Semanas 3-4): Quality + More Channels

### EPIC-04: Voice & Brand Validation

**Como founder, eu quero ter validação rigorosa de voz e marca para que todo conteúdo seja autêntico e alinhado com meus valores.**

#### User Stories Incluídas

- Como founder, eu quero que voice validation seja automática para que nenhum post genérico seja aprovado
- Como founder, eu quero que brand alignment seja verificado para que valores sejam respeitados
- Como founder, eu quero ver score detalhado (1-10) para que eu entenda por que passou/falhou
- Como founder, eu quero rejeitar posts com score < 8.5 automaticamente para que qualidade seja mantida

#### Agentes Implementados

- **Ana (Brand Guardian)** - Validação de alinhamento de marca

#### Checklists Criadas

- `validacao-voz.md` - 10 critérios de autenticidade
- `safe-mode-check.md` - Validação de safe mode (conservative/balanced/bold)

#### Critérios de Aceite

- [ ] Ana (Brand Guardian) está funcional:
  - Arquivo `.content-foundry/agents/brand-guardian.md` criado
  - Comandos: *validar-marca, *verificar-valores, *review-final
  - Valida alinhamento com pilares e valores do brain.md
- [ ] Voice Validator (Beatriz) aprimorado:
  - Score detalhado (1-10) com breakdown
  - Identifica problemas específicos (chavões, tom errado, genérico)
  - Sugere melhorias concretas
- [ ] Quality Gates implementados:
  - Layer 1: Structure (formato correto?)
  - Layer 2: Length (comprimento adequado?)
  - Layer 3: Authenticity (voice >= 8.5?)
  - Layer 4: Brand Alignment (valores OK?)
  - Layer 5: Editorial (safe_mode respeitado?)
- [ ] Threshold rigoroso: voice >= 8.5/10 obrigatório
- [ ] Se score < 8.5:
  - Post rejeitado automaticamente
  - Feedback específico gerado
  - Sugestões de melhoria fornecidas
  - Loop de revisão até atingir 8.5+
- [ ] Checklist `validacao-voz.md` com 10 critérios:
  - Usa vocabulário do founder?
  - Estrutura de frase similar?
  - Tom consistente?
  - Histórias pessoais presentes?
  - Evita chavões?
  - etc.

#### Dependências

- EPIC-03 (LinkedIn Writer funcional)

#### Estimativa

**3 pontos** (6-8 horas)

#### Prioridade

**P1 - ALTA** (qualidade é core value)

---

### EPIC-05: Multi-Channel Content (Instagram)

**Como founder, eu quero criar conteúdo para Instagram para que eu alcance audiências além do LinkedIn.**

#### User Stories Incluídas

- Como founder, eu quero gerar legendas Instagram autênticas para que posts sejam consistentes
- Como founder, eu quero criar carrosséis Instagram para que conteúdo educativo seja visual
- Como founder, eu quero adaptar tom para Instagram (mais casual) para que canal seja apropriado
- Como founder, eu quero validar que legendas funcionam no Instagram (hashtags, emojis) para que formato seja correto

#### Agentes Implementados

- **Marina (Instagram Feed Writer)** - Criadora de posts Instagram

#### Templates Criados

- `instagram-legenda.yaml` - Estrutura de legenda Instagram
- `instagram-carrossel.yaml` - Estrutura de carrossel (10 slides)

#### Workflow Implementado

- **Workflow #3 adaptado para Instagram** - Produção express Instagram

#### Critérios de Aceite

- [ ] Marina (Instagram Creator) está funcional:
  - Arquivo `.content-foundry/agents/instagram-feed-writer.md` criado
  - Comandos: *gerar-legenda, *criar-carrossel, *otimizar-hashtags
  - Adapta tom para Instagram (mais casual que LinkedIn)
  - Carrega 100% brain.md (Deep Mode)
- [ ] Template `instagram-legenda.yaml` criado:
  - Gancho forte (primeira linha)
  - Corpo (3-8 parágrafos)
  - CTA claro
  - Hashtags estratégicas (8-15)
  - Emojis opcionais
  - Comprimento: 800-2000 caracteres
- [ ] Template `instagram-carrossel.yaml` criado:
  - Estrutura de 10 slides máximo
  - Slide 1: Hook visual
  - Slides 2-9: Conteúdo educativo
  - Slide 10: CTA / Summary
- [ ] Legenda gerada passa validações:
  - Voice score >= 8.5/10
  - Formato Instagram-friendly
  - Hashtags relevantes
  - Safe mode respeitado
- [ ] Conteúdo salvo em `docs/content/instagram-YYYY-MM-DD-{slug}.md`
- [ ] Pelo menos 3 posts Instagram gerados com sucesso

#### Dependências

- EPIC-03 (LinkedIn Writer) - reutiliza lógica similar
- EPIC-04 (Validation) - valida qualidade

#### Estimativa

**4 pontos** (8-10 horas)

#### Prioridade

**P1 - ALTA** (multi-canal é objetivo do MVP)

---

## 🎯 SPRINT 3 (Semanas 5-6): Strategy + Scale

### EPIC-06: Content Strategy & Planning

**Como founder, eu quero planejar meu conteúdo com antecedência para que eu tenha consistência e estratégia de longo prazo.**

#### User Stories Incluídas

- Como founder, eu quero criar calendário editorial mensal para que eu saiba o que postar
- Como founder, eu quero que o sistema sugira tópicos baseados em pilares para que ideias sejam relevantes
- Como founder, eu quero distribuir conteúdo entre canais (LinkedIn/Instagram) para que estratégia seja balanceada
- Como founder, eu quero salvar calendário em formato editável para que eu ajuste conforme necessário

#### Agentes Implementados

- **Sofia (Content Strategist)** - Planejamento estratégico de conteúdo

#### Workflow Implementado

- **Workflow #2: Planejamento Mensal** - Cria calendário editorial

#### Templates Criados

- `calendario-editorial.yaml` - Estrutura de calendário mensal

#### Critérios de Aceite

- [ ] Sofia (Content Strategist) está funcional:
  - Arquivo `.content-foundry/agents/content-strategist.md` criado
  - Comandos: *criar-calendario, *sugerir-topicos, *balancear-canais
  - Analisa brain.md pilares para sugerir tópicos
- [ ] Workflow #2 (Planejamento Mensal) implementado:
  - Elicita objetivos do mês
  - Analisa pilares de conteúdo
  - Sugere 12-20 tópicos
  - Distribui entre LinkedIn e Instagram
  - Gera calendário estruturado
- [ ] Template `calendario-editorial.yaml` criado:
  - Semana 1-4 mapeadas
  - Cada dia com: data, canal, tópico, pilar, status
  - Notas estratégicas
  - Métricas esperadas
- [ ] Calendário gerado em `docs/calendar.md`
- [ ] Calendário é editável (YAML + Markdown)
- [ ] Pelo menos 1 calendário mensal criado com sucesso
- [ ] Tópicos sugeridos são relevantes aos pilares

#### Dependências

- EPIC-03 (LinkedIn Writer)
- EPIC-05 (Instagram Creator)

#### Estimativa

**3 pontos** (6-8 horas)

#### Prioridade

**P2 - MÉDIA** (nice-to-have, não crítico para MVP)

---

### EPIC-07: Content Repurposing

**Como founder, eu quero reutilizar conteúdo existente para que eu maximize eficiência e alcance.**

#### User Stories Incluídas

- Como founder, eu quero transformar post LinkedIn em legenda Instagram para que uma ideia alcance múltiplos canais
- Como founder, eu quero expandir post curto em artigo longo para que conteúdo seja aprofundado
- Como founder, eu quero quebrar artigo longo em série de posts para que conteúdo seja distribuído
- Como founder, eu quero que repurposing mantenha voice >= 8.5 para que qualidade seja preservada

#### Workflow Implementado

- **Workflow #5: Repurposing** - Adaptação cross-channel

#### Tarefas Criadas

- `adaptar-canal.md` - Adapta conteúdo para outro canal
- `expandir-conteudo.md` - Transforma post em artigo
- `quebrar-conteudo.md` - Divide artigo em série

#### Critérios de Aceite

- [ ] Workflow #5 (Repurposing) implementado:
  - Input: conteúdo existente + canal destino
  - Adaptação de tom se necessário
  - Preservação de voz (>= 8.5)
  - Output: conteúdo adaptado
- [ ] Tarefa `adaptar-canal.md`:
  - LinkedIn → Instagram (mais casual, hashtags)
  - Instagram → LinkedIn (mais profissional, estruturado)
- [ ] Tarefa `expandir-conteudo.md`:
  - Post (800-1300 chars) → Artigo (1500-2000 palavras)
  - Mantém núcleo, adiciona profundidade
- [ ] Tarefa `quebrar-conteudo.md`:
  - Artigo longo → 3-5 posts sequenciais
  - Cada post standalone mas conectado
- [ ] Pelo menos 3 repurposing bem-sucedidos:
  - LinkedIn → Instagram
  - Post → Artigo
  - Artigo → Série
- [ ] Voice score >= 8.5 mantido após adaptação

#### Dependências

- EPIC-03 (LinkedIn Writer)
- EPIC-05 (Instagram Creator)

#### Estimativa

**3 pontos** (6-8 horas)

#### Prioridade

**P2 - MÉDIA** (eficiência, não crítico)

---

## 🎯 SPRINT 4 (Semanas 7-8): Analytics + Polish

### EPIC-08: Performance Analytics

**Como founder, eu quero analisar performance do meu conteúdo para que eu melhore continuamente.**

#### User Stories Incluídas

- Como founder, eu quero ver métricas de posts gerados (total, por canal, voice score médio) para que eu entenda produção
- Como founder, eu quero identificar tópicos mais usados para que eu entenda meus padrões
- Como founder, eu quero sugestões de melhoria baseadas em dados para que eu evolua meu conteúdo
- Como founder, eu quero exportar relatório de analytics para que eu compartilhe insights

#### Workflow Implementado

- **Workflow #7: Análise de Performance**

#### Critérios de Aceite

- [ ] Workflow #7 (Análise de Performance) implementado
- [ ] Métricas rastreadas:
  - Total de posts gerados
  - Posts por canal (LinkedIn, Instagram)
  - Voice score médio
  - Taxa de aprovação (% posts >= 8.5)
  - Tópicos mais frequentes
  - Pilares mais utilizados
- [ ] Dashboard básico em `.foundry/analytics.md`:
  - Overview de métricas
  - Gráficos simples (ASCII art ou tabelas)
  - Insights automáticos
- [ ] Comando `/cf-analytics` funcional:
  - Mostra métricas principais
  - Identifica tendências
  - Sugere melhorias
- [ ] Relatório exportável em Markdown

#### Dependências

- EPIC-03 (LinkedIn Writer - gera dados)
- EPIC-05 (Instagram Creator - gera dados)

#### Estimativa

**2 pontos** (4-6 horas)

#### Prioridade

**P3 - BAIXA** (nice-to-have, não crítico para MVP)

---

### EPIC-09: System Polish & Documentation

**Como founder, eu quero que o sistema seja polido e bem documentado para que experiência seja excelente.**

#### User Stories Incluídas

- Como founder, eu quero mensagens de erro claras para que eu saiba o que fazer quando algo falha
- Como founder, eu quero comandos intuitivos para que eu use o sistema facilmente
- Como founder, eu quero documentação de uso (README) para que eu relembre como usar
- Como founder, eu quero onboarding rápido (<5 min) para que eu comece rapidamente

#### Melhorias Implementadas

- Error handling aprimorado
- Mensagens de feedback melhoradas
- README.md de uso criado
- Exemplos de comandos documentados
- Troubleshooting guide

#### Critérios de Aceite

- [ ] Error handling robusto:
  - Mensagens de erro claras (não técnicas)
  - Sugestões de solução
  - Graceful degradation
- [ ] Feedback aprimorado:
  - Confirmações de ações
  - Progresso de workflows (Step 1/5)
  - Celebrações de sucesso
- [ ] README.md de uso criado:
  - Quick start (5 min)
  - Comandos principais
  - Exemplos práticos
  - Troubleshooting
- [ ] Comando `/cf-demo` criado:
  - Demo interativo do sistema
  - Gera post exemplo
  - Mostra capabilities
- [ ] UX refinado:
  - Comandos consistentes
  - Nomes intuitivos
  - Fluxos suaves

#### Dependências

- Todos epics anteriores (polish final)

#### Estimativa

**2 pontos** (4-6 horas)

#### Prioridade

**P2 - MÉDIA** (qualidade importante, não bloqueante)

---

## 📊 ROADMAP VISUAL

```
SPRINT 1 (Semanas 1-2): FOUNDATION + FIRST CONTENT
┌─────────────────────────────────────────────────┐
│ EPIC-01: Foundation & Infrastructure     [P0]  │
│ EPIC-02: Digital Brain Creation          [P0]  │
│ EPIC-03: LinkedIn Content Production     [P0]  │
└─────────────────────────────────────────────────┘
Entrega: Founder pode criar primeiro post LinkedIn autêntico

SPRINT 2 (Semanas 3-4): QUALITY + MORE CHANNELS
┌─────────────────────────────────────────────────┐
│ EPIC-04: Voice & Brand Validation        [P1]  │
│ EPIC-05: Multi-Channel Content           [P1]  │
└─────────────────────────────────────────────────┘
Entrega: Founder pode criar posts LinkedIn + Instagram com validação rigorosa

SPRINT 3 (Semanas 5-6): STRATEGY + SCALE
┌─────────────────────────────────────────────────┐
│ EPIC-06: Content Strategy & Planning     [P2]  │
│ EPIC-07: Content Repurposing             [P2]  │
└─────────────────────────────────────────────────┘
Entrega: Founder pode planejar mês de conteúdo e reutilizar eficientemente

SPRINT 4 (Semanas 7-8): ANALYTICS + POLISH
┌─────────────────────────────────────────────────┐
│ EPIC-08: Performance Analytics           [P3]  │
│ EPIC-09: System Polish & Documentation   [P2]  │
└─────────────────────────────────────────────────┘
Entrega: Sistema completo, polido e com insights de melhoria
```

---

## 🎯 CRITÉRIOS DE SUCESSO DO MVP v1.0

Ao final dos 4 sprints, o MVP deve atender:

### Funcional
- [ ] brain.md criado e válido (>=500 palavras)
- [ ] 10+ posts LinkedIn gerados (voice >= 8.5/10)
- [ ] 10+ posts Instagram gerados (voice >= 8.5/10)
- [ ] Voice validation rigorosa (>= 8.5 threshold)
- [ ] Calendário editorial de 1 mês criado
- [ ] 3+ repurposing bem-sucedidos
- [ ] Analytics básico funcional

### Qualidade
- [ ] Voice score médio >= 8.6/10
- [ ] Taxa de aprovação >= 80% (posts >= 8.5)
- [ ] Zero posts com chavões de coach genérico
- [ ] Safe mode sempre respeitado
- [ ] Founder aprova 100% dos posts antes de publicar

### Usabilidade
- [ ] Onboarding completo em <= 90min
- [ ] Produção de 1 post em <= 20min
- [ ] Comandos intuitivos e consistentes
- [ ] Mensagens de erro claras
- [ ] README completo e útil

### Técnico
- [ ] brain.md protegido (.gitignore, chmod 600)
- [ ] Backups automáticos funcionando
- [ ] Logs completos
- [ ] Zero crashes
- [ ] Código limpo (se houver)

---

## 📈 MÉTRICAS DE TRACKING

**Por Sprint:**
- Story points completados
- Epics finalizados
- Bugs encontrados
- Voice score médio dos posts gerados
- Tempo médio de produção de post

**Ao final do MVP:**
- Total de posts gerados: Meta >= 20
- Voice score médio: Meta >= 8.6/10
- Taxa de aprovação: Meta >= 80%
- Satisfação do founder: Meta 9/10 ou superior

---

## 📝 PRÓXIMOS PASSOS

**Imediato (Hoje):**
1. ✅ Epics criados - DONE
2. 📝 Quebrar EPIC-01 em Stories (próximo passo)
3. 📝 Quebrar EPIC-02 em Stories
4. 📝 Quebrar EPIC-03 em Stories

**Amanhã:**
- Iniciar Sprint 1
- Implementar primeiras stories do EPIC-01

---

**Documento criado:** 2025-10-21
**Autor:** Winston (BMad Architect) + Vitor Garcia
**Versão:** 1.0
