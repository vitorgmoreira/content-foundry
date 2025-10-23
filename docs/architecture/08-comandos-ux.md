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

