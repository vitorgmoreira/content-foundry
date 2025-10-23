# Comando: /cf-quality-gates

**Descrição:** Executa todos os 5 quality gates em sequência (validação completa)

**Categoria:** Validação
**Ícone:** ✅
**Aliases:** /cf-validar-completo, /cf-gates
**Versão:** 1.0.0
**Story:** 04.022

---

## Uso

```bash
/cf-quality-gates {arquivo-post}
```

### Argumentos

| Argumento | Tipo | Obrigatório | Descrição |
|-----------|------|-------------|-----------|
| arquivo-post | path | Sim | Caminho para arquivo do post (md ou txt) |

### Flags Opcionais

| Flag | Descrição |
|------|-----------|
| `--stop-on-fail` | Para na primeira falha (padrão: executa todos) |
| `--verbose` | Output detalhado de cada gate |
| `--json` | Output em formato JSON |

### Exemplos

```bash
# Validação completa padrão
/cf-quality-gates docs/content/linkedin/2025-10-22-post.md

# Para na primeira falha
/cf-quality-gates post.md --stop-on-fail

# Output verbose
/cf-quality-gates post.md --verbose

# Output JSON (para scripting)
/cf-quality-gates post.md --json
```

---

## Funcionalidade

Este comando executa **todos os 5 quality gates** definidos em `pronto-para-publicar-linkedin.md` em sequência, fornecendo validação completa antes da publicação.

### Os 5 Quality Gates

**Gate 1: Structure (4 critérios)**
- Gancho presente e impactante
- Corpo estruturado (3-8 parágrafos, <= 4 linhas cada)
- CTA conversacional presente
- Formatação LinkedIn-friendly

**Gate 2: Length (2 critérios)**
- >= 800 caracteres
- <= 1300 caracteres

**Gate 3: Authenticity (3 critérios)**
- Voice score >= 8.5 (Beatriz)
- Zero chavões de IA
- Específico (dados, contexto, detalhes)

**Gate 4: Brand Alignment (2 critérios + 4 Ana)**
- Alinhado com >= 1 pilar
- Reflete valores do founder
- **Ana valida 4 critérios adicionais:**
  - Pilar Alignment (30%): >= 7.0/10
  - Valores Alignment (25%): >= 7.0/10
  - Safe Mode (30%): Zero tolerance
  - Brand Consistency (15%): >= 8.0/10
- Score Ana: >= 8.0/10

**Gate 5: Editorial (3 critérios)**
- Safe mode respeitado
- Sem erros de português
- Tom profissional mas conversacional

**Total: 14 critérios - TODOS devem passar (100%)**

---

## Processo

1. **Validar arquivo existe**
2. **Ler conteúdo**
3. **Executar 5 gates sequencialmente**:
   - Gate 1: Structure
   - Gate 2: Length
   - Gate 3: Authenticity (invoca Beatriz)
   - Gate 4: Brand Alignment (invoca Ana)
   - Gate 5: Editorial
4. **Compilar resultados**
5. **Decisão final:**
   - 14/14 (100%): ✅ APROVADO
   - < 14/14: ❌ REPROVADO + feedback

---

## Output Esperado

### Caso 1: Todos os Gates PASSAM (14/14)

```bash
$ /cf-quality-gates docs/content/linkedin/2025-10-22-churn-reducao.md
```

**Output:**
```
✅ QUALITY GATES VALIDATOR
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

📄 Arquivo: docs/content/linkedin/2025-10-22-churn-reducao.md
📊 Executando 5 quality gates...

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

GATE 1: STRUCTURE
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Validando estrutura do post...

✅ 1.1 Gancho presente e impactante
   → "47 clientes pagantes em janeiro/2019. Maio: 15 cancelaram."

✅ 1.2 Corpo estruturado
   → 8 parágrafos, todos <= 4 linhas
   → Narrativa clara: problema → solução → resultado

✅ 1.3 CTA conversacional presente
   → "Você prioriza crescer ou reter?"
   → Tom: pergunta genuína (não forçada)

✅ 1.4 Formatação LinkedIn-friendly
   → Bullets (•) utilizados
   → Parágrafos curtos
   → Quebras de linha estratégicas

Gate 1: 4/4 ✅ PASS
Duração: 3s

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

GATE 2: LENGTH
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Contando caracteres...

Comprimento total: 927 caracteres

✅ 2.1 >= 800 caracteres: 927 ✅
✅ 2.2 <= 1300 caracteres: 927 ✅

Range ideal: 1000-1200 (este post: 927 - OK)

Gate 2: 2/2 ✅ PASS
Duração: 1s

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

GATE 3: AUTHENTICITY
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Ativando Beatriz (Voice Validator)...
Carregando brain.md... 100%

Validando voice score (10 critérios)...

Voice Score: 8.85/10

✅ 3.1 Voice score >= 8.5: 8.85 ✅ (threshold: 8.5)

Escaneando chavões de IA (150 padrões)...

✅ 3.2 Zero chavões detectados: 0 ✅
   → Linguagem 100% autêntica
   → Nenhum marcador de IA genérica

Analisando especificidade...

✅ 3.3 Específico (dados, contexto, detalhes): ✅
   → Números: $47k ARR, Q2/2019, 32%, 5%, NPS < 7, < 2h
   → Contexto: 47 clientes, 15 cancelaram
   → Detalhes: NPS mensal, check-in semanal, Slack VIP

Gate 3: 3/3 ✅ PASS
Voice Score: 8.85/10 ✅
Duração: 8s

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

GATE 4: BRAND ALIGNMENT
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Ativando Ana (Brand Guardian)...
Carregando brain.md... 100%

Validando alinhamento de marca (4 critérios)...

✅ 4.1 Alinhado com >= 1 pilar: ✅
   → Pilar: "Customer Success e Retenção"
   → Grau: Alinhamento Direto (10/10)

✅ 4.2 Reflete valores do founder: ✅
   → "Dados > Opinião": métricas concretas
   → "Execução > Planejamento": ações implementadas
   → "Transparência > Aparência": admite erro

Executando brand alignment detalhado...

  Critério 1 (Pilar): 10.0/10 ✅
  Critério 2 (Valores): 10.0/10 ✅
  Critério 3 (Safe Mode): 10.0/10 ✅
  Critério 4 (Consistência): 10.0/10 ✅

  Brand Alignment Score: 10.0/10 ✅ (threshold: 8.0)

Gate 4: 2/2 + Brand 10.0/10 ✅ PASS
Duração: 10s

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

GATE 5: EDITORIAL
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Checando editorial...

✅ 5.1 Safe mode respeitado: ✅
   → Zero menções a tópicos proibidos
   → Política: não mencionado
   → Religião: não mencionado
   → Controvérsias: não mencionado

✅ 5.2 Sem erros de português: ✅
   → Ortografia: OK
   → Gramática: OK
   → Pontuação: OK

✅ 5.3 Tom profissional mas conversacional: ✅
   → "Erro clássico", "Parei tudo" (conversacional)
   → Métricas concretas (profissional)
   → Vulnerabilidade autêntica (humano)

Gate 5: 3/3 ✅ PASS
Duração: 3s

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

RESULTADO FINAL
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Quality Gates: 14/14 (100%) ✅

✅ Gate 1: Structure (4/4)
✅ Gate 2: Length (2/2)
✅ Gate 3: Authenticity (3/3) - Voice: 8.85/10
✅ Gate 4: Brand Alignment (2/2) - Brand: 10.0/10
✅ Gate 5: Editorial (3/3)

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

DECISÃO: ✅ APROVADO PARA PUBLICAÇÃO

Este post passou em TODOS os quality gates (100%).
Pronto para publicar imediatamente.

Scores:
- Voice: 8.85/10 ✅
- Brand: 10.0/10 ✅
- Quality: 14/14 (100%) ✅

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Duração Total: 25s
Validado por: Ana & Beatriz
Data: 2025-10-22T23:59:00Z
```

---

### Caso 2: Falha em Gate 3 (Voice Score Baixo)

```bash
$ /cf-quality-gates drafts/post-generico.md
```

**Output:**
```
✅ QUALITY GATES VALIDATOR
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

📄 Arquivo: drafts/post-generico.md
📊 Executando 5 quality gates...

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

GATE 1: STRUCTURE
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

✅ 1.1 Gancho presente
✅ 1.2 Corpo estruturado
✅ 1.3 CTA presente
✅ 1.4 Formatação OK

Gate 1: 4/4 ✅ PASS

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

GATE 2: LENGTH
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Comprimento: 1050 caracteres

✅ 2.1 >= 800: 1050 ✅
✅ 2.2 <= 1300: 1050 ✅

Gate 2: 2/2 ✅ PASS

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

GATE 3: AUTHENTICITY
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Ativando Beatriz...

Voice Score: 6.2/10

❌ 3.1 Voice score >= 8.5: 6.2 ❌ (threshold: 8.5)
   PROBLEMA: Score muito abaixo do threshold

Escaneando chavões...

❌ 3.2 Zero chavões: 8 detectados ❌
   - "mudar o jogo"
   - "mergulhar fundo"
   - "In conclusion"
   - "É importante notar que"
   - [+ 4 mais]

❌ 3.3 Específico: Não ❌
   - Sem números concretos
   - Sem contexto específico
   - Generalidades vagas

Gate 3: 0/3 ❌ FAIL

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

⏸️ GATES 4-5: NÃO EXECUTADOS
(Falha no Gate 3 bloqueia validação subsequente)

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

RESULTADO FINAL
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Quality Gates: 6/14 (43%) ❌

✅ Gate 1: Structure (4/4)
✅ Gate 2: Length (2/2)
❌ Gate 3: Authenticity (0/3) - Voice: 6.2/10
⏸️ Gate 4: Brand Alignment (não executado)
⏸️ Gate 5: Editorial (não executado)

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

DECISÃO: ❌ REPROVADO

Post falhou no Gate 3 (Authenticity).
Score: 6/14 critérios (43%).

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

PROBLEMAS CRÍTICOS:

🚨 Voice Score Muito Baixo (6.2 < 8.5)
- 8 chavões de IA detectados
- Vocabulário genérico
- Tom inconsistente

❌ Falta de Especificidade
- Sem números ou dados concretos
- Contexto vago e genérico

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

RECOMENDAÇÕES:

1. REMOVER chavões de IA (veja lista acima)
2. ADICIONAR números específicos, datas, métricas
3. USAR vocabulário do founder (veja brain.md)
4. CONECTAR com história do brain.md
5. SER ESPECÍFICO ao invés de genérico

Para detalhes, executar:
  /cf-voice-score drafts/post-generico.md

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

PRÓXIMOS PASSOS:

A) Reescrever post baseado no feedback
B) Re-executar /cf-quality-gates após correção
C) Considerar usar Workflow #3 (geração assistida)

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
```

---

### Caso 3: Falha em Gate 4 (Safe Mode Violation)

```bash
$ /cf-quality-gates drafts/post-politica.md
```

**Output:**
```
✅ QUALITY GATES VALIDATOR

[Gates 1-3: PASS]

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

GATE 4: BRAND ALIGNMENT
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Ativando Ana...

✅ 4.1 Alinhado com pilar: ✅

❌ 4.2 Valores + Brand Alignment: ❌

Brand Alignment Score: 6.35/10 ❌ (threshold: 8.0)

⚠️ VIOLAÇÃO DE SAFE MODE DETECTADA

Tópico: Política
Trecho: "...cenário político atual..."

Gate 4: 1/2 ❌ FAIL

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

RESULTADO FINAL: 11/14 (79%) ❌

🚨 BLOQUEIO AUTOMÁTICO: SAFE MODE VIOLATION

Post menciona tópico proibido (Política).
NÃO PUBLICAR até correção.

AÇÃO OBRIGATÓRIA:
Remover menção a "cenário político" e re-validar.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
```

---

## Casos de Uso

### 1. Validação Final Antes de Publicar

```bash
# Após workflow ou escrita manual
/cf-quality-gates docs/content/linkedin/2025-10-22-post.md

# Se 14/14 (100%), publicar
# Se falha, corrigir e re-executar
```

### 2. Validação Contínua Durante Edição

```bash
# Escrever rascunho
vim drafts/post.md

# Validar periodicamente
/cf-quality-gates drafts/post.md

# Editar baseado no feedback
# Repetir até 14/14
```

### 3. Audit de Posts Antigos

```bash
# Validar posts publicados anteriormente
for file in docs/content/linkedin/*.md; do
  /cf-quality-gates "$file"
done

# Identificar posts com score baixo para atualização
```

### 4. CI/CD Integration

```bash
# Em pipeline de publicação
/cf-quality-gates post.md --json > result.json

# Parse JSON para decisão automática
if [[ $(jq '.gates_passed' result.json) == "14" ]]; then
  publish_post
fi
```

---

## Integração com Workflow

**Workflow #3 (Step 4):**
- Ana executa os 5 gates automaticamente
- Founder pode re-executar com este comando

**Uso Standalone:**
- Validar posts fora do workflow
- Audit de qualidade

---

## Flags Adicionais

### --stop-on-fail

Para na primeira falha (não executa gates subsequentes):

```bash
/cf-quality-gates post.md --stop-on-fail
```

Útil para feedback rápido durante edição.

### --verbose

Output detalhado de cada gate:

```bash
/cf-quality-gates post.md --verbose
```

Mostra análise completa de Beatriz e Ana.

### --json

Output estruturado para scripting:

```bash
/cf-quality-gates post.md --json
```

**Output JSON:**
```json
{
  "arquivo": "post.md",
  "timestamp": "2025-10-22T23:59:00Z",
  "gates": {
    "gate_1": {
      "nome": "Structure",
      "criterios": 4,
      "passou": 4,
      "status": "pass"
    },
    "gate_2": {
      "nome": "Length",
      "criterios": 2,
      "passou": 2,
      "status": "pass"
    },
    "gate_3": {
      "nome": "Authenticity",
      "criterios": 3,
      "passou": 3,
      "voice_score": 8.85,
      "status": "pass"
    },
    "gate_4": {
      "nome": "Brand Alignment",
      "criterios": 2,
      "passou": 2,
      "brand_score": 10.0,
      "status": "pass"
    },
    "gate_5": {
      "nome": "Editorial",
      "criterios": 3,
      "passou": 3,
      "status": "pass"
    }
  },
  "total": {
    "criterios": 14,
    "passou": 14,
    "percentual": 100
  },
  "scores": {
    "voice": 8.85,
    "brand": 10.0
  },
  "decisao": "aprovado",
  "recomendacao": "pronto-para-publicar"
}
```

---

## Performance

**Tempo Total:** 20-30 segundos

Breakdown:
- Gate 1: 3s
- Gate 2: 1s
- Gate 3: 8s (Beatriz)
- Gate 4: 10s (Ana)
- Gate 5: 3s
- Compilação: 2s

**Total:** ~27s

---

## Troubleshooting

### Problema: Gates sempre falham

**Solução:**
1. Executar gates individuais para diagnóstico:
   ```bash
   /cf-voice-score post.md
   /cf-brand-check post.md
   ```
2. Verificar brain.md está completo
3. Atualizar brain.md com mais contexto

### Problema: Execução muito lenta

**Causa:** Brain.md muito grande ou muitos arquivos carregados

**Solução:**
- Otimizar brain.md (remover duplicatas)
- Usar cache (feature futura)

---

## Logs

```
.content-foundry/logs/quality-gates-TIMESTAMP.log
```

---

## Versionamento

| Versão | Data | Mudanças | Autor |
|--------|------|----------|-------|
| 1.0.0 | 2025-10-22 | Comando inicial | dev-agent |

---

## Referências

**Checklists:**
- `.content-foundry/checklists/pronto-para-publicar-linkedin.md`
- `.content-foundry/checklists/brand-alignment-checklist.md`

**Agentes:**
- `.content-foundry/agents/voice-validator.md` (Beatriz)
- `.content-foundry/agents/brand-guardian.md` (Ana)

**Comandos Relacionados:**
- `/cf-voice-score` - Gate 3 standalone
- `/cf-brand-check` - Gate 4 standalone

**Workflows:**
- `.content-foundry/workflows/03-producao-express.md` (Step 4)

---

**Powered by Content Foundry™**
