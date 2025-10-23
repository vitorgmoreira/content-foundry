# Checklist de Validação de Voz

**Versão:** 1.0.0
**Última Atualização:** 2025-10-22
**Owner:** voice-validator (Beatriz)
**Propósito:** Sistema objetivo de pontuação para validar autenticidade de voz do founder

---

## Escala e Threshold

```yaml
scoring:
  escala: 0-10
  threshold_aprovacao: 8.5
  criterios: 10
  peso_por_criterio: 1.0
  total_maximo: 10.0
```

**Interpretação:**
- **9.0-10.0:** Excelente - Voz autêntica, indistinguível do founder
- **8.5-8.9:** Aprovado - Autenticidade forte, pequenos ajustes opcionais
- **7.0-8.4:** Reprovado - Precisa revisão, problemas de autenticidade
- **5.0-6.9:** Insuficiente - Reescrever com mais contexto do brain.md
- **0-4.9:** Inadequado - Não reflete o founder, começar do zero

---

## Critérios de Validação (10 Critérios)

### 1. Vocabulário e Escolha de Palavras

**Peso:** 1.0
**Descrição:** O texto usa palavras, expressões e jargões específicos do founder?

**Como Pontuar:**

- **1.0 - Perfeito:**
  - Usa palavras exatas do founder (capturadas no brain.md)
  - Expressões idiomáticas pessoais presentes
  - Jargões técnicos/profissionais do founder aparecem naturalmente
  - Zero palavras que o founder nunca usaria

- **0.7 - Bom:**
  - Maioria das palavras alinhadas
  - 1-2 palavras que o founder não usaria
  - Expressões similares (mas não exatas)

- **0.5 - Mediano:**
  - Vocabulário genérico
  - Poucas palavras específicas do founder
  - Usa sinônimos ao invés das palavras exatas

- **0.3 - Fraco:**
  - Vocabulário desalinhado
  - Palavras que o founder evita ativamente
  - Tom formal/informal invertido

- **0.0 - Inadequado:**
  - Completamente desalinhado
  - Palavras que contradizem o perfil

**Exemplos:**

```yaml
founder_real:
  - "quebrar paradigmas"
  - "founder tech"
  - "produto SaaS"

texto_aprovado: # Usa palavras exatas
  - "Como founder tech, aprendi que quebrar paradigmas em produto SaaS..."

texto_reprovado: # Usa sinônimos genéricos
  - "Como empreendedor de tecnologia, aprendi que desafiar o status quo em software..."
```

**Red Flags:**
- ❌ Usa "empreendedor" quando founder diz "founder"
- ❌ Usa "desafiar status quo" quando founder diz "quebrar paradigmas"
- ❌ Vocabulário corporativo quando founder é casual (ou vice-versa)

---

### 2. Tom de Voz

**Peso:** 1.0
**Descrição:** O tom está alinhado com a personalidade e estilo do founder?

**Como Pontuar:**

- **1.0 - Perfeito:**
  - Tom idêntico ao do founder (formal/casual/irreverente)
  - Nível de formalidade consistente
  - Personalidade refletida (direto/reflexivo/provocador)

- **0.7 - Bom:**
  - Tom geralmente alinhado
  - 1-2 trechos com tom levemente diferente

- **0.5 - Mediano:**
  - Tom genérico/neutro
  - Não captura a personalidade

- **0.3 - Fraco:**
  - Tom conflitante (casual quando deveria ser formal)
  - Não reflete a essência do founder

- **0.0 - Inadequado:**
  - Tom oposto ao do founder

**Exemplos:**

```yaml
founder_tom: "Direto, sem rodeios, provocador"

texto_aprovado: # Tom 1.0
  - "Vou ser direto: se você ainda não automação no seu SaaS, está perdendo tempo e dinheiro."

texto_reprovado: # Tom 0.3
  - "É importante considerar que a automação pode trazer benefícios significativos para sua empresa..."
```

**Red Flags:**
- ❌ Texto diplomático quando founder é direto
- ❌ Texto formal quando founder é casual
- ❌ Texto emocional quando founder é analítico

---

### 3. Estrutura e Ritmo

**Peso:** 1.0
**Descrição:** A estrutura das frases e parágrafos reflete o estilo do founder?

**Como Pontuar:**

- **1.0 - Perfeito:**
  - Tamanho de frase idêntico (curtas/longas/mistas)
  - Ritmo de escrita reconhecível
  - Uso de bullets/listas se founder usa
  - Parágrafos no tamanho que founder prefere

- **0.7 - Bom:**
  - Estrutura similar
  - 1-2 desvios menores

- **0.5 - Mediano:**
  - Estrutura genérica
  - Não captura o ritmo

- **0.3 - Fraco:**
  - Estrutura conflitante
  - Frases muito longas quando founder é conciso (ou vice-versa)

- **0.0 - Inadequado:**
  - Estrutura oposta

**Exemplos:**

```yaml
founder_estilo:
  frases: curtas
  paragrafos: 2-3 frases
  usa_bullets: sempre

texto_aprovado: # Estrutura 1.0
  - |
    Aprendi 3 coisas sobre product-market fit:

    1. Ninguém vai te dizer que seu produto é ruim
    2. Retenção > Aquisição
    3. Se você não sabe seu churn, você tem um problema

    Simples assim.

texto_reprovado: # Estrutura 0.3
  - |
    Durante minha jornada empreendedora, percebi que existem várias lições importantes sobre product-market fit que muitos founders não consideram adequadamente, e uma delas é que as pessoas geralmente não vão te dar feedback negativo direto sobre seu produto, então você precisa observar o comportamento delas ao invés de apenas ouvir o que dizem...
```

**Red Flags:**
- ❌ Frases longas quando founder é conciso
- ❌ Não usa bullets quando founder sempre usa
- ❌ Parágrafos de 10+ linhas quando founder faz 2-3

---

### 4. Ausência de Chavões de IA

**Peso:** 1.0
**Descrição:** O texto está livre de expressões típicas de IA que o founder nunca usaria?

**Como Pontuar:**

- **1.0 - Perfeito:**
  - Zero chavões de IA
  - Linguagem 100% humana
  - Frases que o founder realmente diria

- **0.7 - Bom:**
  - 1 chavão menor (ex: "vale ressaltar")
  - Não compromete autenticidade

- **0.5 - Mediano:**
  - 2-3 chavões presentes
  - Texto soa artificial em alguns trechos

- **0.3 - Fraco:**
  - 4+ chavões
  - Texto claramente gerado por IA

- **0.0 - Inadequado:**
  - Repleto de chavões
  - Impossível ser do founder

**Checklist de Chavões de IA:**

```yaml
chavoes_pt_br:
  - "mergulhar fundo"
  - "no final do dia"
  - "vale ressaltar"
  - "é importante notar"
  - "revolucionar"
  - "mudar o jogo"
  - "levar para o próximo nível"
  - "jornada transformadora"
  - "sem mais delongas"
  - "explorar os meandros"

chavoes_en:
  - "dive deep"
  - "at the end of the day"
  - "furthermore"
  - "moreover"
  - "in conclusion"
  - "game-changer"
  - "leverage"
  - "paradigm shift"
  - "synergy"
  - "unlock the potential"
```

**Red Flags:**
- ❌ "mergulhar fundo" (a menos que founder realmente use)
- ❌ "vale ressaltar" (ChatGPT signature)
- ❌ "furthermore" (IA em inglês)
- ❌ Frases que começam com "É importante notar que..."

---

### 5. Especificidade

**Peso:** 1.0
**Descrição:** O texto é específico e concreto, evitando generalidades?

**Como Pontuar:**

- **1.0 - Perfeito:**
  - Números, dados, exemplos concretos
  - Situações específicas mencionadas
  - Zero afirmações vagas
  - Detalhes que só o founder conheceria

- **0.7 - Bom:**
  - Maioria específica
  - 1-2 afirmações genéricas

- **0.5 - Mediano:**
  - 50% genérico, 50% específico
  - Falta contexto

- **0.3 - Fraco:**
  - Maioria genérico
  - Conselhos que cabem em qualquer situação

- **0.0 - Inadequado:**
  - Completamente genérico
  - Poderia ser escrito por qualquer pessoa

**Exemplos:**

```yaml
texto_generico: # 0.3
  - "É importante ter métricas bem definidas no seu SaaS."

texto_especifico: # 1.0
  - "No meu SaaS, descobri que MRR churn abaixo de 5% é o que separa crescimento sustentável de fogo no caixa. Aprendi isso da maneira difícil quando bati 12% e quase fechei."
```

**Red Flags:**
- ❌ Conselhos genéricos ("tenha métricas")
- ❌ Sem números ou dados concretos
- ❌ "É importante que..." sem especificar contexto

---

### 6. Uso de Histórias Pessoais

**Peso:** 1.0
**Descrição:** O texto usa histórias e experiências do founder (do brain.md)?

**Como Pontuar:**

- **1.0 - Perfeito:**
  - História específica do brain.md citada
  - Contexto completo (antes/durante/depois)
  - Insight pessoal do founder presente

- **0.7 - Bom:**
  - Referência a experiência do founder
  - Falta algum detalhe contextual

- **0.5 - Mediano:**
  - Experiência genérica que poderia ser de qualquer founder
  - Não está no brain.md

- **0.3 - Fraco:**
  - História inventada ou de terceiros
  - Não conecta com jornada do founder

- **0.0 - Inadequado:**
  - Sem histórias pessoais
  - Apenas teoria

**Exemplos:**

```yaml
sem_historia: # 0.0
  - "Product-market fit é essencial para o sucesso de uma startup."

com_historia: # 1.0
  - "Quando lancei meu primeiro SaaS em 2018, passei 9 meses construindo features que ninguém pediu. Churn de 15% ao mês. Foi quando aprendi que product-market fit não é 'ter muitas features', é resolver UM problema muito bem."
```

**Red Flags:**
- ❌ Texto sem nenhuma história pessoal
- ❌ Histórias genéricas ("muitos founders...")
- ❌ Experiências não documentadas no brain.md

---

### 7. Alinhamento com Valores

**Peso:** 1.0
**Descrição:** O texto reflete os valores core do founder?

**Como Pontuar:**

- **1.0 - Perfeito:**
  - Valores core explícitos ou implícitos presentes
  - Decisões/conselhos alinhados com valores
  - Reflete worldview do founder

- **0.7 - Bom:**
  - Valores presentes de forma implícita
  - Não contradiz nenhum valor

- **0.5 - Mediano:**
  - Neutro em relação a valores
  - Não reforça nem contradiz

- **0.3 - Fraco:**
  - Conflita sutilmente com valores
  - Conselho que founder não daria

- **0.0 - Inadequado:**
  - Contradiz valores core
  - Oposto ao que founder acredita

**Exemplos:**

```yaml
founder_valores:
  - transparencia_radical
  - execucao_antes_de_perfeicao
  - obsessao_pelo_cliente

texto_alinhado: # 1.0
  - "Lancei o MVP em 2 semanas com bugs visíveis. Avisei os primeiros clientes: 'Isso vai quebrar, mas vamos consertar juntos em 24h'. Resultado? NPS 85. Transparência > Perfeição."

texto_desalinhado: # 0.0
  - "Nunca lance nada imperfeito. Sua reputação está em jogo. Espere até ter tudo polido antes de mostrar para clientes."
```

**Red Flags:**
- ❌ Conselhos que contradizem valores do founder
- ❌ Decisões que o founder nunca tomaria
- ❌ Worldview oposto ao do brain.md

---

### 8. Respeito ao Safe Mode

**Peso:** 1.0
**Descrição:** O texto evita tópicos que o founder não quer abordar?

**Como Pontuar:**

- **1.0 - Perfeito:**
  - Não menciona nenhum tópico do safe_mode
  - Respeita níveis (nunca vs geralmente-evita)
  - Redireciona se necessário

- **0.7 - Bom:**
  - Menciona tangencialmente um tópico "geralmente-evita"
  - Contexto justifica menção

- **0.5 - Mediano:**
  - Menciona tópico "geralmente-evita" sem contexto forte

- **0.0 - Inadequado:**
  - Menciona tópico marcado como "nunca"
  - Aborda tópico sensível de forma direta

**Exemplos:**

```yaml
safe_mode:
  topicos_evitar:
    - topico: "vida pessoal/família"
      nivel: nunca
    - topico: "política partidária"
      nivel: nunca
    - topico: "investimento/fundraising"
      nivel: geralmente-evita

texto_aprovado: # 1.0
  - "Cresci o SaaS de $0 a $500k ARR bootstrapped em 18 meses..."

texto_reprovado: # 0.0
  - "Balancear família e startup foi meu maior desafio. Minha esposa e filhos..."
```

**Red Flags:**
- ❌ Menciona família quando safe_mode proíbe
- ❌ Aborda política quando é tópico sensível
- ❌ Ignora preferências do founder

---

### 9. Conexão com Pilares de Conteúdo

**Peso:** 1.0
**Descrição:** O texto se conecta com um dos pilares do founder?

**Como Pontuar:**

- **1.0 - Perfeito:**
  - Conecta diretamente com um pilar específico
  - Usa autoridade do founder (experiência real)
  - Aborda subtema relevante

- **0.7 - Bom:**
  - Conexão indireta com pilar
  - Relevante mas não aprofundado

- **0.5 - Mediano:**
  - Tangencialmente relacionado
  - Não explora expertise do founder

- **0.3 - Fraco:**
  - Fora dos pilares
  - Tópico que founder não domina

- **0.0 - Inadequado:**
  - Completamente desalinhado
  - Contradiz autoridade do founder

**Exemplos:**

```yaml
pilares:
  - nome: "Product-Led Growth em SaaS B2B"
    experiencia: "Cresci SaaS de $0 a $500k ARR PLG-first"
    subtemas:
      - onboarding_autoserviço
      - ativacao_rapida
      - expansao_de_contas

texto_conectado: # 1.0
  - "Reduzi time-to-value de 7 dias para 45 minutos com onboarding interativo. Ativação subiu de 15% para 58%. Aprendi que em PLG, cada hora conta."

texto_desconectado: # 0.3
  - "Marketing de influência é essencial para B2B..." # Founder não tem experiência nisso
```

**Red Flags:**
- ❌ Tópicos fora dos pilares do founder
- ❌ Conselhos sem autoridade/experiência
- ❌ Contradiz expertise documentada

---

### 10. Emoção Desejada

**Peso:** 1.0
**Descrição:** O texto evoca a emoção que o founder quer transmitir?

**Como Pontuar:**

- **1.0 - Perfeito:**
  - Evoca exatamente a emoção desejada
  - Tom emocional consistente
  - Leitor sente o que founder quer que sinta

- **0.7 - Bom:**
  - Evoca emoção similar
  - Tom levemente diferente

- **0.5 - Mediano:**
  - Neutro emocionalmente
  - Não evoca nada específico

- **0.3 - Fraco:**
  - Evoca emoção diferente
  - Tom emocional conflitante

- **0.0 - Inadequado:**
  - Evoca emoção oposta

**Exemplos:**

```yaml
emocao_desejada: "Esperança realista: possível mas difícil, honesto sobre desafios"

texto_alinhado: # 1.0
  - "Crescer SaaS é difícil. Vou mentir se disser que é fácil. Mas é possível. Eu fiz. Outros founders fizeram. Você também pode. Só precisa estar disposto a apanhar e levantar."

texto_desalinhado: # 0.3
  - "Crescer SaaS é super fácil! Basta seguir esses 5 passos e você vai faturar $1M em 6 meses!" # Otimismo irrealista
```

**Red Flags:**
- ❌ Otimismo tóxico quando founder é realista
- ❌ Pessimismo quando founder é inspirador
- ❌ Neutro quando founder é emotivo

---

## Template de Report de Validação

```yaml
validacao:
  arquivo: {NOME_ARQUIVO}
  data: {ISO8601}
  founder: {NOME_FOUNDER}

  score:
    total: {0.0-10.0}
    threshold: 8.5
    status: aprovado | reprovado

  criterios:
    - nome: vocabulario
      score: {0.0-1.0}
      feedback: |
        {FEEDBACK_CONSTRUTIVO}

    - nome: tom
      score: {0.0-1.0}
      feedback: |
        {FEEDBACK_CONSTRUTIVO}

    # ... (repetir para todos os 10 critérios)

  red_flags:
    - tipo: chavao_ia
      localizacao: "linha 45"
      problema: "Usa 'mergulhar fundo'"
      sugestao: "Remover ou substituir por expressão do founder"

  recomendacao:
    decisao: aprovar | revisar | reescrever
    prioridade_revisao:
      - criterio: {NOME}
        score_atual: {X}
        score_necessario: {Y}
        acao: |
          {O_QUE_FAZER}
```

---

## Como Usar Este Checklist

### Para Beatriz (Voice Validator):

1. **Leia o brain.md do founder** antes de validar qualquer texto
2. **Avalie cada critério objetivamente** usando a escala 0.0-1.0
3. **Identifique red flags** específicos com localização
4. **Forneça feedback construtivo** para cada critério < 1.0
5. **Calcule score total** somando os 10 critérios
6. **Compare com threshold 8.5** para decisão final
7. **Priorize revisões** começando pelo critério de menor score

### Para Writers:

1. **Consulte este checklist ANTES de escrever**
2. **Auto-avalie** o texto com os 10 critérios
3. **Revise** qualquer critério abaixo de 0.7
4. **Envie para Beatriz** apenas quando auto-score >= 8.5

### Para Founders:

1. **Use este checklist** para entender como seu conteúdo será avaliado
2. **Feedback para Elena** se algum critério não faz sentido para você
3. **Atualize brain.md** com mais contexto se validação falhar constantemente

---

## Calibração do Sistema

### Exemplos de Scores Reais

**Texto que deveria reprovar (score 5.2/10):**

```
É importante ressaltar que product-market fit é essencial para o sucesso de qualquer empresa. No final do dia, você precisa mergulhar fundo nos dados e entender seu cliente. Isso vai levar seu negócio para o próximo nível.
```

**Análise:**
- Vocabulário: 0.3 (genérico, sem palavras do founder)
- Tom: 0.4 (muito formal/corporativo)
- Estrutura: 0.6 (uma frase longa, genérica)
- Chavões IA: 0.0 (3 chavões: "é importante ressaltar", "mergulhar fundo", "próximo nível")
- Especificidade: 0.2 (zero números, dados ou contexto)
- Histórias: 0.0 (sem histórias pessoais)
- Valores: 0.5 (neutro)
- Safe Mode: 1.0 (não viola)
- Pilares: 0.2 (menciona PMF mas sem autoridade)
- Emoção: 0.0 (neutro, sem emoção)
- **Total: 3.2/10** ❌

**Texto que deveria aprovar (score 9.1/10):**

```
Quando bati 15% de churn no meu SaaS em 2019, entrei em pânico. Tinha 8 meses de runway.

Fiz uma coisa radical: liguei para os 23 clientes que cancelaram naquela semana. Todos. Conversa de 30-40min cada.

Padrão que descobri? Não era preço. Não era feature. Era expectativa. Eu prometi "resultado em 30 dias" no onboarding. Realidade? 90 dias.

Mudei uma frase no signup: "Primeiros resultados em 60-90 dias". Churn caiu para 5% em 2 meses.

Lição: Promessa < Entrega = Churn. Sempre.
```

**Análise:**
- Vocabulário: 1.0 (palavras exatas: "runway", "churn", "SaaS")
- Tom: 1.0 (direto, números, sem rodeios)
- Estrutura: 0.9 (frases curtas, ritmo certo, um parágrafo poderia ser quebrado)
- Chavões IA: 1.0 (zero chavões)
- Especificidade: 1.0 (números: 15%, 23 clientes, 30-40min, 90 dias)
- Histórias: 1.0 (história completa: contexto + situação + resolução + insight)
- Valores: 1.0 (transparência radical, obsessão pelo cliente)
- Safe Mode: 1.0 (não viola)
- Pilares: 0.9 (conecta com pilar SaaS, poderia explorar mais subtema)
- Emoção: 0.9 (esperança realista: possível mas difícil)
- **Total: 9.7/10** ✅

---

## Manutenção do Checklist

**Quando atualizar:**
- Brain.md do founder é atualizado
- Novos chavões de IA são identificados
- Threshold precisa ser recalibrado
- Novos critérios são necessários

**Quem pode atualizar:**
- Elena (adiciona contexto do brain.md)
- Beatriz (adiciona chavões identificados)
- Founder (ajusta critérios/threshold)

**Versionamento:**
- v1.0.0 - Versão inicial (2025-10-22)
- Bumps em MAJOR quando critérios mudam
- Bumps em MINOR quando exemplos/chavões são adicionados
- Bumps em PATCH para correções

---

## Notas Finais

**Princípios Core:**

1. **Objetividade:** Cada critério tem escala clara 0.0-1.0
2. **Transparência:** Founder entende por que texto foi reprovado
3. **Construtividade:** Feedback sempre indica o que fazer
4. **Calibração:** Exemplos reais garantem consistência
5. **Evolução:** Checklist melhora com uso

**Lembrete para Beatriz:**

> Seu papel não é reescrever. Seu papel é validar.
> Seja rigorosa mas construtiva.
> Score 8.5 é alto de propósito - queremos excelência, não mediocridade.
> Quando reprovar, explique exatamente o que precisa mudar.
> Quando aprovar, celebre a autenticidade.

**Threshold 8.5 significa:**

- No máximo 1.5 pontos perdidos nos 10 critérios
- Exemplo: 9 critérios com 1.0 + 1 critério com 0.5 = 9.5/10 ✅
- Exemplo: 8 critérios com 1.0 + 2 critérios com 0.75 = 9.5/10 ✅
- Exemplo: 7 critérios com 1.0 + 3 critérios com 0.5 = 8.5/10 ✅ (limite)
- Exemplo: todos critérios com 0.8 = 8.0/10 ❌ (reprovado)

Esse threshold força qualidade consistente em TODOS os critérios, não permite mediocridade generalizada.

---

**Versão:** 1.0.0
**Próxima Revisão:** Após 100 validações ou feedback do founder
**Mantido por:** voice-validator (Beatriz)
