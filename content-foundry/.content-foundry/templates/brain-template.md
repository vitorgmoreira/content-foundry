# Cérebro Digital - {NOME_FOUNDER}

> **O que é isto?** Este é seu cérebro digital - o coração do Content Foundry. Tudo que você compartilhou durante o onboarding está aqui: sua voz, suas histórias, seus valores, seus pilares. Cada conteúdo criado pelo sistema usará este arquivo para manter sua autenticidade.

> **⚠️ PRIVACIDADE:** Este arquivo está protegido pelo .gitignore e NUNCA deve ser commitado. Ele contém suas histórias pessoais e experiências. Trate-o como confidencial.

---

## 📋 Metadata

```yaml
versao: 1.0.0
criado_em: {DATA_CRIACAO}
ultima_atualizacao: {DATA_ATUALIZACAO}
status: ativo
```

---

## 👤 Perfil do Founder

### Identidade

```yaml
founder:
  nome: {NOME_COMPLETO}
  posicao_atual: {TITULO_PAPEL}
  identidade_profissional: |
    {COMO_SE_DEFINE}
```

### Jornada

```yaml
jornada_resumida: |
  {NARRATIVA_BREVE_JORNADA}

pontos_virada:
  - evento: {DESCRICAO_EVENTO}
    ano: {ANO}
    impacto: {COMO_MUDOU_RUMO}

  # Adicionar mais pontos de virada conforme necessário
```

### Valores Core

```yaml
valores_core:
  - valor: {NOME_VALOR}
    descricao: {O_QUE_SIGNIFICA}
    origem: {DE_ONDE_VEM} # Opcional
    exemplo: {SITUACAO_TESTADA} # Opcional

  # Mínimo 2-3 valores
  # Cada valor DEVE ter exemplo concreto
```

```yaml
antivalores:
  - {COMPORTAMENTO_QUE_REJEITA}
  - {PRATICA_QUE_EVITA}
```

### Motivação para Criar Conteúdo

```yaml
motivacao_conteudo:
  razao_principal: {MOTIVACAO_CORE}
  impacto_desejado: {O_QUE_QUER_CAUSAR}
  inspiracoes:
    - {CREATOR_QUE_ADMIRA}: {POR_QUE}
```

### Audiência

```yaml
audiencia:
  perfil: |
    {DESCRICAO_AUDIENCIA_IDEAL}

  problemas:
    - {PROBLEMA_1}
    - {PROBLEMA_2}

  conexao_pessoal: |
    {POR_QUE_ENTENDE_ESSA_AUDIENCIA}
```

### Percepção Desejada

```yaml
percepcao_desejada:
  atributos:
    - {COMO_QUER_SER_VISTO}
    - {OUTRO_ATRIBUTO}

  nao_quer:
    - {COMO_NAO_QUER_SER_VISTO}

  diferenciais: |
    {O_QUE_TE_TORNA_UNICO}
```

---

## 📖 Histórias

> Catálogo de histórias pessoais que podem ser usadas em conteúdo futuro. Cada história tem contexto completo (antes/durante/depois) e insight extraído.

### História 1: {TITULO_HISTORIA}

```yaml
id: historia-01
tipo: desafio | falha | conquista | influencia | perspectiva | origem

contexto: |
  {O_QUE_ESTAVA_ACONTECENDO_NA_VIDA}

situacao: |
  {DESCRICAO_DO_QUE_ACONTECEU}

emocoes:
  - {EMOCAO_1}
  - {EMOCAO_2}

resolucao: |
  {COMO_LIDOU_SITUACAO}

resultado: |
  {O_QUE_ACONTECEU_NO_FINAL}

aprendizado: |
  {INSIGHT_PRINCIPAL_EXTRAIDO}

aplicavel_para: |
  {QUANDO_USAR_ESSA_HISTORIA_EM_CONTEUDO}
```

### História 2: {TITULO_HISTORIA}

```yaml
id: historia-02
tipo: {TIPO}

# Repetir estrutura acima
# Mínimo: 5 histórias
# Ideal: 7-10 histórias
```

### Padrões Identificados

> Temas recorrentes nas histórias do founder

```yaml
padroes:
  temas_recorrentes:
    - {TEMA_1}
    - {TEMA_2}

  gatilhos_emocionais:
    positivos:
      - {O_QUE_ANIMA_FOUNDER}
    negativos:
      - {O_QUE_FRUSTRA_FOUNDER}

  valores_em_acao:
    - {VALOR_QUE_APARECE_NAS_HISTORIAS}
```

---

## 🎤 Voz & Tom

### Tom de Comunicação

```yaml
tom:
  formalidade: informal | equilibrado | formal

  humor: true | false

  caracteristicas:
    - {DESCRICAO_ESTILO_COMUNICACAO}
    - {USO_METAFORAS_ANALOGIAS}
    - {RITMO_DIRETO_VS_ELABORADO}

  expressoes_comuns:
    - "{EXPRESSAO_QUE_USA_FREQUENTEMENTE}"

  vocabulario:
    girias: true | false
    tecnicismos: true | false
    palavroes: ocasional | nunca
```

### Vozes de Referência

```yaml
vozes_referencia:
  - nome: {NOME_CREATOR}
    o_que_admira: {ATRIBUTO_ESPECIFICO}
    diferenca: {COMO_FOUNDER_DIFERE}
```

### Anti-Vozes

```yaml
anti_vozes:
  - {ESTILO_QUE_EVITA}
  - {OUTRO_ESTILO_QUE_REJEITA}
```

---

## 🛡️ Safe Mode

> Tópicos e práticas que o founder prefere evitar

### Tópicos a Evitar

```yaml
safe_mode:
  topicos_evitar:
    - topico: {NOME_TOPICO}
      razao: {POR_QUE_EVITA}
      nivel: nunca | geralmente-evita | contexto-dependente

    # Exemplo:
    - topico: "Política partidária"
      razao: "Não quero alienar metade da audiência"
      nivel: nunca

    # Mínimo 2-3 tópicos
    # Quanto mais específico, melhor
```

### Linhas que Não Cruza

```yaml
linhas_nao_cruza:
  - {PRATICA_QUE_NUNCA_FARIA}
  - {LINHA_ETICA_QUE_NAO_CRUZA}

  # Exemplos:
  # - "Nunca farei clickbait enganoso"
  # - "Nunca falarei sobre algo que não domino"
  # - "Nunca atacarei pessoas (ideias ok, pessoas não)"
```

---

## 🎯 Pilares de Conteúdo

> 3-5 temas principais que o founder domina e quer criar conteúdo sobre

### Pilar 1: {NOME_PILAR}

```yaml
pilar_01:
  nome: {NOME_ESPECIFICO}

  descricao: |
    {DESCRICAO_DETALHADA}

  experiencia: |
    {POR_QUE_TEM_AUTORIDADE}

  subtemas:
    - {SUBTEMA_1}
    - {SUBTEMA_2}

  historias_relacionadas:
    - historia-01
    - historia-03

  angulo_unico: |
    {O_QUE_TORNA_SUA_PERSPECTIVA_UNICA}
```

### Pilar 2: {NOME_PILAR}

```yaml
pilar_02:
  # Repetir estrutura acima
```

### Pilar 3: {NOME_PILAR}

```yaml
pilar_03:
  # Repetir estrutura acima
```

### (Opcional) Pilar 4: {NOME_PILAR}

```yaml
pilar_04:
  # Repetir estrutura acima
```

### (Opcional) Pilar 5: {NOME_PILAR}

```yaml
pilar_05:
  # Repetir estrutura acima
```

> **REGRAS DOS PILARES:**
> - Mínimo: 3 pilares
> - Máximo: 5 pilares
> - Ideal: 4 pilares
> - Cada pilar DEVE ser específico (não genérico)
> - Cada pilar DEVE ter experiência real
> - Cada pilar DEVE conectar com pelo menos 1 história

---

## 💭 Emoção Desejada

> Como o founder quer que a audiência se sinta ao consumir seu conteúdo

```yaml
emocao_desejada:
  primaria: {EMOCAO_PRINCIPAL}

  secundarias:
    - {EMOCAO_2}
    - {EMOCAO_3}

  evitar:
    - {EMOCAO_QUE_NAO_QUER_CAUSAR}
    - {OUTRA_EMOCAO_EVITAR}

  # Exemplos de emoções:
  # Primária: "Esperançoso mas realista"
  # Secundárias: "Empoderado para agir", "Menos sozinho"
  # Evitar: "Intimidado", "Inferior", "Exausto"
```

---

## 🔄 Preferências de Produção (Opcional)

### Frequência Ideal

```yaml
frequencia:
  linkedin: {FREQUENCIA}  # Ex: "3-4x semana"
  instagram: {FREQUENCIA}  # Ex: "2-3x semana"
  youtube: {FREQUENCIA}  # Ex: "1x semana"
  newsletter: {FREQUENCIA}  # Ex: "1x quinzena"
```

### Formatos Preferidos

```yaml
formatos_preferidos:
  - {FORMATO_1}  # Ex: "Posts curtos reflexivos (LinkedIn)"
  - {FORMATO_2}  # Ex: "Carrosséis educativos (Instagram)"
  - {FORMATO_3}  # Ex: "Artigos longos mensais (Newsletter)"
```

---

## 📊 Estatísticas

```yaml
stats:
  total_historias: {NUMERO}
  total_pilares: {NUMERO}
  topicos_safe_mode: {NUMERO}

  completude:
    perfil: {PORCENTAGEM}%
    historias: {PORCENTAGEM}%
    voz: {PORCENTAGEM}%
    pilares: {PORCENTAGEM}%
    overall: {PORCENTAGEM}%
```

---

## 📝 Notas de Atualização

> Registro de atualizações significativas no brain

### {DATA} - {VERSAO}

- **Mudanças:** {DESCRICAO_MUDANCAS}
- **Razão:** {POR_QUE_ATUALIZOU}
- **Impacto:** {COMO_AFETA_CONTEUDO}

---

## 🔐 Checklist de Qualidade

Antes de considerar este brain completo, verificar:

**Perfil:**
- [ ] Nome preenchido
- [ ] Jornada narrada (não só lista)
- [ ] 2-3 valores core COM exemplos
- [ ] Motivação clara e genuína
- [ ] Audiência específica
- [ ] Percepção desejada definida

**Histórias:**
- [ ] Mínimo 5 histórias
- [ ] Pelo menos 1 de cada tipo relevante
- [ ] Cada história tem contexto + emoção + insight
- [ ] Histórias conectam com pilares

**Voz:**
- [ ] Tom definido (formal/informal/equilibrado)
- [ ] Características específicas
- [ ] Expressões comuns capturadas
- [ ] Vozes de referência identificadas

**Safe Mode:**
- [ ] 2-3 tópicos a evitar (específicos)
- [ ] Razões claras
- [ ] Linhas que não cruza definidas

**Pilares:**
- [ ] 3-5 pilares definidos
- [ ] Cada pilar é específico
- [ ] Cada pilar tem experiência real
- [ ] Cada pilar conecta com histórias
- [ ] Ângulo único claro

**Qualidade Geral:**
- [ ] Voz autêntica (palavras do founder)
- [ ] Nada genérico
- [ ] Founder se reconhece
- [ ] Acionável para writers

---

## 💡 Como Usar Este Brain

### Para Agentes Writers

Ao criar conteúdo:
1. Leia seção relevante do brain (histórias, tom, pilares)
2. Use histórias relacionadas ao tema
3. Mantenha tom de voz consistente
4. Respeite safe mode
5. Conecte com pilares

### Para Voice Validator

Ao validar autenticidade:
1. Compare contra tom de voz
2. Verifique uso de expressões comuns
3. Valide que não quebra safe mode
4. Confirme alinhamento com valores
5. Calcule voice score baseado em brain

### Para Brand Guardian

Ao checar alinhamento:
1. Validar contra valores core
2. Verificar safe mode respeitado
3. Confirmar que pilares estão representados
4. Checar percepção desejada

---

## 🔄 Quando Atualizar Este Brain

Atualize quando:
- **Novas histórias:** Experiência formativa aconteceu
- **Mudança de posicionamento:** Pivô em pilares ou audiência
- **Evolução de voz:** Tom mudou naturalmente
- **Novos valores:** Experiência revelou valor antes não articulado
- **Safe mode mudou:** Tópicos a evitar ou aceitar mudaram

**Não precisa atualizar** quando:
- Apenas criou mais conteúdo (não muda brain)
- Métricas de engajamento (não afeta autenticidade)
- Pequenos ajustes de frequência

---

## ⚠️ Avisos Importantes

1. **Privacidade:** Este arquivo contém informações pessoais. NUNCA commite no git.

2. **Backup:** Faça backup criptografado regularmente.

3. **Autenticidade:** Capture voz REAL do founder, não aspiracional.

4. **Iteração:** Brain pode evoluir. Versione mudanças significativas.

5. **Uso Ético:** Informações aqui são para criar conteúdo autêntico, não manipular.

---

**Powered by Content Foundry™**
*Criado por: Elena (Elicitation Expert)*
*Versão do Template: 1.0.0*
