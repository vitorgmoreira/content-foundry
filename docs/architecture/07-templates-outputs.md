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

