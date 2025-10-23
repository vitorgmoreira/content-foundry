# Sistema de Logging - Content Foundry

**Versão:** 1.0.0
**Data:** 2025-10-22

---

## Overview

O Content Foundry usa logging simples baseado em arquivos para registrar todas as operações do sistema. Os logs ajudam a:

- Auditar comandos executados
- Debug de problemas
- Análise de uso
- Rastreamento de workflows

---

## Estrutura de Logs

### Localização

```
.foundry/logs/
├── 2025-10-22.log
├── 2025-10-21.log
├── 2025-10-20.log
└── ...
```

- Um arquivo por dia
- Formato: `YYYY-MM-DD.log`
- Logs rodam automaticamente (veja cleanup)

### Formato de Entrada

```
{timestamp} [{comando}] {resultado}
```

**Exemplo:**
```
2025-10-22T14:30:45-03:00 [cf-status] Command executed successfully
2025-10-22T14:31:12-03:00 [cf-help] Command executed - mode: specific - comando: cf-status
2025-10-22T14:35:22-03:00 [cf-chamar-agente] Agent requested: linkedin-writer
2025-10-22T14:35:23-03:00 [cf-chamar-agente] Validation: PASS
2025-10-22T14:35:23-03:00 [cf-chamar-agente] Agent activated successfully: linkedin-writer
```

### Componentes

| Campo | Descrição | Exemplo |
|-------|-----------|---------|
| Timestamp | ISO 8601 com timezone | `2025-10-22T14:30:45-03:00` |
| Comando | Nome do comando executado | `[cf-status]`, `[cf-workflow]` |
| Resultado | Descrição do que aconteceu | `Command executed successfully` |

---

## Níveis de Log

De acordo com `config.yaml`:

```yaml
logging:
  level: INFO  # DEBUG | INFO | WARN | ERROR
```

### DEBUG
Detalhes técnicos completos (muito verboso)
```
2025-10-22T14:30:45-03:00 [DEBUG] [cf-status] Loading config.yaml
2025-10-22T14:30:45-03:00 [DEBUG] [cf-status] Config loaded successfully
2025-10-22T14:30:45-03:00 [DEBUG] [cf-status] Checking brain.md existence
2025-10-22T14:30:45-03:00 [DEBUG] [cf-status] brain.md found: true
```

### INFO (padrão)
Operações importantes
```
2025-10-22T14:30:45-03:00 [INFO] [cf-status] Command executed successfully
2025-10-22T14:35:22-03:00 [INFO] [cf-chamar-agente] Agent activated: linkedin-writer
```

### WARN
Avisos que não são erros
```
2025-10-22T14:40:10-03:00 [WARN] [cf-chamar-agente] brain.md is empty
2025-10-22T14:42:30-03:00 [WARN] [cf-status] Analytics file not found
```

### ERROR
Erros que impedem operação
```
2025-10-22T14:45:00-03:00 [ERROR] [cf-chamar-agente] Agent not found: agente-inventado
2025-10-22T14:50:15-03:00 [ERROR] [cf-workflow] config.yaml is invalid
```

---

## Como Registrar Logs

### Método Manual (MVP v1.0)

Como estamos em config-based architecture, logging é manual via echo + append:

```bash
#!/bin/bash

# Função helper para logging
log_command() {
    local comando=$1
    local mensagem=$2
    local nivel=${3:-INFO}

    local timestamp=$(date -u +"%Y-%m-%dT%H:%M:%S%z")
    local log_file=".foundry/logs/$(date +%Y-%m-%d).log"

    echo "${timestamp} [${nivel}] [${comando}] ${mensagem}" >> "${log_file}"
}

# Uso
log_command "cf-status" "Command executed successfully"
log_command "cf-chamar-agente" "Agent activated: linkedin-writer"
log_command "cf-workflow" "Agent not found: xyz" "ERROR"
```

### Criar Log Entry

```bash
# 1. Timestamp ISO 8601 com timezone
timestamp=$(date -u +"%Y-%m-%dT%H:%M:%S%z")

# 2. Nome do arquivo do dia
log_file=".foundry/logs/$(date +%Y-%m-%d).log"

# 3. Escrever entrada
echo "${timestamp} [INFO] [cf-status] Command executed" >> "${log_file}"
```

---

## Exemplos por Comando

### cf-status

```
2025-10-22T14:30:45-03:00 [INFO] [cf-status] Command executed successfully
2025-10-22T14:30:45-03:00 [DEBUG] [cf-status] brain.md: exists=true, size=4523 bytes
2025-10-22T14:30:45-03:00 [DEBUG] [cf-status] posts_count: 47
```

### cf-help

```
2025-10-22T14:31:12-03:00 [INFO] [cf-help] Command executed - mode: full_list
2025-10-22T14:31:30-03:00 [INFO] [cf-help] Command executed - mode: specific - comando: cf-status
2025-10-22T14:31:45-03:00 [WARN] [cf-help] Unknown command requested: xyz
```

### cf-chamar-agente

```
2025-10-22T14:35:22-03:00 [INFO] [cf-chamar-agente] Agent requested: linkedin-writer
2025-10-22T14:35:23-03:00 [DEBUG] [cf-chamar-agente] Loading agent-registry.yaml
2025-10-22T14:35:23-03:00 [DEBUG] [cf-chamar-agente] Agent found in registry: linkedin-writer
2025-10-22T14:35:23-03:00 [DEBUG] [cf-chamar-agente] Agent status: active
2025-10-22T14:35:23-03:00 [DEBUG] [cf-chamar-agente] Checking brain.md
2025-10-22T14:35:23-03:00 [DEBUG] [cf-chamar-agente] brain.md validation: PASS
2025-10-22T14:35:23-03:00 [INFO] [cf-chamar-agente] Agent activated successfully: linkedin-writer
```

### cf-workflow

```
2025-10-22T15:00:00-03:00 [INFO] [cf-workflow] Workflow requested: producao-express
2025-10-22T15:00:01-03:00 [INFO] [cf-workflow] Workflow started: producao-express
2025-10-22T15:00:15-03:00 [INFO] [cf-workflow] Agent called: linkedin-writer
2025-10-22T15:15:00-03:00 [INFO] [cf-workflow] Post generated: docs/content/linkedin/2025-10-22-post.md
2025-10-22T15:15:30-03:00 [INFO] [cf-workflow] Voice validation: 8.9/10 - PASS
2025-10-22T15:18:45-03:00 [INFO] [cf-workflow] Workflow completed successfully: producao-express
```

---

## Configuração

### config.yaml

```yaml
logging:
  # Logging habilitado
  enabled: true

  # Nível de log
  level: INFO  # DEBUG | INFO | WARN | ERROR

  # Localização dos logs
  location: .foundry/logs/

  # Formato do arquivo de log
  filename-format: "{YYYY-MM-DD}.log"

  # Retenção de logs
  retention-days: 30

  # Log rotation
  rotation:
    enabled: true
    max-size-mb: 10
    max-files: 10

  # Verbose mode (para debugging)
  verbose: false
```

### Retention Policy

- **Default:** 30 dias
- **Rotation:** Quando arquivo excede 10MB
- **Max files:** 10 arquivos mantidos
- **Cleanup:** Automático via script

---

## Cleanup de Logs Antigos

Ver: `.content-foundry/scripts/cleanup-logs.sh`

Script roda automaticamente ou manualmente:

```bash
# Deletar logs com mais de 30 dias
.content-foundry/scripts/cleanup-logs.sh

# Ou especificar dias
.content-foundry/scripts/cleanup-logs.sh 14  # Manter só últimos 14 dias
```

---

## Análise de Logs

### Ver logs de hoje

```bash
cat .foundry/logs/$(date +%Y-%m-%d).log
```

### Ver últimas 50 linhas

```bash
tail -n 50 .foundry/logs/$(date +%Y-%m-%d).log
```

### Filtrar por comando

```bash
grep "\[cf-status\]" .foundry/logs/2025-10-22.log
```

### Filtrar por nível

```bash
grep "\[ERROR\]" .foundry/logs/*.log
```

### Contar execuções de comando

```bash
grep -c "\[cf-chamar-agente\]" .foundry/logs/2025-10-22.log
```

### Ver todos erros da semana

```bash
grep "\[ERROR\]" .foundry/logs/2025-10-*.log
```

---

## Comando /cf-logs (v2.0)

No futuro, teremos comando dedicado:

```bash
/cf-logs                # Últimas 50 linhas
/cf-logs 100            # Últimas 100 linhas
/cf-logs --errors       # Só erros
/cf-logs --comando cf-status  # Só cf-status
/cf-logs --hoje         # Só de hoje
```

---

## Segurança

### Dados Sensíveis

**NUNCA** registrar nos logs:
- ❌ Conteúdo completo do brain.md
- ❌ Histórias pessoais do founder
- ❌ Dados pessoais identificáveis
- ❌ API keys ou tokens
- ❌ Conteúdo completo de posts

**Pode** registrar:
- ✅ Nomes de comandos executados
- ✅ IDs de agentes chamados
- ✅ Nomes de arquivos criados
- ✅ Voice scores calculados
- ✅ Status de validações

### Proteção

```bash
# Logs não precisam estar no .gitignore (não contém dados sensíveis)
# Mas se quiser proteção extra:
echo ".foundry/logs/*.log" >> .gitignore
```

---

## Troubleshooting

### Logs não estão sendo criados

```bash
# 1. Verificar se diretório existe
ls -la .foundry/logs/

# 2. Criar se necessário
mkdir -p .foundry/logs/

# 3. Verificar permissões
chmod 755 .foundry/logs/
```

### Arquivo de log muito grande

```bash
# Rodar cleanup manualmente
.content-foundry/scripts/cleanup-logs.sh

# Ou deletar logs antigos
rm .foundry/logs/2025-09-*.log
```

### Ver log atual

```bash
# Log de hoje
cat .foundry/logs/$(date +%Y-%m-%d).log

# Se não existir, nenhum comando foi executado hoje
```

---

## Roadmap

### v1.0 (MVP) - CURRENT
- ✅ Logging manual via echo + append
- ✅ Formato timestamp + comando + resultado
- ✅ Retention 30 dias
- ✅ Script de cleanup

### v2.0
- [ ] Comando /cf-logs para análise
- [ ] Log rotation automático
- [ ] Níveis de log respeitados
- [ ] Verbose mode
- [ ] Analytics baseado em logs

### v3.0
- [ ] Log estruturado (JSON)
- [ ] Exportação de logs
- [ ] Dashboard de métricas
- [ ] Alertas baseados em logs

---

## Referências

- Config: `.content-foundry/config.yaml`
- Cleanup Script: `.content-foundry/scripts/cleanup-logs.sh`
- Logs Location: `.foundry/logs/YYYY-MM-DD.log`
- Command Registry: `.content-foundry/data/command-registry.yaml`
