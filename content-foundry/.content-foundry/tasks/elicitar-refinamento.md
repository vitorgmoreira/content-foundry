# Task: Elicitar Refinamento

**Usado por:** Elicitation Expert (Elena)
**Fase:** 3 de 3 - Refinamento
**Duração:** 10-15 minutos
**Objetivo:** Definir tom de voz, safe mode, pilares de conteúdo, emoção desejada

---

## Overview

Esta é a fase final do processo de elicitação. Com fundação estabelecida (Fase 1) e histórias capturadas (Fase 2), agora vamos refinar as diretrizes de comunicação: como o founder fala, o que evita, e sobre o que quer criar conteúdo.

**Resultado esperado:** Diretrizes claras de voz, safe mode bem definido, e 3-5 pilares acionáveis.

---

## Preparação

### Transição da Fase 2

**Elena diz:**
"Perfeito! Já capturei sua essência através das histórias. Agora vamos finalizar definindo como você se comunica naturalmente, o que você prefere evitar, e quais temas você quer explorar. Última fase!"

### Mindset para Esta Fase

- **Autêntico > Ideal:** Como founder REALMENTE fala, não como "deveria"
- **Específico > Vago:** "Evito política partidária" não "evito polêmica"
- **Acionável > Abstrato:** "Liderança em startups" não "liderança"

---

## Perguntas da Fase 3

### Bloco A: Tom de Voz

#### P3.1: Como você se comunica?
**Pergunta:** "Quando você está conversando com alguém sobre trabalho - pode ser um colega, um amigo, ou até em um podcast - como você normalmente se expressa? Mais formal, mais informal, com humor?"

**O que buscar:**
- Formalidade natural (não forçada)
- Uso de humor ou não
- Regionalismo ou expressões
- Ritmo de comunicação (direto vs elaborado)

**Follow-ups possíveis:**
- "Se alguém lesse um texto seu, que palavras eles reconheceriam como suas?"
- "Você usa gírias? Jargões técnicos? Palavrões?"
- "Tem expressões que você usa muito?"
- "Como você conta uma história - vai direto ao ponto ou dá contexto antes?"

**Output para brain.md:**
```yaml
founder:
  tom:
    formalidade: informal | equilibrado | formal
    humor: true | false
    caracteristicas:
      - "Descrição do estilo de comunicação"
      - "Uso de metáforas/analogias"
      - "Ritmo: direto vs elaborado"
    expressoes_comuns:
      - "Expressão que usa frequentemente"
    vocabulario:
      girias: true | false
      tecnicismos: true | false
      palavroes: ocasional | nunca
```

**⚠️ ATENÇÃO:**
- Observe como founder fala DURANTE a elicitação
- Capture palavras/expressões que usou naturalmente
- Se discurso não bate com comportamento, validar

---

#### P3.2: Vozes de referência
**Pergunta:** "Tem algum criador de conteúdo, autor ou personalidade que você admira pela forma como se comunica? O que especificamente te chama atenção?"

**O que buscar:**
- Não é para copiar, é para identificar atributos
- O que founder admira naquela voz
- Diferenças entre founder e referência

**Follow-ups possíveis:**
- "O que especificamente você admira nessa pessoa?"
- "Você se vê comunicando assim?"
- "O que você faria diferente?"

**Output para brain.md:**
```yaml
founder:
  vozes_referencia:
    - nome: "Nome do creator"
      o_que_admira: "Atributo específico"
      diferenca: "Como founder difere"
```

---

#### P3.3: Anti-vozes
**Pergunta:** "E o oposto - tem algum estilo de comunicação que você absolutamente evita ou que te incomoda?"

**O que buscar:**
- Red flags de comunicação
- O que sente que é "fake" ou inautêntico
- Estilos que contradizem valores

**Follow-ups possíveis:**
- "Por que isso te incomoda?"
- "Você já caiu nessa armadilha alguma vez?"

**Output para brain.md:**
```yaml
founder:
  anti_vozes:
    - "Estilo que evita (ex: corporativês vazio)"
    - "Outro estilo que rejeita"
```

---

### Bloco B: Safe Mode

#### P3.4: Tópicos a evitar
**Pergunta:** "Quais tópicos você prefere evitar no seu conteúdo? Seja por valores, estratégia ou simplesmente porque não quer entrar nessas discussões?"

**O que buscar:**
- Tópicos específicos (não "polêmica")
- Razão para evitar (valores vs estratégia vs preferência)
- Flexibilidade (nunca vs geralmente evita)

**Follow-ups obrigatórios:**
- "Por que evitar esse tópico?"
- "É um 'nunca absoluto' ou 'geralmente evito'?"
- "Tem algum contexto onde você falaria sobre isso?"

**Output para brain.md:**
```yaml
founder:
  safe_mode:
    topicos_evitar:
      - topico: "Nome do tópico"
        razao: "Por que evita"
        nivel: nunca | geralmente-evita | contexto-dependente

      - topico: "Política partidária"
        razao: "Não quero alienar metade da audiência"
        nivel: nunca

      - topico: "Religião"
        razao: "Muito pessoal, não agrega ao conteúdo profissional"
        nivel: geralmente-evita
```

**⚠️ ATENÇÃO:**
- Safe mode NÃO é "tudo polêmico"
- Deve ser específico e acionável
- Exemplos bons: "política partidária", "religião", "fofoca de mercado"
- Exemplos ruins: "coisas controversas", "assuntos delicados"

---

#### P3.5: Linhas que não cruza
**Pergunta:** "Tem alguma linha que você não cruzaria, mesmo se trouxesse engajamento ou crescimento?"

**O que buscar:**
- Limites éticos
- Práticas que rejeita
- Trade-offs que não aceita

**Follow-ups possíveis:**
- "Você já foi tentado a cruzar essa linha?"
- "O que aconteceria se cruzasse?"

**Output para brain.md:**
```yaml
founder:
  safe_mode:
    linhas_nao_cruza:
      - "Nunca farei clickbait enganoso"
      - "Nunca falarei sobre algo que não domino"
      - "Nunca atacarei pessoas (ideias ok, pessoas não)"
```

---

### Bloco C: Pilares de Conteúdo

#### P3.6: Temas que domina
**Pergunta:** "Quais são os 3 a 5 temas que você mais domina e quer criar conteúdo sobre? Pensa em áreas onde você tem experiência real, não só interesse."

**O que buscar:**
- Temas específicos (não genéricos)
- Baseados em experiência (não só estudo)
- Conexão com histórias da Fase 2
- Equilíbrio entre amplitude e foco

**Follow-ups obrigatórios:**
- "Por que esse tema especificamente?"
- "Você tem histórias sobre isso?" (referência a Fase 2)
- "O que você sabe sobre isso que a maioria não sabe?"
- "Esse tema conecta com sua audiência?"

**Output para brain.md:**
```yaml
founder:
  pilares:
    - nome: "Nome do pilar"
      descricao: "Descrição específica"
      experiencia: "Por que tem autoridade"
      subtemas:
        - "Subtema 1"
        - "Subtema 2"
      historias_relacionadas:
        - historia-01
        - historia-03

    # Exemplo:
    - nome: "Liderança em Startups"
      descricao: "Como liderar times pequenos em ambiente de alta incerteza"
      experiencia: "Liderou 3 startups, times de 5-50 pessoas"
      subtemas:
        - "Contratar quando não pode pagar top talent"
        - "Delegar sem micromanage"
        - "Manter cultura em crescimento rápido"
      historias_relacionadas:
        - desafio-01
        - conquista-01
```

**⚠️ REGRAS DOS PILARES:**

1. **Mínimo:** 3 pilares (menos que isso é muito estreito)
2. **Máximo:** 5 pilares (mais que isso perde foco)
3. **Ideal:** 4 pilares (permite variedade com foco)

4. **Cada pilar deve ser:**
   - ✅ Específico: "Growth em SaaS B2B" não "marketing"
   - ✅ Baseado em experiência: Você FEZ isso, não só leu sobre
   - ✅ Com histórias: Conecta a histórias da Fase 2
   - ✅ Relevante para audiência: Audiência quer aprender isso

5. **Pilares ruins (evitar):**
   - ❌ "Liderança" (muito genérico)
   - ❌ "Inovação" (buzzword vazio)
   - ❌ "Mindset" (abstrato demais)
   - ❌ "Produtividade" (saturado, sem diferencial)

6. **Pilares bons (exemplos):**
   - ✅ "Transição de IC para EM em startups"
   - ✅ "Vendas complexas B2B com ciclo longo"
   - ✅ "Fundraising para founders técnicos"
   - ✅ "Construindo product-market fit com 0 orçamento"

---

#### P3.7: Ângulo único
**Pergunta:** "O que torna sua perspectiva sobre esses temas única? Por que alguém deveria ouvir VOCÊ ao invés de outros 100 criadores falando do mesmo assunto?"

**O que buscar:**
- Experiência específica
- Perspectiva contrária
- Combinação única de habilidades
- Contexto diferente

**Follow-ups possíveis:**
- "Tem algo que você faz diferente da maioria?"
- "Qual erro comum você vê pessoas cometendo nesse tema?"
- "O que você aprendeu que contraria o senso comum?"

**Output para brain.md:**
```yaml
founder:
  angulo_unico:
    - "Background técnico + experiência de vendas (raro)"
    - "Perspectiva de founder que falhou antes de ter sucesso"
    - "Experiência em mercado emergente, não Silicon Valley"
```

---

### Bloco D: Emoção Desejada

#### P3.8: Como quer que audiência se sinta
**Pergunta:** "Quando alguém consome seu conteúdo, como você quer que essa pessoa se sinta? Não o que você quer que ela pense, mas como quer que ela SINTA?"

**O que buscar:**
- Emoções específicas (não "feliz")
- Sensação após consumir conteúdo
- Estado emocional que facilita ação

**Follow-ups possíveis:**
- "E o que você NÃO quer que sintam?"
- "Como você mesmo se sente quando consome conteúdo que te inspira?"

**Output para brain.md:**
```yaml
founder:
  emocao_desejada:
    primaria: "Esperançoso mas realista"
    secundarias:
      - "Empoderado para agir"
      - "Menos sozinho na jornada"
      - "Validado em suas dúvidas"
    evitar:
      - "Intimidado"
      - "Inferior"
      - "Exausto"
```

---

### Bloco E: Frequência e Formato (Opcional)

Se tempo permitir:

#### P3.9: Frequência ideal
"Com que frequência você se imagina criando conteúdo realisticamente?"

**Output:**
```yaml
founder:
  frequencia_ideal:
    linkedin: "3-4x semana"
    instagram: "2-3x semana"
    newsletter: "1x quinzena"
```

#### P3.10: Formatos preferidos
"Que formatos te empolgam mais? Posts curtos, carrosséis, vídeos, artigos longos?"

**Output:**
```yaml
founder:
  formatos_preferidos:
    - "Posts curtos reflexivos (LinkedIn)"
    - "Carrosséis educativos (Instagram)"
    - "Artigos longos mensais (Newsletter)"
```

---

## Validação Cruzada

Nesta fase, use informações das Fases 1 e 2 para validar:

### Pilares vs Histórias
- Cada pilar tem histórias relacionadas?
- Histórias da Fase 2 se encaixam nos pilares?
- Se não, pilar é genuíno ou aspiracional?

### Tom vs Comportamento Observado
- Founder disse que é "informal"?
- Ele falou informalmente durante elicitação?
- Se não, aprofundar inconsistência

### Safe Mode vs Valores
- Safe mode alinha com valores da Fase 1?
- Evita tópicos por valores ou estratégia?
- Está evitando por medo ou por princípio?

---

## Output Esperado da Fase 3

Ao final desta fase, você deve ter capturado:

```yaml
founder:
  # Tom de Voz
  tom:
    formalidade: informal | equilibrado | formal
    humor: true | false
    caracteristicas: [...]
    expressoes_comuns: [...]
    vocabulario:
      girias: true | false
      tecnicismos: true | false

  vozes_referencia: [...]
  anti_vozes: [...]

  # Safe Mode
  safe_mode:
    topicos_evitar: [...]
    linhas_nao_cruza: [...]

  # Pilares
  pilares:
    - nome: "..."
      descricao: "..."
      experiencia: "..."
      subtemas: [...]
      historias_relacionadas: [...]
    # (3-5 pilares total)

  angulo_unico: [...]

  # Emoção
  emocao_desejada:
    primaria: "..."
    secundarias: [...]
    evitar: [...]

  # Opcional
  frequencia_ideal: {...}
  formatos_preferidos: [...]
```

---

## Finalização do Onboarding

Após completar Fase 3:

### 1. Preview do Brain

**Elena diz:**
"Pronto! Capturei tudo. Deixa eu te mostrar um preview do seu cérebro digital antes de finalizar..."

**Mostrar:**
- Nome e perfil
- 3-5 valores core
- 5-10 histórias capturadas
- Tom de voz
- Safe mode
- 3-5 pilares

### 2. Revisão com Founder

**Perguntar:**
- "Isso soa como você?"
- "Tem algo que você quer ajustar?"
- "Esquecemos alguma história importante?"
- "Algum pilar que não faz sentido?"

### 3. Ajustes Finais

Fazer ajustes conforme feedback do founder.

### 4. Salvar Brain.md

**Elena diz:**
"Perfeito! Vou salvar seu cérebro digital. A partir de agora, todos os conteúdos que criamos vão usar essas informações para manter sua voz autêntica."

**Salvar em:** `docs/brain.md`

### 5. Próximos Passos

**Elena sugere:**
"Seu cérebro digital está pronto! Próximos passos:

1. **Criar primeiro conteúdo:** Use workflow producao-express
2. **Planejar mês:** Use workflow planejamento-estrategico
3. **Atualizar brain:** Volte aqui quando tiver novas histórias

Quer que eu te conecte com o próximo agente ou prefere explorar sozinho?"

---

## Tempo Estimado

- **Mínimo:** 10 minutos (definições básicas)
- **Ideal:** 12-15 minutos (completo com validação)
- **Máximo:** 20 minutos (se muitos ajustes)

**Total do Onboarding Completo:**
- Fase 1: 10-15min
- Fase 2: 15-20min
- Fase 3: 10-15min
- Preview + Ajustes: 5min
- **TOTAL: 40-55 minutos**

---

## Checklist de Qualidade - Brain Completo

Antes de finalizar, verificar:

### Perfil
- [ ] Nome do founder
- [ ] Jornada resumida
- [ ] 2-3 valores core COM exemplos
- [ ] Motivação clara

### Histórias
- [ ] Mínimo 5 histórias
- [ ] Pelo menos 1 de cada tipo (desafio, falha, conquista)
- [ ] Cada história tem contexto + emoção + insight
- [ ] Histórias conectam com pilares

### Voz
- [ ] Tom de voz definido (formal/informal/equilibrado)
- [ ] Características específicas capturadas
- [ ] Expressões comuns identificadas

### Safe Mode
- [ ] Pelo menos 2-3 tópicos a evitar
- [ ] Razões claras para cada um
- [ ] Linhas que não cruza definidas

### Pilares
- [ ] 3-5 pilares definidos
- [ ] Cada pilar é específico (não genérico)
- [ ] Cada pilar tem experiência real
- [ ] Cada pilar conecta com histórias
- [ ] Ângulo único identificado

### Qualidade Geral
- [ ] Voz autêntica capturada (palavras do founder)
- [ ] Nada genérico ou "template"
- [ ] Founder se reconhece no brain
- [ ] Brain é acionável (writers conseguirão usar)

---

## Notas Importantes

1. **Validação Cruzada:** Use Fases 1 e 2 para validar respostas da Fase 3

2. **Autenticidade > Aspiração:** Capture quem founder É, não quem quer ser

3. **Especificidade:** "Liderança em startups de 10-50 pessoas" não "liderança"

4. **Safe Mode Real:** Deve ser específico e acionável, não genérico

5. **Pilares com Histórias:** Se pilar não tem história, não é genuíno

6. **Preview Obrigatório:** SEMPRE mostrar preview antes de salvar final

7. **Iteração OK:** Brain pode ser atualizado depois, não precisa ser perfeito

8. **Celebrar:** Onboarding completo é conquista - reconheça esforço do founder!
