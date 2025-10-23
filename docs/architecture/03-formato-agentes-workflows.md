## 🔧 FASE 1.3: FORMATO DE AGENTES & WORKFLOWS

### Convenções de Nomenclatura (Português)

**Decisão:** Framework 100% em português brasileiro

**Padrão kebab-case para todos os identificadores:**
- Comandos: `gerar-post`, `criar-calendario`, `validar-voz`
- Arquivos: `gerar-post-linkedin.md`, `instagram-legenda.yaml`
- Campos YAML: `quando-usar`, `principios-chave`, `comandos`

**Nomes de Agentes:** Nomes brasileiros comuns
- Lucas (LinkedIn Writer)
- Marina (Instagram Creator)
- Rafael (Storyteller Miner)
- Ana (Brand Guardian)
- Carlos (Orchestrator)
- Beatriz (Voice Validator)

**Rationale:**
- Usuário brasileiro (Vitor)
- Melhor UX em português nativo
- Consistência de idioma em todo framework
- Fácil entendimento e adoção

---

### Formato de Agente (Agent Format)

**Arquivo:** `.content-foundry/agents/{agent-id}.md`

**Estrutura:**

```markdown
<!-- Powered by Content Foundry™ -->

# {agent-id}

AVISO DE ATIVAÇÃO: Este arquivo contém as diretrizes completas de operação do agente.
NÃO carregue arquivos externos - a configuração completa está no bloco YAML abaixo.

CRÍTICO: Leia o bloco YAML completo para entender seus parâmetros de operação,
siga exatamente as instruções de ativação para alterar seu estado de ser,
e permaneça nesta persona até ser instruído a sair:

## DEFINIÇÃO COMPLETA DO AGENTE - NENHUM ARQUIVO EXTERNO NECESSÁRIO

```yaml
RESOLUCAO-DE-ARQUIVOS:
  - APENAS PARA USO POSTERIOR - NÃO PARA ATIVAÇÃO
  - Dependências mapeiam para .content-foundry/{tipo}/{nome}
  - tipo=pasta (tarefas|templates|checklists|dados|etc), nome=nome-arquivo
  - Exemplo: gerar-post.md → .content-foundry/tarefas/gerar-post.md
  - IMPORTANTE: Só carregue estes arquivos quando usuário solicitar execução

RESOLUCAO-DE-REQUISICOES:
  - Combine requisições do usuário aos comandos/dependências com flexibilidade
  - Exemplo: "criar post" → comando gerar-post
  - SEMPRE peça esclarecimento se não houver correspondência clara

instrucoes-ativacao:
  - PASSO 1: Leia ESTE ARQUIVO INTEIRO - contém sua definição de persona completa
  - PASSO 2: Adote a persona definida nas seções 'agente' e 'persona' abaixo
  - PASSO 3: Carregue e leia `docs/brain.md` (cérebro digital do founder)
  - PASSO 4: Carregue e leia `.content-foundry/config.yaml` (configuração do projeto)
  - PASSO 5: Cumprimente o usuário com seu nome/papel e execute `*ajuda` automaticamente
  - NÃO: Carregue outros arquivos de agentes durante ativação
  - SÓ carregue arquivos de dependências quando usuário os solicitar via comando
  - O campo agente.customizacao SEMPRE tem precedência sobre instruções conflitantes
  - REGRA CRÍTICA DE WORKFLOW: Ao executar tarefas, siga instruções exatamente como escritas
  - REGRA OBRIGATÓRIA DE INTERAÇÃO: Tarefas com elicitar=true REQUEREM interação do usuário
  - Ao listar tarefas/templates, sempre mostre como lista numerada para seleção
  - MANTENHA-SE NO PERSONAGEM!
  - CRÍTICO: Na ativação, APENAS cumprimente, execute `*ajuda`, e PARE para aguardar solicitação

agente:
  nome: {Nome do Agente}
  id: {agent-id}
  titulo: {Título do Papel}
  icone: {emoji}
  quando-usar: {Descrição de quando ativar este agente}
  customizacao: null  # Instruções específicas que sobrescrevem defaults

persona:
  papel: {Papel principal do agente}
  estilo: {Estilo de comunicação - ex: técnico, criativo, analítico}
  identidade: {Descrição de identidade em 1-2 frases}
  foco: {Áreas primárias de foco}
  principios-chave:
    - Princípio 1: Descrição
    - Princípio 2: Descrição
    - Princípio 3: Descrição
    - ...

# Todos os comandos usam prefixo * (ex: *ajuda)
comandos:
  - ajuda: Mostra lista numerada dos comandos disponíveis
  - {comando-1} {args}: Descrição do comando (executa tarefa X com template Y)
  - {comando-2}: Descrição do comando
  - doc-out: Salva documento em progresso no arquivo de destino
  - yolo: Ativa/desativa Modo Yolo (pula validações)
  - sair: Despede-se e abandona a persona

dependencias:
  dados:
    - {arquivo-referencia-1}.md
    - {arquivo-referencia-2}.md
  tarefas:
    - {tarefa-1}.md
    - {tarefa-2}.md
  templates:
    - {template-1}.yaml
    - {template-2}.yaml
  checklists:
    - {checklist-1}.md
```
\```
```

---

### 📘 Exemplo Completo: Lucas - LinkedIn Writer

**Este é um exemplo COPY-PASTE READY de agente completo.**

Arquivo: `.content-foundry/agents/linkedin-writer.md`

```markdown
<!-- Powered by Content Foundry™ -->

# linkedin-writer

AVISO DE ATIVAÇÃO: Este arquivo contém as diretrizes completas de operação do agente.
NÃO carregue arquivos externos - a configuração completa está no bloco YAML abaixo.

CRÍTICO: Leia o bloco YAML completo para entender seus parâmetros de operação,
siga exatamente as instruções de ativação para alterar seu estado de ser,
e permaneça nesta persona até ser instruído a sair.

## DEFINIÇÃO COMPLETA DO AGENTE - NENHUM ARQUIVO EXTERNO NECESSÁRIO

```yaml
RESOLUCAO-DE-ARQUIVOS:
  - APENAS PARA USO POSTERIOR - NÃO PARA ATIVAÇÃO
  - Dependências mapeiam para .content-foundry/{tipo}/{nome}
  - tipo=pasta (tarefas|templates|checklists|dados|etc), nome=nome-arquivo
  - Exemplo: gerar-post-linkedin.md → .content-foundry/tarefas/gerar-post-linkedin.md
  - IMPORTANTE: Só carregue estes arquivos quando usuário solicitar execução

RESOLUCAO-DE-REQUISICOES:
  - Combine requisições do usuário aos comandos/dependências com flexibilidade
  - Exemplo: "criar post" → comando gerar-post
  - Exemplo: "fazer post sobre IA" → comando gerar-post ia
  - SEMPRE peça esclarecimento se não houver correspondência clara

instrucoes-ativacao:
  - PASSO 1: Leia ESTE ARQUIVO INTEIRO - contém sua definição de persona completa
  - PASSO 2: Adote a persona definida nas seções 'agente' e 'persona' abaixo
  - PASSO 3: Carregue e leia `docs/brain.md` (cérebro digital do founder)
  - PASSO 4: Carregue e leia `.content-foundry/config.yaml` (configuração do projeto)
  - PASSO 5: Cumprimente o usuário com seu nome/papel e execute `*ajuda` automaticamente
  - NÃO: Carregue outros arquivos de agentes durante ativação
  - SÓ carregue arquivos de dependências quando usuário os solicitar via comando
  - O campo agente.customizacao SEMPRE tem precedência sobre instruções conflitantes
  - REGRA CRÍTICA DE WORKFLOW: Ao executar tarefas, siga instruções exatamente como escritas
  - REGRA OBRIGATÓRIA DE INTERAÇÃO: Tarefas com elicitar=true REQUEREM interação do usuário
  - Ao listar tarefas/templates, sempre mostre como lista numerada para seleção
  - MANTENHA-SE NO PERSONAGEM!
  - CRÍTICO: Na ativação, APENAS cumprimente, execute `*ajuda`, e PARE para aguardar solicitação

agente:
  nome: Lucas
  id: linkedin-writer
  titulo: Escritor de Posts LinkedIn
  icone: 💼
  quando-usar: Criação de posts LinkedIn com autenticidade do founder
  customizacao: |
    - SEMPRE consulte docs/brain.md antes de escrever
    - SEMPRE valide tom contra o safe_mode do founder
    - NUNCA use chavões de coach ou autopromoção excessiva
    - Deep Mode: SEMPRE carregue 100% do brain.md (MVP usa deep mode exclusivamente)
    - Voice Validation: Score >= 8.5/10 é obrigatório antes de aprovar post

persona:
  papel: Especialista em LinkedIn Thought Leadership
  estilo: Profissional, estratégico, autêntico, direto
  identidade: |
    Expert em transformar ideias do founder em posts que engajam no LinkedIn.
    Conheço profundamente a voz do founder e uso storytelling estratégico para
    conectar histórias pessoais a insights profissionais.
  foco: Autenticidade, estrutura narrativa, engajamento B2B, thought leadership
  principios-chave:
    - Autenticidade Acima de Tudo - Voz do founder é sagrada, não comprometável
    - Estrutura Clara - Gancho forte (3 primeiras linhas), desenvolvimento, CTA natural
    - Storytelling Estratégico - Conectar histórias pessoais a insights profissionais
    - Engajamento Intencional - Cada post tem propósito claro (educar/inspirar/posicionar)
    - Respeito ao Safe Mode - Seguir rigorosamente o nível de ousadia do founder
    - Anti-Genérico - Fugir de clichês tipo "jornada", "mergulho profundo", "game changer"
    - Conversacional mas Profissional - Escrever exatamente como o founder fala (mas editado)
    - Deep Context Always - 100% do brain.md carregado para máxima autenticidade

# Todos os comandos usam prefixo * (ex: *ajuda)
comandos:
  - ajuda: Mostra lista numerada dos comandos disponíveis com exemplos
  - gerar-post {tópico}: Cria post LinkedIn sobre o tópico especificado (executa gerar-post-linkedin.md)
  - otimizar-gancho: Melhora as primeiras 3 linhas do post atual (critical para feed stop)
  - criar-carrossel {tema}: Gera estrutura de PDF carrossel LinkedIn (10 slides máximo)
  - validar-voz: Verifica se o post soa autenticamente como o founder (score de 1-10)
  - expandir-artigo: Transforma post curto em artigo longo LinkedIn (1500-2000 palavras)
  - analisar-engajamento {post-id}: Sugere melhorias baseadas em performance passada
  - doc-out: Salva post no arquivo de destino (docs/content/linkedin-YYYY-MM-DD.md)
  - yolo: Ativa/desativa modo Yolo (pula validações - NÃO recomendado para MVP)
  - sair: Despede-se como Lucas e abandona a persona

dependencias:
  dados:
    - frameworks-conteudo.md        # Estruturas narrativas (StoryBrand, Hero's Journey, etc)
    - biblioteca-ganchos.md         # Biblioteca de ganchos testados e high-performing
    - boas-praticas-linkedin.md     # Best practices LinkedIn 2025 (algoritmo, formato)
  tarefas:
    - gerar-post-linkedin.md        # Workflow completo de criação de post
    - validar-voz-founder.md        # Validação de autenticidade (score >= 8.5)
    - otimizar-engajamento.md       # Otimização de performance (CTR, comments)
    - criar-carrossel-linkedin.md   # Geração de carrosséis PDF
  templates:
    - linkedin-post.yaml            # Template de post padrão
    - linkedin-carrossel.yaml       # Template de carrossel (10 slides)
    - linkedin-artigo.yaml          # Template de artigo longo (1500-2000 palavras)
  checklists:
    - validacao-voz.md              # Checklist de autenticidade (10 critérios)
    - pronto-para-publicar-linkedin.md  # Checklist pré-publicação (formato, CTA, hashtags)
    - safe-mode-check.md            # Validação de safe mode (conservative/balanced/bold)
```
\```

**Notas sobre este exemplo:**
- ✅ **Copy-paste ready** - pode ser usado diretamente como arquivo .md
- ✅ **Todas as seções preenchidas** - nenhum placeholder vazio
- ✅ **Instruções de ativação completas** - 5 passos claros
- ✅ **Customizações específicas** - deep mode, voice validation >= 8.5
- ✅ **Comandos funcionais** - 9 comandos com descrições claras
- ✅ **Dependências mapeadas** - 13 arquivos de suporte listados
- ✅ **Princípios detalhados** - 8 princípios-chave específicos para LinkedIn

**Como usar este exemplo:**
1. Copie todo o conteúdo dentro da caixa de código acima
2. Crie arquivo `.content-foundry/agents/linkedin-writer.md`
3. Cole o conteúdo
4. Ajuste campos se necessário (nome do founder, safe_mode, etc)
5. Teste ativação: `/cf-chamar-agente linkedin-writer`

---

## ⚠️ COMMON PITFALLS & SOLUTIONS

### Pitfalls Comuns na Implementação de Agentes

Esta seção documenta erros comuns que AI agents e desenvolvedores podem cometer ao implementar o Content Foundry, com soluções práticas.

---

#### Pitfall #1: Carregar arquivos externos durante ativação

**❌ Erro:**
```yaml
instrucoes-ativacao:
  - Carregue brain.md
  - Carregue config.yaml
  - Carregue .content-foundry/agents/orchestrator.md  # ❌ ERRADO!
  - Carregue .content-foundry/agents/voice-validator.md  # ❌ ERRADO!
```

**Por que é problema:**
- Ativação fica lenta (múltiplos arquivos)
- Cria dependências circulares entre agentes
- Agente perde foco da sua persona específica

**✅ Solução:**
```yaml
instrucoes-ativacao:
  - PASSO 1: Leia ESTE ARQUIVO INTEIRO (contém definição completa)
  - PASSO 2: Adote persona deste agente
  - PASSO 3: Carregue docs/brain.md
  - PASSO 4: Carregue .content-foundry/config.yaml
  - PASSO 5: Cumprimente e execute *ajuda
  - NÃO carregue outros arquivos de agentes durante ativação
  - SÓ carregue dependências quando usuário solicitar via comando
```

**Regra de Ouro:** Durante ativação, agente só carrega: próprio arquivo + brain.md + config.yaml

---

#### Pitfall #2: Esquecer de carregar brain.md antes de gerar conteúdo

**❌ Erro:**
Agent gera post sem consultar brain.md → conteúdo genérico sem voz do founder

**Sintoma:**
```markdown
Post gerado:
"🚀 A jornada do empreendedor é desafiadora mas recompensadora.
Aqui estão 5 dicas para você ter sucesso no seu negócio..."
```
↑ Genérico, chavões, sem autenticidade

**✅ Solução:**
```yaml
agente:
  customizacao: |
    - SEMPRE carregue docs/brain.md antes de qualquer geração de conteúdo
    - SEMPRE valide voz após gerar (score >= 8.5/10)
    - Deep Mode: 100% do brain.md carregado (MVP padrão)
```

**Checklist pré-geração:**
- [ ] brain.md carregado?
- [ ] Pilares de conteúdo identificados?
- [ ] Tom de voz do founder claro?
- [ ] Safe mode configurado?
- [ ] Histórias e exemplos disponíveis?

---

#### Pitfall #3: Ignorar elicitar=true nas tarefas

**❌ Erro:**
```yaml
# Tarefa com elicitar=true
tarefa:
  elicitar: true

# Agent executa automaticamente SEM perguntar ao usuário ❌
```

**Por que é problema:**
- Violação da regra de interação
- Gera conteúdo sem input crítico do founder
- Perde oportunidade de capturar nuances

**✅ Solução:**
```yaml
instrucoes-ativacao:
  - REGRA OBRIGATÓRIA DE INTERAÇÃO: Tarefas com elicitar=true REQUEREM interação do usuário
  - NUNCA execute tarefa com elicitar=true automaticamente
  - SEMPRE faça perguntas ao founder antes de prosseguir
```

**Pattern correto:**
```
Agent: "Para criar este post, preciso entender melhor. Responda estas 3 perguntas:
1. Qual aspecto deste tópico mais te apaixona?
2. Você tem alguma história pessoal relacionada?
3. Qual mensagem principal quer passar?"

[Aguarda respostas do founder]

Agent: "Perfeito! Agora vou gerar o post com base nisso..."
```

---

#### Pitfall #4: Não respeitar safe_mode do founder

**❌ Erro:**
```yaml
brain.md:
  safe_mode: conservative  # Founder quer tom profissional

# Agent gera post com:
"Vou ser polêmico: essa tendência do mercado é BULLSHIT puro."
```
↑ Violação do safe_mode

**Por que é problema:**
- Founder não se sente confortável publicando
- Quebra confiança no sistema
- Pode prejudicar reputação profissional

**✅ Solução:**
```yaml
agente:
  customizacao: |
    - SEMPRE validar tom contra safe_mode do founder
    - Conservative: profissional, sem polêmica
    - Balanced: opiniões claras mas respeitosas
    - Bold: autêntico, aceita polêmica calculada

persona:
  principios-chave:
    - Respeito ao Safe Mode - Seguir rigorosamente o nível de ousadia do founder
```

**Checklist de safe_mode:**
- [ ] Li brain.md safe_mode?
- [ ] Post está alinhado com nível configurado?
- [ ] Se bold: polêmica é fundamentada? Se conservative: evitei controvérsia?
- [ ] Founder se sentiria confortável publicando?

---

#### Pitfall #5: Usar chavões e linguagem de "coach genérico"

**❌ Erro:**
```markdown
Post gerado:
"🌟 Hoje quero compartilhar com vocês essa JORNADA incrível...
Fiz um MERGULHO PROFUNDO nesse tema que é um verdadeiro GAME CHANGER...
A chave do sucesso está em SAIR DA ZONA DE CONFORTO...
Deixe seu 💡 nos comentários!"
```

**Por que é problema:**
- Quebra autenticidade do founder
- Soa como IA genérica
- Voice validation vai falhar (< 8.5)
- Ninguém engaja com clichês

**✅ Solução:**
```yaml
persona:
  principios-chave:
    - Anti-Genérico - Fugir de clichês tipo "jornada", "mergulho profundo", "game changer"
    - Conversacional mas Profissional - Escrever exatamente como o founder fala
```

**Lista de chavões a EVITAR:**
- 🚫 "jornada", "mergulho profundo", "game changer"
- 🚫 "sair da zona de conforto", "pensar fora da caixa"
- 🚫 "mindset de crescimento", "próximo nível"
- 🚫 "deixe seu 💡 nos comentários", "bora trocar ideias"
- 🚫 Qualquer frase que aparece em 1000 posts de coach

**Como escrever autenticamente:**
1. Leia seção `voz.exemplos` do brain.md
2. Identifique padrões únicos do founder (palavras, estruturas)
3. Use histórias específicas (não generalizações)
4. Escreva como se founder estivesse falando com amigo (mas editado)

---

#### Pitfall #6: Não executar *ajuda após ativação

**❌ Erro:**
```
Agent ativa e fica em silêncio aguardando comando ❌
```

**Por que é problema:**
- Founder não sabe quais comandos estão disponíveis
- UX ruim (sem onboarding)
- Desperdiça tempo descobrindo features

**✅ Solução:**
```yaml
instrucoes-ativacao:
  - PASSO 5: Cumprimente o usuário com seu nome/papel e execute `*ajuda` automaticamente
  - CRÍTICO: Na ativação, APENAS cumprimente, execute `*ajuda`, e PARE para aguardar solicitação
```

**Pattern correto:**
```
Agent: "Olá! Sou Lucas, seu Escritor de Posts LinkedIn. 💼

Estou aqui para criar posts autênticos que soam como você (não como IA genérica).

Comandos disponíveis:
1. *gerar-post {tópico} - Criar post LinkedIn sobre tópico
2. *otimizar-gancho - Melhorar primeiras 3 linhas
3. *validar-voz - Verificar autenticidade (score 1-10)
4. *criar-carrossel {tema} - Gerar PDF carrossel
5. *ajuda - Ver esta lista

O que você quer criar hoje?"

[Aguarda comando do founder]
```

---

#### Pitfall #7: Estrutura de arquivos inconsistente

**❌ Erro:**
```
.content-foundry/
  agents/
    lucas.md              # ❌ Nome sem sufixo
    MarinA_Instagram.MD   # ❌ CamelCase + caps
  workflows/
    onboarding.md         # ❌ Sem número
    3_producao_express    # ❌ Underscore, sem .md
```

**Por que é problema:**
- Quebra convenção de nomenclatura
- Dificulta resolução de dependências
- Inconsistência no sistema

**✅ Solução:**
```yaml
Convenções de Nomenclatura:
  - Padrão: kebab-case para TODOS identificadores
  - Agentes: {nome-descritivo}.md (ex: linkedin-writer.md)
  - Workflows: {numero}-{nome}.md (ex: 01-onboarding.md)
  - Todos arquivos em lowercase
  - Separador: hífen (-), nunca underscore (_)
```

**Estrutura correta:**
```
.content-foundry/
  agents/
    linkedin-writer.md
    instagram-creator.md
    orchestrator.md
  workflows/
    01-onboarding.md
    02-planejamento-mensal.md
    03-producao-express.md
```

---

#### Pitfall #8: Voice validation score < 8.5 sendo aceito

**❌ Erro:**
```
Voice Validator: "Score: 7.2/10"
Agent: "Bom, vou aprovar mesmo assim" ❌
```

**Por que é problema:**
- MVP valida AUTENTICIDADE (não velocidade)
- Score < 8.5 significa conteúdo não soa como founder
- Desperdiça todo o propósito do Deep Mode

**✅ Solução:**
```yaml
agente:
  customizacao: |
    - Voice Validation: Score >= 8.5/10 é obrigatório antes de aprovar
    - Se score < 8.5: SEMPRE revisar e melhorar (não aprovar)
    - Deep Mode garante contexto máximo para atingir 8.5+

quality-gates:
  voice-validation:
    threshold: 8.5
    action-if-fail: "REVISAR conteúdo, adicionar mais voz do founder"
    never: "Aprovar com score < 8.5"
```

**Se voice score < 8.5:**
1. ❌ NÃO aprove o post
2. ✅ Identifique o que está genérico
3. ✅ Carregue mais exemplos do brain.md
4. ✅ Reescreva com mais voz do founder
5. ✅ Valide novamente (repita até >= 8.5)

---

### Resumo das Regras de Ouro

1. **Ativação:** Só carregue próprio arquivo + brain.md + config.yaml
2. **Brain.md:** SEMPRE carregue antes de gerar conteúdo (Deep Mode 100%)
3. **Elicitar:** Tarefas com elicitar=true REQUEREM interação do usuário
4. **Safe Mode:** Respeite rigorosamente o nível de ousadia do founder
5. **Anti-Chavões:** Fuja de clichês de coach genérico
6. **Ajuda:** Execute *ajuda automaticamente após ativação
7. **Nomenclatura:** kebab-case para tudo, lowercase, hífen (não underscore)
8. **Voice Score:** >= 8.5/10 obrigatório (NUNCA aprove < 8.5)

---

### Formato de Workflow

**Arquivo:** `.content-foundry/workflows/{numero}-{nome}.md`

**Estrutura:**

```yaml
workflow:
  id: {workflow-id}
  nome: {Nome do Workflow}
  descricao: {Descrição de 1-2 linhas do que faz}
  icone: {emoji}
  quando-usar: {Cenários de uso}
  duracao-estimada: {tempo estimado}
  agentes-envolvidos:
    - {agente-1}
    - {agente-2}

  entradas-necessarias:
    - {input-1}: {descrição}
    - {input-2}: {descrição}

  saidas-geradas:
    - {output-1}: {descrição}
    - {output-2}: {descrição}

passos:
  - numero: 1
    titulo: {Título do Passo}
    agente: {agente responsável}
    acao: {Descrição da ação}
    tarefa: {tarefa a executar}
    template: {template a usar (opcional)}
    validacao: {checklist de validação (opcional)}

  - numero: 2
    titulo: {Título do Passo}
    agente: {agente responsável}
    acao: {Descrição da ação}
    condicional:
      - se: {condição}
        entao: {ação}
      - senao: {ação alternativa}

  - numero: 3
    titulo: {Título do Passo}
    tipo: paralelo  # Passos 3a, 3b executam em paralelo
    sub-passos:
      - 3a: {ação paralela 1}
      - 3b: {ação paralela 2}

finalizacao:
  - Validação final de qualidade
  - Salvar outputs
  - Atualizar estado do projeto
```

**Exemplo Completo - Workflow #3: Produção Express:**

```yaml
workflow:
  id: producao-express
  nome: Produção Express
  descricao: Criação rápida de 1 post para publicação imediata
  icone: ⚡
  quando-usar: Founder precisa criar 1 post rapidamente (max 30min)
  duracao-estimada: 15-30 minutos
  agentes-envolvidos:
    - orchestrator (Carlos)
    - linkedin-writer (Lucas) OU instagram-writer (Marina)
    - voice-validator (Beatriz)
    - brand-guardian (Ana)

  entradas-necessarias:
    - topico: Tema ou ideia do post
    - canal: LinkedIn, Instagram Feed, ou Stories
    - tom-opcional: Se quiser sobrescrever tom padrão

  saidas-geradas:
    - post-final: Post pronto para copiar e publicar
    - insights: Sugestões de melhoria para próximos posts
    - metricas-qualidade: Scores de autenticidade e alinhamento

passos:
  - numero: 1
    titulo: Análise Rápida do Tópico
    agente: orchestrator
    acao: Entender contexto, consultar brain.md, definir ângulo
    tarefa: analisar-topico-rapido.md
    duracao: 2-3 min

  - numero: 2
    titulo: Geração de Rascunho
    agente: {canal-writer}  # Lucas ou Marina dependendo do canal
    acao: Criar primeira versão do post
    condicional:
      - se: canal == "linkedin"
        entao:
          agente: linkedin-writer
          tarefa: gerar-post-linkedin.md
          template: linkedin-post.yaml
      - se: canal == "instagram-feed"
        entao:
          agente: instagram-writer
          tarefa: gerar-post-instagram.md
          template: instagram-caption.yaml
      - se: canal == "instagram-stories"
        entao:
          agente: stories-strategist
          tarefa: criar-sequencia-stories.md
          template: stories-brief.yaml
    duracao: 5-10 min

  - numero: 3
    titulo: Validações Paralelas
    tipo: paralelo
    duracao: 5-7 min
    sub-passos:
      - 3a:
          titulo: Validação de Voz
          agente: voice-validator
          tarefa: validar-voz-founder.md
          checklist: validacao-voz.md
          criterio-aprovacao: score >= 8/10
      - 3b:
          titulo: Validação de Marca
          agente: brand-guardian
          tarefa: validar-alinhamento-marca.md
          checklist: brand-alignment.md
          criterio-aprovacao: sem red flags

  - numero: 4
    titulo: Revisão e Ajustes
    agente: {canal-writer}
    acao: Incorporar feedback das validações
    condicional:
      - se: validacoes.score < 8
        entao:
          - Ajustar tom e linguagem
          - Re-validar com voice-validator
      - senao:
          - Prosseguir para finalização
    duracao: 3-5 min

  - numero: 5
    titulo: Polimento Final
    agente: editor-proofreader
    acao: Revisar gramática, pontuação, formatação
    tarefa: revisar-post-final.md
    checklist: pronto-para-publicar-{canal}.md
    duracao: 2-3 min

finalizacao:
  - Salvar post em docs/content/{canal}/
  - Gerar relatório de qualidade
  - Sugerir próximos tópicos relacionados
  - Atualizar insights-journal.md com learnings
```

---

### Formato de Jornada (Journey)

**Arquivo:** `.content-foundry/jornadas/{numero}-{nome}.md`

**Estrutura:**

```yaml
jornada:
  id: {jornada-id}
  nome: {Nome da Jornada}
  descricao: {Descrição completa}
  icone: {emoji}
  publico-alvo: {Para quem é esta jornada}
  duracao-total: {tempo estimado}
  objetivo-final: {O que o founder alcança ao completar}

  pre-requisitos:
    - {requisito-1}
    - {requisito-2}

  resultados-entregues:
    - {resultado-1}
    - {resultado-2}

fases:
  - numero: 1
    nome: {Nome da Fase}
    objetivo: {Objetivo desta fase}
    workflows:
      - {workflow-1}
      - {workflow-2}
    criterio-conclusao: {Como saber que fase foi concluída}
    tempo-estimado: {duração}

  - numero: 2
    nome: {Nome da Fase}
    objetivo: {Objetivo desta fase}
    workflows:
      - {workflow-3}
    criterio-conclusao: {critério}
    tempo-estimado: {duração}

metricas-sucesso:
  - metrica-1: {descrição e target}
  - metrica-2: {descrição e target}

proximos-passos:
  - Sugestão de próxima jornada
  - Recursos adicionais
```

**Exemplo Completo - Jornada #1: Do Zero ao Primeiro Post:**

```yaml
jornada:
  id: zero-ao-primeiro-post
  nome: Do Zero ao Primeiro Post
  descricao: Jornada completa de onboarding e criação do primeiro conteúdo autêntico
  icone: 🚀
  publico-alvo: Founder que nunca usou Content Foundry, quer validar rapidamente
  duracao-total: 60-90 minutos
  objetivo-final: |
    Founder tem seu Cérebro Digital criado + 1 post publicável de alta qualidade
    que soa autenticamente como ele/ela

  pre-requisitos:
    - Content Foundry instalado
    - Claude Code configurado
    - 60-90min de tempo focado disponível

  resultados-entregues:
    - docs/brain.md preenchido (Cérebro Digital)
    - 1 post LinkedIn OU Instagram pronto para publicar
    - Entendimento de como usar o framework
    - Confiança na autenticidade do output

fases:
  - numero: 1
    nome: Onboarding & Criação do Cérebro Digital
    objetivo: Capturar essência, voz e contexto do founder
    workflows:
      - 01-onboarding.md
    atividades:
      - Entrevista profunda com Elicitation Expert (Elena)
      - Captura de histórias, valores, tom de voz
      - Definição de pilares de conteúdo
      - Configuração de safe_mode
      - Criação do brain.md
    criterio-conclusao: |
      - brain.md existe e está preenchido
      - Founder aprova tom e pilares capturados
      - Voice Validator consegue identificar padrões de voz
    tempo-estimado: 30-45 minutos

  - numero: 2
    nome: Primeira Produção de Conteúdo
    objetivo: Criar primeiro post autêntico e publicável
    workflows:
      - 03-producao-express.md
    atividades:
      - Escolher tópico (sugestões do Orchestrator)
      - Escolher canal (LinkedIn recomendado para primeira vez)
      - Geração do post
      - Validação de voz e marca
      - Ajustes baseados em feedback
    criterio-conclusao: |
      - Post gerado passa validação de voz (>=8/10)
      - Founder aprova e se sente confortável publicando
      - Post salvo em docs/content/
    tempo-estimado: 20-30 minutos

  - numero: 3
    nome: Reflexão e Próximos Passos
    objetivo: Consolidar aprendizado e planejar uso contínuo
    workflows:
      - Não usa workflow formal, apenas conversa com Orchestrator
    atividades:
      - Founder dá feedback sobre o processo
      - Ajustes finos no brain.md se necessário
      - Planejamento de próximos 3-5 posts
      - Escolha da próxima jornada (Profissionalização)
    criterio-conclusao: |
      - Founder entende como usar o framework
      - Próximos passos estão claros
    tempo-estimado: 10-15 minutos

metricas-sucesso:
  - brain_preenchido: docs/brain.md existe com >=500 palavras
  - post_gerado: 1 post em docs/content/ aprovado pelo founder
  - autenticidade_score: Voice Validator dá >=8/10
  - satisfacao_founder: Founder está confiante para continuar usando
  - tempo_total: Concluída em <=90min

proximos-passos:
  - Jornada #2: Profissionalização (criar calendário editorial)
  - Ou continuar com Workflow #3 (Produção Express) para mais posts
  - Ou experimentar Workflow #5 (Repurposing) se já tem conteúdo antigo
```

---

### Formato de Tarefa (Task)

**Arquivo:** `.content-foundry/tasks/{nome-tarefa}.md`

**Estrutura:**

```yaml
tarefa:
  id: {task-id}
  nome: {Nome da Tarefa}
  descricao: {O que esta tarefa faz}
  duracao-estimada: {tempo}
  agente-responsavel: {qual agente normalmente executa}
  elicitar: {true|false}  # Requer interação com usuário?

entradas:
  - {input-1}: {descrição}
  - {input-2}: {tipo e formato}

saidas:
  - {output-1}: {descrição}
  - {output-2}: {formato}

passos-execucao:
  - 1. {Passo detalhado}
  - 2. {Passo detalhado}
  - 3. {Se elicitar=true, formato exato de perguntas}

validacoes:
  - checklist: {arquivo-checklist.md}
  - criterios:
    - {critério 1}
    - {critério 2}

notas:
  - {Nota importante sobre execução}
```

**Exemplo - gerar-post-linkedin.md:**

```yaml
tarefa:
  id: gerar-post-linkedin
  nome: Gerar Post LinkedIn
  descricao: Cria post LinkedIn autêntico baseado no brain.md do founder
  duracao-estimada: 8-12 minutos
  agente-responsavel: linkedin-writer (Lucas)
  elicitar: true

entradas:
  - topico: Tema ou ideia do post (string)
  - angulo-opcional: Perspectiva específica (opcional)
  - tom-override: Sobrescrever tom padrão (opcional)
  - brain: Conteúdo de docs/brain.md

saidas:
  - post_linkedin: Post formatado segundo template linkedin-post.yaml
  - alternativas_gancho: 3 opções de primeiras linhas
  - insights: Sugestões de melhoria

passos-execucao:
  - 1. CARREGAR CONTEXTO
    - Ler docs/brain.md completo
    - Identificar tom, safe_mode, pilares
    - Identificar histórias relevantes ao tópico

  - 2. ELICITAR DETALHES (se elicitar=true)
    - Formato:
      "Entendi que você quer falar sobre {tópico}.
       Para criar um post autêntico, preciso saber:

       1. Qual ângulo específico? (ex: caso de uso, opinião polêmica, história pessoal)
       2. Objetivo do post? (educar, inspirar, gerar debate, soft selling)
       3. CTA desejado? (comentário, DM, link, apenas reflexão)

       Responda numerado ou peça sugestões."

  - 3. CONSULTAR DADOS DE REFERÊNCIA
    - Ler .content-foundry/data/frameworks-conteudo.md
    - Escolher estrutura narrativa apropriada
    - Consultar biblioteca-ganchos.md para inspiração

  - 4. GERAR RASCUNHO INICIAL
    - Aplicar estrutura: Gancho (3 linhas) + Desenvolvimento + CTA
    - Usar voz do founder (consultar brain.md constantemente)
    - Respeitar safe_mode (conservador/balanced/bold)
    - Evitar clichês listados em boas-praticas-linkedin.md

  - 5. GERAR ALTERNATIVAS DE GANCHO
    - Criar 3 opções de primeiras linhas
    - Testar diferentes abordagens (pergunta, afirmação, história)

  - 6. FORMATAR OUTPUT
    - Preencher template linkedin-post.yaml
    - Incluir metadados (data, tópico, pilar)

  - 7. AUTO-VALIDAÇÃO
    - Checklist rápida:
      ✓ Soa como o founder?
      ✓ Respeita safe_mode?
      ✓ Estrutura clara?
      ✓ CTA natural?

validacoes:
  - checklist: validacao-voz.md
  - criterios:
    - Tom consistente com brain.md
    - Sem chavões genéricos de coach
    - Estrutura narrativa clara
    - CTA alinhado com objetivo

notas:
  - Se safe_mode=conservador, evitar opiniões muito polêmicas
  - Se safe_mode=bold, pode ser mais provocativo
  - Sempre priorizar autenticidade sobre "regras" de LinkedIn
  - Perguntar ao founder se tiver dúvida entre 2 abordagens
```

---

### Formato de Template

**Arquivo:** `.content-foundry/templates/{nome-template}.yaml`

**Estrutura:**

```yaml
template:
  id: {template-id}
  nome: {Nome do Template}
  tipo: {output-type}  # post, carrossel, roteiro, newsletter, etc
  canal: {linkedin|instagram|youtube|newsletter|etc}
  versao: "1.0"

metadados:
  data-criacao: {ISO date}
  topico: {string}
  pilar-conteudo: {qual dos pilares do founder}
  safe-mode-usado: {conservador|balanced|bold}
  agente-criador: {agent-id}

conteudo:
  # Estrutura varia por tipo
  # Exemplo para LinkedIn Post:
  gancho: |
    {Primeiras 3 linhas que prendem atenção}

  corpo: |
    {Desenvolvimento da ideia}

  cta: |
    {Call-to-action natural}

  hashtags:
    - {tag1}
    - {tag2}

alternativas:
  ganchos-alternativos:
    - opcao-1: {texto}
    - opcao-2: {texto}
    - opcao-3: {texto}

metricas-qualidade:
  autenticidade-score: {0-10}
  alinhamento-pilar: {0-10}
  clareza-mensagem: {0-10}
  potencial-engajamento: {baixo|medio|alto}

insights:
  - {Sugestão de melhoria 1}
  - {Sugestão de melhoria 2}

proximos-passos-sugeridos:
  - {Ideia de follow-up post}
  - {Oportunidade de repurposing}
```

### Formato de Checklist

**Arquivo:** `.content-foundry/checklists/{nome-checklist}.md`

**Estrutura:**

```markdown
# {Nome do Checklist}

**Propósito:** {Para que serve este checklist}
**Quando usar:** {Em que momento do workflow}
**Critério de aprovação:** {Score mínimo ou condições}

---

## Seção 1: {Nome da Seção}

- [ ] **{Critério 1}**
  - Como validar: {Instruções}
  - Exemplo bom: {exemplo}
  - Exemplo ruim: {exemplo}

- [ ] **{Critério 2}**
  - Como validar: {Instruções}
  - Peso: {Alto|Médio|Baixo}

---

## Seção 2: {Nome da Seção}

- [ ] **{Critério 3}**
  - ...

---

## Scoring

**Total de itens:** {número}
**Mínimo para aprovar:** {número ou %}

**Classificação:**
- 90-100%: Excelente - Publicar com confiança
- 80-89%: Bom - Pequenos ajustes opcionais
- 70-79%: Aceitável - Revisar pontos críticos
- <70%: Requer revisão - Não publicar ainda
```

**Exemplo - validacao-voz.md:**

```markdown
# Validação de Voz do Founder

**Propósito:** Garantir que o conteúdo soa autenticamente como o founder
**Quando usar:** Após geração de qualquer conteúdo, antes de publicação
**Critério de aprovação:** Score >= 8/10 (80%)

---

## Seção 1: Tom e Estilo

- [ ] **Tom consistente com brain.md**
  - Como validar: Comparar tom do post com campo `founder.tom.{canal}` do brain.md
  - Pergunta-chave: "Se eu mostrasse isso sem nome, o founder reconheceria como dele?"
  - Peso: ALTO

- [ ] **Nível de formalidade correto**
  - Como validar: Verificar se linguagem está no nível certo (muito formal/informal)
  - Exemplo bom (LinkedIn, tom profissional): "Aprendi isso da pior forma possível."
  - Exemplo ruim: "Aprendi isso da pior forma possível, mano 🤙"
  - Peso: ALTO

- [ ] **Uso de primeira pessoa consistente**
  - Como validar: Founder costuma usar "eu" ou "nós"? Verificar padrão.
  - Peso: MÉDIO

---

## Seção 2: Vocabulário e Expressões

- [ ] **Palavras-chave do founder presentes**
  - Como validar: Buscar no brain.md por termos únicos que o founder usa
  - Exemplos: metodologias próprias, termos técnicos preferidos
  - Peso: MÉDIO

- [ ] **Ausência de clichês genéricos**
  - Como validar: Verificar contra lista de chavões em `data/cliches-evitar.md`
  - Red flags: "jornada", "quebrar paradigmas", "ressignificar", "disruptivo" (sem contexto)
  - Peso: ALTO

- [ ] **Complexidade de vocabulário apropriada**
  - Como validar: Founder usa linguagem técnica ou simplificada? Checar brain.md
  - Peso: MÉDIO

---

## Seção 3: Estrutura e Storytelling

- [ ] **Padrão narrativo do founder**
  - Como validar: Founder começa com história ou vai direto ao ponto?
  - Consultar: brain.md seção "Estilo Narrativo"
  - Peso: MÉDIO

- [ ] **Uso de analogias/metáforas (se aplicável)**
  - Como validar: Founder usa comparações? Que tipo?
  - Peso: BAIXO

---

## Seção 4: Valores e Posicionamento

- [ ] **Alinhado com valores declarados**
  - Como validar: Cruzar com seção "Valores & Crenças" do brain.md
  - Red flag crítico: Contradizer valores core
  - Peso: CRÍTICO

- [ ] **Respeita safe_mode configurado**
  - Como validar: Verificar `founder.safe_mode` no brain.md
  - Conservador: Evitar polêmicas, opiniões fortes
  - Balanced: Opinião clara mas respeitosa
  - Bold: Pode ser provocativo, tomar posições firmes
  - Peso: CRÍTICO

---

## Seção 5: Detalhes Específicos

- [ ] **Emojis: frequência e tipo**
  - Como validar: Founder usa emojis? Quantos? Que tipo?
  - Exemplo: Alguns founders nunca usam, outros usam 2-3 por post
  - Peso: BAIXO

- [ ] **Formatação (quebras de linha, listas)**
  - Como validar: Founder prefere parágrafos longos ou listas?
  - Peso: BAIXO

---

## Scoring

**Total de itens:** 10
**Peso dos itens:**
- CRÍTICO (2 itens): Deve passar 100% (reprovação automática se falhar)
- ALTO (3 itens): 3 pontos cada
- MÉDIO (4 itens): 2 pontos cada
- BAIXO (3 itens): 1 ponto cada

**Pontuação máxima:** 20 pontos
**Mínimo para aprovar:** 16/20 (80%)

**Classificação:**
- 18-20pts (90-100%): EXCELENTE - Indistinguível do original
- 16-17pts (80-89%): BOM - Publicar com confiança
- 14-15pts (70-79%): ACEITÁVEL - Revisar itens de peso alto
- <14pts (<70%): REQUER REVISÃO - Não publicar

**Ação se reprovar:**
1. Identificar itens que falharam
2. Consultar brain.md para detalhes
3. Ajustar conteúdo
4. Re-validar
```

---

### Formato de Dados de Referência

**Arquivo:** `.content-foundry/data/{nome-arquivo}.md`

**Propósito:** Armazenar conhecimento reutilizável que agentes consultam

**Exemplos de arquivos:**

**`frameworks-conteudo.md`:**
```markdown
# Frameworks de Conteúdo

## Estruturas Narrativas

### 1. Hero's Journey (Jornada do Herói)
- Situação inicial → Problema → Luta → Vitória → Lição
- Melhor para: Histórias de transformação, casos de sucesso
- Canais: LinkedIn, Instagram Carrossel, YouTube

### 2. Problema-Agitação-Solução (PAS)
- Problema: Apresenta a dor
- Agitação: Amplifica consequências
- Solução: Oferece caminho
- Melhor para: Posts educativos, soft selling
- Canais: LinkedIn, Newsletter

### 3. AIDA (Atenção-Interesse-Desejo-Ação)
- Atenção: Gancho forte
- Interesse: Desenvolve curiosidade
- Desejo: Mostra benefícios
- Ação: CTA claro
- Melhor para: Posts de conversão, lançamentos
- Canais: Instagram, LinkedIn

[... mais frameworks ...]
```

**`biblioteca-ganchos.md`:**
```markdown
# Biblioteca de Ganchos Testados

## Categoria: Contrarian (Opinião Controversa)

### Template 1: "Todo mundo diz X, mas..."
Exemplo: "Todo mundo diz que consistência é a chave. Discordo."

### Template 2: "Você está fazendo X errado"
Exemplo: "Você está fazendo networking errado (e eu também fazia)."

## Categoria: Storytelling

### Template 3: "Momento específico"
Exemplo: "3h da manhã. Olhando para o teto. Pensei: 'Não dá mais'."

### Template 4: "Diálogo real"
Exemplo: "'Você vai falir em 6 meses.' Foi isso que ouvi em 2019."

[... mais ganchos categorizados ...]
```

**`safe-mode-rules.yaml`:**
```yaml
safe_mode_levels:
  conservador:
    descricao: Mínimo risco, máxima segurança profissional
    permitido:
      - Opiniões bem fundamentadas
      - Histórias pessoais neutras
      - Educação/ensino
      - Inspiração suave
    evitar:
      - Críticas diretas a pessoas/empresas
      - Opiniões políticas
      - Temas polêmicos (religião, política, etc)
      - Autopromoção agressiva
      - Linguagem muito informal
    tom:
      - Profissional
      - Respeitoso
      - Equilibrado

  balanced:
    descricao: Equilíbrio entre autenticidade e profissionalismo
    permitido:
      - Opiniões claras (mas respeitosas)
      - Histórias com vulnerabilidade moderada
      - Críticas construtivas ao mercado
      - Posicionamento sobre temas da indústria
      - Humor leve
    evitar:
      - Ataques pessoais
      - Opiniões extremas
      - Temas muito sensíveis
    tom:
      - Autêntico mas profissional
      - Pode ser provocativo (com respeito)
      - Conversacional

  bold:
    descricao: Máxima autenticidade, aceita polêmica calculada
    permitido:
      - Opiniões fortes e polarizantes
      - Críticas diretas (mas fundamentadas)
      - Vulnerabilidade total
      - Posições contrarians
      - Humor ácido/sarcasmo
      - Temas controversos (se relevantes)
    evitar:
      - Ofensas gratuitas
      - Fake news
      - Discriminação
    tom:
      - 100% autêntico
      - Provocativo
      - Sem filtro (com responsabilidade)
```

---

## 🚀 IMPLEMENTATION QUICKSTART

### Como Criar um Novo Agente (Passo a Passo)

**Cenário:** Você quer criar um novo agente especializado (ex: "Pedro - Twitter Thread Writer")

**Passos:**

1. **Definir identidade do agente**
   ```yaml
   - Nome: Pedro
   - ID: twitter-thread-writer
   - Papel: Criador de threads Twitter autênticas
   - Categoria: writer
   ```

2. **Criar arquivo do agente**
   ```bash
   # Criar arquivo
   touch .content-foundry/agents/twitter-thread-writer.md
   ```

3. **Copiar template de agente**
   - Use o template da seção "Formato de Agente" acima (linhas 27-155)
   - Preencha todos os campos obrigatórios:
     - `agente`: nome, id, titulo, icone, quando-usar
     - `persona`: papel, estilo, identidade, foco, principios-chave
     - `comandos`: lista de comandos disponíveis
     - `dependencias`: tarefas, templates, dados necessários

4. **Adicionar ao Agent Registry**
   ```bash
   # Editar arquivo
   nano .content-foundry/data/agent-registry.yaml
   ```

   Adicionar entrada:
   ```yaml
   - id: twitter-thread-writer
     nome: Pedro
     categoria: writer
     capacidades:
       - Criação de threads Twitter
       - Storytelling em formato thread
       - Hooks de abertura virais
     quando_usar:
       - Founder quer post Twitter
       - Conteúdo longo precisa virar thread
   ```

5. **Criar dependências (se necessário)**
   - Templates: `.content-foundry/templates/twitter-thread.yaml`
   - Tarefas: `.content-foundry/tasks/gerar-thread-twitter.md`
   - Checklists: `.content-foundry/checklists/thread-validator.md`

6. **Testar ativação do agente**
   ```bash
   # No Claude Code
   /cf-chamar-agente twitter-thread-writer
   ```

   Validar:
   - ✅ Agente carrega brain.md
   - ✅ Agente carrega config.yaml
   - ✅ Agente cumprimenta com nome/papel
   - ✅ Agente executa `*ajuda` automaticamente
   - ✅ Comandos estão funcionais

7. **Validar funcionamento completo**
   ```bash
   # Testar comando de criação de conteúdo
   *criar-thread {tópico}
   ```

   Verificar:
   - ✅ Output segue template correto
   - ✅ Voice validation é executada
   - ✅ Quality gates aplicados
   - ✅ Arquivo salvo em docs/content/

8. **Documentar agente**
   - Adicionar ao README de agentes (se existir)
   - Atualizar lista de comandos do Orchestrator
   - Adicionar exemplos de uso

---

### Como Fazer Deployment Inicial do Content Foundry

**Cenário:** Você está configurando Content Foundry pela primeira vez

**Passos:**

1. **Pré-requisitos**
   ```bash
   # Verificar Claude Code instalado
   claude --version

   # Verificar estrutura de diretórios
   ls -la .content-foundry/
   ```

2. **Estrutura de diretórios**
   ```bash
   # Se não existe, criar estrutura completa
   mkdir -p .content-foundry/{agents,workflows,tasks,templates,checklists,data,hooks}
   mkdir -p docs/{content,architecture}
   mkdir -p .foundry/{logs,backups,state}
   ```

3. **Configuração inicial**
   ```bash
   # Criar config.yaml principal
   touch .content-foundry/config.yaml
   ```

   Conteúdo mínimo:
   ```yaml
   projeto:
     nome: Content Foundry
     versao: "1.0.0"
     founder: {nome-do-founder}

   configuracoes:
     deep-mode: true
     voice-validation-threshold: 8.5
     auto-save: true
   ```

4. **Executar onboarding**
   ```bash
   # No Claude Code, ativar Orchestrator e iniciar onboarding
   /cf-onboarding
   ```

   Este workflow irá:
   - Criar docs/brain.md com dados do founder
   - Configurar safe_mode
   - Capturar voz e histórias
   - Definir pilares de conteúdo

5. **Validar brain.md criado**
   ```bash
   # Verificar brain.md existe e está válido
   /cf-validate-brain
   ```

   Deve retornar:
   - ✅ YAML syntax válido
   - ✅ Required fields presentes
   - ✅ Minimum content thresholds atingidos

6. **Testar produção de conteúdo**
   ```bash
   # Criar primeiro post para validar sistema
   /cf-gerar-post-rapido linkedin "meu primeiro tópico"
   ```

7. **Verificar outputs**
   ```bash
   # Verificar post gerado
   ls -la docs/content/

   # Verificar logs
   tail -f .foundry/logs/latest.log
   ```

8. **Configurar proteções**
   ```bash
   # Proteger brain.md
   chmod 600 docs/brain.md

   # Verificar .gitignore configurado
   cat .gitignore | grep brain.md
   ```

---

### Checklist de Validação Pós-Deployment

**Use este checklist para validar que tudo está funcionando:**

```yaml
deployment-validation:
  estrutura:
    - [ ] Diretório .content-foundry/ existe
    - [ ] Subdiretórios criados (agents, workflows, tasks, templates, etc)
    - [ ] Diretório docs/ existe
    - [ ] Diretório .foundry/ existe

  configuracao:
    - [ ] .content-foundry/config.yaml existe e é válido
    - [ ] docs/brain.md existe e está preenchido
    - [ ] .gitignore protege brain.md e dados sensíveis
    - [ ] File permissions configuradas (chmod 600 brain.md)

  agentes:
    - [ ] Orchestrator (Carlos) ativa corretamente
    - [ ] Pelo menos 1 writer agent funcional (Lucas/Marina)
    - [ ] Elicitation Expert (Elena) funcional
    - [ ] Voice Validator (Beatriz) funcional

  workflows:
    - [ ] Workflow #1 (Onboarding) executado com sucesso
    - [ ] Workflow #3 (Produção Express) testado
    - [ ] Brain.md passou voice validation

  outputs:
    - [ ] Pelo menos 1 post gerado em docs/content/
    - [ ] Post passa quality gates (>=8.5/10)
    - [ ] Logs sendo escritos em .foundry/logs/
    - [ ] State sendo atualizado em .foundry/state.yaml

  seguranca:
    - [ ] brain.md NÃO está commitado no git
    - [ ] .gitignore configurado corretamente
    - [ ] Backup strategy documentada e testada
```

---

### Troubleshooting Comum

**Problema 1: "brain.md não encontrado"**
```bash
# Solução: Executar onboarding
/cf-onboarding
```

**Problema 2: "Voice validation falhou (score < 8.5)"**
```bash
# Solução: Adicionar mais contexto ao brain.md
# Editar docs/brain.md e adicionar:
# - Mais exemplos de voz
# - Mais histórias pessoais
# - Clarificar tom preferido
```

**Problema 3: "Agente não carrega brain.md"**
```bash
# Verificar se brain.md existe
ls -la docs/brain.md

# Verificar sintaxe YAML
/cf-validate-brain

# Verificar instruções de ativação do agente
# Linha 63 do agente deve ter: "Carregue e leia docs/brain.md"
```

**Problema 4: "Comandos não funcionam"**
```bash
# Verificar se agente está ativo
# Comandos devem ter prefixo *
# Exemplo: *ajuda, *gerar-post

# Verificar se comando está listado em `comandos:` do agente
```

**Problema 5: "Output não segue template"**
```bash
# Verificar se template existe
ls -la .content-foundry/templates/{template-name}.yaml

# Verificar se agente lista template nas dependências
# Ver campo `dependencias.templates` no arquivo do agente
```

---

### Resumo da Fase 1.3

**Decisões Finalizadas:**

✅ **Idioma:** Framework 100% em português brasileiro
✅ **Nomenclatura:** kebab-case para todos identificadores
✅ **Nomes de Agentes:** Nomes brasileiros comuns (Lucas, Marina, Ana, etc)
✅ **Prefixo de Comandos:** `*` (ex: `*ajuda`, `*gerar-post`)

**Formatos Definidos:**

1. **Agente (.md):** YAML embedded com persona, comandos, dependências
2. **Workflow (.md):** YAML com passos sequenciais/paralelos, condicionais
3. **Jornada (.md):** YAML com fases, workflows, métricas de sucesso
4. **Tarefa (.md):** YAML com passos de execução, elicitação, validações
5. **Template (.yaml):** Estruturas de output por tipo de conteúdo
6. **Checklist (.md):** Validações com scoring e critérios de aprovação
7. **Dados (.md/.yaml):** Conhecimento reutilizável (frameworks, ganchos, regras)

**Inspiração:** BMad Method (mantendo compatibilidade conceitual)

**Próximo Passo:** Fase 2.4 - Arquitetura detalhada do Cérebro Digital

---

