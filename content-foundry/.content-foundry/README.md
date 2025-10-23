# .content-foundry/

**Framework Core do Content Foundry**

Este diretório contém todas as configurações, agentes, workflows e templates do sistema.

## 📂 Estrutura

- `agents/` - Definições dos 20 agentes especializados (YAML+MD)
- `workflows/` - 9 workflows principais do sistema
- `jornadas/` - 3 jornadas pré-definidas para founders
- `tasks/` - Tarefas executáveis reutilizáveis
- `templates/` - Templates de outputs (YAML)
- `prompts/` - System prompts para agentes
- `schemas/` - JSON schemas para validação
- `checklists/` - Validações de qualidade
- `data/` - Dados de referência (frameworks, hooks, regras)
- `examples/` - Exemplos de uso e amostras

## 🔒 Versionamento

Todo conteúdo deste diretório deve ser versionado via Git. São as configurações do framework.

## 📝 Convenções

- **Nomenclatura:** kebab-case para tudo
- **Formato:** YAML + Markdown
- **Idioma:** Português do Brasil
- **Comandos:** Prefixo * (ex: *ajuda, *gerar-post)

## 📖 Referências

Ver `../docs/architecture/` para documentação detalhada da arquitetura.
