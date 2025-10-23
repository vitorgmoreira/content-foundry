# Comando: /cf-brand-check

**Descrição:** Valida brand alignment de um post usando Ana (Brand Guardian)

**Categoria:** Validação
**Ícone:** 🛡️
**Aliases:** /cf-validar-marca, /cf-brand
**Versão:** 1.0.0
**Story:** 04.022

---

## Uso

```bash
/cf-brand-check {arquivo-post}
```

### Argumentos

| Argumento | Tipo | Obrigatório | Descrição |
|-----------|------|-------------|-----------|
| arquivo-post | path | Sim | Caminho para arquivo do post (md ou txt) |

### Exemplos

```bash
# Validar post salvo
/cf-brand-check docs/content/linkedin/2025-10-22-churn-reducao.md

# Validar rascunho
/cf-brand-check drafts/post-teste.md

# Validar com output verbose
/cf-brand-check docs/content/linkedin/post.md --verbose
```

---

## Funcionalidade

Este comando executa Ana (Brand Guardian) para validar brand alignment de um post contra os pilares, valores e safe mode do founder.

### Processo

1. **Validar arquivo existe**
   - Verifica se arquivo no path existe
   - Se não existe: erro + mensagem

2. **Ler conteúdo do arquivo**
   - Carrega conteúdo completo
   - Remove frontmatter se presente
   - Extrai corpo do post

3. **Ativar Ana**
   - Carrega `.content-foundry/agents/brand-guardian.md`
   - Carrega `docs/brain.md` (100% - Deep Mode)
   - Carrega `.content-foundry/checklists/brand-alignment-checklist.md`

4. **Executar 4 Critérios de Brand Alignment**

   **Critério 1: Pilar Alignment (peso 30%)**
   - Identifica qual pilar do brain.md o post aborda
   - Avalia grau de alinhamento (0-10)
   - Threshold: >= 7.0/10

   **Critério 2: Valores Alignment (peso 25%)**
   - Lista todos os valores do founder (brain.md)
   - Verifica quais valores o post reflete
   - Verifica se algum valor é contradito
   - Threshold: >= 7.0/10 E zero contradições

   **Critério 3: Safe Mode Compliance (peso 30%)**
   - Lista todos os tópicos de safe mode
   - Escaneia post para menções (diretas ou indiretas)
   - Threshold: Zero menções (10/10 ou 0/10)

   **Critério 4: Brand Consistency (peso 15%)**
   - Analisa vocabulário, tom, estilo
   - Teste de autenticidade: "Soa como o founder?"
   - Threshold: >= 8.0/10

5. **Calcular Score Final**
   ```
   Score = (Pilar × 0.30) + (Valores × 0.25) + (Safe Mode × 0.30) + (Consistência × 0.15)
   ```
   - Threshold: >= 8.0/10

6. **Gerar relatório**
   - Score total
   - Breakdown por critério
   - Problemas identificados
   - Sugestões de correção

7. **Decisão**
   - Se score >= 8.0: ✅ APROVADO
   - Se score < 8.0: ❌ REPROVADO + feedback

---

## Output Esperado

### Caso 1: Post APROVADO (Score >= 8.0)

```bash
$ /cf-brand-check docs/content/linkedin/2025-10-22-churn-reducao.md
```

**Output:**
```
🛡️ BRAND ALIGNMENT CHECK
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

📄 Arquivo: docs/content/linkedin/2025-10-22-churn-reducao.md
📊 Carregando brain.md... 100%
🔍 Analisando brand alignment...

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

BRAND ALIGNMENT SCORE: 10.0/10
✅ APROVADO (threshold: 8.0)

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

BREAKDOWN POR CRITÉRIO:

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
1. PILAR ALIGNMENT (Peso: 30%)
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Pilar Identificado: "Customer Success e Retenção"

Grau de Alinhamento: Alinhamento Direto
→ Post aborda diretamente o tema de churn e retenção
→ Métricas de CS mencionadas: churn, NPS, ARR
→ Estratégias de retenção listadas

Score: 10.0/10 ✅

Justificativa:
Post está 100% alinhado com o pilar. Tema central (redução
de churn) é core do pilar "Customer Success e Retenção".

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
2. VALORES ALIGNMENT (Peso: 25%)
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Valores do Founder (de brain.md):
1. Dados > Opinião
2. Execução > Planejamento
3. Transparência > Aparência

Análise por Valor:

✅ "Dados > Opinião": REFLETE
   Evidência: $47k ARR, churn 32%, NPS < 7, < 2h
   Post usa métricas concretas, não opiniões vagas

✅ "Execução > Planejamento": REFLETE
   Evidência: "Parei tudo", ações implementadas (NPS, check-ins)
   Foco em ação, não em teoria

✅ "Transparência > Aparência": REFLETE
   Evidência: "Erro clássico", admite falha
   Vulnerabilidade autêntica

Valores Refletidos: 3/3 (100%)
Valores Contraditos: 0

Score: 10.0/10 ✅

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
3. SAFE MODE COMPLIANCE (Peso: 30%)
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Tópicos de Safe Mode (de brain.md):
1. Política
2. Religião
3. Controvérsias pessoais

Escaneamento do Post:

✅ Política: Não mencionado
✅ Religião: Não mencionado
✅ Controvérsias: Não mencionado

Total de Menções: 0

Score: 10.0/10 ✅

Status: ✅ COMPLIANCE TOTAL

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
4. BRAND CONSISTENCY (Peso: 15%)
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Análise de Linguagem:
✅ Vocabulário característico: "Erro clássico", "Parei tudo", "balde furado"
✅ Nenhuma palavra estranha ao founder
✅ Expressões autênticas presentes

Análise de Tom:
✅ Tom informal consistente
✅ Nível de tecnicismo adequado (métricas SaaS)
✅ Vulnerabilidade autêntica (não forçada)

Análise de Estilo:
✅ Storytelling: estrutura problema-solução-resultado
✅ Frases curtas e diretas
✅ Uso de dados como founder faz

Teste de Autenticidade:
"Se eu mostrasse este post para alguém que conhece o founder,
essa pessoa acreditaria que ele escreveu?"

Resposta: ✅ SIM - Perfeitamente autêntico (10/10)

Score: 10.0/10 ✅

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

CÁLCULO DO SCORE FINAL:

Score = (Pilar × 0.30) + (Valores × 0.25) + (Safe Mode × 0.30) + (Consistência × 0.15)
      = (10.0 × 0.30) + (10.0 × 0.25) + (10.0 × 0.30) + (10.0 × 0.15)
      = 3.0 + 2.5 + 3.0 + 1.5
      = 10.0/10

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

✅ PONTOS FORTES:

✅ Alinhamento direto com pilar core (CS e Retenção)
✅ Reflete 100% dos valores do founder
✅ Zero violações de safe mode
✅ Voz perfeitamente autêntica
✅ Métricas e dados concretos
✅ Vulnerabilidade genuína

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

RECOMENDAÇÃO: ✅ APROVADO PARA PUBLICAÇÃO

Este conteúdo está perfeitamente alinhado com sua marca.
Score máximo (10.0). Pronto para publicar.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Validado por: Ana (Brand Guardian)
Data: 2025-10-22T23:55:00Z
```

---

### Caso 2: Post REPROVADO (Safe Mode Violation)

```bash
$ /cf-brand-check drafts/post-problematico.md
```

**Output:**
```
🛡️ BRAND ALIGNMENT CHECK
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

📄 Arquivo: drafts/post-problematico.md
📊 Carregando brain.md... 100%
🔍 Analisando brand alignment...

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

BRAND ALIGNMENT SCORE: 6.35/10
❌ REPROVADO (threshold: 8.0)

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

BREAKDOWN POR CRITÉRIO:

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
1. PILAR ALIGNMENT (Peso: 30%)
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Pilar Identificado: "Customer Success e Retenção"

Grau: Alinhamento Direto
Score: 10.0/10 ✅

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
2. VALORES ALIGNMENT (Peso: 25%)
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Valores Refletidos: 2/3 (67%)
Valores Contraditos: 0

Score: 8.0/10 ✅

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
3. SAFE MODE COMPLIANCE (Peso: 30%)
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

⚠️ VIOLAÇÃO DETECTADA

Tópico Violado: Política
Tipo de Menção: Indireta
Trecho Problemático (linha 12):
  "...considerando o cenário político atual, as empresas
   precisam adaptar suas estratégias..."

Total de Menções: 1

Score: 0.0/10 ❌

Status: ❌ BLOQUEIO AUTOMÁTICO

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
4. BRAND CONSISTENCY (Peso: 15%)
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Score: 9.0/10 ✅

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

CÁLCULO DO SCORE FINAL:

Score = (10.0 × 0.30) + (8.0 × 0.25) + (0.0 × 0.30) + (9.0 × 0.15)
      = 3.0 + 2.0 + 0.0 + 1.35
      = 6.35/10 ❌

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

❌ PROBLEMAS IDENTIFICADOS:

🚨 CRÍTICO - VIOLAÇÃO DE SAFE MODE

Tópico Violado: Política
Tipo de Menção: Indireta
Trecho: "...considerando o cenário político atual..."

⚠️ AÇÃO OBRIGATÓRIA:

1. REMOVER completamente a menção ao "cenário político"
2. REESCREVER trecho afetado sem referência a política
3. NÃO PUBLICAR até correção

Founder explicitamente evita este tópico (brain.md safe_mode).
Violação compromete confiança e marca.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

SUGESTÕES DE CORREÇÃO:

Trecho Atual (linha 12):
"...considerando o cenário político atual, as empresas
 precisam adaptar suas estratégias..."

Sugestão de Reescrita:
"...considerando mudanças no mercado, as empresas precisam
 adaptar suas estratégias..."

OU

"...com a volatilidade atual, as empresas precisam adaptar
 suas estratégias..."

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

RECOMENDAÇÃO: ❌ NÃO PUBLICAR

Post viola safe mode. Correção obrigatória antes de publicação.
Após correção, re-executar /cf-brand-check.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Validado por: Ana (Brand Guardian)
Data: 2025-10-22T23:58:00Z
```

---

### Caso 3: Post REPROVADO (Desalinhamento com Pilares)

```bash
$ /cf-brand-check drafts/post-generico.md
```

**Output:**
```
🛡️ BRAND ALIGNMENT CHECK
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

BRAND ALIGNMENT SCORE: 5.5/10
❌ REPROVADO (threshold: 8.0)

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

BREAKDOWN POR CRITÉRIO:

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
1. PILAR ALIGNMENT (Peso: 30%)
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Pilar Identificado: Nenhum

Tema do Post: "Dicas gerais de empreendedorismo"

Pilares Disponíveis (de brain.md):
1. Customer Success e Retenção
2. Métricas e Data-Driven Growth
3. Liderança em Startups

Análise:
❌ Tema muito genérico ("empreendedorismo")
❌ Não conecta com nenhum pilar específico
❌ Founder tem expertise definida, post ignora isso

Grau: Sem Alinhamento
Score: 0.0/10 ❌

Problema:
Post aborda empreendedorismo de forma vaga. Founder tem pilares
específicos (CS, Métricas, Liderança). Escolha um pilar e
aprofunde nesse tema.

Sugestão:
Reescrever focando em um pilar específico. Exemplo:
- Se for falar de crescimento → Pilar "Métricas e Data-Driven"
- Se for falar de times → Pilar "Liderança em Startups"
- Se for falar de retenção → Pilar "Customer Success"

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
2. VALORES ALIGNMENT (Peso: 25%)
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Valores Refletidos: 0/3 (0%)
Valores Contraditos: 1

❌ Valor Contradito: "Dados > Opinião"
   Evidência: Post usa opiniões genéricas sem dados/métricas

Score: 0.0/10 ❌

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
3. SAFE MODE COMPLIANCE (Peso: 30%)
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Total de Menções: 0
Score: 10.0/10 ✅

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
4. BRAND CONSISTENCY (Peso: 15%)
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Teste de Autenticidade:
❌ NÃO - Não soa como founder (2/10)

Problemas:
❌ Tom genérico motivacional
❌ Palavras como "dicas de ouro", "transformador"
❌ Founder prefere storytelling com dados

Score: 2.0/10 ❌

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

CÁLCULO:
Score = (0.0 × 0.30) + (0.0 × 0.25) + (10.0 × 0.30) + (2.0 × 0.15)
      = 0 + 0 + 3.0 + 0.3
      = 3.3/10 ❌

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

RECOMENDAÇÃO: ❌ REESCREVER COMPLETAMENTE

Score muito baixo. Post não reflete sua marca.
Escolha um pilar específico e reescreva.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Validado por: Ana (Brand Guardian)
```

---

## Casos de Uso

### 1. Validar Brand Alignment Antes de Publicar

```bash
# Após gerar post com workflow
/cf-workflow producao-express

# Validar brand alignment (segunda opinião)
/cf-brand-check docs/content/linkedin/2025-10-22-novo-post.md

# Se >= 8.0, publicar
```

### 2. Verificar Se Tópico Está Alinhado com Pilares

```bash
# Antes de escrever, validar um rascunho conceitual
vim drafts/conceito.md
# "Quero falar sobre liderança remota..."

/cf-brand-check drafts/conceito.md
# Verifica se "liderança remota" alinha com pilares
```

### 3. Auditar Safe Mode

```bash
# Validar que post não menciona tópicos proibidos
/cf-brand-check drafts/post-sensivel.md

# Se safe mode violation, corrigir antes de prosseguir
```

### 4. Comparar Alinhamento de Múltiplas Versões

```bash
/cf-brand-check drafts/versao-a.md  # Score: 7.5
/cf-brand-check drafts/versao-b.md  # Score: 9.2

# Escolher versão B (melhor alinhamento)
```

---

## Integração com Workflow

Este comando é usado:

1. **Durante Workflow #3 (Step 4)**
   - Ana executa automaticamente
   - Founder pode re-executar manualmente

2. **Fora do Workflow**
   - Validar rascunhos antes de workflow
   - Auditar posts antigos

3. **Como Quality Gate Standalone**
   - Executar apenas brand alignment
   - Útil para validação rápida de tópicos

---

## Pré-Requisitos

- [ ] Ana (brand-guardian) implementada
- [ ] `docs/brain.md` existe com pilares, valores, safe mode
- [ ] `.content-foundry/checklists/brand-alignment-checklist.md` existe
- [ ] Arquivo de post existe e é legível

---

## Configuração

### Threshold Personalizado

```yaml
# .content-foundry/config.yaml
quality-gates:
  brand-alignment:
    threshold: 8.0  # Pode ajustar (ex: 7.5, 8.5)
    safe_mode_strict: true  # false = permite menções leves
```

---

## Troubleshooting

### Problema: "Pilares não encontrados em brain.md"

**Solução:**
```bash
# Verificar brain.md tem seção pilares
grep -A 10 "pilares:" docs/brain.md

# Se não tem, adicionar pilares ao brain.md
```

### Problema: "Safe mode sempre detecta violações falsas"

**Solução:**
1. Revisar tópicos de safe mode em brain.md
2. Ajustar nível de restrição (nunca/geralmente/contexto)
3. Se falso positivo, reportar para melhoria

---

## Performance

**Tempo:** ~10-15 segundos
- Carregamento: 5s
- Análise 4 critérios: 5-10s

---

## Logs

```
.content-foundry/logs/brand-check-TIMESTAMP.log
```

---

## Versionamento

| Versão | Data | Mudanças | Autor |
|--------|------|----------|-------|
| 1.0.0 | 2025-10-22 | Comando inicial | dev-agent |

---

## Referências

**Agentes:**
- `.content-foundry/agents/brand-guardian.md` (Ana)

**Checklists:**
- `.content-foundry/checklists/brand-alignment-checklist.md`

**Comandos Relacionados:**
- `/cf-voice-score` - Valida voice score
- `/cf-quality-gates` - Executa todos os 5 quality gates

---

**Powered by Content Foundry™**
