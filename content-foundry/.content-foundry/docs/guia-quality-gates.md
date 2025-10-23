# Guia Completo: Quality Gates

**Versão:** 1.0.0
**Data:** 2025-10-22
**Story:** 04.023
**Categoria:** Documentação de Usuário

---

## 📋 Índice

1. [O Que São Quality Gates](#o-que-são-quality-gates)
2. [Por Que 100% Pass é Obrigatório](#por-que-100-pass)
3. [Os 5 Quality Gates](#os-5-quality-gates)
4. [Como Usar os Comandos](#como-usar-os-comandos)
5. [Fluxo de Validação](#fluxo-de-validação)
6. [Troubleshooting](#troubleshooting)
7. [Exemplos de Correções](#exemplos-de-correções)
8. [Best Practices](#best-practices)
9. [FAQ](#faq)

---

## O Que São Quality Gates

Quality Gates são **5 camadas de validação** que garantem que todo conteúdo gerado pelo Content Foundry:

1. ✅ **Tem estrutura adequada** (gancho, corpo, CTA)
2. ✅ **Está no comprimento ideal** (800-1300 caracteres)
3. ✅ **Soa autêntico** (voice score >= 8.5, zero chavões)
4. ✅ **Alinha com sua marca** (pilares, valores, safe mode)
5. ✅ **Tem qualidade editorial** (sem erros, tom correto)

**Total:** 14 critérios que **TODOS** devem passar (100%).

---

## Por Que 100% Pass é Obrigatório {#por-que-100-pass}

### O Problema com "Bom o Suficiente"

Se permitíssemos 80% ou 90% de aprovação:
- Um post poderia violar safe mode (crítico!) mas passar em tudo mais
- Um post poderia ter chavões de IA mas ter boa estrutura
- Um post poderia desalinhar com seus valores mas ter comprimento correto

**Resultado:** Conteúdo medíocre que não reflete sua marca.

### A Filosofia 100%

No Content Foundry, qualidade não é negociável:

```
14/14 (100%) = ✅ APROVADO → Pode publicar
13/14 (93%)  = ❌ REPROVADO → Precisa correção
```

**Por quê?**
- Autenticidade é binária: ou soa como você, ou não soa
- Safe mode é binário: ou viola, ou não viola
- Brand alignment é fundamental: ou reflete sua marca, ou não reflete

Melhor **não publicar** do que publicar conteúdo que não te representa.

---

## Os 5 Quality Gates

### Gate 1: Structure (4 critérios)

**Objetivo:** Garantir que post tem estrutura eficaz

**Critérios:**

1. **Gancho presente e impactante**
   - Primeiras 2-3 linhas chamam atenção
   - Evitar clickbait ou reticências
   - Ser específico, não vago

   ✅ BOM: "Q2/2019: 15 dos meus 47 clientes cancelaram."
   ❌ RUIM: "Você não vai acreditar no que aconteceu..."

2. **Corpo estruturado (3-8 parágrafos, cada <= 4 linhas)**
   - Narrativa clara (problema → solução → resultado)
   - Parágrafos curtos para leitura no LinkedIn
   - 3-8 parágrafos (não muito curto, não muito longo)

   ✅ BOM: 6 parágrafos de 2-3 linhas cada
   ❌ RUIM: 1 parágrafo de 20 linhas ou 15 parágrafos de 1 linha

3. **CTA conversacional presente**
   - Pergunta genuína, não forçada
   - Convite à reflexão ou conversa
   - Não pedir likes/shares explicitamente

   ✅ BOM: "Você prioriza crescer ou reter?"
   ❌ RUIM: "Deixe nos comentários!" ou "Compartilhe se concorda!"

4. **Formatação LinkedIn-friendly**
   - Bullets (• ou -) para listas
   - Quebras de linha estratégicas
   - Emojis com moderação (se usar)

   ✅ BOM: Bullets, parágrafos curtos, 0-2 emojis
   ❌ RUIM: Bloco de texto sem quebras, 10+ emojis

**Como Passa:**
- Todos os 4 critérios OK → Gate 1 PASS

**Se Falhar:**
- Ajustar estrutura do post
- Adicionar/melhorar gancho
- Encurtar parágrafos
- Ajustar CTA

---

### Gate 2: Length (2 critérios)

**Objetivo:** Garantir comprimento adequado para LinkedIn

**Critérios:**

1. **>= 800 caracteres**
   - Mínimo para depth
   - Abaixo disso é muito curto

2. **<= 1300 caracteres**
   - Máximo antes do "ver mais"
   - Acima disso perde atenção

**Range Ideal:** 1000-1200 caracteres

**Como Passa:**
- 800 <= comprimento <= 1300 → Gate 2 PASS

**Se Falhar:**
- Muito curto (<800): adicionar contexto, dados, detalhes
- Muito longo (>1300): condensar, remover fluff, ser mais direto

**Dica:** Use `wc -m arquivo.md` para contar caracteres

---

### Gate 3: Authenticity (3 critérios)

**Objetivo:** Garantir que post soa como VOCÊ, não como IA

**Critérios:**

1. **Voice score >= 8.5** (validado por Beatriz)
   - Análise de 10 critérios:
     1. Vocabulário (palavras que você usa)
     2. Tom (informal/formal como você)
     3. Estrutura (frases como você escreve)
     4. Chavões IA (zero chavões)
     5. Especificidade (números, contexto)
     6. Histórias (usa suas histórias)
     7. Valores (reflete seus valores)
     8. Safe Mode (respeita tópicos a evitar)
     9. Pilares (conecta com sua expertise)
     10. Emoção (genuína, não forçada)

   - Threshold: 8.5/10
   - Abaixo disso: genérico demais

   ✅ Score 8.85: Autêntico
   ❌ Score 6.2: Genérico (IA)

2. **Zero chavões de IA**
   - Escaneamento de 150 chavões catalogados
   - Categorias: corporativos, marcadores formais, superlativos, etc.

   ❌ Chavões comuns:
   - "mudar o jogo", "mergulhar fundo"
   - "no final do dia", "elevar para o próximo nível"
   - "In conclusion", "Furthermore"
   - "sinergia", "alavancar", "disruptivo"

   ✅ Zero chavões → Linguagem autêntica

3. **Específico (dados, contexto, detalhes)**
   - Números concretos: métricas, datas, quantidades
   - Contexto específico: lugares, situações
   - Detalhes: nomes (sem identificar pessoas), ferramentas, processos

   ✅ Específico: "$47k ARR, Q2/2019, 47 clientes, NPS < 7"
   ❌ Genérico: "perdemos receita", "no passado", "muitos clientes", "baixa satisfação"

**Como Passa:**
- Voice score >= 8.5 ✅
- Zero chavões ✅
- Específico (3+ números/detalhes) ✅
- → Gate 3 PASS

**Se Falhar:**
- Voice baixo: usar vocabulário do brain.md, adicionar vulnerabilidade, ser específico
- Chavões: substituir por linguagem autêntica (veja alternativas)
- Genérico: adicionar números, datas, contexto real

**Comando para diagnóstico:**
```bash
/cf-voice-score seu-post.md
```

---

### Gate 4: Brand Alignment (2 critérios básicos + 4 Ana)

**Objetivo:** Garantir alinhamento total com sua marca

**Critérios Básicos:**

1. **Alinhado com >= 1 pilar**
   - Post aborda tema de um dos seus pilares
   - Não é genérico fora da sua expertise

   ✅ Pilar "Customer Success" → post sobre churn
   ❌ Pilar "Métricas" → post sobre "dicas de vida"

2. **Reflete valores do founder**
   - Post demonstra seus valores core
   - Não contradiz nenhum valor

   ✅ Valor "Dados > Opinião" → post usa métricas
   ❌ Valor "Transparência" → post esconde falhas

**Critérios Detalhados (Ana - 4 sub-critérios):**

Ana valida brand alignment com scoring ponderado:

**1. Pilar Alignment (peso 30%)**
- Grau de alinhamento com pilares
- Score: 0-10
- Threshold: >= 7.0/10

**Escalas:**
- 10/10: Alinhamento Direto (tema core do pilar)
- 8-9/10: Alinhamento Forte
- 7/10: Alinhamento Moderado (threshold)
- 4-6/10: Alinhamento Fraco
- 0-3/10: Sem Alinhamento

**2. Valores Alignment (peso 25%)**
- Quantos valores o post reflete
- Nenhum valor contradito
- Score: 0-10
- Threshold: >= 7.0/10 E zero contradições

**Cálculo:**
- >= 80% valores refletidos: 10/10
- 70-79%: 9/10
- 60-69%: 8/10
- 50-59%: 7/10 (threshold)
- < 50%: 0-6/10

**IMPORTANTE:** Se QUALQUER valor for contradito → score = 0/10 (automático)

**3. Safe Mode Compliance (peso 30%)**
- Post menciona algum tópico de safe mode?
- Threshold: ZERO menções

**Scoring:**
- 0 menções: 10/10 ✅
- >= 1 menção: 0/10 ❌ (BLOQUEIO AUTOMÁTICO)

**Tipos de menção:**
- Direta: "o cenário político..."
- Indireta: "com as mudanças recentes no governo..."

**4. Brand Consistency (peso 15%)**
- Linguagem, tom, estilo
- Teste: "Soa como você?"
- Score: 0-10
- Threshold: >= 8.0/10

**Escalas:**
- 10/10: Perfeitamente autêntico
- 8-9/10: Muito autêntico (threshold)
- 6-7/10: Moderadamente autêntico
- 0-5/10: Não autêntico

**Score Final de Brand Alignment:**
```
Score = (Pilar × 0.30) + (Valores × 0.25) + (Safe Mode × 0.30) + (Consistência × 0.15)
```

**Threshold:** >= 8.0/10

**Como Passa:**
- Alinhado com pilar ✅
- Reflete valores ✅
- Brand Score >= 8.0/10 ✅
  - Pilar >= 7.0 ✅
  - Valores >= 7.0 e zero contradições ✅
  - Safe Mode = 10.0 (zero menções) ✅
  - Consistência >= 8.0 ✅
- → Gate 4 PASS

**Se Falhar:**
- Sem pilar: escolher tópico dentro dos seus pilares
- Valores baixo: conectar com seus valores, usar dados se "Dados > Opinião"
- Safe mode violation: ❌ CRÍTICO - remover menção completamente
- Consistência baixa: usar vocabulário/tom do brain.md

**Comando para diagnóstico:**
```bash
/cf-brand-check seu-post.md
```

---

### Gate 5: Editorial (3 critérios)

**Objetivo:** Garantir qualidade editorial final

**Critérios:**

1. **Safe mode respeitado**
   - Redundante com Gate 4, mas double-check
   - Zero menções a tópicos proibidos

2. **Sem erros de português**
   - Ortografia correta
   - Gramática adequada
   - Pontuação apropriada

   **Nota:** Linguagem coloquial intencional é OK
   - "tá", "pra", "né" → OK se você usa
   - Erros reais → não OK

3. **Tom profissional mas conversacional**
   - Encontrar balanço entre profissional e acessível
   - Não muito formal (corporativês)
   - Não muito casual (gírias demais)

   ✅ BOM: Informal mas sério quando necessário
   ❌ RUIM: "Mano, tipo assim, saca?" ou "Destarte, outrossim..."

**Como Passa:**
- Safe mode OK ✅
- Sem erros ✅
- Tom balanceado ✅
- → Gate 5 PASS

**Se Falhar:**
- Erros: revisar com corretor, reler
- Tom errado: ajustar para seu estilo (veja brain.md)

---

## Sumário dos 5 Gates

| Gate | Critérios | Objetivo | Threshold |
|------|-----------|----------|-----------|
| 1. Structure | 4 | Estrutura eficaz | Todos OK |
| 2. Length | 2 | Comprimento adequado | 800-1300 chars |
| 3. Authenticity | 3 | Voz autêntica | Voice >= 8.5, zero chavões |
| 4. Brand Alignment | 2+4 | Alinhamento de marca | Brand >= 8.0 |
| 5. Editorial | 3 | Qualidade editorial | Todos OK |

**TOTAL:** 14 critérios → **100% pass obrigatório**

---

## Como Usar os Comandos

### Comando 1: /cf-voice-score

**Quando usar:**
- Validar apenas autenticidade (Gate 3)
- Feedback rápido durante escrita
- Diagnóstico de voice score baixo

**Uso:**
```bash
/cf-voice-score seu-post.md
```

**Output:**
- Voice score (0-10)
- Breakdown dos 10 critérios
- Chavões detectados
- Padrões de autenticidade
- Sugestões de melhoria

**Exemplo de uso:**
```bash
# Escrever rascunho
vim drafts/post.md

# Validar voice
/cf-voice-score drafts/post.md
# Output: 7.2/10 - abaixo do threshold

# Ler feedback, ajustar
vim drafts/post.md

# Re-validar
/cf-voice-score drafts/post.md
# Output: 8.7/10 - aprovado!
```

---

### Comando 2: /cf-brand-check

**Quando usar:**
- Validar apenas brand alignment (Gate 4)
- Verificar se tópico alinha com pilares
- Checar safe mode compliance

**Uso:**
```bash
/cf-brand-check seu-post.md
```

**Output:**
- Brand score (0-10)
- 4 critérios detalhados:
  - Pilar Alignment
  - Valores Alignment
  - Safe Mode Compliance
  - Brand Consistency
- Problemas identificados
- Sugestões de correção

**Exemplo de uso:**
```bash
# Antes de escrever, validar conceito
echo "Post sobre liderança remota..." > conceito.md
/cf-brand-check conceito.md
# Verifica se alinha com pilares

# Se sim, escrever post completo
# Se não, escolher outro tópico
```

---

### Comando 3: /cf-quality-gates

**Quando usar:**
- Validação completa (todos os 5 gates)
- Antes de publicar
- Após editar post manualmente

**Uso:**
```bash
/cf-quality-gates seu-post.md
```

**Output:**
- Resultado de cada gate (1-5)
- Total: X/14 critérios
- Decisão: APROVADO ou REPROVADO
- Feedback detalhado se reprovado

**Flags:**
- `--stop-on-fail`: Para na primeira falha
- `--verbose`: Output detalhado
- `--json`: Output estruturado

**Exemplo de uso:**
```bash
# Validação completa final
/cf-quality-gates docs/content/linkedin/2025-10-22-post.md

# Se 14/14 (100%): publicar
# Se falha: corrigir e re-executar
```

---

## Fluxo de Validação

### Fluxo 1: Usando Workflow #3 (Automático)

```
[Founder] → /cf-workflow producao-express

  Step 1 (Carlos): Inicialização
  Step 2 (Lucas): Geração (3 variações)
  Step 3 (Beatriz): Voice validation (Gate 3)
    └─ Se score < 8.5: rejeita e re-gera
  Step 4 (Ana): Quality Gates (Gates 1-5)
    ├─ Gate 1: Structure ✓
    ├─ Gate 2: Length ✓
    ├─ Gate 3: Authenticity ✓ (já validado)
    ├─ Gate 4: Brand Alignment ✓
    └─ Gate 5: Editorial ✓

  Se 14/14: Salva post ✅
  Se < 14/14: Feedback + opções de correção ❌

[Founder] → Opcionalmente re-executar comandos para segunda opinião
```

---

### Fluxo 2: Escrevendo Manualmente (Standalone)

```
[Founder] → vim drafts/post.md (escrever rascunho)

[Founder] → /cf-voice-score drafts/post.md
  Output: 7.8/10 (abaixo de 8.5)
  Feedback: "Chavões detectados: 'mudar o jogo', 'sinergia'"

[Founder] → vim drafts/post.md (remover chavões)

[Founder] → /cf-voice-score drafts/post.md
  Output: 8.6/10 ✅

[Founder] → /cf-brand-check drafts/post.md
  Output: Brand 9.2/10 ✅

[Founder] → /cf-quality-gates drafts/post.md
  Output: 14/14 (100%) ✅ APROVADO

[Founder] → Publicar!
```

---

### Fluxo 3: Validação Iterativa

```
Loop:
  1. Escrever/editar post
  2. /cf-quality-gates post.md
  3. Se falha:
     - Ler feedback específico
     - Identificar gate(s) que falharam
     - Corrigir problemas
     - Voltar ao passo 1
  4. Se 14/14: Sair do loop, publicar
```

**Tempo típico:** 2-4 iterações até 14/14

---

## Troubleshooting

### Problema 1: Voice Score Sempre < 8.5

**Sintomas:**
- Post sempre falha no Gate 3
- Voice score entre 6.0-8.4
- Feedback: "chavões detectados", "linguagem genérica"

**Causas Comuns:**

1. **Brain.md incompleto**
   - Falta exemplos de voz
   - Falta histórias
   - Tom não definido claramente

2. **Usando chavões de IA**
   - "mudar o jogo", "mergulhar fundo", etc.
   - Linguagem corporativa genérica

3. **Falta de especificidade**
   - Sem números, datas, métricas
   - Generalidades vagas

**Soluções:**

```bash
# 1. Verificar completude do brain.md
/cf-validate-brain

# 2. Adicionar mais contexto ao brain
vim docs/brain.md
# Adicionar:
# - Mais exemplos de voz
# - Histórias pessoais
# - Expressões características

# 3. Escanear post para chavões
/cf-voice-score post.md --verbose
# Ler lista de chavões detectados

# 4. Substituir chavões por linguagem autêntica
vim post.md
# "mudar o jogo" → "fazer diferença real"
# "mergulhar fundo" → "ir a fundo"

# 5. Adicionar especificidade
vim post.md
# "perdi receita" → "perdi $47k de ARR"
# "no passado" → "em Q2/2019"
# "muitos clientes" → "47 clientes"

# 6. Re-validar
/cf-voice-score post.md
# Esperado: score > 8.5
```

---

### Problema 2: Safe Mode Violation

**Sintomas:**
- Gate 4 falha automaticamente
- Brand score = 0.0 ou muito baixo
- Feedback: "⚠️ VIOLAÇÃO DE SAFE MODE DETECTADA"

**Causas:**
- Post menciona tópico de safe mode (política, religião, etc.)
- Menção pode ser direta ou indireta

**Soluções:**

```bash
# 1. Identificar tópico violado
/cf-brand-check post.md
# Output mostra: "Tópico violado: Política"
# Output mostra trecho problemático

# 2. Remover menção completamente
vim post.md
# Antes: "considerando o cenário político atual..."
# Depois: "considerando as mudanças no mercado..."

# 3. Re-validar
/cf-brand-check post.md
# Esperado: Safe Mode 10/10

# 4. Se continua detectando:
# Revisar safe mode em brain.md
vim docs/brain.md
# Verificar quais tópicos estão listados
# Ajustar se necessário
```

**IMPORTANTE:**
- Safe mode violation é **bloqueio automático**
- Não publicar até correção
- Founder definiu esses tópicos por razão
- Violação compromete confiança da audiência

---

### Problema 3: Post Não Alinha com Pilares

**Sintomas:**
- Gate 4 falha
- Brand score baixo (< 8.0)
- Feedback: "Pilar identificado: Nenhum"

**Causas:**
- Tópico muito genérico
- Tópico fora da expertise do founder
- Tópico não conecta com pilares definidos

**Soluções:**

```bash
# 1. Listar seus pilares
grep -A 20 "pilares:" docs/brain.md

# Exemplo de output:
# - Customer Success e Retenção
# - Métricas e Data-Driven Growth
# - Liderança em Startups

# 2. Verificar se tópico atual alinha
/cf-brand-check post.md
# Output: "Tópico: Dicas gerais de empreendedorismo" → muito genérico

# 3. Escolher tópico dentro dos pilares
# Genérico: "Como ser melhor líder"
# Específico (Pilar "Liderança em Startups"): "Como dar feedback difícil em times remotos"

# 4. Reescrever focando no pilar
vim post.md
# Conectar tópico com um pilar específico

# 5. Re-validar
/cf-brand-check post.md
# Esperado: Pilar Alignment >= 7.0/10
```

**Dica:** Sempre escolha tópicos dentro dos seus pilares. Se quer falar de algo fora, considere adicionar um pilar ao brain.md.

---

### Problema 4: Sempre Falha no Gate 1 (Structure)

**Sintomas:**
- Gate 1: 2/4 ou 3/4
- Feedback: "Gancho fraco" ou "Corpo mal estruturado"

**Soluções por Critério:**

**1.1 Gancho fraco:**
```markdown
# Ruim (vago):
"Hoje quero falar sobre liderança..."

# Bom (específico):
"Terça, 11h. Slack. 'Precisamos conversar.'"

# Ou:
"Q2/2019: 15 dos meus 47 clientes cancelaram."
```

**1.2 Corpo mal estruturado:**
```markdown
# Ruim (1 bloco):
Lorem ipsum dolor sit amet consectetur adipiscing elit sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam quis nostrud exercitation ullamco...

# Bom (parágrafos curtos):
Lorem ipsum dolor sit amet.
Consectetur adipiscing elit.

Sed do eiusmod tempor.
Incididunt ut labore.

Et dolore magna aliqua.
```

**1.3 CTA forçado:**
```markdown
# Ruim (forçado):
"Deixe nos comentários o que você pensa!"
"Compartilhe se concorda!"

# Bom (genuíno):
"Você prioriza crescer ou reter?"
"Como você lida com feedback difícil?"
```

**1.4 Formatação ruim:**
```markdown
# Ruim (sem bullets, bloco):
Implementei NPS mensal Check-in com clientes Slack dedicado

# Bom (bullets, organizado):
Implementei:
• NPS mensal
• Check-in com top 10 clientes
• Slack dedicado pra suporte
```

---

### Problema 5: Workflow Muito Lento

**Sintomas:**
- Workflow #3 leva > 30 min
- Comandos demoram muito

**Causas:**
- Brain.md muito grande
- Muitos arquivos de dados

**Soluções:**

```bash
# 1. Verificar tamanho do brain.md
wc -l docs/brain.md
# Se > 5000 linhas, pode estar muito grande

# 2. Otimizar brain.md
vim docs/brain.md
# Remover:
# - Duplicatas
# - Informação desatualizada
# - Seções não usadas

# 3. Usar cache (feature futura)
# Por ora, aceitar 15-20 min no workflow
# É o preço da validação rigorosa
```

---

### Problema 6: "Não Consigo Atingir 14/14"

**Sintomas:**
- Sempre fica em 12/14 ou 13/14
- Frustração crescente

**Abordagem:**

1. **Identifique o gargalo**
   ```bash
   /cf-quality-gates post.md --verbose
   # Veja qual(is) gate(s) está(ão) falhando
   ```

2. **Foque no gate que falha**
   - Se Gate 3: use `/cf-voice-score` e siga feedback
   - Se Gate 4: use `/cf-brand-check` e ajuste tópico/valores

3. **Itere especificamente no problema**
   - Não reescrever tudo
   - Ajustar apenas o que falha

4. **Use o Workflow #3**
   - Deixe Lucas gerar 3 variações
   - Uma delas geralmente passa em 14/14

5. **Considere:**
   - Talvez o tópico não seja adequado para você
   - Escolha outro tópico alinhado com pilares

---

## Exemplos de Correções

### Exemplo 1: Corrigir Voice Score Baixo

**Post Original (Voice: 6.2/10):**
```markdown
No final do dia, liderança é sobre alavancar sua equipe para
elevar resultados para o próximo nível. É importante notar que
pensando fora da caixa, você pode revolucionar seu negócio.

In conclusion, o sucesso vem de mergulhar fundo nos desafios.
```

**Problemas:**
- 8 chavões de IA
- Genérico (sem números)
- Tom inconsistente

**Correção Passo-a-Passo:**

**1. Remover chavões:**
```markdown
# "no final do dia" → remover
# "alavancar" → "usar bem"
# "elevar para o próximo nível" → "melhorar"
# "É importante notar que" → remover
# "pensando fora da caixa" → "pensar diferente"
# "revolucionar" → "mudar"
# "In conclusion" → remover
# "mergulhar fundo" → "ir a fundo"
```

**2. Adicionar especificidade:**
```markdown
# Adicionar números, datas, contexto
# "resultados" → "churn de 32% para 5%"
# "seu negócio" → "startup SaaS"
```

**3. Usar linguagem autêntica:**
```markdown
# Tom do founder (do brain.md)
# Informal, vulnerável, direto
```

**Post Corrigido (Voice: 8.7/10):**
```markdown
Terça, 11h. Dev sênior no Slack: "Precisamos conversar."

Sabia o que vinha. 3 meses sem dar feedback adequado.
Resultado: pedido de demissão.

Perdi meu melhor engenheiro por não criar espaço pra ouvir.

Hoje, regra simples: 1:1 semanal, 25min. Eu falo MAX 30% do tempo.
Resto é perguntar e calar a boca.

Churn de time: era 28%. Hoje é 6%.

Como você cria espaço pra ouvir seu time?
```

**Mudanças:**
- ✅ Zero chavões
- ✅ Números específicos: 3 meses, 25min, 30%, 28%, 6%
- ✅ Contexto: Terça 11h, Slack, dev sênior, 1:1
- ✅ Vulnerabilidade: "Perdi", "Sabia o que vinha"
- ✅ Tom consistente: informal
- ✅ Voice score: 8.7/10 ✅

---

### Exemplo 2: Corrigir Safe Mode Violation

**Post Original (Brand: 6.35/10):**
```markdown
Em tempos de incerteza política, startups precisam se adaptar.

Considerando o cenário político atual, empresas de tecnologia
enfrentam desafios únicos na captação de investimentos.
```

**Problema:**
- ❌ Menciona "política" 2 vezes (tópico de safe mode)
- ❌ Brand score: 6.35 (< 8.0)
- ❌ Safe Mode: 0/10 (bloqueio automático)

**Correção:**

**1. Identificar trechos:**
```markdown
# Linha 1: "incerteza política"
# Linha 3: "cenário político atual"
```

**2. Remover menções:**
```markdown
# "incerteza política" → "volatilidade do mercado"
# "cenário político atual" → "ambiente econômico atual"
```

**Post Corrigido (Brand: 9.0/10):**
```markdown
Em tempos de volatilidade do mercado, startups precisam se adaptar.

Considerando o ambiente econômico atual, empresas de tecnologia
enfrentam desafios únicos na captação de investimentos.
```

**Resultado:**
- ✅ Zero menções a política
- ✅ Safe Mode: 10/10 ✅
- ✅ Brand score: 9.0/10 ✅

---

### Exemplo 3: Corrigir Desalinhamento com Pilares

**Post Original (Brand: 3.3/10):**
```markdown
5 Dicas de Ouro para Empreendedores de Sucesso:

1. Acorde cedo
2. Leia mais livros
3. Networking é essencial
4. Invista em você
5. Nunca desista

Transforme sua mentalidade, transforme seu negócio!
```

**Problemas:**
- ❌ Tópico genérico (não alinha com pilares)
- ❌ Pilar Alignment: 0/10
- ❌ Chavões: "transforme", "dicas de ouro"
- ❌ Zero especificidade

**Pilares do Founder:**
- Customer Success e Retenção
- Métricas e Data-Driven Growth
- Liderança em Startups

**Correção:**

**1. Escolher pilar específico:**
```
Pilar escolhido: "Métricas e Data-Driven Growth"
```

**2. Conectar tópico com pilar:**
```
Tópico genérico: "Dicas de empreendedorismo"
Tópico específico: "3 métricas que me salvaram de falência"
```

**3. Adicionar experiência real:**
```
- Usar números reais
- Contexto específico
- Vulnerabilidade (admitir erro)
```

**Post Corrigido (Brand: 9.5/10):**
```markdown
Q1/2020: burn rate de $52k/mês. Runway: 4 meses.

Achei que o problema era crescimento lento.
Estava olhando métrica errada.

3 métricas que mudaram tudo:

1. **CAC Payback Period**: 14 meses → Insustentável
   Reduzi pra 6 meses focando SMBs ao invés de enterprise

2. **NRR (Net Revenue Retention)**: 87% → Sangrando
   Criei CS dedicado, subiu pra 112%

3. **Magic Number**: 0.4 → Gastando demais em vendas
   Pausei contratação, otimizei processo. Foi pra 0.9.

12 meses depois: cashflow positivo pela primeira vez.

Quais métricas você acompanha religiosamente?
```

**Resultado:**
- ✅ Pilar Alignment: 10/10 (Métricas e Data-Driven)
- ✅ Valores Alignment: 10/10 ("Dados > Opinião")
- ✅ Específico: burn $52k, 4 meses, 14→6, 87%→112%, 0.4→0.9
- ✅ Vulnerabilidade: admite erro ("métrica errada")
- ✅ Brand score: 9.5/10 ✅

---

## Best Practices

### 1. Sempre Use Workflow #3 Primeiro

❌ **Não faça:**
- Escrever post do zero manualmente
- Validar só no final
- Iterar às cegas

✅ **Faça:**
```bash
/cf-workflow producao-express
# Deixe Lucas gerar 3 variações
# Beatriz valida automaticamente
# Ana aplica quality gates
# Alta chance de 14/14 na primeira
```

**Por quê?**
- Workflow já incorpora validação
- Menos iterações manuais
- Maior taxa de sucesso

---

### 2. Valide Incrementalmente

❌ **Não faça:**
- Escrever post completo (1000 palavras)
- Rodar /cf-quality-gates
- Descobrir que falhou no Gate 3
- Reescrever tudo

✅ **Faça:**
```bash
# 1. Escrever gancho (50 palavras)
/cf-voice-score gancho.md
# Ajustar gancho até score >= 8.5

# 2. Escrever corpo (500 palavras)
/cf-voice-score post-parcial.md
# Ajustar se necessário

# 3. Adicionar CTA e finalizar
/cf-quality-gates post-completo.md
# Validação final
```

**Benefício:** Detecta problemas cedo, antes de escrever muito

---

### 3. Mantenha Brain.md Atualizado

**Frequência:** Revisar a cada 10-15 posts

```bash
# Verificar completude
/cf-validate-brain

# Adicionar novos elementos
vim docs/brain.md
# Adicionar:
# - Novas histórias que você contou
# - Novas expressões que você usa
# - Novos valores emergentes
# - Atualizar safe mode se necessário
```

**Por quê?**
- Voice score melhora com brain mais rico
- Validação mais precisa
- Sistema aprende sua evolução

---

### 4. Use Feedback Específico

Quando receber feedback de reprovação:

❌ **Não faça:**
- Ignorar feedback
- Reescrever aleatoriamente
- Tentar "enganar" o sistema

✅ **Faça:**
- Ler feedback linha por linha
- Identificar problemas específicos
- Corrigir exatamente o que foi apontado
- Re-validar

**Exemplo:**
```bash
/cf-voice-score post.md
# Output: "Chavões detectados: 'mudar o jogo' (linha 5), 'sinergia' (linha 12)"

# Ir nas linhas específicas
vim +5 post.md  # Linha 5
# Substituir "mudar o jogo" → "fazer diferença"

vim +12 post.md  # Linha 12
# Substituir "sinergia" → "trabalhar bem junto"

/cf-voice-score post.md
# Chavões resolvidos, score sobe
```

---

### 5. Crie Biblioteca de Posts Aprovados

```bash
# Após aprovar um post (14/14)
cp post.md ~/biblioteca-posts/posts-aprovados/2025-10-22-exemplo.md

# Quando escrever novo post, usar como referência
# Estrutura, tom, especificidade
```

**Benefício:**
- Templates de posts que funcionam
- Referência de voice/brand corretos
- Acelera escrita futura

---

### 6. Não Lute Contra os Gates

Se um post falha repetidamente:

❌ **Não faça:**
- Insistir no mesmo tópico
- Frustrar-se
- Pedir para "baixar o threshold"

✅ **Faça:**
- Considerar que talvez o tópico não seja adequado
- Escolher outro tópico alinhado com pilares
- Usar Workflow #3 (Lucas ajuda a encontrar ângulo certo)

**Lembre-se:**
- Gates protegem sua marca
- 100% pass = garantia de qualidade
- É melhor não publicar do que publicar conteúdo medíocre

---

## FAQ

### Q1: Por que não posso ter 13/14 (93%) e publicar?

**R:** Porque qualidade não é média. Se você passar em 13/14:
- Pode estar violando safe mode (crítico!)
- Pode ter chavões de IA (compromete autenticidade)
- Pode desalinhar com valores (prejudica marca)

Um critério falhando pode comprometer todo o post.

---

### Q2: Meu voice score sempre fica entre 8.0-8.4. Como passar de 8.5?

**R:** Threshold 8.5 é rigoroso intencionalmente. Para passar:

1. **Adicione mais especificidade:**
   - 3+ números concretos
   - Datas específicas
   - Contexto detalhado

2. **Use vocabulário do brain.md:**
   - Palavras que você realmente usa
   - Expressões características

3. **Vulnerabilidade genuína:**
   - Admita erros reais
   - Consequências específicas

4. **Zero chavões:**
   - Escaneie com `/cf-voice-score`
   - Remova todos os chavões

**Típico:** Posts manuais ficam em 8.0-8.4. Workflow #3 atinge 8.5-9.0.

---

### Q3: Posso ajustar os thresholds?

**R:** Tecnicamente sim (em `config.yaml`), mas **não recomendado**.

Thresholds foram calibrados para:
- Voice >= 8.5: diferença clara entre autêntico e genérico
- Brand >= 8.0: alinhamento sólido com marca

Se abaixar:
- Sistema aprova conteúdo medíocre
- Perde diferencial de autenticidade
- Compromete proposta de valor do Content Foundry

**Recomendação:** Manter thresholds, melhorar brain.md e conteúdo.

---

### Q4: Quanto tempo leva para atingir 14/14?

**Com Workflow #3:** 15-20 min (automatizado)

**Escrevendo manualmente:**
- 1ª tentativa: raramente 14/14
- 2-3 iterações: comum
- Tempo total: 30-60 min

**Dica:** Use Workflow #3 sempre que possível.

---

### Q5: O que fazer se safe mode detecta falso positivo?

**R:** Revisar safe mode em brain.md

```bash
# 1. Ver tópicos de safe mode
grep -A 10 "safe_mode:" docs/brain.md

# 2. Se tópico está incorreto ou muito restritivo
vim docs/brain.md
# Ajustar nível de restrição:
# - nunca: bloqueio total
# - geralmente: evitar mas contexto pode permitir
# - contexto: só evitar em situações específicas

# 3. Re-validar
/cf-brand-check post.md
```

**Importante:** Safe mode te protege. Só ajuste se tiver certeza.

---

### Q6: Como sei se meu brain.md é bom o suficiente?

**R:** Execute:
```bash
/cf-validate-brain
```

**Indicadores de brain.md bom:**
- Voice scores >= 8.5 consistentemente
- Brand scores >= 8.0 consistentemente
- Poucas iterações para atingir 14/14

**Indicadores de brain.md fraco:**
- Voice scores < 8.0
- Feedback genérico
- Muitas iterações necessárias

**Solução:** Adicionar mais:
- Histórias pessoais
- Exemplos de voz (posts seus anteriores)
- Expressões características
- Valores detalhados

---

### Q7: Posso pular alguns gates?

**R:** Não. Todos os 5 gates são executados sequencialmente.

Você pode executar gates individuais:
- `/cf-voice-score` → Só Gate 3
- `/cf-brand-check` → Só Gate 4

Mas `/cf-quality-gates` sempre executa todos os 5.

**Por quê?**
- Validação completa garante qualidade total
- Um gate não compensa falha em outro

---

### Q8: O que significa "Brand Consistency 10/10" vs "Voice Score 8.5"?

**R:** São validações diferentes:

**Voice Score (Beatriz - Gate 3):**
- Autenticidade da linguagem
- Zero chavões de IA
- Vocabulário, tom, estrutura

**Brand Consistency (Ana - Gate 4.4):**
- Alinhamento geral com marca
- Teste: "Soa como você?"
- Parte do brand alignment

**Relação:**
- Possível ter voice 8.5 e brand consistency 10
- Possível ter voice 9.0 e brand consistency 8
- São complementares, não redundantes

---

## Conclusão

Quality Gates são o **coração do Content Foundry**.

**Garantem que:**
✅ Todo conteúdo soa como VOCÊ (voice >= 8.5)
✅ Todo conteúdo alinha com SUA marca (brand >= 8.0)
✅ Zero conteúdo genérico é publicado
✅ Zero violações de safe mode
✅ 100% de qualidade, sempre

**Threshold 100% (14/14) não é perfeccionismo.**
É o mínimo para garantir autenticidade.

**Use os comandos:**
- `/cf-voice-score` → Diagnóstico rápido
- `/cf-brand-check` → Alinhamento de marca
- `/cf-quality-gates` → Validação completa

**Melhor prática:**
- Use Workflow #3 (automatizado)
- Mantenha brain.md atualizado
- Confie nos gates

**Lembre-se:**
Melhor **não publicar** do que publicar conteúdo que não te representa.

Os quality gates protegem sua marca. Não lute contra eles, use-os.

---

**Powered by Content Foundry™**
*Versão: 1.0.0*
