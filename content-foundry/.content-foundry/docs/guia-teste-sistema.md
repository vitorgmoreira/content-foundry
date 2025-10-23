# Guia: Como Testar o Content Foundry

**Versão:** 1.0.0
**Data:** 2025-10-23
**Para:** Usuário Final (Founder)

---

## 📋 Pré-requisitos

Antes de começar, verifique:

✅ Content Foundry instalado em `/Users/vitorgarcia/Documents/content-ai/content-foundry`
✅ Épicos 02, 03, 04 completos (sistema funcional)
✅ Claude Code instalado e funcionando
✅ ~90 minutos disponíveis para teste completo

---

## 🎯 Visão Geral do Teste

Você vai executar 3 fases:

1. **Fase 1: Capturar Sua Voz** (45-60 min)
   - Criar seu brain.md personalizado
   - Elena conduz entrevista estruturada
   - Beatriz valida qualidade

2. **Fase 2: Gerar Primeiro Post** (15-20 min)
   - Executar Workflow #3 (Produção Express)
   - Gerar 3 variações de post
   - Validar com quality gates

3. **Fase 3: Validar Sistema** (20-30 min)
   - Testar comandos standalone
   - Validar quality gates
   - Ajustar se necessário

**Tempo total:** ~90 minutos

---

## 🚀 Fase 1: Capturar Sua Voz

### Passo 1.1: Abrir Nova Conversa no Claude Code

1. Abra o Claude Code
2. Clique em "New Chat" ou pressione `Cmd+N` (Mac) / `Ctrl+N` (Windows)
3. Certifique-se de que está no diretório correto:
   ```
   /Users/vitorgarcia/Documents/content-ai/content-foundry
   ```

---

### Passo 1.2: Iniciar Processo de Captura de Voz

Cole exatamente este texto na nova conversa:

```
Quero criar meu brain.md usando o Content Foundry.

Por favor, leia o arquivo `.content-foundry/tasks/capturar-voz.md`
e execute o processo completo de captura de voz comigo.

Use a Elena (Elicitation Expert) para conduzir a entrevista.
```

---

### Passo 1.3: Responder Perguntas da Elena

Elena vai fazer perguntas estruturadas em 7 áreas:

1. **Identidade Profissional**
   - Quem você é
   - O que faz
   - Sua jornada

2. **Voz e Tom**
   - Como você fala
   - Palavras que usa
   - Palavras que evita

3. **Pilares de Conteúdo**
   - 3-5 temas principais
   - Por que são importantes

4. **Valores e Crenças**
   - O que você defende
   - Suas convicções

5. **Audiência**
   - Para quem você escreve
   - Dores e aspirações deles

6. **Exemplos de Conteúdo**
   - Posts que funcionaram
   - Seu melhor conteúdo

7. **Tópicos Proibidos (Safe Mode)**
   - Assuntos que você evita
   - Temas sensíveis

**Dica:** Seja autêntico e detalhado. Quanto mais contexto, melhor a qualidade dos posts gerados.

---

### Passo 1.4: Validar brain.md

Depois que Elena criar seu `brain.md`, peça:

```
Por favor, use a Beatriz (Voice Validator) para validar
a qualidade do meu brain.md.
```

**Meta:** Voice quality score >= 8.0/10

Se o score for baixo, Elena vai fazer perguntas adicionais para melhorar.

---

### Passo 1.5: Verificar Arquivo Criado

Verifique que o arquivo foi criado:

```bash
ls -la docs/brain.md
```

O arquivo deve ter pelo menos 500-1000 linhas e incluir todas as seções.

---

## 📝 Fase 2: Gerar Primeiro Post

### Passo 2.1: Escolher Tópico

Pense em um tópico que:
- Está dentro de um dos seus pilares
- Você tem algo autêntico a dizer
- Interessa sua audiência

**Exemplo:** "Como implementei IA no meu processo de vendas"

---

### Passo 2.2: Executar Workflow #3

Na mesma conversa (ou nova), cole:

```
Quero gerar um post LinkedIn usando o Workflow #3 (Produção Express).

Tópico: [SEU TÓPICO AQUI]

Por favor, leia `.content-foundry/workflows/03-producao-express.md`
e execute o workflow completo:

1. Carlos: Inicialização
2. Lucas: Gerar 3 variações
3. Beatriz: Validar voz (score >= 8.5)
4. Ana: Validar marca e quality gates (14/14)
5. Salvar post aprovado
```

---

### Passo 2.3: Acompanhar Execução

O workflow vai executar em 4 steps (~15-20 min):

**[00:00] Step 1: Inicialização (Carlos)**
- Carrega brain.md (deep mode 100%)
- Valida tópico
- Confirma alinhamento com pilares

**[02:00] Step 2: Geração (Lucas)**
- Gera 3 variações do post
- Todas seguem sua voz

**[12:00] Step 3: Voice Validation (Beatriz)**
- Valida cada variação
- Score >= 8.5/10
- Identifica chavões de IA
- Sugere melhorias se necessário

**[14:45] Step 4: Quality Gates (Ana)**
- Executa 5 gates (14 critérios)
- Valida brand alignment
- Safe mode compliance
- **Decisão: ✅ APROVADO / ❌ REPROVADO**

**[18:00] Output**
- Se aprovado: Post salvo em `outputs/posts/linkedin/YYYY-MM-DD-slug.md`
- Se reprovado: Sugestões de correção

---

### Passo 2.4: Verificar Post Gerado

Se aprovado, verifique o arquivo:

```bash
ls -la outputs/posts/linkedin/
cat outputs/posts/linkedin/[arquivo-mais-recente].md
```

O post deve ter:
- Frontmatter YAML completo (30+ campos)
- Conteúdo que soa como você
- Hook, estrutura, CTA
- Voice score >= 8.5
- Brand score >= 8.0

---

### Passo 2.5: Ler e Avaliar

**Perguntas para você:**
1. Este post soa como você?
2. Você se sente confortável publicando?
3. Precisa de ajustes?

Se precisa de ajustes, vá para Fase 3.

---

## 🔍 Fase 3: Validar Sistema

### Passo 3.1: Testar Comando `/cf-voice-score`

Teste o comando de validação de voz:

```
Execute o comando /cf-voice-score no post que acabamos de gerar.

Arquivo: outputs/posts/linkedin/[arquivo].md
```

**Output esperado:**
- Voice score 0-10
- Breakdown de 10 critérios
- Chavões detectados
- Padrões de autenticidade
- Sugestões

---

### Passo 3.2: Testar Comando `/cf-brand-check`

Teste o comando de validação de marca:

```
Execute o comando /cf-brand-check no post que acabamos de gerar.

Arquivo: outputs/posts/linkedin/[arquivo].md
```

**Output esperado:**
- Brand score 0-10
- Breakdown de 4 critérios weighted
- Safe mode compliance
- Sugestões de ajuste

---

### Passo 3.3: Testar Comando `/cf-quality-gates`

Teste o comando completo:

```
Execute o comando /cf-quality-gates no post que acabamos de gerar.

Arquivo: outputs/posts/linkedin/[arquivo].md

Use as flags:
--verbose
```

**Output esperado:**
- Resultado de cada gate
- Total X/14 critérios
- Decisão: ✅ APROVADO / ❌ REPROVADO
- Detalhes de cada critério

---

### Passo 3.4: Ajustar Thresholds (Opcional)

Se você acha os thresholds muito altos ou baixos, pode ajustar:

**Voice threshold** (padrão: 8.5/10)
- Arquivo: `.content-foundry/agents/voice-validator.md`
- Linha: ~50 (threshold: 8.5)

**Brand threshold** (padrão: 8.0/10)
- Arquivo: `.content-foundry/agents/brand-guardian.md`
- Linha: ~60 (threshold: 8.0)

**Recomendação:** Mantenha os valores padrão até gerar 3-5 posts.

---

## 📊 Checklist de Sucesso

Após concluir as 3 fases, verifique:

### Fase 1: Brain.md
- [ ] Arquivo `docs/brain.md` criado
- [ ] Tamanho: 500-1000+ linhas
- [ ] Voice quality score >= 8.0/10
- [ ] Todas as 7 seções preenchidas
- [ ] Pilares claramente definidos
- [ ] Safe mode configurado

### Fase 2: Primeiro Post
- [ ] Post gerado em `outputs/posts/linkedin/`
- [ ] Voice score >= 8.5/10
- [ ] Brand score >= 8.0/10
- [ ] Quality gates: 14/14 (100%)
- [ ] Post soa autêntico (na sua avaliação)
- [ ] Você se sente confortável publicando

### Fase 3: Validação
- [ ] Comando `/cf-voice-score` funcionou
- [ ] Comando `/cf-brand-check` funcionou
- [ ] Comando `/cf-quality-gates` funcionou
- [ ] Resultados fazem sentido
- [ ] Sugestões são acionáveis

---

## 🐛 Troubleshooting

### Problema 1: Brain.md com voice score baixo

**Sintoma:** Voice quality score < 8.0/10

**Solução:**
1. Elena vai pedir mais detalhes
2. Responda com mais especificidade
3. Adicione exemplos concretos
4. Inclua padrões de linguagem únicos
5. Re-valide com Beatriz

---

### Problema 2: Post reprovado nos quality gates

**Sintoma:** Quality gates < 14/14

**Solução:**
1. Veja qual gate falhou
2. Leia `.content-foundry/docs/guia-quality-gates.md`
3. Siga o troubleshooting específico
4. Re-gere o post com ajustes

**Gates comuns de falha:**
- Gate 3 (Authenticity): brain.md superficial → enriquecer
- Gate 4 (Brand): tópico off-brand → escolher tópico dentro dos pilares
- Gate 5 (Editorial): erros gramática → revisar

---

### Problema 3: Workflow muito lento

**Sintoma:** Workflow leva > 25 minutos

**Solução:**
- Esperado: Deep mode carrega 100% do brain.md
- Tempo normal: 15-20 min
- Se > 25 min: brain.md pode estar muito grande (> 3000 linhas)

**Otimização:**
- Reduzir exemplos repetitivos
- Consolidar informações
- Manter apenas o essencial

---

### Problema 4: Não consigo publicar o post

**Sintoma:** Post aprovado mas não me sinto confortável publicando

**Causas possíveis:**
1. Brain.md não capturou sua voz real
2. Tópico não ressoa com você
3. Thresholds muito baixos (aprovando posts fracos)

**Solução:**
1. **Opção 1:** Re-capturar voz (Fase 1 novamente)
2. **Opção 2:** Aumentar thresholds (8.5 → 9.0)
3. **Opção 3:** Escolher tópico mais autêntico
4. **Opção 4:** Editar post manualmente e re-validar

---

### Problema 5: Safe mode bloqueando posts válidos

**Sintoma:** Gate 4 sempre falha por safe mode

**Solução:**
- Revisar lista de tópicos proibidos em `brain.md`
- Pode ter sido muito restritivo
- Ajustar safe mode para ser mais específico

---

## 📚 Documentação de Apoio

Durante o teste, consulte:

1. **Guia de Quality Gates**
   - Arquivo: `.content-foundry/docs/guia-quality-gates.md`
   - Quando: Post reprovado, quer entender critérios

2. **Task Capturar Voz**
   - Arquivo: `.content-foundry/tasks/capturar-voz.md`
   - Quando: Dúvidas sobre processo de onboarding

3. **Workflow Produção Express**
   - Arquivo: `.content-foundry/workflows/03-producao-express.md`
   - Quando: Quer entender o fluxo completo

4. **Brain Schema**
   - Arquivo: `.content-foundry/schemas/brain-schema.yaml`
   - Quando: Quer entender estrutura do brain.md

---

## 🎯 O Que Esperar

### Após Fase 1 (Brain.md)
Você terá um arquivo estruturado que captura:
- Sua identidade profissional
- Sua voz única
- Seus pilares de conteúdo
- Seus valores
- Safe mode configurado

**Sensação:** "Isso realmente soa como eu"

---

### Após Fase 2 (Primeiro Post)
Você terá um post LinkedIn que:
- Está na sua voz (score >= 8.5/10)
- Está on-brand (score >= 8.0/10)
- Passa nos 14 critérios de qualidade
- Você se sente confortável publicando

**Sensação:** "Eu poderia ter escrito isso"

---

### Após Fase 3 (Validação)
Você terá confiança que o sistema:
- Detecta chavões de IA (95% precisão)
- Valida brand alignment
- Protege sua marca (safe mode)
- Entrega posts publicáveis

**Sensação:** "Posso confiar neste sistema"

---

## 📝 Próximos Passos Após Teste

Se tudo funcionou:

1. **Gerar 2-3 posts adicionais**
   - Tópicos diferentes
   - Pilares diferentes
   - Validar consistência

2. **Publicar primeiro post**
   - LinkedIn
   - Monitorar engajamento
   - Ajustar se necessário

3. **Iterar no brain.md**
   - Adicionar padrões que funcionaram
   - Remover o que não funcionou
   - Refinar voz

4. **Explorar comandos adicionais**
   - Produção em lote
   - Repurposing
   - Etc (quando implementados)

---

## 🆘 Se Precisar de Ajuda

### Durante o Teste

**Conversa de Desenvolvimento (esta conversa):**
- Problemas técnicos
- Bugs no sistema
- Sugestões de melhoria

**Nova Conversa (para onboarding):**
- Executar processo de captura
- Gerar posts
- Usar comandos

### Perguntas Comuns

**P: Posso editar brain.md manualmente?**
R: Sim! É um arquivo markdown. Edite à vontade e re-valide.

**P: Posso editar posts gerados?**
R: Sim! Edite e depois rode `/cf-quality-gates` para re-validar.

**P: Quantos posts devo gerar antes de publicar?**
R: Recomendamos 3-5 posts. Publique quando se sentir confortável.

**P: Os thresholds são fixos?**
R: Não. Você pode ajustar conforme sua necessidade.

**P: Posso ter múltiplos brains?**
R: Tecnicamente sim, mas recomendamos 1 brain por founder.

---

## ✅ Checklist Final

Antes de iniciar:
- [ ] Li este guia completo
- [ ] Tenho 90 minutos disponíveis
- [ ] Estou pronto para ser autêntico nas respostas
- [ ] Claude Code está aberto e funcionando

Durante Fase 1:
- [ ] Abri nova conversa no Claude Code
- [ ] Executei captura de voz com Elena
- [ ] Brain.md criado com score >= 8.0
- [ ] Revisei e ajustei se necessário

Durante Fase 2:
- [ ] Escolhi tópico autêntico
- [ ] Executei Workflow #3
- [ ] Post gerado e aprovado (14/14)
- [ ] Li o post e me senti confortável

Durante Fase 3:
- [ ] Testei `/cf-voice-score`
- [ ] Testei `/cf-brand-check`
- [ ] Testei `/cf-quality-gates`
- [ ] Todos os comandos funcionaram

---

## 🎉 Sucesso!

Se você completou todas as fases e checkboxes, **parabéns!**

Você agora tem:
✅ Brain.md funcional
✅ Sistema validado
✅ Primeiro post gerado
✅ Confiança no processo

**Você está pronto para produzir conteúdo autêntico em escala.**

---

**Boa sorte com o teste!** 🚀

Se encontrar problemas, documente e traga para a conversa de desenvolvimento para ajustarmos.

---

**Versão:** 1.0.0
**Data:** 2025-10-23
**Próxima Revisão:** Após primeiro teste com usuário real
