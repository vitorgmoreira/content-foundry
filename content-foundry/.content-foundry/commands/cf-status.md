# Comando: /cf-status

**Descrição:** Mostra o estado atual do sistema Content Foundry

**Categoria:** Sistema
**Ícone:** 📊
**Aliases:** /status, /cf-estado

---

## Uso

```bash
/cf-status
```

Não requer argumentos.

---

## Funcionalidade

Este comando verifica e exibe:

### 1. Status do Brain Digital
- ✅ brain.md existe e está preenchido
- ⚠️ brain.md existe mas está vazio (onboarding pendente)
- ❌ brain.md não existe

### 2. Estatísticas de Produção
- Total de posts gerados (por canal)
- Posts criados esta semana
- Posts criados este mês
- Última data de produção

### 3. Workflows
- Último workflow executado
- Data da última execução
- Status (completo/interrompido)

### 4. Configurações Ativas
- Deep mode: enabled/disabled
- Voice validation threshold: X.X
- Auto-save: enabled/disabled
- Logging: enabled/disabled
- Yolo mode: ativado/desativado

### 5. Agentes
- Total de agentes disponíveis
- Agentes ativos no MVP
- Último agente usado

### 6. Sistema
- Versão do Content Foundry
- Nome do founder
- Timezone
- Ambiente (development/production)

---

## Implementação

### Lógica de Execução

```python
def cf_status():
    # 1. Carregar config.yaml
    config = load_yaml('.content-foundry/config.yaml')

    # 2. Verificar brain.md
    brain_status = check_brain_md()

    # 3. Ler analytics (se existir)
    analytics = load_yaml('.foundry/analytics.yaml') if exists() else {}

    # 4. Ler último workflow (se existir)
    last_workflow = read_last_workflow_from_state()

    # 5. Contar posts gerados
    posts_count = count_files_in('docs/content/')

    # 6. Gerar relatório formatado
    return format_status_report(config, brain_status, analytics, last_workflow, posts_count)
```

### Fontes de Dados

| Informação | Fonte |
|------------|-------|
| Configurações | `.content-foundry/config.yaml` |
| Brain status | `docs/brain.md` (check exists + size) |
| Analytics | `.foundry/analytics.yaml` |
| Workflows | `.foundry/state/last-workflow.yaml` |
| Posts count | `docs/content/**/*.md` (count) |
| Agentes | `.content-foundry/data/agent-registry.yaml` |

---

## Output Esperado

### Cenário 1: Primeiro Uso (brain vazio)

```
📊 CONTENT FOUNDRY - STATUS DO SISTEMA
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

CÉREBRO DIGITAL
⚠️  brain.md: VAZIO (onboarding pendente)
   → Execute: /cf-workflow onboarding

PRODUÇÃO
📝 Posts gerados: 0
   LinkedIn: 0
   Instagram: 0
   YouTube: 0
   Newsletter: 0

WORKFLOWS
🔄 Último workflow: Nenhum executado ainda

CONFIGURAÇÕES
⚙️  Deep mode: ✅ Habilitado
⚙️  Voice threshold: 8.5/10
⚙️  Auto-save: ✅ Habilitado
⚙️  Logging: ✅ Habilitado (INFO)
⚙️  Yolo mode: ❌ Desabilitado

AGENTES
👥 Disponíveis: 20 agentes
👥 Ativos (MVP): 6 agentes
👥 Último usado: -

SISTEMA
🔧 Versão: 1.0.0
👤 Founder: Vitor Garcia
🌍 Timezone: America/Sao_Paulo
🏗️  Ambiente: development

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

PRÓXIMOS PASSOS SUGERIDOS:
1. Execute /cf-workflow onboarding para criar seu cérebro digital
2. Leia /cf-help para ver todos os comandos disponíveis

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
```

### Cenário 2: Sistema em Uso

```
📊 CONTENT FOUNDRY - STATUS DO SISTEMA
━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

CÉREBRO DIGITAL
✅ brain.md: ATIVO (última atualização: 2025-10-15)
   Pilares: 4 definidos
   Histórias: 12 catalogadas

PRODUÇÃO
📝 Posts gerados: 47 total
   LinkedIn: 23 posts (último: 2025-10-21)
   Instagram: 18 posts (último: 2025-10-21)
   YouTube: 4 scripts (último: 2025-10-18)
   Newsletter: 2 edições (último: 2025-10-01)

   Esta semana: 8 posts
   Este mês: 28 posts

WORKFLOWS
🔄 Último workflow: producao-express
   Executado: 2025-10-21 14:30
   Status: ✅ Completo
   Duração: 18 minutos

CONFIGURAÇÕES
⚙️  Deep mode: ✅ Habilitado
⚙️  Voice threshold: 8.5/10
⚙️  Auto-save: ✅ Habilitado
⚙️  Logging: ✅ Habilitado (INFO)
⚙️  Yolo mode: ❌ Desabilitado

AGENTES
👥 Disponíveis: 20 agentes
👥 Ativos (MVP): 6 agentes
👥 Último usado: linkedin-writer (2025-10-21)
👥 Mais usado: linkedin-writer (23 vezes)

SISTEMA
🔧 Versão: 1.0.0
👤 Founder: Vitor Garcia
🌍 Timezone: America/Sao_Paulo
🏗️  Ambiente: development

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

MÉTRICAS DE QUALIDADE:
📊 Voice score médio: 8.9/10
📊 Aprovação sem edição: 85% (40/47 posts)
📊 Engajamento médio: +15% vs baseline

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━

PRÓXIMOS PASSOS SUGERIDOS:
1. Seu desempenho está ótimo! Continue produzindo.
2. Use /cf-workflow producao-lote para eficiência
3. Considere /cf-workflow planejamento-estrategico para próximo mês

━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━
```

---

## Logging

Registrar em `.foundry/logs/YYYY-MM-DD.log`:

```
2025-10-22T14:30:45-03:00 [cf-status] Command executed successfully
```

---

## Erros Possíveis

### Erro 1: config.yaml não encontrado
```
❌ ERRO: Arquivo config.yaml não encontrado
Localização esperada: .content-foundry/config.yaml

Execute o setup do Content Foundry primeiro.
```

### Erro 2: Diretórios ausentes
```
⚠️  AVISO: Alguns diretórios estão ausentes:
  - docs/content/
  - .foundry/logs/

Execute /cf-validar-sistema para mais detalhes.
```

---

## Notas de Implementação

- Cache de 1 minuto para evitar reads repetidos
- Se analytics.yaml não existe, usar contagem de arquivos como fallback
- Se last-workflow não existe, mostrar "Nenhum executado ainda"
- Formato de data: brasileiro (DD/MM/YYYY) conforme timezone do founder
- Ícones devem ser consistentes com o resto do sistema
