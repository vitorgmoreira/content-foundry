# Task: Elicitar Fundação

**Usado por:** Elicitation Expert (Elena)
**Fase:** 1 de 3 - Fundação
**Duração:** 10-15 minutos
**Objetivo:** Entender fundamentos do founder - quem é, jornada, valores core, motivação

---

## Overview

Esta é a primeira fase do processo de elicitação. O objetivo é estabelecer a fundação: quem é o founder, qual sua jornada, quais seus valores fundamentais, e o que o motiva a criar conteúdo.

**Resultado esperado:** Perfil fundamental do founder que servirá como alicerce para todo conteúdo futuro.

---

## Preparação

### Antes de Começar

1. **Explicar o processo ao founder:**
   - "Vou fazer perguntas abertas sobre você e sua jornada"
   - "Não existe resposta certa ou errada"
   - "Leve o tempo que precisar para refletir"
   - "Tudo que você compartilhar será usado para criar seu cérebro digital"

2. **Estabelecer tom:**
   - Empático e acolhedor
   - Curioso mas não invasivo
   - Paciente e sem pressa

3. **Verificar disponibilidade:**
   - Founder tem 10-15min focados?
   - Está em ambiente tranquilo?
   - Pronto para refletir?

---

## Perguntas da Fase 1

### Bloco A: Jornada Profissional

#### P1.1: Jornada até aqui
**Pergunta:** "Me conta sobre sua jornada profissional até aqui. Como você chegou onde está hoje?"

**O que buscar:**
- Pontos de virada na carreira
- Transições significativas
- Padrões ao longo do tempo
- Tom emocional ao narrar

**Follow-ups possíveis:**
- "E o que te levou a fazer essa mudança?"
- "Como foi essa transição para você?"
- "O que você aprendeu nesse período?"

**Output para brain.md:**
```yaml
founder:
  jornada_resumida: "Breve narrativa da jornada profissional"
  pontos_virada:
    - evento: "Descrição do evento"
      ano: YYYY
      impacto: "Como isso mudou o rumo"
```

---

#### P1.2: Posição atual
**Pergunta:** "E hoje, como você se define profissionalmente? Qual seu papel/posição?"

**O que buscar:**
- Como founder se identifica
- Títulos que usa ou evita
- Senso de identidade profissional

**Follow-ups possíveis:**
- "Por que escolheu se definir assim?"
- "Isso sempre foi claro para você?"

**Output para brain.md:**
```yaml
founder:
  nome: "Nome do founder"
  posicao_atual: "Título/papel atual"
  identidade_profissional: "Como se define"
```

---

### Bloco B: Valores Core

#### P1.3: Valores inegociáveis
**Pergunta:** "Quais valores são absolutamente inegociáveis para você? Aqueles que você não abre mão em nenhuma circunstância?"

**O que buscar:**
- Valores genuínos (não o que "deveria" dizer)
- Valores que aparecem em ações, não só discurso
- Hierarquia de valores (qual o mais importante)

**Follow-ups possíveis:**
- "Tem algum momento onde esse valor foi testado?"
- "Como esse valor se manifesta no seu dia a dia?"
- "De onde vem esse valor? Tem alguma história por trás?"

**Output para brain.md:**
```yaml
founder:
  valores_core:
    - valor: "Nome do valor"
      descricao: "O que significa para o founder"
      origem: "De onde vem esse valor (opcional)"
      exemplo: "Situação onde foi testado (opcional)"
```

**⚠️ ATENÇÃO:**
- NÃO aceite lista de valores genéricos ("integridade, transparência, excelência")
- SEMPRE peça exemplo concreto de como valor se manifesta
- SE founder não conseguir exemplo, NÃO é valor core de verdade

---

#### P1.4: Antivalores
**Pergunta:** "E o oposto? O que você absolutamente rejeita ou evita?"

**O que buscar:**
- Comportamentos que repudia
- Práticas que considera inaceitáveis
- Red flags em pessoas/empresas

**Follow-ups possíveis:**
- "Por que isso te incomoda tanto?"
- "Já passou por situação onde viu isso acontecer?"

**Output para brain.md:**
```yaml
founder:
  antivalores:
    - "Comportamento/prática que rejeita"
    - "Outra coisa que evita"
```

---

### Bloco C: Motivação para Conteúdo

#### P1.5: Por que criar conteúdo?
**Pergunta:** "O que te motiva a criar conteúdo? Por que você quer fazer isso?"

**O que buscar:**
- Motivação intrínseca (não "porque todo mundo faz")
- Conexão com jornada pessoal
- Impacto desejado

**Follow-ups possíveis:**
- "Quando você pensou nisso pela primeira vez?"
- "O que você espera que aconteça quando criar conteúdo?"
- "Tem alguém que você admira criando conteúdo? Por quê?"

**Output para brain.md:**
```yaml
founder:
  motivacao_conteudo:
    razao_principal: "Motivação core"
    impacto_desejado: "O que quer causar"
    inspiracoes: ["Creators que admira e por quê"]
```

---

#### P1.6: Audiência imaginada
**Pergunta:** "Quando você imagina sua audiência, quem você vê? Quem você quer alcançar?"

**O que buscar:**
- Perfil da audiência (não demográfico, mas psicográfico)
- Problemas que audiência enfrenta
- Como founder pode ajudar

**Follow-ups possíveis:**
- "Por que especificamente esse público?"
- "O que você entende sobre eles que outros não entendem?"
- "Você já foi essa pessoa em algum momento?"

**Output para brain.md:**
```yaml
founder:
  audiencia:
    perfil: "Descrição da audiência ideal"
    problemas: ["Problemas que enfrentam"]
    conexao_pessoal: "Por que founder entende essa audiência"
```

---

### Bloco D: Percepção Desejada

#### P1.7: Como quer ser percebido
**Pergunta:** "Como você quer ser percebido pela sua audiência? Quando alguém consome seu conteúdo, o que você quer que pensem sobre você?"

**O que buscar:**
- Atributos desejados (autêntico, expert, mentor, etc)
- Equilíbrio entre aspiracional e relatable
- Diferenciação de outros creators

**Follow-ups possíveis:**
- "E o que você NÃO quer que pensem?"
- "Tem alguém que já te percebe assim?"
- "O que você faz hoje que contribui para essa percepção?"

**Output para brain.md:**
```yaml
founder:
  percepcao_desejada:
    atributos: ["Como quer ser visto"]
    nao_quer: ["Como NÃO quer ser visto"]
    diferenciais: "O que te torna único"
```

---

## Técnicas de Elicitação - Fase 1

### 1. Perguntas Abertas
✅ "Me conta sobre..."
✅ "Como foi...?"
✅ "O que te levou a...?"

❌ "Foi bom?"
❌ "Você gostou?"

### 2. Aprofundamento
Quando founder menciona algo significativo:
- "Me conta mais sobre isso"
- "Como assim?"
- "Isso parece ter sido importante, o que exatamente aconteceu?"

### 3. Contextualização
Pedir contexto antes/durante/depois:
- "Como você estava se sentindo naquele momento?"
- "O que estava acontecendo na sua vida nessa época?"
- "E como isso mudou depois?"

### 4. Validação
Reconhecer experiências:
- "Isso deve ter sido desafiador"
- "Entendo por que isso é importante para você"
- "Faz sentido que você se sinta assim"

### 5. Silêncio Confortável
Após pergunta profunda:
- Aguardar sem pressionar
- Permitir que founder processe
- Não preencher silêncio com mais perguntas

---

## Armadilhas a Evitar

### ❌ NÃO FAZER:

1. **Aceitar respostas genéricas**
   - "Quero ajudar pessoas" → Perguntar: "Ajudar como? Com o quê especificamente?"

2. **Sugerir respostas**
   - "Você se sente assim?" → Deixar founder chegar nas próprias palavras

3. **Julgar ou questionar**
   - "Você tem certeza?" → Aceitar e explorar, não desafiar

4. **Perguntas múltiplas**
   - "O que você faz e por quê e como?" → Uma pergunta por vez

5. **Pular aprofundamento**
   - Founder: "Foi uma fase difícil"
   - Elena: ❌ "Ok, e depois?"
   - Elena: ✅ "Me conta mais sobre essa fase difícil"

6. **Parafrasear ao invés de capturar**
   - Founder: "Eu sou meio workaholic"
   - Brain: ❌ "É muito dedicado ao trabalho"
   - Brain: ✅ "É workaholic (suas palavras)"

---

## Output Esperado da Fase 1

Ao final desta fase, você deve ter capturado:

```yaml
founder:
  # Identidade
  nome: "Nome completo"
  posicao_atual: "Título/papel"
  identidade_profissional: "Como se define"

  # Jornada
  jornada_resumida: "Narrativa breve da jornada"
  pontos_virada:
    - evento: "..."
      ano: YYYY
      impacto: "..."

  # Valores
  valores_core:
    - valor: "..."
      descricao: "..."
      exemplo: "..." (opcional)
  antivalores:
    - "..."

  # Conteúdo
  motivacao_conteudo:
    razao_principal: "..."
    impacto_desejado: "..."

  audiencia:
    perfil: "..."
    problemas: [...]
    conexao_pessoal: "..."

  percepcao_desejada:
    atributos: [...]
    nao_quer: [...]
    diferenciais: "..."
```

---

## Transição para Fase 2

Após completar Fase 1:

**Elena diz:**
"Ótimo! Já entendi muito sobre quem você é e o que te move. Agora vamos para a segunda fase, onde vou te pedir para compartilhar histórias e experiências específicas que moldaram sua jornada. Pronto para continuar?"

**Salvar progresso:**
Se founder precisar de pausa, salvar rascunho com dados da Fase 1.

---

## Tempo Estimado

- **Mínimo:** 10 minutos (respostas concisas)
- **Ideal:** 12-15 minutos (respostas elaboradas)
- **Máximo:** 20 minutos (se founder estiver muito reflexivo)

**⚠️ Se ultrapassar 20min:** Sugerir pausa e continuar depois.

---

## Checklist de Qualidade

Antes de passar para Fase 2, verificar:

- [ ] Nome do founder capturado
- [ ] Jornada profissional narrada (não só lista de cargos)
- [ ] Pelo menos 2-3 valores core identificados COM exemplos
- [ ] Motivação para criar conteúdo é genuína (não genérica)
- [ ] Audiência está clara (não "todos" ou "geral")
- [ ] Percepção desejada está específica (não "ser visto como expert")
- [ ] Voz do founder foi capturada (palavras exatas, não paráfrase)

Se algum item faltar, voltar e aprofundar antes de prosseguir.

---

## Notas Importantes

1. **Pace:** Respeite o ritmo do founder. Algumas pessoas precisam de mais tempo para refletir.

2. **Emoções:** Se founder ficar emocional ao contar jornada, valide e dê espaço. Não pressione.

3. **Superficialidade:** Se respostas estão muito superficiais, use técnica de aprofundamento.

4. **Autenticidade:** Se founder está dando respostas "esperadas" ao invés de verdadeiras, faça pausa e reforce que não há resposta certa.

5. **Desconforto:** Se founder desconfortável com pergunta, respeite e passe para próxima. Não force.
