# Guia: Primeiro Post End-to-End

**Versão:** 1.0.0
**Data:** 2025-10-22
**Story:** 03.018
**Epic:** EPIC-03

---

## Objetivo

Este guia orienta a execução completa do **Workflow #3 (Produção Express)** para gerar e validar o primeiro post LinkedIn do founder end-to-end.

**Ao final deste guia, você terá:**
- ✅ Primeiro post LinkedIn gerado
- ✅ Voice score >= 8.5
- ✅ Quality gates 14/14 (100%)
- ✅ Post salvo em `docs/content/linkedin/`
- ✅ Validação que sistema funciona completo
- ✅ Confiança para publicar

---

## Pré-Requisitos

Antes de começar, verifique que você completou:

### Épico 02 (Fundação)
- [x] Brain.md v1.0 criado e completo (>= 80% completude)
- [x] Elena (Elicitation Expert) implementada
- [x] Beatriz (Voice Validator) implementada
- [x] Workflow #1 (Onboarding) executado com sucesso

### Épico 03 (Produção de Conteúdo)
- [x] Lucas (LinkedIn Writer) implementado
- [x] Task `gerar-post-linkedin.md` criada
- [x] Template `linkedin-post.yaml` criado
- [x] Quality Gates implementados (5 gates, 14 critérios)
- [x] Workflow #3 (Produção Express) documentado
- [x] Schema de posts salvos definido

### Estado Atual do Sistema
- [x] `.content-foundry/state.yaml` existe
- [x] `docs/content/linkedin/` existe (ou será criado)
- [x] Você tem ~20 minutos disponíveis
- [x] Você tem um tópico/tema em mente

**Se algum pré-requisito falha, pare e complete-o primeiro.**

---

## Duração Estimada

**15-20 minutos** (pode chegar a 25 min com refinamentos)

**Breakdown:**
- Step 1 (Inicialização): 2 min
- Step 2 (Geração): 8-10 min
- Step 3 (Validação): 2 min
- Step 4 (Quality Gates): 3-5 min

---

## Preparação (5 min antes de começar)

### 1. Escolha Seu Tópico

Pense em um tópico/tema que você quer abordar. Deve ser:
- ✅ Específico (não vago tipo "SaaS" ou "Empreendedorismo")
- ✅ Baseado em experiência real (não teoria)
- ✅ Alinhado com seus pilares de conteúdo
- ✅ Algo que você se sente confortável publicando

**Exemplos de tópicos bons:**
- "Como reduzi churn de 15% para 5% em 6 meses"
- "Por que demiti meu primeiro hire"
- "3 sinais de product-market fit que eu estava ignorando"
- "O erro que custou R$ 50k (e como não repetir)"

**Exemplos de tópicos ruins:**
- "SaaS" (muito vago)
- "Dicas de empreendedorismo" (genérico demais)
- "Como ser feliz" (não relacionado aos pilares)

### 2. Revise Seu Brain.md

Leia rapidamente seu `docs/brain.md` para relembrar:
- Seus 3-5 pilares de conteúdo
- Seus valores e crenças
- Tópicos de safe mode (evitar)
- Seu tom e vocabulário característico

### 3. Reserve Tempo Ininterrupto

- Silencie notificações
- Evite interrupções
- Tenha água/café por perto
- Abra terminal/editor pronto

---

## Execução: Workflow #3 Produção Express

### Step 1: Inicialização (2 min)

**Comandar:** `/cf-workflow producao-express`

*Nota: Como estamos em MVP config-based, vamos simular este comando manualmente ativando Carlos e depois Lucas.*

#### 1.1 Carlos Pergunta Canal

**Carlos:** "Qual canal de conteúdo? (LinkedIn assumido, pressione Enter ou digite outro)"

**Você responde:** `LinkedIn` ou apenas Enter

#### 1.2 Carlos Elicita Tópico

**Carlos:** "Qual tópico ou tema você quer abordar neste post?"

**Você responde:** [Seu tópico escolhido na preparação]

**Exemplo:** "Como reduzi churn de 15% para 5% em 6 meses"

#### 1.3 Carlos Verifica Alinhamento

Carlos verificará:
- ✅ Tópico tem >= 3 palavras
- ✅ Tópico alinha com algum pilar
- ✅ Tópico não foi abordado nos últimos 7 dias

Carlos confirma:
> "✅ Tópico confirmado: '{seu tópico}'
> Pilar identificado: '{pilar relacionado}'
> Ativando Lucas (LinkedIn Writer)..."

**Duração:** 2 min ✅

---

### Step 2: Geração (8-10 min)

Lucas (LinkedIn Writer) agora assume.

**Lucas:** "Olá! Vou criar 3 variações de post sobre '{seu tópico}'. Primeiro, preciso entender melhor o contexto."

#### 2.1 Elicitação de Contexto (3 min)

Lucas faz **4 perguntas:**

---

**Pergunta 1: Contexto Específico**

**Lucas:** "Qual o contexto específico desse tópico? (ex: situação vivida, problema que resolveu, insight que teve)"

**Você responde:** [Contexto detalhado com dados/situação real]

**Exemplo:** "Tinha 47 clientes pagantes em 2019. Em 6 meses, 15 cancelaram (churn 32%). Conversei pessoalmente com cada um que cancelou, 30-45 min cada."

---

**Pergunta 2: Ângulo/Narrativa**

**Lucas:** "Qual ângulo você quer dar a esse post?"

**Opções:**
- [ ] A) Lição aprendida (compartilhar aprendizado)
- [ ] B) Erro admitido (vulnerabilidade)
- [ ] C) Provocação (desafiar crença comum)
- [ ] D) Framework/processo (ensinar método)
- [ ] E) História completa (setup → ação → resultado)

**Você responde:** [Letra da opção]

**Exemplo:** "B - Erro admitido. Eu estava focando 100% em aquisição e ignorando retenção."

---

**Pergunta 3: CTA Desejado**

**Lucas:** "Qual CTA você quer no final?"

**Opções:**
- [ ] A) Pergunta aberta (ex: "Qual foi seu maior erro?")
- [ ] B) Convite à conversa (ex: "Comenta aí se passou por isso")
- [ ] C) Reflexão (ex: "Às vezes a melhor aquisição é não perder quem está dentro")
- [ ] D) Outro: [especificar]

**Você responde:** [Letra da opção ou especificação]

**Exemplo:** "A - Pergunta aberta: 'Qual foi seu maior erro ao escalar customer success?'"

---

**Pergunta 4: Pilar Relacionado**

**Lucas:** "Confirme o pilar de conteúdo:"

**Opções (de seu brain.md):**
- [ ] Pilar 1: [nome]
- [ ] Pilar 2: [nome]
- [ ] Pilar 3: [nome]
- [ ] Não tenho certeza (Lucas sugere)

**Você responde:** [Número do pilar]

**Exemplo:** "2 - Customer Success e Retenção"

---

#### 2.2 Lucas Carrega Brain.md (1 min)

**Lucas:** "Carregando 100% brain.md... (Deep Mode)"

Lucas carrega:
- Perfil completo
- Histórias formativas
- Voz e tom
- Pilares
- Valores
- Safe mode
- Vocabulário

**Lucas:** "✅ Brain.md carregado (100%)"

---

#### 2.3 Lucas Gera 3 Variações (4-6 min)

**Lucas:** "Gerando 3 variações de post..."

Lucas gera usando template `linkedin-post.yaml`:

**Variação A: Direta e Factual**
- Tom objetivo, sem rodeios
- Estrutura: Gancho → 3-4 pontos → CTA
- Comprimento: 800-1100 caracteres

**Variação B: Storytelling Completo**
- Tom narrativo, vulnerável
- Estrutura: Gancho → Contexto → Ação → Resultado → CTA
- Comprimento: 1000-1300 caracteres

**Variação C: Provocativa**
- Tom opinativo, desafia status quo
- Estrutura: Gancho polêmico → Justificativa → CTA desafiador
- Comprimento: 900-1200 caracteres

**Lucas apresenta as 3 variações:**

```
=== VARIAÇÃO A: DIRETA E FACTUAL ===

[Conteúdo do post A]

Comprimento: 982 caracteres

===================================

=== VARIAÇÃO B: STORYTELLING COMPLETO ===

[Conteúdo do post B]

Comprimento: 1.127 caracteres

===================================

=== VARIAÇÃO C: PROVOCATIVA ===

[Conteúdo do post C]

Comprimento: 1.053 caracteres

===================================
```

**Lucas:** "Qual variação você prefere? (A, B ou C) Ou quer que eu refine alguma?"

**Você responde:** [Letra da variação preferida]

**Exemplo:** "B - Gostei mais do storytelling completo"

**Duração:** 8-10 min ✅

---

### Step 3: Validação de Voz (2 min)

Beatriz (Voice Validator) agora assume.

**Beatriz:** "Vou validar a voz da Variação B..."

#### 3.1 Beatriz Valida 10 Critérios

Beatriz avalia:
1. **Vocabulário** (0-10): Alinhado com brain.md?
2. **Tom** (0-10): Consistente com founder?
3. **Estrutura** (0-10): Similar aos exemplos?
4. **Chavões IA** (0-10): Zero chavões?
5. **Especificidade** (0-10): Dados/contexto presentes?
6. **Histórias** (0-10): Usa histórias quando apropriado?
7. **Valores** (0-10): Reflete valores?
8. **Safe Mode** (0-10): Respeita tópicos a evitar?
9. **Pilares** (0-10): Alinhado com pilares?
10. **Emoção** (0-10): Emoção genuína?

**Voice Score = média dos 10 critérios**

---

**Beatriz apresenta resultado:**

```
=== VOICE VALIDATION - VARIAÇÃO B ===

1. Vocabulário: 9.0/10 ✅
2. Tom: 8.5/10 ✅
3. Estrutura: 9.0/10 ✅
4. Chavões IA: 10/10 ✅ (zero chavões detectados)
5. Especificidade: 9.0/10 ✅
6. Histórias: 9.0/10 ✅
7. Valores: 8.5/10 ✅
8. Safe Mode: 10/10 ✅
9. Pilares: 8.0/10 ✅
10. Emoção: 7.5/10 ✅

VOICE SCORE: 8.7/10 ✅

Status: APROVADA (threshold 8.5)
```

---

**Se voice score < 8.5:**

Beatriz fornece feedback específico:
- Critérios com score baixo
- Sugestões de refinamento
- Lucas re-gera variação ajustada
- Beatriz valida novamente (máximo 2 tentativas)

**Se voice score >= 8.5:**

Beatriz confirma:
> "✅ Variação aprovada! Voice score: 8.7/10
> Prosseguindo para quality gates..."

**Duração:** 2 min ✅

---

### Step 4: Quality Gates e Salvamento (3-5 min)

Ana (Brand Guardian) assume. *Nota: Ana não está implementada, então quality gates são executados manualmente por enquanto.*

**Ana:** "Aplicando 5 quality gates..."

#### 4.1 Aplicar Quality Gates (2-3 min)

Ana executa checklist `pronto-para-publicar-linkedin.md`:

**Gate 1: Structure (4 critérios)**
- [x] Gancho presente e impactante
- [x] Corpo estruturado (3-8 parágrafos)
- [x] CTA conversacional
- [x] Formatação LinkedIn-friendly

**Gate 2: Length (2 critérios)**
- [x] >= 800 caracteres
- [x] <= 1300 caracteres

**Gate 3: Authenticity (3 critérios)**
- [x] Voice score >= 8.5 ✅ (já validado)
- [x] Zero chavões
- [x] Específico (dados, contexto)

**Gate 4: Brand Alignment (2 critérios)**
- [x] Alinhado com >= 1 pilar
- [x] Reflete valores

**Gate 5: Editorial (3 critérios)**
- [x] Safe mode respeitado
- [x] Sem erros de português
- [x] Tom profissional mas conversacional

**Total: 14/14 critérios**

---

**Ana apresenta resultado:**

```
=== QUALITY GATES ===

✅ Gate 1: Structure (4/4)
✅ Gate 2: Length (2/2)
✅ Gate 3: Authenticity (3/3)
✅ Gate 4: Brand Alignment (2/2)
✅ Gate 5: Editorial (3/3)

TOTAL: 14/14 (100%) ✅

DECISÃO: POST APROVADO
```

---

**Se qualquer gate falha:**

Ana gera relatório de feedback:
- Gates que falharam e porquê
- Sugestões de correção
- Opções: refinar, voltar Step 2, cancelar

**Se todos gates passam (100%):**

Ana prossegue para salvamento.

---

#### 4.2 Gerar Filename (30 seg)

**Ana:** "Gerando filename..."

Ana gera slug a partir do título:
- Título: "Como Reduzi Churn de 15% para 5% em 6 Meses"
- Slug: `reduzi-churn-15-para-5`
- Filename: `linkedin-2025-10-22-reduzi-churn-15-para-5.md`

**Ana:** "Filename: `linkedin-2025-10-22-reduzi-churn-15-para-5.md`"

---

#### 4.3 Salvar Post (1 min)

**Ana:** "Salvando post..."

Ana salva arquivo com:
- **Frontmatter YAML** (17 campos obrigatórios + workflow metadata)
- **Body Markdown** (conteúdo completo do post)
- **Notas de Produção** (contexto, voice breakdown, quality gates, insights)

Local: `docs/content/linkedin/linkedin-2025-10-22-reduzi-churn-15-para-5.md`

---

#### 4.4 Atualizar State (30 seg)

Ana atualiza `.content-foundry/state.yaml`:
- Adiciona post a `posts_recentes`
- Atualiza `last_post`

---

#### 4.5 Gerar Log (30 seg)

Ana gera log em `.content-foundry/logs/workflow-03-20251022145500.log`:

```
=== Workflow #3: Produção Express ===
Data: 2025-10-22T14:55:00Z
Status: SUCCESS

Step 1: Inicialização (2 min)
- Canal: linkedin
- Tópico: Como reduzi churn de 15% para 5%
- Pilar: Customer Success e Retenção

Step 2: Geração (9 min)
- Contexto elicitado: OK (4 perguntas)
- Brain.md carregado: 100%
- Variações geradas: 3
- Variação escolhida: B (Storytelling)

Step 3: Validação (2 min)
- Variação B: 8.7/10 ✅ (aprovada)

Step 4: Quality Gates (4 min)
- 14/14 critérios (100%) ✅

Output:
- Arquivo: linkedin-2025-10-22-reduzi-churn-15-para-5.md
- Status: pronto-para-publicar
- Comprimento: 1.127 caracteres
- Voice score: 8.7/10

Duração Total: 17 min ✅

=== FIM ===
```

**Duração:** 3-5 min ✅

---

### Step 5: Confirmação ao Founder

**Ana apresenta mensagem final:**

```
✅ POST LINKEDIN CRIADO COM SUCESSO!

Título: Como Reduzi Churn de 15% para 5% em 6 Meses
Arquivo: docs/content/linkedin/linkedin-2025-10-22-reduzi-churn-15-para-5.md

Quality Gates: 14/14 (100%) ✅
Voice Score: 8.7/10 ✅

Duração Total: 17 min

Status: Pronto para Publicar

PRÓXIMOS PASSOS:
1. Revisar post salvo (abrir arquivo acima)
2. Fazer ajustes finais se necessário
3. Copiar conteúdo para LinkedIn
4. Publicar
5. Atualizar arquivo (publicado: true, url_linkedin: "...")

Arquivo salvo em:
docs/content/linkedin/linkedin-2025-10-22-reduzi-churn-15-para-5.md

Log completo em:
.content-foundry/logs/workflow-03-20251022145500.log

🎉 PARABÉNS! Seu primeiro post Content Foundry está pronto!
```

---

## Validação Pós-Execução

Agora que o workflow terminou, valide manualmente:

### 1. Abrir Arquivo Salvo

```bash
cat docs/content/linkedin/linkedin-2025-10-22-reduzi-churn-15-para-5.md
```

ou abra no editor de sua escolha.

### 2. Verificar Frontmatter

Confira que frontmatter contém:
- [x] titulo, data_criacao, canal, pilar, topico
- [x] validacao (voice_score, voice_validator, data_validacao)
- [x] quality_gates (5 gates + total 14/14)
- [x] status: "pronto-para-publicar"
- [x] versao: "1.0.0"

### 3. Ler Post Completo

Leia o conteúdo do post (body) e pergunte-se:

**Voice Check:**
- [ ] Isso soa como EU?
- [ ] Usaria essas palavras em uma conversa?
- [ ] Histórias/dados são reais (não inventados)?
- [ ] Sinto que posso publicar sem vergonha?

**Content Check:**
- [ ] Gancho chama minha atenção?
- [ ] Corpo desenvolve ideia claramente?
- [ ] CTA faz sentido?
- [ ] Comprimento adequado (não muito longo/curto)?

**Brand Check:**
- [ ] Alinhado com meus valores?
- [ ] Representa meu pilar de conteúdo?
- [ ] Não toca em safe mode topics?

### 4. Fazer Ajustes (Se Necessário)

Se você quer ajustar algo:
- Edite o arquivo diretamente
- Mantenha comprimento 800-1300 caracteres
- Não adicione chavões
- Salve alterações

### 5. Aprovar Post

Se estiver satisfeito:
- Marque mentalmente como "✅ Aprovado"
- Copie conteúdo do body (sem frontmatter)
- Cole no LinkedIn
- Publique!

### 6. Atualizar Metadata Após Publicação

Após publicar no LinkedIn:

1. Copie URL do post publicado
2. Edite arquivo:
   ```yaml
   publicado: true
   data_publicacao: "2025-10-23T10:00:00Z"
   url_linkedin: "https://www.linkedin.com/posts/seu-username_..."
   ```
3. Salve

### 7. Monitorar Métricas (Opcional)

Após 24-48h, atualize métricas no arquivo:
```yaml
metricas:
  views: 1523
  likes: 87
  comments: 12
  shares: 5
  ultima_atualizacao: "2025-10-24T10:00:00Z"
```

---

## Checklist de Validação Final

Use esta checklist para confirmar que TUDO funcionou:

### Workflow Execution
- [ ] Step 1 (Inicialização) completou em ~2 min
- [ ] Step 2 (Geração) completou em 8-10 min
- [ ] Step 3 (Validação) completou em ~2 min
- [ ] Step 4 (Quality Gates) completou em 3-5 min
- [ ] Duração total <= 20 min

### Post Quality
- [ ] Voice score >= 8.5
- [ ] Quality gates 14/14 (100%)
- [ ] Comprimento 800-1300 caracteres
- [ ] Estrutura LinkedIn-friendly
- [ ] Zero chavões detectados
- [ ] Safe mode respeitado

### Files Created
- [ ] Post salvo em `docs/content/linkedin/YYYY-MM-DD-{slug}.md`
- [ ] Log salvo em `.content-foundry/logs/workflow-03-TIMESTAMP.log`
- [ ] State.yaml atualizado

### Founder Approval
- [ ] Founder leu post completo
- [ ] Founder aprova voz/tom
- [ ] Founder aprova conteúdo
- [ ] Founder se sente confortável publicando
- [ ] Founder está satisfeito com duração (<= 20 min)

### System Validation
- [ ] Todos componentes funcionaram (Lucas, Beatriz, quality gates)
- [ ] Nenhum erro crítico ocorreu
- [ ] Formato de arquivo está correto
- [ ] Naming convention seguida

**Se todos checkboxes: ✅ EPIC 03 COMPLETO!**

---

## Celebração! 🎉

**Se você chegou até aqui:**

Parabéns! Você acabou de:
- ✅ Completar Épico 03 (Produção de Conteúdo)
- ✅ Gerar seu primeiro post LinkedIn com Content Foundry
- ✅ Validar que sistema end-to-end funciona
- ✅ Ter post pronto para publicar com voice autêntica >= 8.5

**Isso significa:**
- Sistema de produção está operacional
- Voice está calibrada
- Quality gates estão funcionando
- Você pode repetir este processo para criar mais posts

**Próximos passos:**
1. Publique este primeiro post
2. Monitor métricas (engajamento)
3. Ajuste brain.md se necessário (baseado em feedback)
4. Gere mais posts usando Workflow #3
5. Expanda para outros canais (Twitter, blog, etc)

---

## Troubleshooting

### "Voice score < 8.5 após 2 tentativas"

**Possíveis causas:**
- Brain.md incompleto (< 80%)
- Tópico muito genérico
- Tópico não alinhado com pilares

**Soluções:**
- Volte para Workflow #1 e aprimore brain.md
- Escolha tópico mais específico
- Escolha tópico dentro dos pilares definidos

---

### "Quality gates sempre falham no mesmo gate"

**Gate 1 (Structure):** Variações muito longas ou sem quebras
- Solução: Revisar template linkedin-post.yaml

**Gate 3 (Authenticity):** Chavões não detectados na geração
- Solução: Fortalecer anti-chavões no Lucas

**Gate 4 (Brand):** Tópico não alinhado
- Solução: Escolher tópico dentro dos pilares

**Gate 5 (Editorial):** Safe mode não respeitado
- Solução: Revisar safe mode em brain.md

---

### "Workflow demora > 20 min"

**Causas:**
- Founder demora para responder perguntas
- Brain.md incompleto (múltiplas tentativas para atingir 8.5)
- Quality gates falhando repetidamente

**Soluções:**
- Prepare respostas antes de iniciar
- Complete brain.md adequadamente
- Escolha tópico alinhado com pilares

---

## Changelog

| Versão | Data | Mudanças | Autor |
|--------|------|----------|-------|
| 1.0.0 | 2025-10-22 | Guia inicial end-to-end criado | dev-agent |

---

## Referências

- `.content-foundry/workflows/03-producao-express.md`
- `.content-foundry/agents/linkedin-writer.md`
- `.content-foundry/agents/voice-validator.md`
- `.content-foundry/checklists/pronto-para-publicar-linkedin.md`
- `.content-foundry/schemas/post-schema.yaml`
