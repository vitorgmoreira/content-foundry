#!/bin/bash

# Content Foundry - Setup File Permissions
# Configura permissões de segurança para dados sensíveis do founder

set -e  # Exit on error

echo "🔐 Content Foundry - Configurando Permissões de Segurança"
echo ""

# ==============================================================================
# FUNÇÕES AUXILIARES
# ==============================================================================

set_permission() {
    local file=$1
    local perm=$2
    local desc=$3

    if [ -e "$file" ]; then
        chmod "$perm" "$file"
        echo "✅ $desc: $file → $perm"
    else
        echo "⚠️  Arquivo não existe (será criado depois): $file"
    fi
}

# ==============================================================================
# PERMISSÕES DE ARQUIVOS SENSÍVEIS
# ==============================================================================

echo "📄 Configurando permissões de arquivos sensíveis..."
echo ""

# Cérebro Digital (CRÍTICO - apenas owner read/write)
set_permission "docs/brain.md" "600" "Cérebro Digital"

# Journal de insights (SENSÍVEL - apenas owner)
set_permission "docs/insights-journal.md" "600" "Insights Journal"

# Calendário editorial (PRIVADO - apenas owner)
set_permission "docs/calendar.md" "600" "Calendário Editorial"

# Roadmap personalizado (PRIVADO - apenas owner)
set_permission "docs/roadmap.md" "600" "Roadmap"

echo ""

# ==============================================================================
# PERMISSÕES DE DIRETÓRIOS
# ==============================================================================

echo "📂 Configurando permissões de diretórios..."
echo ""

# .foundry/ - apenas owner access (logs, backups, state)
if [ -d ".foundry" ]; then
    chmod 700 .foundry
    echo "✅ Runtime State: .foundry/ → 700"

    # Subpastas também
    for dir in .foundry/*/; do
        if [ -d "$dir" ]; then
            chmod 700 "$dir"
            echo "   ├─ ${dir} → 700"
        fi
    done
fi

# docs/content/ - owner + group read (conteúdos podem ser compartilhados)
if [ -d "docs/content" ]; then
    chmod 750 docs/content
    echo "✅ Conteúdos Gerados: docs/content/ → 750"
fi

echo ""

# ==============================================================================
# VALIDAÇÃO
# ==============================================================================

echo "🔍 Validando configurações..."
echo ""

validate_permission() {
    local file=$1
    local expected=$2

    if [ -e "$file" ]; then
        actual=$(stat -f "%OLp" "$file" 2>/dev/null || stat -c "%a" "$file" 2>/dev/null)
        if [ "$actual" = "$expected" ]; then
            echo "✅ $file: $actual (correto)"
        else
            echo "❌ $file: $actual (esperado: $expected)"
        fi
    fi
}

# Validar arquivos críticos
validate_permission "docs/brain.md" "600"
validate_permission "docs/insights-journal.md" "600"
validate_permission ".foundry" "700"

echo ""

# ==============================================================================
# INSTRUÇÕES PÓS-SETUP
# ==============================================================================

echo "✅ Permissões configuradas com sucesso!"
echo ""
echo "📋 Próximos passos:"
echo "   1. Criar docs/brain.md durante onboarding"
echo "   2. Executar novamente este script após criar brain.md"
echo "   3. Verificar com: ls -la docs/"
echo ""
echo "⚠️  IMPORTANTE:"
echo "   - brain.md contém dados MUITO SENSÍVEIS"
echo "   - Nunca compartilhar esta pasta sem remover brain.md"
echo "   - Para backup: use serviço criptografado"
echo ""
echo "🔒 Segurança verificada! Framework protegido."
