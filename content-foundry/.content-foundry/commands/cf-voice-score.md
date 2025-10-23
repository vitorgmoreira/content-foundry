# Comando: /cf-voice-score

**Descrição:** Calcula voice score de um post usando Beatriz (Voice Validator)

**Categoria:** Validação
**Ícone:** 🎯
**Aliases:** /cf-validar-voz, /cf-voice
**Versão:** 1.0.0
**Story:** 04.022

---

## Uso

```bash
/cf-voice-score {arquivo-post}
```

### Argumentos

| Argumento | Tipo | Obrigatório | Descrição |
|-----------|------|-------------|-----------|
| arquivo-post | path | Sim | Caminho para arquivo do post (md ou txt) |

### Exemplos

```bash
# Validar post salvo
/cf-voice-score docs/content/linkedin/2025-10-22-churn-reducao.md

# Validar rascunho
/cf-voice-score drafts/post-teste.md

# Validar arquivo temporário
/cf-voice-score /tmp/post.txt
```

---

## Funcionalidade

Este comando executa Beatriz (Voice Validator) para calcular o voice score de um post existente.

### Processo

1. **Validar arquivo existe**
   - Verifica se arquivo no path existe
   - Se não existe: erro + mensagem

2. **Ler conteúdo do arquivo**
   - Carrega conteúdo completo
   - Remove frontmatter se presente (YAML entre `---`)
   - Extrai apenas o corpo do post

3. **Ativar Beatriz**
   - Carrega `.content-foundry/agents/voice-validator.md`
   - Carrega `docs/brain.md` (100% - Deep Mode)
   - Carrega `.content-foundry/data/chavoes-ia.yaml`
   - Carrega `.content-foundry/data/padroes-autenticidade.yaml`

4. **Executar validação**
   - Beatriz analisa 10 critérios:
     1. Vocabulário (0-1.0)
     2. Tom (0-1.0)
     3. Estrutura (0-1.0)
     4. Chavões IA (0-1.0)
     5. Especificidade (0-1.0)
     6. Histórias (0-1.0)
     7. Valores (0-1.0)
     8. Safe Mode (0-1.0)
     9. Pilares (0-1.0)
     10. Emoção (0-1.0)
   - Calcula voice score (soma dos 10)

5. **Gerar relatório**
   - Voice score total (0-10)
   - Breakdown por critério
   - Chavões detectados (se houver)
   - Padrões de autenticidade detectados
   - Feedback construtivo se score < 8.5

6. **Decisão**
   - Se score >= 8.5: ✅ APROVADO
   - Se score < 8.5: ❌ REPROVADO + sugestões

---

## Output Esperado

### Caso 1: Post APROVADO (Score >= 8.5)

```bash
$ /cf-voice-score docs/content/linkedin/2025-10-22-churn-reducao.md
```

**Output:**
```
🎯 VOICE SCORE VALIDATOR
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

📄 Arquivo: docs/content/linkedin/2025-10-22-churn-reducao.md
📊 Carregando brain.md... 100%
🔍 Analisando voz...

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

VOICE SCORE: 8.85/10
✅ APROVADO (threshold: 8.5)

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

BREAKDOWN POR CRITÉRIO:

1. Vocabulário: 1.0/1.0 ✅
   → Usa palavras características do founder
   → "Erro clássico", "Parei tudo", "balde furado"

2. Tom: 1.0/1.0 ✅
   → Informal consistente
   → Vulnerabilidade autêntica

3. Estrutura: 0.9/1.0 ✅
   → Frases curtas, diretas
   → Narrativa clara: problema → solução → resultado

4. Chavões IA: 1.0/1.0 ✅
   → Zero chavões detectados
   → Linguagem autêntica

5. Especificidade: 1.0/1.0 ✅
   → Números concretos: $47k ARR, Q2/2019, NPS < 7, < 2h
   → Contexto específico: 47 clientes, 15 cancelaram

6. Histórias: 0.9/1.0 ✅
   → Estrutura narrativa autêntica
   → Erro admitido com consequências

7. Valores: 1.0/1.0 ✅
   → Reflete "Dados > Opinião" (métricas)
   → Reflete "Execução > Planejamento" (ações concretas)

8. Safe Mode: 1.0/1.0 ✅
   → Nenhum tópico proibido mencionado

9. Pilares: 0.9/1.0 ✅
   → Alinhado com "Customer Success e Retenção"

10. Emoção: 0.95/1.0 ✅
    → Vulnerabilidade autêntica: "Não resolveu", "Parei tudo"
    → Emoção contenida (não exagerada)

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

PADRÕES DE AUTENTICIDADE DETECTADOS: 9/12

✅ Especificidade numérica (5 números concretos)
✅ Vulnerabilidade autêntica (erro + consequência: $47k)
✅ Contexto específico (Q2/2019, 47 clientes)
✅ Linguagem coloquial ("Parei tudo", "tá")
✅ Estrutura narrativa (in medias res)
✅ Contradições/nuances ("crescimento sem retenção é...")
✅ Emoção genuína (contenção)
✅ Formatação autêntica (frases curtas)
✅ Citações/diálogo implícito

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

RECOMENDAÇÃO: ✅ APROVADO PARA PUBLICAÇÃO

Este conteúdo soa autenticamente como você. Voice score está
acima do threshold (8.5). Pronto para publicar.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Validado por: Beatriz (Voice Validator)
Data: 2025-10-22T23:45:00Z
```

---

### Caso 2: Post REPROVADO (Score < 8.5)

```bash
$ /cf-voice-score drafts/post-generico.md
```

**Output:**
```
🎯 VOICE SCORE VALIDATOR
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

📄 Arquivo: drafts/post-generico.md
📊 Carregando brain.md... 100%
🔍 Analisando voz...

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

VOICE SCORE: 6.2/10
❌ REPROVADO (threshold: 8.5)

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

BREAKDOWN POR CRITÉRIO:

1. Vocabulário: 0.5/1.0 ❌
   ❌ Usa chavões: "mudar o jogo", "mergulhar fundo"
   ❌ Palavras corporativas: "alavancar", "sinergia"

2. Tom: 0.4/1.0 ❌
   ❌ Tom oscila entre informal e formal
   ❌ Founder é consistentemente informal

3. Estrutura: 0.6/1.0 ⚠️
   ⚠️ Estrutura genérica (introdução + lista + conclusão)
   ✅ Mas usa parágrafos curtos

4. Chavões IA: 0.0/1.0 ❌
   ❌ 8 chavões detectados:
   - "mudar o jogo"
   - "mergulhar fundo"
   - "no final do dia"
   - "alavancar"
   - "sinergia"
   - "In conclusion"
   - "É importante notar que"
   - "elevar para o próximo nível"

5. Especificidade: 0.3/1.0 ❌
   ❌ Sem números concretos
   ❌ Sem contexto específico
   ❌ Generalidades: "melhorar resultados", "aumentar eficiência"

6. Histórias: 0.5/1.0 ⚠️
   N/A (não menciona histórias)

7. Valores: 0.6/1.0 ⚠️
   ⚠️ Não reflete valores claramente
   ❌ Falta de dados/métricas (contradiz "Dados > Opinião")

8. Safe Mode: 1.0/1.0 ✅
   ✅ Não viola tópicos proibidos

9. Pilares: 0.5/1.0 ⚠️
   ⚠️ Tema genérico, não conecta com pilares específicos

10. Emoção: 0.8/1.0 ✅
    ✅ Tom motivacional (mas genérico)

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

CHAVÕES DE IA DETECTADOS: 8

Categoria: Corporativos (5)
- "mudar o jogo" → Use: "fazer diferença real"
- "mergulhar fundo" → Use: "ir a fundo"
- "alavancar" → Use: "usar"
- "sinergia" → Use: "trabalhar bem junto"
- "elevar para o próximo nível" → Use: "melhorar significativamente"

Categoria: Marcadores Formais (2)
- "In conclusion" → Remover
- "É importante notar que" → Remover

Categoria: Intensificadores Vazios (1)
- "no final do dia" → Use: "no fim das contas"

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

PROBLEMAS IDENTIFICADOS:

🚨 CRÍTICO - Chavões de IA (8 detectados)
Este é o principal problema. Post soa como IA genérica.

❌ ALTO - Falta de especificidade
Sem números, dados ou contexto concreto.

⚠️ MÉDIO - Tom inconsistente
Oscila entre informal e formal.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

SUGESTÕES DE MELHORIA:

1. REMOVA todos os chavões listados acima
2. ADICIONE números específicos (métricas, datas, quantidades)
3. USE vocabulário do founder (veja brain.md → tom.expressoes_comuns)
4. MANTENHA tom informal consistente
5. CONECTE com uma história do brain.md
6. SEJA ESPECÍFICO: ao invés de "melhorar resultados", diga "aumentou 47%"

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

RECOMENDAÇÃO: ❌ REESCREVER

Este conteúdo precisa ser completamente refeito para capturar
a voz autêntica do founder. Score muito abaixo do threshold.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Validado por: Beatriz (Voice Validator)
Data: 2025-10-22T23:50:00Z
```

---

### Caso 3: Arquivo Não Encontrado

```bash
$ /cf-voice-score arquivo-inexistente.md
```

**Output:**
```
🎯 VOICE SCORE VALIDATOR
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

❌ ERRO: Arquivo não encontrado

Arquivo: arquivo-inexistente.md
Path absoluto: /Users/founder/content-foundry/arquivo-inexistente.md

O arquivo especificado não existe.

Verifique:
- Path está correto
- Arquivo existe no diretório
- Permissões de leitura estão corretas

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
```

---

## Casos de Uso

### 1. Validar Post Antes de Publicar

```bash
# Gerar post com workflow
/cf-workflow producao-express

# Validar voice score manualmente (segunda opinião)
/cf-voice-score docs/content/linkedin/2025-10-22-novo-post.md

# Se >= 8.5, publicar
```

### 2. Melhorar Rascunho Iterativamente

```bash
# Escrever rascunho manualmente
vim drafts/rascunho.md

# Validar
/cf-voice-score drafts/rascunho.md
# Score: 7.2 (feedback com sugestões)

# Editar baseado no feedback
vim drafts/rascunho.md

# Re-validar
/cf-voice-score drafts/rascunho.md
# Score: 8.6 ✅ Aprovado!
```

### 3. Comparar Múltiplas Versões

```bash
# Validar versão A
/cf-voice-score drafts/post-versao-a.md
# Score: 8.3

# Validar versão B
/cf-voice-score drafts/post-versao-b.md
# Score: 8.9

# Escolher versão B (maior score)
```

### 4. Auditar Posts Antigos

```bash
# Validar posts já publicados
/cf-voice-score docs/content/linkedin/2025-09-15-post-antigo.md

# Se score baixo, considera republicar versão melhorada
```

---

## Integração com Workflow

Este comando pode ser usado:

1. **Durante Workflow #3 (Step 3)**
   - Beatriz executa automaticamente
   - Founder pode re-executar manualmente se quiser segunda opinião

2. **Fora do Workflow**
   - Validar rascunhos antes de submetê-los ao workflow
   - Validar posts editados manualmente

3. **Como Quality Gate Standalone**
   - Executar apenas voice validation, sem outros gates
   - Útil para validação rápida

---

## Pré-Requisitos

Para este comando funcionar:

- [ ] Beatriz (voice-validator) implementada
- [ ] `docs/brain.md` existe e está completo
- [ ] `.content-foundry/data/chavoes-ia.yaml` existe
- [ ] `.content-foundry/data/padroes-autenticidade.yaml` existe
- [ ] Arquivo de post existe e é legível

---

## Configuração

### Threshold Personalizado

Threshold padrão é 8.5, mas pode ser configurado em `.content-foundry/config.yaml`:

```yaml
quality-gates:
  voice-validation:
    threshold: 8.5  # Pode ajustar (ex: 8.0, 9.0)
    strict_mode: true  # false = permite borderline cases
```

### Modo Verbose

```bash
# Modo normal (padrão)
/cf-voice-score arquivo.md

# Modo verbose (mais detalhes)
/cf-voice-score arquivo.md --verbose

# Modo JSON (para scripting)
/cf-voice-score arquivo.md --json
```

---

## Troubleshooting

### Problema: "brain.md não encontrado"

**Causa:** Brain não existe ou está em local errado

**Solução:**
```bash
# Verificar se brain existe
ls -la docs/brain.md

# Se não existe, executar onboarding
/cf-onboarding
```

### Problema: "chavoes-ia.yaml não encontrado"

**Causa:** Arquivos de dados de Beatriz não existem

**Solução:**
```bash
# Verificar arquivos existem
ls -la .content-foundry/data/chavoes-ia.yaml
ls -la .content-foundry/data/padroes-autenticidade.yaml

# Se não existem, reinstalar Content Foundry ou criar manualmente
```

### Problema: Score sempre < 8.5

**Causa:** Brain.md incompleto ou conteúdo muito genérico

**Solução:**
1. Atualizar brain.md com mais contexto (histórias, exemplos de voz)
2. Executar `/cf-validate-brain` para verificar completude
3. Adicionar mais especificidade ao post (números, contexto)
4. Remover chavões de IA

---

## Performance

**Tempo de execução:**
- Arquivo pequeno (<500 palavras): ~5-10 segundos
- Arquivo médio (500-1000 palavras): ~10-15 segundos
- Arquivo grande (>1000 palavras): ~15-20 segundos

**Recursos:**
- Carrega brain.md (uma vez)
- Carrega chavoes-ia.yaml (uma vez)
- Carrega padroes-autenticidade.yaml (uma vez)
- Analisa conteúdo (10 critérios)

---

## Logs

Execução é logada em `.content-foundry/logs/voice-score-TIMESTAMP.log`:

```
=== Voice Score Validation ===
Data: 2025-10-22T23:45:00Z
Arquivo: docs/content/linkedin/2025-10-22-churn-reducao.md

Brain.md carregado: 100%
Chavoes-ia.yaml carregado: OK
Padroes-autenticidade.yaml carregado: OK

Validação iniciada...

Critério 1 (Vocabulário): 1.0/1.0
Critério 2 (Tom): 1.0/1.0
Critério 3 (Estrutura): 0.9/1.0
Critério 4 (Chavões IA): 1.0/1.0
Critério 5 (Especificidade): 1.0/1.0
Critério 6 (Histórias): 0.9/1.0
Critério 7 (Valores): 1.0/1.0
Critério 8 (Safe Mode): 1.0/1.0
Critério 9 (Pilares): 0.9/1.0
Critério 10 (Emoção): 0.95/1.0

Voice Score: 8.85/10
Decisão: APROVADO

Validação concluída em 8.3s
```

---

## Versionamento

| Versão | Data | Mudanças | Autor |
|--------|------|----------|-------|
| 1.0.0 | 2025-10-22 | Comando inicial criado | dev-agent |

---

## Referências

**Agentes:**
- `.content-foundry/agents/voice-validator.md` (Beatriz)

**Data:**
- `.content-foundry/data/chavoes-ia.yaml` (150 chavões)
- `.content-foundry/data/padroes-autenticidade.yaml` (12 padrões)

**Checklists:**
- `.content-foundry/checklists/validacao-voz.md` (10 critérios)

**Workflows:**
- `.content-foundry/workflows/03-producao-express.md` (Step 3 usa Beatriz)

**Comandos Relacionados:**
- `/cf-brand-check` - Valida brand alignment
- `/cf-quality-gates` - Executa todos os 5 quality gates
- `/cf-chamar-agente voice-validator` - Ativa Beatriz em modo interativo

---

**Powered by Content Foundry™**
*Versão: 1.0.0*
