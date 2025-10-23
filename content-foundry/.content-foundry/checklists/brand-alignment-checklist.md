# Checklist: Brand Alignment

**Versão:** 1.0.0
**Data:** 2025-10-22
**Story:** 04.019
**Usado por:** Ana (Brand Guardian) - Gate 4 dos Quality Gates

---

## Objetivo

Esta checklist é usada por Ana para validar sistematicamente o alinhamento de marca de todo conteúdo antes da publicação.

**Score mínimo para aprovação:** 8.0/10 (80%)

---

## Critério 1: Pilar Alignment (Peso: 30%)

**Objetivo:** Verificar se conteúdo está relacionado a pelo menos 1 pilar

### 1.1 Identificação do Pilar

- [ ] Identifiquei claramente qual é o tema central do conteúdo
- [ ] Li todos os pilares de conteúdo em `brain.md`
- [ ] Comparei tema com cada pilar
- [ ] Identifiquei qual pilar melhor se relaciona (ou se nenhum)

**Pilar identificado:** _________________

### 1.2 Grau de Alinhamento

Marque o nível de alinhamento:

- [ ] **10/10 - Alinhamento Direto:** Conteúdo aborda diretamente o pilar (ex: post sobre churn para pilar "Customer Success")
- [ ] **8-9/10 - Alinhamento Forte:** Conteúdo relacionado de forma clara ao pilar
- [ ] **7/10 - Alinhamento Moderado:** Conteúdo relacionado indiretamente
- [ ] **4-6/10 - Alinhamento Fraco:** Conteúdo tangencialmente relacionado
- [ ] **1-3/10 - Alinhamento Mínimo:** Conteúdo fracamente relacionado
- [ ] **0/10 - Sem Alinhamento:** Conteúdo não relacionado a nenhum pilar

**Score:** ___/10

### 1.3 Decisão

- [ ] Score >= 7/10? Se SIM: ✅ PASS
- [ ] Score < 7/10? Se SIM: ❌ FAIL

**Se FAIL, sugestão de correção:**
```
Problema: [descrever]
Sugestão: Reescrever conteúdo focando em [Pilar X]
Ângulo sugerido: [como abordar o pilar]
```

---

## Critério 2: Valores Alignment (Peso: 25%)

**Objetivo:** Verificar se conteúdo reflete valores do founder

### 2.1 Listagem de Valores

Listar todos os valores de `brain.md`:

1. Valor 1: _________________
2. Valor 2: _________________
3. Valor 3: _________________
4. Valor 4: _________________
5. Valor 5: _________________

**Total de valores:** ___

### 2.2 Análise por Valor

Para cada valor, marque:
- **R** = Reflete (conteúdo demonstra o valor)
- **N** = Neutro (conteúdo não aborda o valor)
- **C** = Contradiz (conteúdo vai contra o valor)

| Valor | R/N/C | Evidência (trecho do conteúdo) | Score Individual |
|-------|-------|--------------------------------|------------------|
| Valor 1 | [ ] R [ ] N [ ] C | | __/10 |
| Valor 2 | [ ] R [ ] N [ ] C | | __/10 |
| Valor 3 | [ ] R [ ] N [ ] C | | __/10 |
| Valor 4 | [ ] R [ ] N [ ] C | | __/10 |
| Valor 5 | [ ] R [ ] N [ ] C | | __/10 |

### 2.3 Cálculo de Score

**Valores refletidos:** ___ (quantos marcados como R)
**Valores contraditos:** ___ (quantos marcados como C)
**Porcentagem de valores refletidos:** ___% = (valores refletidos / total) × 100

**Score baseado em porcentagem:**
- >= 80% refletidos: 10/10
- 70-79% refletidos: 9/10
- 60-69% refletidos: 8/10
- 50-59% refletidos: 7/10
- 40-49% refletidos: 6/10
- < 40% refletidos: 0-5/10

**IMPORTANTE:** Se qualquer valor foi CONTRADITO (C), score automático = 0/10

**Score:** ___/10

### 2.4 Decisão

- [ ] Score >= 7/10 E nenhum valor contradito? Se SIM: ✅ PASS
- [ ] Score < 7/10 OU valor contradito? Se SIM: ❌ FAIL

**Se FAIL, sugestão de correção:**
```
Problema: [qual valor foi contradito ou score baixo]
Evidência: [trecho problemático]
Sugestão: [como ajustar conteúdo para refletir valor]
```

---

## Critério 3: Safe Mode Compliance (Peso: 30%)

**Objetivo:** Garantir que conteúdo NÃO aborda tópicos de safe mode

### 3.1 Listagem de Tópicos de Safe Mode

Listar todos os tópicos de safe mode de `brain.md`:

1. Tópico 1: _________________
2. Tópico 2: _________________
3. Tópico 3: _________________
4. Tópico 4: _________________
5. Tópico 5: _________________

**Total de tópicos:** ___

### 3.2 Verificação de Menções

Para cada tópico, verificar se conteúdo menciona (direta ou indiretamente):

| Tópico | Mencionado? | Tipo de Menção | Trecho/Linha |
|--------|-------------|----------------|--------------|
| Tópico 1 | [ ] SIM [ ] NÃO | Direta / Indireta | |
| Tópico 2 | [ ] SIM [ ] NÃO | Direta / Indireta | |
| Tópico 3 | [ ] SIM [ ] NÃO | Direta / Indireta | |
| Tópico 4 | [ ] SIM [ ] NÃO | Direta / Indireta | |
| Tópico 5 | [ ] SIM [ ] NÃO | Direta / Indireta | |

**Total de menções:** ___

### 3.3 Score

- **0 menções:** Score = 10/10 ✅
- **>= 1 menção:** Score = 0/10 ❌

**Score:** ___/10

### 3.4 Decisão

- [ ] Zero menções? Se SIM: ✅ PASS
- [ ] >= 1 menção? Se SIM: ❌ FAIL (BLOQUEIO AUTOMÁTICO)

**Se FAIL, sugestão de correção:**
```
⚠️ VIOLAÇÃO DE SAFE MODE DETECTADA

Tópico violado: [nome do tópico]
Tipo de menção: [Direta / Indireta]
Trecho problemático: [transcrever]

AÇÃO OBRIGATÓRIA:
- Remover completamente menção ao tópico
- Reescrever seção afetada
- Não publicar até correção

Founder explicitamente evita este tópico.
Violação compromete confiança e marca.
```

---

## Critério 4: Brand Consistency (Peso: 15%)

**Objetivo:** Verificar consistência geral com marca do founder

### 4.1 Análise de Linguagem

- [ ] Vocabulário usado é consistente com exemplos de brain.md
- [ ] Palavras/expressões características do founder estão presentes
- [ ] Nenhuma palavra/expressão "estranha" que founder não usaria

**Palavras características identificadas:** _________________
**Palavras inconsistentes (se houver):** _________________

### 4.2 Análise de Tom

- [ ] Tom (formal/informal) consistente com founder
- [ ] Nível de tecnicismo adequado (técnico/acessível)
- [ ] Humor (se houver) condiz com estilo do founder
- [ ] Vulnerabilidade (se houver) é autêntica

**Tom identificado:** _________________
**Tom esperado (de brain.md):** _________________
**Consistente?** [ ] SIM [ ] NÃO

### 4.3 Análise de Estilo

- [ ] Estrutura narrativa (storytelling, direto, provocativo) alinhada
- [ ] Comprimento de frases típico do founder
- [ ] Uso de dados/exemplos como founder faria
- [ ] Formatação (listas, quebras) consistente

**Estilo identificado:** _________________
**Consistente com brain.md?** [ ] SIM [ ] NÃO

### 4.4 Teste de Autenticidade

**Pergunta decisiva:** "Se eu mostrasse este conteúdo para alguém que conhece o founder, essa pessoa acreditaria que ele escreveu?"

- [ ] **SIM - Perfeitamente autêntico (10/10):** Impossível distinguir
- [ ] **PROVAVELMENTE - Muito autêntico (8-9/10):** Pequenas inconsistências
- [ ] **TALVEZ - Moderadamente autêntico (6-7/10):** Algumas inconsistências
- [ ] **PROVAVELMENTE NÃO - Pouco autêntico (4-5/10):** Muitas inconsistências
- [ ] **NÃO - Não autêntico (0-3/10):** Claramente não soa como founder

**Score:** ___/10

### 4.5 Decisão

- [ ] Score >= 8/10? Se SIM: ✅ PASS
- [ ] Score < 8/10? Se SIM: ❌ FAIL

**Se FAIL, sugestão de correção:**
```
Problema: [inconsistências identificadas]

Linguagem: [palavras/expressões a ajustar]
Tom: [como ajustar tom]
Estilo: [como tornar mais autêntico]

Comparar com exemplos em brain.md seção "Voz e Tom".
```

---

## Score Final de Brand Alignment

### Cálculo

```
Score Final = (Pilar × 0.30) + (Valores × 0.25) + (Safe Mode × 0.30) + (Consistência × 0.15)
```

**Breakdown:**
- Pilar Alignment: ___/10 × 0.30 = ___
- Valores Alignment: ___/10 × 0.25 = ___
- Safe Mode: ___/10 × 0.30 = ___
- Brand Consistency: ___/10 × 0.15 = ___

**SCORE FINAL:** ___/10

---

## Decisão Final

### Threshold

**Score Final >= 8.0/10?**

- [ ] ✅ **SIM: APROVADO** → Conteúdo pode ser publicado
- [ ] ❌ **NÃO: REPROVADO** → Conteúdo precisa revisão

### Relatório de Decisão

**Status:** [ ] APROVADO [ ] REPROVADO

**Justificativa:**
_________________________________________________________________
_________________________________________________________________

**Problemas identificados (se reprovado):**
1. _________________________________________________________________
2. _________________________________________________________________
3. _________________________________________________________________

**Sugestões de correção (se reprovado):**
1. _________________________________________________________________
2. _________________________________________________________________
3. _________________________________________________________________

**Próximos passos:**
- [ ] Se APROVADO: Prosseguir para Gate 5 (Editorial)
- [ ] Se REPROVADO: Entrar em loop de revisão (voltar Step 2 ou ajustar manualmente)

---

## Assinatura

**Validado por:** Ana Silva - Brand Guardian
**Data:** _________________
**Timestamp:** _________________

---

## Exemplos de Uso

### Exemplo 1: Post APROVADO (Score 9.2/10)

**Conteúdo:** Post sobre "Como Reduzi Churn de 15% para 5%"

**Checklist Preenchida:**

**Critério 1: Pilar Alignment**
- Pilar identificado: "Customer Success e Retenção"
- Grau: Alinhamento Direto (10/10)
- Decisão: ✅ PASS

**Critério 2: Valores Alignment**
- Valor "Dados > Opinião": Reflete (usa métricas 15%, 5%, 32%, 140%)
- Valor "Execução > Planejamento": Reflete (foco em ação)
- Valor "Transparência > Aparência": Reflete (admite erro)
- Porcentagem refletida: 100% (3/3)
- Score: 10/10
- Decisão: ✅ PASS

**Critério 3: Safe Mode**
- Tópico "Política": Não mencionado
- Tópico "Religião": Não mencionado
- Total de menções: 0
- Score: 10/10
- Decisão: ✅ PASS

**Critério 4: Brand Consistency**
- Linguagem: Consistente ("Erro clássico", "Parei tudo")
- Tom: Conversacional (consistente)
- Estilo: Storytelling (consistente)
- Autenticidade: SIM - Perfeitamente autêntico
- Score: 9/10
- Decisão: ✅ PASS

**Score Final:** (10×0.30) + (10×0.25) + (10×0.30) + (9×0.15) = 3.0 + 2.5 + 3.0 + 1.35 = **9.85/10**

**Decisão:** ✅ APROVADO

---

### Exemplo 2: Post REPROVADO (Score 5.5/10)

**Conteúdo:** Post genérico sobre "5 Dicas de Empreendedorismo"

**Checklist Preenchida:**

**Critério 1: Pilar Alignment**
- Pilar identificado: Nenhum (tópico muito genérico)
- Grau: Sem Alinhamento (0/10)
- Decisão: ❌ FAIL

**Critério 2: Valores Alignment**
- Valor "Dados > Opinião": Neutro (post é opinião vaga)
- Valor "Execução > Planejamento": Neutro
- Valor "Transparência > Aparência": Contradiz (post parece genérico para impressionar)
- Porcentagem refletida: 0% (0/3)
- Valor contradito: SIM
- Score: 0/10
- Decisão: ❌ FAIL

**Critério 3: Safe Mode**
- Tópico "Política": Mencionado indiretamente (dica 3 fala sobre cenário político)
- Total de menções: 1
- Score: 0/10
- Decisão: ❌ FAIL (BLOQUEIO AUTOMÁTICO)

**Critério 4: Brand Consistency**
- Linguagem: Inconsistente (usa "dicas de ouro", "transformador")
- Tom: Muito genérico (não soa como founder)
- Estilo: Lista rasa (founder prefere storytelling)
- Autenticidade: NÃO - Não autêntico
- Score: 2/10
- Decisão: ❌ FAIL

**Score Final:** (0×0.30) + (0×0.25) + (0×0.30) + (2×0.15) = 0 + 0 + 0 + 0.3 = **0.3/10**

**Decisão:** ❌ REPROVADO

**Problemas:**
1. Não alinha com nenhum pilar (conteúdo genérico)
2. Contradiz valor "Transparência > Aparência"
3. ⚠️ VIOLAÇÃO DE SAFE MODE (menciona política)
4. Não soa como founder (chavões, tom genérico)

**Sugestões:**
1. Escolher tópico específico alinhado a um pilar
2. Usar experiência real, não dicas genéricas
3. Remover menção a política completamente
4. Reescrever com voz autêntica (baseado em brain.md)

---

## Changelog

| Versão | Data | Mudanças | Autor |
|--------|------|----------|-------|
| 1.0.0 | 2025-10-22 | Checklist inicial com 4 critérios e exemplos | dev-agent |

---

## Referências

- `.content-foundry/agents/brand-guardian.md` (Ana)
- `.content-foundry/checklists/pronto-para-publicar-linkedin.md` (Gate 4)
- `docs/brain.md` (pilares, valores, safe mode)
