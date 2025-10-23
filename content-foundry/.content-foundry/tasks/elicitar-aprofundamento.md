# Task: Elicitar Aprofundamento

**Usado por:** Elicitation Expert (Elena)
**Fase:** 2 de 3 - Aprofundamento
**Duração:** 15-20 minutos
**Objetivo:** Capturar histórias formativas, experiências marcantes, lessons learned

---

## Overview

Esta é a segunda fase do processo de elicitação. Com a fundação estabelecida, agora vamos profundo nas histórias e experiências que moldaram o founder. O objetivo é construir um catálogo rico de histórias autênticas que poderão ser usadas em conteúdo futuro.

**Resultado esperado:** Array de 5-10 histórias com contexto completo (antes/durante/depois) e insights extraídos.

---

## Por Que Histórias Importam

Histórias são o coração do conteúdo autêntico porque:

1. **Humanizam** - Audiência se conecta com experiências, não teorias
2. **Memoráveis** - Pessoas lembram histórias, esquecem bullet points
3. **Únicas** - Ninguém mais tem suas histórias exatas
4. **Credibilidade** - "Eu fiz isso" > "Estudos mostram que..."
5. **Engajamento** - Histórias geram comentários e compartilhamentos

---

## Preparação

### Transição da Fase 1

**Elena diz:**
"Ótimo! Agora que entendi quem você é e o que te move, vamos mergulhar nas histórias e experiências que te moldaram. Vou pedir que compartilhe momentos específicos - alguns bons, alguns desafiadores, mas todos formativos. Pronto?"

### Mindset para Esta Fase

- **Específico > Genérico:** "Conte aquele dia..." não "Geralmente eu..."
- **Emoção > Fatos:** Como se sentiu importa mais que o que aconteceu
- **Contexto Completo:** Antes, durante, depois
- **Vulnerabilidade:** Histórias reais têm imperfeições

---

## Perguntas da Fase 2

### Bloco A: Momento Desafiador

#### P2.1: Desafio mais significativo
**Pergunta:** "Qual foi o momento mais desafiador da sua carreira até agora? Me conta essa história."

**O que buscar:**
- História específica (não "sempre foi difícil")
- Contexto: o que estava acontecendo na vida nessa época
- Emoções: medo, frustração, dúvida
- Resolução: como lidou (ou não lidou)
- Aprendizado: o que tirou daquela experiência

**Follow-ups obrigatórios:**
1. "Como você estava se sentindo naquele momento?"
2. "O que te manteve seguindo em frente?"
3. "Olhando para trás, o que você aprendeu com isso?"
4. "Você usaria essa história para ensinar alguém? Como?"

**Output para brain.md:**
```yaml
historias:
  - id: desafio-01
    tipo: desafio
    titulo: "Título breve da história"
    contexto: "O que estava acontecendo na vida"
    situacao: "Descrição do desafio"
    emocoes: ["medo", "frustração", "dúvida"]
    resolucao: "Como lidou com a situação"
    resultado: "O que aconteceu no final"
    aprendizado: "Insight principal extraído"
    aplicavel_para: "Quando usar essa história em conteúdo"
```

**⚠️ ATENÇÃO:**
- NÃO aceite "foi difícil mas superei" sem detalhes
- SEMPRE pergunte emoções específicas
- SE founder evitar falar, respeite mas tente outra história

---

#### P2.2: Erro ou falha marcante
**Pergunta:** "Tem algum erro ou falha que te ensinou mais do que qualquer sucesso?"

**O que buscar:**
- Falha genuína (não humble brag disfarçado)
- Consequências reais
- Como se sentiu sendo "o errado"
- O que faria diferente hoje

**Follow-ups possíveis:**
- "Como as pessoas reagiram?"
- "Qual foi a pior parte dessa experiência?"
- "Quando você percebeu que tinha errado?"
- "Se pudesse voltar, o que faria diferente?"

**Output para brain.md:**
```yaml
historias:
  - id: falha-01
    tipo: falha
    titulo: "..."
    contexto: "..."
    o_que_fez: "Decisão/ação que deu errado"
    por_que_fez: "Raciocínio na época"
    consequencias: "O que aconteceu"
    emocoes: ["vergonha", "arrependimento", "frustração"]
    aprendizado: "Lição principal"
    hoje_faria: "O que faria diferente com conhecimento atual"
```

---

### Bloco B: Virada de Perspectiva

#### P2.3: Mudança de perspectiva
**Pergunta:** "Tem alguma experiência que mudou completamente sua perspectiva sobre algo? Um momento onde você viu o mundo diferente depois?"

**O que buscar:**
- Before/after claro (pensava X, agora pensa Y)
- Trigger da mudança
- Resistência inicial
- Impacto duradouro

**Follow-ups possíveis:**
- "O que você acreditava antes dessa experiência?"
- "O que exatamente mudou sua mente?"
- "Foi difícil mudar de perspectiva?"
- "Como isso afeta sua vida/trabalho hoje?"

**Output para brain.md:**
```yaml
historias:
  - id: perspectiva-01
    tipo: mudanca-perspectiva
    titulo: "..."
    antes: "O que acreditava/pensava antes"
    trigger: "Experiência que causou mudança"
    processo: "Como a mudança aconteceu"
    depois: "Nova perspectiva"
    impacto: "Como isso afeta hoje"
    aprendizado: "Insight principal"
```

---

### Bloco C: Conquista Significativa

#### P2.4: Conquista com mais orgulho
**Pergunta:** "Qual conquista você tem mais orgulho? E não precisa ser a maior objetivamente - quero saber a que tem mais significado para VOCÊ."

**O que buscar:**
- Por que essa conquista importa (significado pessoal)
- Obstáculos no caminho
- Sacrifícios feitos
- Como se sentiu ao alcançar

**Follow-ups possíveis:**
- "Por que especificamente essa conquista?"
- "O que você teve que superar para chegar lá?"
- "Quem ajudou você nessa jornada?"
- "O que essa conquista provou para você mesmo?"

**Output para brain.md:**
```yaml
historias:
  - id: conquista-01
    tipo: conquista
    titulo: "..."
    contexto: "Situação inicial"
    objetivo: "O que queria alcançar"
    obstaculos: ["Barreiras enfrentadas"]
    jornada: "Processo até alcançar"
    momento_conquista: "Como foi quando alcançou"
    significado_pessoal: "Por que importa tanto"
    aprendizado: "O que aprendeu no processo"
```

---

### Bloco D: Mentor ou Influência

#### P2.5: Pessoa que te marcou
**Pergunta:** "Tem alguém que te marcou profundamente - um mentor, chefe, colega, ou até alguém que você nunca conheceu pessoalmente? Conte sobre essa pessoa."

**O que buscar:**
- Quem foi essa pessoa
- O que fizeram ou disseram
- Por que teve tanto impacto
- Como você é diferente por causa dela

**Follow-ups possíveis:**
- "O que especificamente essa pessoa fez?"
- "Tem alguma frase ou conselho que você nunca esqueceu?"
- "Como você aplicou o que aprendeu com essa pessoa?"
- "Você tenta ser como ela em algum aspecto?"

**Output para brain.md:**
```yaml
historias:
  - id: influencia-01
    tipo: influencia
    titulo: "..."
    pessoa: "Quem foi (nome ou descrição)"
    relacionamento: "Qual era a relação"
    contexto: "Quando/como se conheceram"
    impacto: "O que essa pessoa fez/disse"
    mudanca: "Como você mudou por causa dela"
    licao_principal: "Principal aprendizado"
    ainda_aplica: "Como aplica hoje"
```

---

### Bloco E: Início da Jornada

#### P2.6: Primeiro momento relevante
**Pergunta:** "Pensa no início da sua jornada nesse campo. Qual foi o primeiro momento onde você pensou 'é isso que quero fazer'?"

**O que buscar:**
- Momento específico de clareza
- O que estava fazendo/sentindo
- Por que aquilo ressoou
- Se hesitou antes de seguir

**Follow-ups possíveis:**
- "Como você se sentiu naquele momento?"
- "Você contou para alguém na época?"
- "Teve medo? Do quê?"
- "Quanto tempo levou entre esse momento e agir?"

**Output para brain.md:**
```yaml
historias:
  - id: inicio-01
    tipo: origem
    titulo: "..."
    contexto: "Situação de vida naquela época"
    momento: "O que estava fazendo quando percebeu"
    sentimento: "Como se sentiu"
    decisao: "O que decidiu fazer"
    resistencia: "Medos ou hesitações"
    primeiro_passo: "Primeira ação concreta"
    aprendizado: "O que aprendeu sobre si mesmo"
```

---

### Bloco F: Histórias Adicionais (Opcional)

Se tempo permitir, explore:

#### P2.7: Risco que valeu a pena
"Qual foi o maior risco que você tomou e que valeu a pena?"

#### P2.8: Momento de sorte ou acaso
"Tem algum momento onde sorte ou acaso mudou seu rumo?"

#### P2.9: Sacrifício necessário
"O que você teve que deixar para trás para chegar onde está?"

#### P2.10: Ajuda inesperada
"Alguém te ajudou de forma inesperada em um momento crítico?"

---

## Estrutura de Captura de História

Para CADA história, capture:

### 1. Contexto (Antes)
- O que estava acontecendo na vida
- Estado emocional/mental
- Circunstâncias relevantes

### 2. Situação (Durante)
- O que aconteceu especificamente
- Decisões tomadas
- Ações realizadas
- Emoções no momento

### 3. Resolução (Depois)
- Como terminou
- Resultado imediato
- Consequências de longo prazo

### 4. Insight
- O que aprendeu
- Como mudou
- Como aplica hoje

---

## Técnicas Específicas - Fase 2

### 1. Pedir Especificidade

❌ Founder: "Foi uma época difícil"
✅ Elena: "Me leva para aquele dia. Onde você estava? O que estava fazendo?"

### 2. Capturar Emoções

Sempre perguntar:
- "Como você se sentiu naquele momento?"
- "O que passou pela sua cabeça?"
- "Como seu corpo reagiu?"

### 3. Before/After

Para mudanças:
- "Como era antes dessa experiência?"
- "E como é agora?"
- "O que exatamente mudou?"

### 4. Validar Vulnerabilidade

Quando founder compartilha algo difícil:
- "Obrigada por compartilhar isso"
- "Deve ter sido muito desafiador"
- "Imagino como foi difícil"

### 5. Buscar o "Porquê por Trás do Porquê"

- Founder: "Mudei de carreira"
- Elena: "Por quê?"
- Founder: "Não estava feliz"
- Elena: "O que especificamente te fazia infeliz?"
- Founder: "Não via propósito"
- Elena: "Me conta mais sobre esse sentimento de falta de propósito..."

---

## Armadilhas a Evitar - Fase 2

### ❌ NÃO FAZER:

1. **Aceitar versão "limpa" da história**
   - Histórias reais têm imperfeições, dúvidas, medos
   - Se tudo foi perfeito, não está pegando a verdade

2. **Pular emoções**
   - "O que você fez?" é menos importante que "Como se sentiu?"

3. **Generalizar**
   - "Você sempre...?" → "Me conte daquela vez específica..."

4. **Interromper narrativa**
   - Deixar founder contar no ritmo dele
   - Não corrigir ou redirecionar no meio

5. **Julgar experiências**
   - "Nossa, isso foi errado" → Acolher sem avaliar

6. **Forçar insight**
   - Se founder não vê aprendizado, está OK
   - Você identificará padrões depois

---

## Identificação de Padrões

Enquanto ouve histórias, observe:

### Temas Recorrentes
- Founder sempre menciona "autonomia"?
- "Fazer diferença" aparece muito?
- Evita "hierarquia" ou "burocracia"?

**Anotar padrões para usar na Fase 3.**

### Gatilhos Emocionais
- O que deixa founder animado?
- O que causa frustração?
- O que gera orgulho?

### Valores em Ação
- Valores da Fase 1 aparecem nas histórias?
- Novos valores emergem?
- Contradições entre fala e ação?

---

## Output Esperado da Fase 2

Ao final desta fase, você deve ter capturado:

```yaml
historias:
  - id: historia-01
    tipo: desafio | falha | conquista | influencia | perspectiva | origem
    titulo: "Título descritivo da história"
    contexto: "..."
    situacao: "..."
    emocoes: [...]
    resolucao: "..."
    aprendizado: "..."
    aplicavel_para: "Quando usar em conteúdo"

  - id: historia-02
    ...

  # Mínimo: 5 histórias
  # Ideal: 7-10 histórias
  # Máximo: 12 histórias

padroes_identificados:
  temas_recorrentes: [...]
  gatilhos_emocionais:
    positivos: [...]
    negativos: [...]
  valores_em_acao: [...]
```

---

## Transição para Fase 3

Após completar Fase 2:

**Elena diz:**
"Incrível! Suas histórias são ricas e autênticas. Agora vamos para a fase final, onde vou definir seu tom de voz, safe mode e pilares de conteúdo. Mais 10-15 minutos e finalizamos. Pronto?"

**Salvar progresso:**
Garantir que todas as histórias foram capturadas antes de prosseguir.

---

## Tempo Estimado

- **Mínimo:** 15 minutos (5 histórias básicas)
- **Ideal:** 20 minutos (7-10 histórias ricas)
- **Máximo:** 25 minutos (se founder estiver muito envolvido)

**⚠️ Se ultrapassar 25min:** Capturar mais 1-2 histórias e seguir para Fase 3.

---

## Checklist de Qualidade

Antes de passar para Fase 3, verificar:

- [ ] Pelo menos 5 histórias capturadas
- [ ] Cada história tem contexto completo (antes/durante/depois)
- [ ] Emoções foram capturadas (não só fatos)
- [ ] Pelo menos 1 história de falha/erro
- [ ] Pelo menos 1 história de conquista
- [ ] Padrões foram identificados (temas recorrentes)
- [ ] Voz do founder preservada (palavras exatas)
- [ ] Histórias têm potencial para uso em conteúdo

Se algum item faltar, voltar e capturar antes de prosseguir.

---

## Notas Importantes

1. **Vulnerabilidade:** Esta fase requer que founder se abra. Se ele hesitar, reforce que histórias imperfeitas são as melhores.

2. **Tempo:** Algumas histórias tomam mais tempo. Está OK - melhor 3 histórias profundas que 10 superficiais.

3. **Emoção:** Se founder ficar emocional, é sinal de história autêntica. Valide, dê espaço, continue quando pronto.

4. **Privacidade:** Se founder quer compartilhar história mas não quer usar em conteúdo, anote isso. Útil para entender contexto mesmo que não publique.

5. **Energia:** Contar histórias emocionais cansa. Se founder precisar de pausa, ofereça.

6. **Padrões:** Você vai começar a ver padrões. Não precisa apontar agora - vai usar na Fase 3.
