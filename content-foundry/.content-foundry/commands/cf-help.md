# Comando: /cf-help

**Descrição:** Lista todos os comandos disponíveis do Content Foundry com exemplos

**Categoria:** Ajuda
**Ícone:** 📚
**Aliases:** /help, /cf-ajuda, /?

---

## Uso

```bash
/cf-help                    # Lista todos os comandos
/cf-help {comando}          # Ajuda detalhada de comando específico
/cf-help --comandos-rapidos  # Mostra apenas comandos mais usados
```

---

## Funcionalidade

### Comportamento Padrão

Quando executado sem argumentos, lista todos os comandos organizados por categoria:

1. **Comandos do Sistema**
2. **Comandos de Workflows**
3. **Comandos de Agentes**
4. **Comandos de Validação**
5. **Comandos de Debug**

### Com Argumento

Se especificar um comando, mostra help detalhado daquele comando específico.

---

## Output Esperado

### Modo 1: Lista Completa (sem argumentos)

```
📚 CONTENT FOUNDRY - COMANDOS DISPONÍVEIS
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

COMANDOS DO SISTEMA
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

/cf-status
   Mostra estado do sistema (brain, posts, workflows)
   Uso: /cf-status

/cf-help [comando]
   Lista comandos disponíveis ou ajuda detalhada
   Uso: /cf-help ou /cf-help {comando}

/cf-validar-sistema
   Executa validações de integridade
   Uso: /cf-validar-sistema

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

COMANDOS DE WORKFLOWS
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

/cf-workflow onboarding
   🚀 Criar cérebro digital (brain.md) - 30-45min
   Uso: /cf-workflow onboarding

/cf-workflow producao-express
   ⚡ Criar 1 post rápido - 15-30min
   Uso: /cf-workflow producao-express {canal} {tópico}

/cf-workflow producao-lote
   📦 Criar 5-10 posts de uma vez - 1-2h
   Uso: /cf-workflow producao-lote {canal}

/cf-workflow planejamento-estrategico
   📅 Criar calendário mensal - 45-60min
   Uso: /cf-workflow planejamento-estrategico

/cf-workflow repurposing
   ♻️  Adaptar conteúdo para outro canal - 20-30min
   Uso: /cf-workflow repurposing {arquivo} {canal-destino}

/cf-listar-workflows
   Lista todos os 9 workflows disponíveis
   Uso: /cf-listar-workflows

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

COMANDOS DE AGENTES
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

/cf-chamar-agente {id}
   Ativa agente específico
   Uso: /cf-chamar-agente linkedin-writer

/cf-listar-agentes
   Lista todos os 20 agentes com quando usar
   Uso: /cf-listar-agentes

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

COMANDOS DE VALIDAÇÃO
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

/cf-validar-voice {arquivo}
   Calcula voice score de um post
   Uso: /cf-validar-voice docs/content/linkedin/post.md

/cf-validar-brain
   Verifica integridade do brain.md
   Uso: /cf-validar-brain

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

COMANDOS DE DEBUG (NÃO RECOMENDADO)
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

/cf-yolo
   ⚠️  Ativa modo Yolo (pula validações)
   Uso: /cf-yolo on|off

/cf-debug
   🔧 Ativa modo debug verboso
   Uso: /cf-debug on|off

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

DICA: Use /cf-help {comando} para ver detalhes de um comando específico.
Exemplo: /cf-help cf-workflow

PRÓXIMOS PASSOS BASEADO NO SEU ESTADO:
→ brain.md vazio? Execute: /cf-workflow onboarding
→ Quer criar conteúdo? Execute: /cf-workflow producao-express
→ Planejamento mensal? Execute: /cf-workflow planejamento-estrategico

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
```

### Modo 2: Ajuda Específica (com argumento)

```bash
$ /cf-help cf-status
```

**Output:**
```
📚 AJUDA: /cf-status
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

DESCRIÇÃO:
Mostra o estado atual do sistema Content Foundry

CATEGORIA: Sistema
ÍCONE: 📊
ALIASES: /status, /cf-estado

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

USO:
  /cf-status

ARGUMENTOS:
  Nenhum - comando não requer argumentos

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

O QUE MOSTRA:
✅ Status do brain.md (existe/vazio/completo)
✅ Estatísticas de produção (posts por canal)
✅ Último workflow executado
✅ Configurações ativas (deep mode, thresholds)
✅ Agentes disponíveis e último usado
✅ Versão do sistema e informações do founder

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

EXEMPLOS:

1. Ver status geral:
   $ /cf-status

   → Mostra dashboard completo do sistema

2. Verificar se onboarding foi feito:
   $ /cf-status

   → Veja a seção "CÉREBRO DIGITAL"
   → Se aparecer "VAZIO", execute onboarding primeiro

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

COMANDOS RELACIONADOS:
- /cf-validar-sistema  : Validações detalhadas
- /cf-validar-brain    : Verificar brain.md
- /cf-help             : Voltar para lista de comandos

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
```

### Modo 3: Comandos Rápidos

```bash
$ /cf-help --comandos-rapidos
```

**Output:**
```
⚡ COMANDOS MAIS USADOS
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

1. /cf-workflow onboarding
   → Criar cérebro digital (primeiro uso)

2. /cf-workflow producao-express {canal} {tópico}
   → Criar 1 post rápido

3. /cf-status
   → Ver estado do sistema

4. /cf-chamar-agente {id}
   → Ativar agente específico

5. /cf-validar-voice {arquivo}
   → Calcular voice score

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

Use /cf-help para ver lista completa
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
```

---

## Lógica de Sugestões Contextuais

O comando /cf-help analisa o estado do sistema e sugere próximos passos:

### Se brain.md não existe ou está vazio:
```
PRÓXIMOS PASSOS SUGERIDOS:
→ Execute: /cf-workflow onboarding (criar cérebro digital)
```

### Se brain.md existe mas não tem posts:
```
PRÓXIMOS PASSOS SUGERIDOS:
→ Execute: /cf-workflow producao-express para criar seu primeiro post
→ Ou: /cf-workflow planejamento-estrategico para planejar mês
```

### Se tem < 5 posts:
```
PRÓXIMOS PASSOS SUGERIDOS:
→ Continue produzindo com /cf-workflow producao-express
→ Considere /cf-workflow producao-lote para eficiência
```

### Se tem >= 5 posts:
```
PRÓXIMOS PASSOS SUGERIDOS:
→ Use /cf-workflow repurposing para reaproveitar conteúdo
→ Use /cf-workflow performance-review para analisar métricas
```

---

## Implementação

### Estrutura de Dados

```yaml
comandos:
  - id: cf-status
    categoria: sistema
    descricao: "Mostra estado do sistema"
    uso: "/cf-status"
    argumentos: []
    aliases: [/status, /cf-estado]
    icone: 📊
    arquivo: .content-foundry/commands/cf-status.md

  - id: cf-help
    categoria: ajuda
    descricao: "Lista comandos disponíveis"
    uso: "/cf-help [comando]"
    argumentos:
      - nome: comando
        tipo: string
        opcional: true
    aliases: [/help, /ajuda, /?]
    icone: 📚
    arquivo: .content-foundry/commands/cf-help.md

  # ... mais comandos
```

### Fontes de Dados

- Registro de comandos: `.content-foundry/data/command-registry.yaml`
- Detalhes de cada comando: `.content-foundry/commands/{id}.md`
- Estado do sistema: `cf-status` internamente

---

## Logging

```
2025-10-22T14:30:45-03:00 [cf-help] Command executed - mode: full_list
2025-10-22T14:31:12-03:00 [cf-help] Command executed - mode: specific - comando: cf-status
```

---

## Erros Possíveis

### Erro 1: Comando não existe

```bash
$ /cf-help comando-inexistente
```

**Output:**
```
❌ ERRO: Comando 'comando-inexistente' não encontrado

Comandos disponíveis:
- /cf-status
- /cf-help
- /cf-workflow
- /cf-chamar-agente
- /cf-validar-sistema
- /cf-listar-agentes
- /cf-listar-workflows

Use /cf-help para ver lista completa.
```

---

## Notas de Implementação

- Lista de comandos deve ser mantida em `command-registry.yaml`
- Cada comando tem arquivo `.md` detalhado em `.content-foundry/commands/`
- Sugestões contextuais baseadas em leitura de `cf-status`
- Formato consistente com resto do sistema (ícones, separadores)
- Mensagens em português brasileiro
- Aliases devem funcionar identicamente
