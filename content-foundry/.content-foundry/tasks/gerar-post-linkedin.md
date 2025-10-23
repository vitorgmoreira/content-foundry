# Task: Gerar Post LinkedIn

**Versão:** 1.0.0
**Última Atualização:** 2025-10-22
**Agente:** linkedin-writer (Lucas)

---

## Metadata

```yaml
task:
  id: "gerar-post-linkedin"
  nome: "Geração de Post LinkedIn"
  descricao: "Processo estruturado para gerar posts LinkedIn autênticos"
  duracao_estimada: "15-20 min"
  elicitar: true
  agente: "linkedin-writer"
  categoria: "producao"
  canal: "linkedin"

  output:
    tipo: "post-linkedin"
    formato: "markdown"
    localizacao: "docs/content/linkedin/"
    naming: "YYYY-MM-DD-{slug}.md"
```

---

## Visão Geral

Esta task define o processo completo de geração de um post LinkedIn autêntico, desde a elicitação do tópico até a validação final e salvamento.

**Filosofia:**
Não é sobre gerar qualquer post. É sobre gerar post que soa 100% como o founder.

**Duração:** 15-20 minutos
**Resultado:** Post LinkedIn aprovado (voice score >= 8.5) salvo em arquivo

---

## Passo 1: Elicitar Tópico e Contexto

**Duração:** 2-3 min
**Responsável:** Lucas (LinkedIn Writer)
**Objetivo:** Entender o que o founder quer comunicar

### Perguntas de Elicitação

**Pergunta 1: Tópico principal**
```
Sobre qual tópico você quer escrever?

Ex:
- Product-market fit
- Redução de churn
- Onboarding de clientes
- Lançamento de feature
```

**Pergunta 2: Contexto específico**
```
Existe algum contexto específico ou história que você quer usar?

Opções:
- Usar história do brain.md (Lucas sugere histórias relevantes)
- Compartilhar nova história (Lucas captura e usa)
- Sem história específica (Lucas escolhe a mais relevante)
```

**Pergunta 3: Ângulo desejado**
```
Qual ângulo você quer dar?

Opções:
- Lição/aprendizado
- Provocação/opinião forte
- Dados/números surpreendentes
- Processo/how-to
```

**Pergunta 4: Call-to-Action**
```
O que você quer que a audiência faça depois de ler?

Opções:
- Comentar com experiência deles
- Responder pergunta específica
- Compartilhar opinião
- Apenas refletir (sem CTA explícito)
```

### Output do Passo 1

```yaml
elicitacao:
  topico: "Product-market fit em SaaS B2B"
  contexto: "Usar história do churn de 15%"
  angulo: "Lição/aprendizado"
  cta_desejado: "Perguntar sobre experiência com churn"
  historia_sugerida: "historia-03"
  pilar_relacionado: "Product-Market Fit em SaaS B2B"
```

---

## Passo 2: Carregar 100% Brain.md (Deep Mode)

**Duração:** 1 min (automático)
**Responsável:** Lucas (LinkedIn Writer)
**Objetivo:** Garantir contexto completo para autenticidade

### Processo

1. **Carregar brain.md completo:**
   ```bash
   BRAIN_CONTENT=$(cat docs/brain.md)
   ```

2. **Extrair seções relevantes:**
   - Identificar pilar relacionado ao tópico
   - Buscar histórias conectadas
   - Capturar tom de voz
   - Verificar safe mode
   - Listar palavras específicas do founder

3. **Validar contexto:**
   - ✅ Brain.md existe e não está vazio
   - ✅ Tópico está nos pilares do founder
   - ✅ História relevante encontrada
   - ⚠️ Se tópico fora dos pilares → avisar founder

### Output do Passo 2

```yaml
contexto_carregado:
  brain_version: "1.0.0"
  total_historias: 7
  total_pilares: 4

  pilar_identificado:
    nome: "Product-Market Fit em SaaS B2B"
    autoridade: true
    experiencia: "Cresci SaaS de $0 a $500k ARR..."

  historias_relevantes:
    - id: "historia-03"
      titulo: "Quando bati 15% de churn..."
      relevancia: "alta"

  tom_voz:
    estilo: "Direto, sem rodeios"
    estrutura: "Frases curtas, parágrafos 2-3 linhas"
    palavras_chave: ["founders tech", "churn", "PLG", "bootstrapped"]

  safe_mode:
    topicos_evitar: ["vida pessoal/família", "política partidária"]
```

---

## Passo 3: Gerar 3 Variações de Post

**Duração:** 5-7 min
**Responsável:** Lucas (LinkedIn Writer)
**Objetivo:** Dar opções para o founder escolher

### Estrutura de Cada Variação

**Formato obrigatório:**

1. **Gancho (1-2 frases)**
   - Hook forte que para o scroll
   - Opções: dado surpreendente, provocação, afirmação forte

2. **Corpo (3-5 parágrafos)**
   - Contexto da história
   - Situação/problema
   - Resolução/ação tomada
   - Insight/lição

3. **Call-to-Action (1 frase)**
   - Pergunta específica ou convite ao engajamento
   - Não genérico ("o que você acha?")

**Comprimento:**
- Mínimo: 800 caracteres
- Máximo: 1300 caracteres
- Ideal: 1000-1200 caracteres

**Formato LinkedIn-friendly:**
- Parágrafos curtos (2-3 linhas máximo)
- Quebras de linha para respiração
- Uso de números quando apropriado
- Sem emojis excessivos (máximo 2-3)

### As 3 Variações

**Variação A: Direta e Factual**
- Foco em números e dados
- Tom analítico
- Estrutura: problema → solução → resultado

**Variação B: Storytelling Completo**
- Foco na narrativa
- Tom emocional mas profissional
- Estrutura: contexto → jornada → lição

**Variação C: Provocativa**
- Foco em opinião/perspectiva
- Tom provocador mas respeitoso
- Estrutura: afirmação forte → justificativa → convite

### Output do Passo 3

```markdown
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

VARIAÇÃO A - DIRETA E FACTUAL

Churn de 15% quase matou meu SaaS em 2021. Tinha 8 meses de runway.

Liguei para os 23 clientes que cancelaram naquela semana. Todos. Conversa de 30-40min cada.

Padrão descoberto? Não era preço. Não era feature. Era expectativa.

Eu prometi "resultado em 30 dias" no signup. Realidade? 90 dias.

Mudei UMA frase: "Primeiros resultados em 60-90 dias".

Churn caiu para 5% em 2 meses.

Lição: Promessa < Entrega = Churn. Sempre.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Você já reduziu churn mudando expectativa ao invés de features?

[1035 caracteres]

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

VARIAÇÃO B - STORYTELLING COMPLETO

[... conteúdo ...]

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

VARIAÇÃO C - PROVOCATIVA

[... conteúdo ...]

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Qual variação você prefere?
[A] [B] [C] [Gerar mais variações]
```

---

## Passo 4: Validar Voz (Beatriz >= 8.5)

**Duração:** 3-5 min
**Responsável:** Beatriz (Voice Validator)
**Objetivo:** Garantir autenticidade antes de aprovar

### Processo

1. **Founder escolhe variação preferida**

2. **Lucas chama Beatriz:**
   ```bash
   /cf-chamar-agente voice-validator
   *validar-voz {variacao_escolhida}
   ```

3. **Beatriz avalia 10 critérios:**
   - Vocabulário
   - Tom
   - Estrutura
   - Chavões IA
   - Especificidade
   - Histórias
   - Valores
   - Safe Mode
   - Pilares
   - Emoção

4. **Score calculado:**
   - Total: 0.0 a 10.0
   - Threshold: >= 8.5

5. **Decisão:**
   - >= 8.5: ✅ Aprovado → Passo 5
   - < 8.5: ❌ Reprovado → Revisar e re-validar

### Output do Passo 4

```yaml
validacao_voz:
  variacao_escolhida: "A"
  data: "2025-10-22T15:30:00Z"

  score:
    total: 8.7
    status: "aprovado"

  breakdown:
    vocabulario: 1.0
    tom: 1.0
    estrutura: 0.9
    chavoes_ia: 1.0
    especificidade: 1.0
    historias: 1.0
    valores: 0.8
    safe_mode: 1.0
    pilares: 1.0
    emocao: 0.9

  recomendacao:
    decisao: "aprovar"
    observacoes: |
      Post extremamente autêntico. Voice fidelity alta.
      Pequeno ajuste no critério "valores" mas não impacta qualidade geral.
```

**Se reprovado (< 8.5):**

```yaml
validacao_voz:
  score:
    total: 8.2
    status: "reprovado"

  problemas_identificados:
    - criterio: "chavoes_ia"
      score: 0.5
      problema: "Usa 'mergulhar fundo' no parágrafo 3"
      sugestao: "Remover ou substituir por expressão do founder"

    - criterio: "especificidade"
      score: 0.7
      problema: "Falta contexto sobre 'clientes que cancelaram'"
      sugestao: "Adicionar número específico (ex: 23 clientes)"

  acao_necessaria: "revisar_e_revalidar"
```

---

## Passo 5: Aplicar Quality Gates (5 Layers)

**Duração:** 2-3 min
**Responsável:** Lucas (LinkedIn Writer)
**Objetivo:** Validação final antes de salvar

### Layer 1: Estrutura

- [ ] Gancho presente (1-2 frases)?
- [ ] Corpo com história/contexto (3-5 parágrafos)?
- [ ] CTA específico (não genérico)?
- [ ] Comprimento dentro do range (800-1300 caracteres)?

### Layer 2: Conteúdo

- [ ] História do brain.md usada (ou nova história capturada)?
- [ ] Pilar do founder identificado?
- [ ] Dados/números específicos presentes?
- [ ] Insight acionável presente?

### Layer 3: Voz

- [ ] Voice score >= 8.5?
- [ ] Tom consistente com brain.md?
- [ ] Palavras do founder presentes?
- [ ] Estrutura de frase alinhada (curta/longa)?

### Layer 4: Safe Mode

- [ ] Nenhum tópico proibido mencionado?
- [ ] Tópicos "geralmente-evita" justificados (se presentes)?
- [ ] Nenhum dado sensível exposto?

### Layer 5: LinkedIn Best Practices

- [ ] Parágrafos curtos (2-3 linhas)?
- [ ] Quebras de linha para respiração?
- [ ] Primeiro parágrafo forte (hook)?
- [ ] CTA no final?
- [ ] Sem wall of text?

### Output do Passo 5

```yaml
quality_gates:
  layer1_estrutura: "pass"
  layer2_conteudo: "pass"
  layer3_voz: "pass"
  layer4_safe_mode: "pass"
  layer5_linkedin: "pass"

  resultado_final: "aprovado"

  estatisticas:
    caracteres: 1035
    palavras: 187
    paragrafos: 7
    frases_por_paragrafo: "1-2"
    gancho: "Churn de 15% quase matou meu SaaS"
    cta: "Você já reduziu churn mudando expectativa?"
```

**Se algum layer falha:**
- Identificar problema específico
- Corrigir
- Re-validar layers afetados

---

## Passo 6: Salvar Post Aprovado

**Duração:** 1-2 min
**Responsável:** Lucas (LinkedIn Writer)
**Objetivo:** Persistir post aprovado para publicação

### Processo

1. **Gerar slug:**
   - Pegar primeiras 3-4 palavras do gancho
   - Lowercase + hífens
   - Ex: "churn-15-quase-matou-saas"

2. **Gerar nome do arquivo:**
   - Formato: `YYYY-MM-DD-{slug}.md`
   - Ex: `2025-10-22-churn-15-quase-matou-saas.md`

3. **Criar frontmatter:**
   ```yaml
   ---
   titulo: "Como Reduzi Churn de 15% para 5% em 2 Meses"
   data_criacao: "2025-10-22T15:35:00Z"
   canal: "linkedin"
   formato: "post"
   pilar: "Product-Market Fit em SaaS B2B"
   historia_usada: "historia-03"

   validacao:
     voice_score: 8.7
     data_validacao: "2025-10-22T15:30:00Z"
     validador: "voice-validator"

   quality_gates:
     estrutura: "pass"
     conteudo: "pass"
     voz: "pass"
     safe_mode: "pass"
     linkedin: "pass"

   estatisticas:
     caracteres: 1035
     palavras: 187
     paragrafos: 7

   status: "rascunho"
   publicado: false
   url_linkedin: null
   ---
   ```

4. **Adicionar conteúdo:**
   ```markdown
   [FRONTMATTER ACIMA]

   {CONTEÚDO DO POST}
   ```

5. **Salvar arquivo:**
   - Path: `docs/content/linkedin/2025-10-22-churn-15-quase-matou-saas.md`
   - Permissions: 644

6. **Confirmar salvamento:**
   ```
   ✅ Post salvo com sucesso!

   Arquivo: docs/content/linkedin/2025-10-22-churn-15-quase-matou-saas.md

   Status: Rascunho
   Voice score: 8.7/10

   Próximos passos:
   1. Revisar post no arquivo
   2. Copiar para LinkedIn
   3. Publicar
   4. Atualizar campo 'publicado: true' no frontmatter
   ```

### Output do Passo 6

```yaml
salvamento:
  arquivo: "docs/content/linkedin/2025-10-22-churn-15-quase-matou-saas.md"
  path_completo: "/Users/.../docs/content/linkedin/2025-10-22-churn-15-quase-matou-saas.md"
  tamanho_bytes: 1842
  criado_em: "2025-10-22T15:35:00Z"

  metadata:
    titulo: "Como Reduzi Churn de 15% para 5% em 2 Meses"
    pilar: "Product-Market Fit em SaaS B2B"
    voice_score: 8.7
    status: "rascunho"
```

---

## Validações Globais

Além das validações em cada passo, a task toda deve garantir:

### Validação 1: Voice Score >= 8.5

**O que:** Score final de autenticidade de voz
**Como:** Beatriz avalia 10 critérios
**Threshold:** >= 8.5/10
**Ação se falha:** Revisar e re-validar até atingir 8.5

### Validação 2: Sem Chavões

**O que:** Zero chavões de IA ou coach
**Como:** Scan automático + validação Beatriz
**Lista proibida:** "mergulhar fundo", "mudar o jogo", "no final do dia", etc
**Ação se falha:** Reescrever trecho com chavão

### Validação 3: Safe Mode Respeitado

**O que:** Nenhum tópico proibido mencionado
**Como:** Checagem contra `safe_mode.topicos_evitar` do brain.md
**Níveis:**
- "nunca" → Não mencionar de jeito nenhum
- "geralmente-evita" → Mencionar só se contexto forte

**Ação se falha:** Remover menção ou reescrever

### Validação 4: Estrutura Correta

**O que:** Post tem gancho + corpo + CTA
**Como:** Checagem automática de estrutura
**Componentes obrigatórios:**
- Gancho (1-2 frases fortes)
- Corpo (3-5 parágrafos com história)
- CTA (1 frase específica)

**Ação se falha:** Adicionar componentes faltantes

---

## Formato de Output Final

### Arquivo Markdown

```markdown
---
titulo: "Como Reduzi Churn de 15% para 5% em 2 Meses"
data_criacao: "2025-10-22T15:35:00Z"
canal: "linkedin"
formato: "post"
pilar: "Product-Market Fit em SaaS B2B"
historia_usada: "historia-03"

validacao:
  voice_score: 8.7
  data_validacao: "2025-10-22T15:30:00Z"
  validador: "voice-validator"

quality_gates:
  estrutura: "pass"
  conteudo: "pass"
  voz: "pass"
  safe_mode: "pass"
  linkedin: "pass"

estatisticas:
  caracteres: 1035
  palavras: 187
  paragrafos: 7

status: "rascunho"
publicado: false
url_linkedin: null
---

Churn de 15% quase matou meu SaaS em 2021. Tinha 8 meses de runway.

Liguei para os 23 clientes que cancelaram naquela semana. Todos. Conversa de 30-40min cada.

Padrão descoberto? Não era preço. Não era feature. Era expectativa.

Eu prometi "resultado em 30 dias" no signup. Realidade? 90 dias.

Mudei UMA frase: "Primeiros resultados em 60-90 dias".

Churn caiu para 5% em 2 meses.

Lição: Promessa < Entrega = Churn. Sempre.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Você já reduziu churn mudando expectativa ao invés de features?
```

---

## Mensagem de Conclusão

Ao finalizar a task:

```
✅ POST LINKEDIN GERADO E APROVADO!

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

📄 ARQUIVO SALVO:
docs/content/linkedin/2025-10-22-churn-15-quase-matou-saas.md

📊 ESTATÍSTICAS:
- Caracteres: 1035
- Palavras: 187
- Parágrafos: 7
- Voice score: 8.7/10 ✅

✅ VALIDAÇÕES:
- Voice: 8.7/10 (>= 8.5) ✅
- Chavões: 0 encontrados ✅
- Safe mode: Respeitado ✅
- Estrutura: Completa ✅
- Quality gates: 5/5 pass ✅

🎯 METADATA:
- Pilar: Product-Market Fit em SaaS B2B
- História: historia-03 (Churn 15%)
- Status: Rascunho

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

📋 PRÓXIMOS PASSOS:

1. Abrir arquivo: docs/content/linkedin/2025-10-22-churn-15-quase-matou-saas.md
2. Revisar post final
3. Copiar conteúdo para LinkedIn
4. Publicar
5. Atualizar metadata:
   - status: "publicado"
   - publicado: true
   - url_linkedin: "{URL}"

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Quer gerar outro post? (*gerar-post {tópico})
```

---

## Métricas de Sucesso

**Duração:**
- Alvo: 15-20 min
- Máximo aceitável: 25 min

**Qualidade:**
- Voice score >= 8.5 (obrigatório)
- Quality gates: 5/5 pass
- Zero chavões
- Safe mode 100% respeitado

**Eficiência:**
- <= 2 rodadas de validação
- <= 1 re-geração após reprovação

---

## Troubleshooting

### Problema 1: Voice Score < 8.5

**Causa:** Post não soa autêntico
**Solução:**
1. Identificar critério(s) com score baixo
2. Revisar trecho problemático
3. Aplicar tom/vocabulário do founder
4. Re-validar

### Problema 2: Tópico Fora dos Pilares

**Causa:** Founder quer falar sobre tema que não domina
**Solução:**
1. Avisar founder sobre falta de autoridade
2. Sugerir conectar com pilar existente
3. OU capturar experiência/história nova (atualizar brain.md)

### Problema 3: Post Muito Genérico

**Causa:** Falta histórias/dados específicos
**Solução:**
1. Voltar para Passo 1 (elicitação)
2. Pedir história concreta
3. Pedir números/dados reais
4. Re-gerar com contexto específico

---

## Notas Finais

**Filosofia:**

> "Esta task não é sobre velocidade. É sobre autenticidade.
> Prefiro 20 minutos gerando post autêntico do que 5 minutos
> gerando algo genérico."

**Lembrete:**

- Deep Mode (100% brain.md) não é opcional
- Threshold 8.5 não é negociável
- Chavões = reescrever, sem exceções
- Safe mode = respeitar sempre

**Diferencial:**

Posts gerados por esta task são indistinguíveis da escrita real do founder.
Se alguém consegue identificar que foi IA, a task falhou.

---

**Versão:** 1.0.0
**Próxima Revisão:** Após 20 posts gerados
**Mantido por:** linkedin-writer (Lucas)
