# Comando: /cf-chamar-agente

**Descrição:** Ativa um agente específico para executar tarefa

**Categoria:** Agentes
**Ícone:** 👤
**Aliases:** /cf-call, /cf-ativar-agente

---

## Uso

```bash
/cf-chamar-agente {agente-id}
```

### Argumentos

| Argumento | Tipo | Obrigatório | Descrição |
|-----------|------|-------------|-----------|
| agente-id | string | Sim | ID do agente a ativar (ex: linkedin-writer) |

---

## Funcionalidade

1. **Valida que agente existe** no agent-registry.yaml
2. **Verifica status do agente** (active vs planned)
3. **Carrega arquivo do agente** (.content-foundry/agents/{id}.md)
4. **Ativa persona do agente** conforme instruções
5. **Executa comando inicial** se definido no agente

---

## Lista de Agentes Disponíveis

### Coordenação
- `orchestrator` - Carlos, Orquestrador & Maestro 🎯

### Estratégia
- `elicitation-expert` - Elena, Especialista em Elicitação 🎤
- `research-analyst` - Roberto, Analista de Pesquisa 🔍
- `content-strategist` - Sofia, Estrategista de Conteúdo 📊
- `brand-guardian` - Ana, Guardiã da Marca 🛡️

### Writers
- `linkedin-writer` - Lucas, Escritor de Posts LinkedIn 💼
- `instagram-feed-writer` - Marina, Escritora de Feed Instagram 📸
- `instagram-carousel-creator` - Carla, Criadora de Carrosséis 🎨
- `reels-script-writer` - Diego, Roteirista de Reels 🎬
- `stories-strategist` - Bianca, Estrategista de Stories 📱
- `video-script-writer` - Victor, Roteirista de Vídeos YouTube 📹
- `newsletter-writer` - Natália, Escritora de Newsletter 📧

### Qualidade
- `voice-validator` - Beatriz, Validadora de Autenticidade 🎤
- `editor-proofreader` - Eduardo, Editor & Revisor ✍️

### Otimização
- `repurposing-specialist` - Paulo, Especialista em Repurposing ♻️
- `seo-optimizer` - Samuel, Otimizador SEO 🔎
- `engagement-optimizer` - Emília, Otimizadora de Engajamento 💬

### Ideação
- `hook-creator` - Hugo, Criador de Ganchos 🪝
- `storytelling-miner` - Rafael, Minerador de Histórias ⛏️

**Total:** 20 agentes

---

## Output Esperado

### Caso 1: Agente Ativo (Sucesso)

```bash
$ /cf-chamar-agente linkedin-writer
```

**Output:**
```
👤 ATIVANDO AGENTE
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

✅ Agente encontrado no registry
✅ Status: ACTIVE (disponível para uso)

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

💼 Olá! Sou Lucas, o Escritor de Posts LinkedIn.

Minha especialidade é criar posts autênticos para LinkedIn que
refletem sua voz única como founder. Posso criar:

- Posts curtos (até 3000 caracteres)
- Artigos longos (1500-2000 palavras)
- Carrosséis PDF (até 10 slides)

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

QUANDO ME USAR:
✓ Criar posts LinkedIn
✓ Gerar artigos longos LinkedIn
✓ Criar carrosséis PDF
✓ LinkedIn thought leadership

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

COMANDOS DISPONÍVEIS:
1. *criar-post {tópico}     - Criar post sobre um tópico
2. *criar-artigo {tópico}   - Criar artigo longo
3. *criar-carrossel {tópico} - Criar carrossel PDF
4. *ajuda                    - Ver todos os comandos
5. *sair                     - Voltar para orchestrator

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Como posso ajudar? Me diga sobre o que quer criar conteúdo.
```

### Caso 2: Agente Planejado (Indisponível)

```bash
$ /cf-chamar-agente repurposing-specialist
```

**Output:**
```
👤 ATIVANDO AGENTE
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

✅ Agente encontrado no registry
⚠️  Status: PLANNED (ainda não implementado)

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

❌ ERRO: Agente ainda não está disponível

♻️  Paulo (Especialista em Repurposing)

Este agente está documentado mas ainda não foi implementado.
Ele faz parte da versão 2.0 do Content Foundry.

QUANDO USAR (futuro):
- Adaptar conteúdo cross-channel
- Expandir post em artigo
- Quebrar artigo em série
- Content repurposing

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

AGENTES ATIVOS NO MVP ATUAL:
✓ orchestrator           - Carlos (Orquestrador)
✓ elicitation-expert     - Elena (Elicitação)
✓ linkedin-writer        - Lucas (LinkedIn)
✓ instagram-feed-writer  - Marina (Instagram)
✓ voice-validator        - Beatriz (Validação)
✓ brand-guardian         - Ana (Marca)

Use um dos agentes acima ou aguarde a v2.0.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
```

### Caso 3: Agente Não Existe

```bash
$ /cf-chamar-agente agente-inventado
```

**Output:**
```
❌ ERRO: Agente 'agente-inventado' não encontrado

Verifique se digitou corretamente o ID do agente.

AGENTES DISPONÍVEIS:

Coordenação:
  - orchestrator

Estratégia:
  - elicitation-expert
  - research-analyst
  - content-strategist
  - brand-guardian

Writers:
  - linkedin-writer
  - instagram-feed-writer
  - instagram-carousel-creator
  - reels-script-writer
  - stories-strategist
  - video-script-writer
  - newsletter-writer

Qualidade:
  - voice-validator
  - editor-proofreader

Otimização:
  - repurposing-specialist
  - seo-optimizer
  - engagement-optimizer

Ideação:
  - hook-creator
  - storytelling-miner

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

DICA: Use /cf-listar-agentes para ver detalhes de todos os agentes

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
```

### Caso 4: brain.md Vazio (Onboarding Necessário)

```bash
$ /cf-chamar-agente linkedin-writer
```

**Output:**
```
⚠️  AVISO: brain.md VAZIO
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Seu cérebro digital (brain.md) está vazio.

O agente linkedin-writer precisa do brain.md para criar conteúdo
autêntico que reflete sua voz.

PRÓXIMO PASSO OBRIGATÓRIO:
Execute o workflow de onboarding primeiro:

  /cf-workflow onboarding

Esse processo leva 30-45min e irá:
✓ Capturar sua voz e tom
✓ Identificar seus pilares de conteúdo
✓ Catalogar suas histórias
✓ Configurar seu safe mode

Após o onboarding, você poderá chamar qualquer agente writer.

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
```

---

## Implementação

### Lógica de Execução

```python
def cf_chamar_agente(agente_id):
    # 1. Carregar agent-registry.yaml
    registry = load_yaml('.content-foundry/data/agent-registry.yaml')

    # 2. Buscar agente no registry
    agente = find_agent_by_id(registry, agente_id)

    if not agente:
        return erro_agente_nao_encontrado(agente_id, registry)

    # 3. Verificar status
    if agente['status'] != 'active':
        return erro_agente_nao_implementado(agente)

    # 4. Se agente é writer, verificar brain.md
    if agente['categoria'] == 'writer':
        if not brain_md_exists_and_filled():
            return erro_brain_vazio()

    # 5. Carregar arquivo do agente
    agente_file = f".content-foundry/agents/{agente_id}.md"
    agente_content = read_file(agente_file)

    # 6. Ativar agente conforme instruções no arquivo
    return ativar_agente(agente_content)
```

### Validações

| Validação | Ação |
|-----------|------|
| Agente não existe | Mostrar lista de agentes + erro |
| Agente status=planned | Informar que não está implementado + sugerir ativos |
| brain.md vazio (writer) | Bloquear e sugerir onboarding |
| Arquivo .md não existe | Erro interno + sugerir validar sistema |
| Config.yaml inválido | Erro de configuração |

---

## Fluxo de Ativação

```
┌─────────────────────────────────┐
│ /cf-chamar-agente linkedin-writer │
└────────────┬────────────────────┘
             │
             ▼
   ┌─────────────────────┐
   │ Validar agente ID    │
   └─────────┬───────────┘
             │
             ▼
   ┌─────────────────────┐
   │ Verificar status     │
   │ (active vs planned)  │
   └─────────┬───────────┘
             │
             ▼
   ┌─────────────────────┐
   │ Verificar brain.md   │
   │ (se writer)          │
   └─────────┬───────────┘
             │
             ▼
   ┌─────────────────────┐
   │ Carregar agente.md   │
   └─────────┬───────────┘
             │
             ▼
   ┌─────────────────────┐
   │ Ativar persona       │
   └─────────┬───────────┘
             │
             ▼
   ┌─────────────────────┐
   │ Cumprimentar founder │
   │ Mostrar comandos     │
   └─────────────────────┘
```

---

## Logging

```
2025-10-22T14:30:45-03:00 [cf-chamar-agente] Agent requested: linkedin-writer
2025-10-22T14:30:45-03:00 [cf-chamar-agente] Validation: PASS
2025-10-22T14:30:45-03:00 [cf-chamar-agente] Agent activated successfully: linkedin-writer
```

---

## Comandos Relacionados

- `/cf-listar-agentes` - Ver todos os agentes disponíveis
- `/cf-workflow {id}` - Iniciar workflow (pode envolver múltiplos agentes)
- `*sair` - Sair do agente atual e voltar para orchestrator

---

## Notas de Implementação

- Sempre carregar agent-registry.yaml primeiro
- Validar status antes de tentar ativar
- Writers sempre requerem brain.md não-vazio
- Orchestrator pode sempre ser chamado (é fallback)
- Mensagens de erro devem ser claras e educativas
- Incluir sugestões de próximos passos em erros
- Logging deve registrar tentativas (sucesso e falha)
