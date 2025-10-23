# docs/

**Documentação e Dados do Founder**

Este diretório contém toda documentação do projeto e dados do founder.

## 📂 Estrutura

### `architecture/`
Documentação técnica completa do Content Foundry:
- Executive summary
- Estrutura de arquivos
- Formato de agentes e workflows
- Cérebro digital
- Orquestração de agentes
- Templates e outputs
- Comandos UX
- Critérios de sucesso
- Tech stack, coding standards, source tree

### `content/`
Conteúdos gerados pelos agentes:
- `linkedin/` - Posts e artigos
- `instagram/` - Feed, carrosséis, reels, stories
- `youtube/` - Roteiros de vídeos
- `newsletter/` - Edições

### Arquivos Principais

- `brain.md` - 💎 **CÉREBRO DIGITAL** (coração do sistema)
  - CRÍTICO: chmod 600, .gitignore
  - Contém: voz, histórias, pilares, safe mode

- `insights-journal.md` - 💡 Banco de ideias permanente
  - SENSÍVEL: chmod 600, .gitignore

- `calendar.md` - Calendário editorial
- `roadmap.md` - Roadmap personalizado

## 🔐 Proteção

**Arquivos sensíveis:**
```bash
chmod 600 brain.md
chmod 600 insights-journal.md
```

Verificar .gitignore:
```gitignore
brain.md
insights-journal.md
```

## 📊 Comandos Úteis

```bash
# Validar brain.md
/cf-validate-brain

# Ver conteúdos gerados
ls -ltr content/linkedin/

# Status do sistema
/cf-status
```
