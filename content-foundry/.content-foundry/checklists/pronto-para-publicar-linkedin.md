# Checklist: Pronto para Publicar LinkedIn

**Versão:** 1.0.0
**Data:** 2025-10-22
**Story:** 03.015
**Usado por:** gerar-post-linkedin.md (Step 5)

---

## Overview

Esta checklist implementa **5 Quality Gates** que validam se um post LinkedIn está pronto para publicação. TODOS os 5 gates devem passar (100%) para o post ser aprovado.

**Política de Aprovação:**
- ✅ Se TODOS os 5 gates passam → Post aprovado → Salvo em `docs/content/linkedin/`
- ❌ Se QUALQUER gate falha → Post rejeitado → Feedback específico → Loop de revisão

**Ordem de Execução:**
Gates são executados sequencialmente na ordem abaixo. Se um gate falha, execução para e feedback é gerado.

---

## Quality Gate 1: Structure

**Objetivo:** Validar que o post tem estrutura correta para LinkedIn

**Critérios:** (4/4 devem passar)

### 1.1 Gancho Presente
- [ ] Post tem gancho (primeiras 2-3 linhas)
- [ ] Gancho tem máximo 100 caracteres
- [ ] Gancho não usa reticências (...)
- [ ] Gancho é impactante (dado surpreendente, pergunta provocativa, ou resultado específico)

**Como validar:**
- Ler primeiras 3 linhas do post
- Contar caracteres até primeira quebra de linha dupla
- Verificar ausência de "..."
- Avaliar se gancho chama atenção (sim/não)

**Feedback se falhar:**
```
❌ GATE 1.1 FALHOU: Gancho inadequado

Problema identificado: [descrever problema específico]

Exemplo do gancho atual:
[transcrever gancho]

Problemas:
- [X] Usa reticências (...)
- [X] Genérico demais ("Hoje quero falar sobre...")
- [X] Muito longo (> 100 caracteres)

Sugestão de correção:
Reescrever gancho usando técnica:
- Dado surpreendente: "Reduzi churn de 15% para 5% em 6 meses."
- Contradição: "Você está medindo product-market fit errado."
- Declaração ousada: "A maioria das startups não deveria levantar funding."
```

### 1.2 Corpo Estruturado
- [ ] Corpo tem 3-8 parágrafos (ideal 4-6)
- [ ] Cada parágrafo tem máximo 4 linhas
- [ ] Há 1 linha em branco entre parágrafos
- [ ] Corpo desenvolve ideia do gancho

**Como validar:**
- Contar parágrafos (separados por linha em branco)
- Contar linhas em cada parágrafo
- Verificar quebras de linha entre parágrafos
- Ler corpo e confirmar que desenvolve gancho

**Feedback se falhar:**
```
❌ GATE 1.2 FALHOU: Corpo mal estruturado

Problema identificado: [descrever problema específico]

Estatísticas do corpo:
- Número de parágrafos: [X] (esperado: 3-8)
- Parágrafos com > 4 linhas: [X] (esperado: 0)
- Quebras de linha entre parágrafos: [inconsistente/ausente]

Sugestão de correção:
- Quebrar parágrafos longos (> 4 linhas) em 2 parágrafos menores
- Adicionar linha em branco entre todos os parágrafos
- Remover parágrafos redundantes se > 8 parágrafos
```

### 1.3 CTA Presente
- [ ] Post tem CTA (call to action)
- [ ] CTA tem 1-2 linhas
- [ ] CTA é conversacional (não agressivo)
- [ ] CTA convida engajamento (pergunta, conversa, ou reflexão)

**Como validar:**
- Ler última(s) linha(s) do post (antes de hashtags se existirem)
- Verificar se há pergunta, convite, ou provocação
- Avaliar tom (conversacional vs agressivo)

**Feedback se falhar:**
```
❌ GATE 1.3 FALHOU: CTA inadequado ou ausente

Problema identificado: [descrever problema específico]

CTA atual: "[transcrever CTA ou 'ausente']"

Problemas:
- [X] CTA ausente
- [X] CTA agressivo ("COMENTA AGORA!")
- [X] Pede like/share explicitamente
- [X] Muito longo (> 2 linhas)

Sugestão de correção:
Adicionar CTA conversacional:
- Pergunta aberta: "Qual foi seu maior erro ao escalar CS?"
- Convite: "Se você já passou por isso, comenta aí."
- Reflexão: "Ouvir 15 clientes me ensinou mais que 1000 dashboards."
```

### 1.4 Formatação LinkedIn-Friendly
- [ ] Sem wall of text (parágrafos separados por quebras)
- [ ] Listas têm máximo 5 itens
- [ ] Emojis usados com moderação (máximo 3-4 no post)
- [ ] Hashtags (se usadas) estão ao final, não no meio do post

**Como validar:**
- Verificar visualmente se há quebras de linha adequadas
- Contar itens em listas (se existirem)
- Contar emojis no post inteiro
- Verificar posição de hashtags

**Feedback se falhar:**
```
❌ GATE 1.4 FALHOU: Formatação não LinkedIn-friendly

Problema identificado: [descrever problema específico]

Problemas:
- [X] Wall of text (sem quebras de linha adequadas)
- [X] Lista com > 5 itens (dificulta leitura)
- [X] Emojis em excesso ([X] emojis, máximo 3-4)
- [X] Hashtags no meio do post (mover para o final)

Sugestão de correção:
- Adicionar linha em branco entre todos os parágrafos
- Quebrar lista longa em 2 listas menores ou resumir
- Remover emojis decorativos, manter apenas os estratégicos
- Mover hashtags para última linha (após CTA)
```

**Resultado Gate 1:**
- ✅ **PASS** se 4/4 critérios passam
- ❌ **FAIL** se qualquer critério falha

---

## Quality Gate 2: Length

**Objetivo:** Validar que o post está no comprimento ideal para engajamento LinkedIn

**Critérios:** (2/2 devem passar)

### 2.1 Comprimento Mínimo
- [ ] Post tem >= 800 caracteres (incluindo espaços)

**Como validar:**
- Contar caracteres do post inteiro (incluindo espaços, quebras de linha, hashtags)
- Excluir apenas espaços em branco ao final

**Feedback se falhar:**
```
❌ GATE 2.1 FALHOU: Post muito curto

Comprimento atual: [X] caracteres
Mínimo requerido: 800 caracteres
Déficit: [800 - X] caracteres

Problema:
Post está subdimensionado e não desenvolve ideia completamente.

Sugestão de correção:
- Adicionar contexto ou exemplo concreto ao corpo
- Desenvolver melhor a história (situação, ação, resultado)
- Adicionar dados ou detalhes específicos
- NÃO adicionar fluff ou encher linguiça - adicionar VALOR

Exemplo de adição de valor:
Antes: "Reduzi churn. Funcionou."
Depois: "Reduzi churn de 15% para 5% em 6 meses. Conversei com 15 clientes
que cancelaram. Descobri 3 padrões que nenhuma métrica mostrava."
```

### 2.2 Comprimento Máximo
- [ ] Post tem <= 1300 caracteres (incluindo espaços)

**Como validar:**
- Contar caracteres do post inteiro
- Se > 1300, post precisa ser editado ou virar thread

**Feedback se falhar:**
```
❌ GATE 2.2 FALHOU: Post muito longo

Comprimento atual: [X] caracteres
Máximo recomendado: 1300 caracteres
Excesso: [X - 1300] caracteres

Problema:
Post está muito longo e pode perder atenção do leitor.

Sugestões de correção:

Opção A: Editar para <= 1300 caracteres
- Identificar parágrafos menos importantes e remover
- Tornar exemplos mais concisos
- Remover redundâncias

Opção B: Transformar em thread (se conteúdo é valioso)
- Post 1: Gancho + overview
- Posts 2-N: Desenvolvimento de cada ponto
- Último post: CTA

Recomendação: [A ou B com justificativa]
```

**Resultado Gate 2:**
- ✅ **PASS** se comprimento está entre 800-1300 caracteres
- ❌ **FAIL** se < 800 ou > 1300

---

## Quality Gate 3: Authenticity

**Objetivo:** Validar que o post soa autêntico e genuíno (não genérico/IA)

**Critérios:** (3/3 devem passar)

### 3.1 Voice Score >= 8.5
- [ ] Voice score de Beatriz (voice-validator) >= 8.5/10

**Como validar:**
- Executar validação com Beatriz usando 10 critérios
- Voice score é média dos 10 critérios

**Feedback se falhar:**
```
❌ GATE 3.1 FALHOU: Voice score abaixo do threshold

Voice score atual: [X.X]/10
Threshold mínimo: 8.5/10
Gap: [8.5 - X.X]

Critérios com score baixo:
1. [Critério]: [score]/10 - [problema identificado]
2. [Critério]: [score]/10 - [problema identificado]
...

Sugestão de correção:
Revisar post contra brain.md nos seguintes aspectos:
- [Aspecto específico que precisa melhorar]
- [Aspecto específico que precisa melhorar]

Para aumentar voice score:
- Comparar vocabulário com brain.md (usar palavras/expressões do founder)
- Adicionar história ou anedota pessoal
- Tornar mais específico (dados, contexto, detalhes reais)
- Revisar tom (muito formal? muito casual?)
```

### 3.2 Zero Chavões de IA/Coach
- [ ] Post NÃO contém chavões de IA ou coach genéricos

**Lista de chavões proibidos (PT-BR):**
- revolucionário, transformador, disruptivo
- mergulho profundo, elevar o nível, mudança de paradigma
- jornada, empoderamento, sinergia
- pensar fora da caixa, dica de ouro, segredo revelado
- método comprovado, fórmula mágica, hack infalível

**Lista de chavões proibidos (EN):**
- game-changer, unlock, leverage
- paradigm shift, deep dive, next level
- empowerment, synergy, think outside the box

**Como validar:**
- Buscar cada chavão no post (case-insensitive)
- Se encontrar QUALQUER chavão, gate falha

**Feedback se falhar:**
```
❌ GATE 3.2 FALHOU: Chavões detectados

Chavões encontrados no post:
1. "[chavão]" - linha [X]
2. "[chavão]" - linha [Y]

Problema:
Chavões destroem autenticidade e soam genéricos.
Founder real não fala assim. IA não-refinada fala.

Sugestão de correção:
Substituir cada chavão por expressão genuína:

"[chavão]" → [alternativa autêntica baseada em brain.md]
"[chavão]" → [alternativa autêntica baseada em brain.md]

Exemplo:
❌ "Isso foi um game-changer revolucionário"
✅ "Isso mudou completamente como eu escalo customer success"
```

### 3.3 Especificidade (Não-Genérico)
- [ ] Post contém dados, exemplos ou detalhes específicos (não abstrações)

**Como validar:**
- Verificar presença de:
  - Números/percentuais (ex: "15% → 5%", "R$ 12k MRR")
  - Timeline (ex: "6 meses", "2019-2021")
  - Nomes/contextos específicos (ex: "SaaS B2B", "customer success")
  - Detalhes concretos (ex: "15 conversas de 30 min cada")

**Feedback se falhar:**
```
❌ GATE 3.3 FALHOU: Post muito genérico

Problema:
Post usa abstrações e generalizações sem exemplos concretos.

Elementos ausentes:
- [X] Dados ou percentuais específicos
- [X] Timeline ou contexto temporal
- [X] Nomes ou contextos concretos
- [X] Detalhes verificáveis

Sugestão de correção:
Adicionar especificidade ao post:

Antes: "Melhorei resultados significativamente."
Depois: "Reduzi churn de 15% para 5% em 6 meses."

Antes: "Falei com clientes que cancelaram."
Depois: "Conversei com 15 clientes que cancelaram. 30-45 min cada."

Antes: "Descobri padrões importantes."
Depois: "Descobri 3 padrões: onboarding confuso, falta de quick wins,
suporte reativo."
```

**Resultado Gate 3:**
- ✅ **PASS** se voice >= 8.5, zero chavões, e específico
- ❌ **FAIL** se qualquer critério falha

---

## Quality Gate 4: Brand Alignment

**Objetivo:** Validar que o post está alinhado com pilares, valores e mensagem do founder

**Critérios:** (2/2 devem passar)

### 4.1 Alinhado com Pilares de Conteúdo
- [ ] Post está relacionado a pelo menos 1 dos pilares do founder (definidos em brain.md)

**Como validar:**
- Ler pilares em `brain.md` → seção "Pilares de Conteúdo"
- Verificar se tópico do post se encaixa em algum pilar
- Pilar pode ser mencionado explicitamente ou implicitamente

**Feedback se falhar:**
```
❌ GATE 4.1 FALHOU: Post não alinhado com pilares

Pilares do founder (de brain.md):
1. [Pilar 1]
2. [Pilar 2]
3. [Pilar 3]

Tópico do post: [tópico identificado]

Problema:
Post não se relaciona claramente com nenhum dos pilares de conteúdo.

Sugestão de correção:

Opção A: Reescrever post para abordar um dos pilares
- Escolher pilar: [Pilar X]
- Ângulo sugerido: [como conectar tópico atual ao pilar]

Opção B: Escolher outro tópico alinhado aos pilares
- Tópicos sugeridos baseados em brain.md:
  1. [Tópico sugerido 1] (Pilar: [X])
  2. [Tópico sugerido 2] (Pilar: [Y])
```

### 4.2 Reflete Valores do Founder
- [ ] Post reflete valores/crenças do founder (definidos em brain.md)

**Como validar:**
- Ler valores em `brain.md` → seção "Valores e Crenças"
- Verificar se post reflete ou exemplifica algum valor
- Verificar se post NÃO contradiz valores

**Feedback se falhar:**
```
❌ GATE 4.2 FALHOU: Post não reflete valores do founder

Valores do founder (de brain.md):
1. [Valor 1]
2. [Valor 2]
3. [Valor 3]

Problema:
Post não reflete claramente nenhum valor ou contradiz valores.

Contradição identificada (se houver):
[Descrever contradição específica]

Sugestão de correção:
Revisar post para refletir valores:

Valor: [Valor X]
Como incorporar: [sugestão específica de como refletir esse valor no post]

Exemplo:
Valor: "Dados > opinião"
Como incorporar: Adicionar dados específicos (churn 15% → 5%, 6 meses)
```

**Resultado Gate 4:**
- ✅ **PASS** se alinhado com >= 1 pilar e reflete valores
- ❌ **FAIL** se não alinhado ou contradiz valores

---

## Quality Gate 5: Editorial

**Objetivo:** Validar qualidade editorial e conformidade com safe mode

**Critérios:** (3/3 devem passar)

### 5.1 Safe Mode Respeitado
- [ ] Post NÃO aborda tópicos de safe mode (definidos em brain.md)

**Como validar:**
- Ler safe mode em `brain.md` → seção "Safe Mode (Tópicos a Evitar)"
- Verificar se post menciona ou se relaciona a tópicos do safe mode
- Mesmo menção indireta = falha

**Feedback se falhar:**
```
❌ GATE 5.1 FALHOU: Safe mode violado

Tópicos de safe mode (de brain.md):
1. [Tópico 1]
2. [Tópico 2]
3. [Tópico 3]

Violação identificada:
Post aborda: [tópico de safe mode detectado]
Menção: [transcrever trecho relevante]

Problema:
Founder explicitamente evita esse tópico por [razão de brain.md].

Sugestão de correção:
Reescrever post evitando completamente esse tópico.

Alternativas de tópico:
1. [Tópico alternativo alinhado aos pilares]
2. [Tópico alternativo alinhado aos pilares]
```

### 5.2 Sem Erros de Português
- [ ] Post não tem erros de gramática, ortografia ou digitação

**Como validar:**
- Ler post cuidadosamente
- Verificar:
  - Ortografia (typos)
  - Concordância (verbal, nominal)
  - Pontuação adequada
  - Acentuação correta

**Feedback se falhar:**
```
❌ GATE 5.2 FALHOU: Erros de português detectados

Erros encontrados:
1. Linha [X]: "[erro]" → deveria ser "[correção]"
2. Linha [Y]: "[erro]" → deveria ser "[correção]"

Tipos de erros:
- [X] Ortografia/typos
- [X] Concordância verbal/nominal
- [X] Pontuação inadequada
- [X] Acentuação incorreta

Sugestão de correção:
Revisar e corrigir cada erro listado acima.
```

### 5.3 Tom Profissional (mas Conversacional)
- [ ] Post mantém tom profissional sem ser corporativo/formal demais

**Como validar:**
- Verificar que post:
  - NÃO usa gírias excessivas ou linguagem muito informal
  - NÃO soa corporativo/press release
  - Soa como conversa entre profissionais
  - Usa "eu/meu" (pessoal) não "nós/nossa empresa" (corporativo)

**Feedback se falhar:**
```
❌ GATE 5.3 FALHOU: Tom inadequado

Problema identificado: [muito informal OU muito corporativo]

Trechos problemáticos:
1. "[trecho]" - [problema: gíria excessiva/corporativês]
2. "[trecho]" - [problema: gíria excessiva/corporativês]

Sugestão de correção:

Se muito informal:
- Substituir gírias por linguagem conversacional mas profissional
- Manter autenticidade sem perder credibilidade

Se muito corporativo:
- Trocar "nós/nossa empresa" por "eu/meu projeto"
- Remover jargão corporativo
- Adicionar vulnerabilidade/pessoalidade

Exemplo:
❌ "Nossa empresa implementou uma estratégia inovadora"
✅ "Mudei completamente como faço customer success"
```

**Resultado Gate 5:**
- ✅ **PASS** se safe mode OK, sem erros, tom adequado
- ❌ **FAIL** se qualquer critério falha

---

## Resumo de Aprovação

### Checklist Final

Para post ser aprovado, TODOS os 5 gates devem passar:

- [ ] **Gate 1: Structure** (4/4 critérios)
  - [ ] 1.1 Gancho presente e impactante
  - [ ] 1.2 Corpo estruturado (3-8 parágrafos)
  - [ ] 1.3 CTA conversacional presente
  - [ ] 1.4 Formatação LinkedIn-friendly

- [ ] **Gate 2: Length** (2/2 critérios)
  - [ ] 2.1 >= 800 caracteres
  - [ ] 2.2 <= 1300 caracteres

- [ ] **Gate 3: Authenticity** (3/3 critérios)
  - [ ] 3.1 Voice score >= 8.5
  - [ ] 3.2 Zero chavões de IA/coach
  - [ ] 3.3 Específico (não genérico)

- [ ] **Gate 4: Brand Alignment** (2/2 critérios)
  - [ ] 4.1 Alinhado com >= 1 pilar
  - [ ] 4.2 Reflete valores do founder

- [ ] **Gate 5: Editorial** (3/3 critérios)
  - [ ] 5.1 Safe mode respeitado
  - [ ] 5.2 Sem erros de português
  - [ ] 5.3 Tom profissional mas conversacional

**Total de Critérios:** 14/14 devem passar

---

## Decisão Final

### ✅ Post APROVADO

**Condição:** TODOS os 14 critérios passaram (100%)

**Ações:**
1. Marcar post como "aprovado"
2. Salvar em `docs/content/linkedin/YYYY-MM-DD-{slug}.md`
3. Gerar log de sucesso:
```
✅ POST APROVADO - Pronto para Publicação

Título: [título do post]
Data: [data]
Comprimento: [X] caracteres
Voice Score: [X.X]/10
Pilar: [pilar relacionado]

Quality Gates:
✅ Gate 1: Structure (4/4)
✅ Gate 2: Length (2/2)
✅ Gate 3: Authenticity (3/3)
✅ Gate 4: Brand Alignment (2/2)
✅ Gate 5: Editorial (3/3)

Total: 14/14 critérios (100%)

Arquivo salvo: docs/content/linkedin/[filename].md
Status: pronto-para-publicar
```

---

### ❌ Post REJEITADO

**Condição:** QUALQUER critério falhou (< 100%)

**Ações:**
1. Marcar post como "revisão-necessária"
2. NÃO salvar em docs/content/
3. Gerar relatório de feedback detalhado:
```
❌ POST REJEITADO - Revisão Necessária

Título: [título do post]
Data: [data]

Quality Gates:
[✅/❌] Gate 1: Structure ([X]/4)
[✅/❌] Gate 2: Length ([X]/2)
[✅/❌] Gate 3: Authenticity ([X]/3)
[✅/❌] Gate 4: Brand Alignment ([X]/2)
[✅/❌] Gate 5: Editorial ([X]/3)

Total: [X]/14 critérios ([X]%)

PROBLEMAS IDENTIFICADOS:
---

[Transcrever feedback específico de cada gate que falhou]

PRÓXIMOS PASSOS:
---

1. Revisar post seguindo sugestões de correção acima
2. Re-executar quality gates
3. Repetir até atingir 14/14 critérios (100%)
```

4. Iniciar loop de revisão:
   - Retornar para Step 3 (Gerar 3 Variações) OU
   - Retornar para Step 4 (Validar Voz) OU
   - Retornar para Step 2 (Carregar Brain.md) se problema é de voice/autenticidade

---

## Notas de Uso

### Quando Executar Esta Checklist

Esta checklist é executada no **Step 5 (Aplicar Quality Gates)** do workflow `gerar-post-linkedin.md`.

**Pré-requisitos:**
- Post já foi gerado (Step 3)
- Voice já foi validada por Beatriz (Step 4)
- Brain.md está carregado (Step 2)

### Ordem de Execução dos Gates

Executar na ordem sequencial:
1. **Gate 1: Structure** (rápido, estrutural)
2. **Gate 2: Length** (rápido, quantitativo)
3. **Gate 3: Authenticity** (médio, já tem voice score do Step 4)
4. **Gate 4: Brand Alignment** (médio, requer brain.md)
5. **Gate 5: Editorial** (médio, final polish)

**Rationale da ordem:**
- Gates estruturais/quantitativos primeiro (fail fast)
- Gates qualitativos depois (requerem mais contexto)

### Stop-on-First-Failure

**Estratégia recomendada:**
- Executar gates sequencialmente
- Se gate falha, parar e gerar feedback imediatamente
- NÃO executar gates restantes (economiza tempo)

**Exceção:**
- Se preferir feedback completo, executar todos os 5 gates mesmo se alguns falham
- Gerar relatório consolidado com TODOS os problemas
- Útil para correção em batch

### Troubleshooting

**Problema:** Post sempre falha no Gate 3.1 (Voice < 8.5)

**Solução:**
1. Voltar para Step 2 (Carregar 100% brain.md)
2. Re-gerar variação usando Deep Mode
3. Comparar vocabulário/tom com exemplos de brain.md
4. Se persistir, revisar brain.md (pode estar incompleto)

---

**Problema:** Post sempre falha no Gate 4.1 (Não alinhado com pilares)

**Solução:**
1. Revisar pilares em brain.md
2. Elicitar tópico novamente (Step 1) garantindo alinhamento com pilar
3. Se tópico é importante mas não está em pilar, considerar adicionar novo pilar ao brain.md

---

**Problema:** Post passa em tudo mas founder não gosta

**Solução:**
- Quality gates validam critérios objetivos
- Gosto pessoal é subjetivo e tem precedência
- Se founder rejeita, considerar:
  1. Ajustar brain.md para capturar preferência
  2. Adicionar critério novo aos quality gates
  3. Aceitar que alguns posts serão rejeitados manualmente (OK)

---

## Changelog

| Versão | Data | Mudanças | Autor |
|--------|------|----------|-------|
| 1.0.0 | 2025-10-22 | Checklist inicial com 5 quality gates (14 critérios totais) | dev-agent |

---

## Referências

- **Usado por:** `.content-foundry/tasks/gerar-post-linkedin.md` (Step 5)
- **Requer:** `.content-foundry/agents/voice-validator.md` (Beatriz)
- **Requer:** `docs/brain.md` (pilares, valores, safe mode)
- **Relacionado:** `.content-foundry/templates/linkedin-post.yaml` (estrutura)
