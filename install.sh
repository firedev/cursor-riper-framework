#!/bin/bash

# CursorRIPER Framework Installation Script
# Version 1.0.3

set -e

echo "🚀 CursorRIPER Framework Installation"
echo "======================================"

# Check if target directory is provided
if [ -z "$1" ]; then
    echo "Usage: $0 <target_directory>"
    echo "Example: $0 /path/to/your/project"
    exit 1
fi

TARGET_DIR="$1"
SCRIPT_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

# Validate target directory
if [ ! -d "$TARGET_DIR" ]; then
    echo "❌ Error: Target directory '$TARGET_DIR' does not exist"
    exit 1
fi

echo "📁 Target directory: $TARGET_DIR"
echo "📦 Source directory: $SCRIPT_DIR"

# Check if framework already exists
if [ -d "$TARGET_DIR/.cursor/rules" ]; then
    echo "⚠️  Warning: CursorRIPER Framework appears to already be installed"
    echo "   Found existing .cursor/rules directory"
    read -p "   Continue with installation? This may overwrite existing files. (y/N): " -n 1 -r
    echo
    if [[ ! $REPLY =~ ^[Yy]$ ]]; then
        echo "❌ Installation cancelled"
        exit 1
    fi
fi

echo "📋 Installing framework files..."

# Create directory structure
echo "   Creating .cursor directory structure..."
mkdir -p "$TARGET_DIR/.cursor/rules"
mkdir -p "$TARGET_DIR/.cursor/archive"

# Copy framework files
echo "   Copying core framework files..."
cp "$SCRIPT_DIR/.cursor/rules/"*.mdc "$TARGET_DIR/.cursor/rules/"
cp "$SCRIPT_DIR/.cursor/archive/"*.mdc "$TARGET_DIR/.cursor/archive/"
cp "$SCRIPT_DIR/.cursor/cursorignore" "$TARGET_DIR/.cursor/"

# Create memory bank if it doesn't exist
if [ ! -d "$TARGET_DIR/memory-bank" ]; then
    echo "   Creating memory bank structure..."
    mkdir -p "$TARGET_DIR/memory-bank"
    cp "$SCRIPT_DIR/memory-bank/"*.md "$TARGET_DIR/memory-bank/"
    echo "   ✅ Template memory bank files created"
else
    echo "   ⚠️  Memory bank directory already exists - skipping template files"
    echo "      Existing memory bank files preserved"
fi

# Set initial state for new installations
if [ ! -f "$TARGET_DIR/.cursor/rules/state.mdc" ]; then
    echo "   Setting initial framework state..."
    # State file should already be copied, but ensure it has correct initial values
fi

echo ""
echo "✅ CursorRIPER Framework installation complete!"
echo ""
echo "🎯 Next Steps:"
echo "   1. Open your project in Cursor IDE"
echo "   2. The framework will auto-detect and initialize"
echo "   3. Use '/help' to see available commands"
echo "   4. Use '/start' for new projects or '/research' for existing projects"
echo ""
echo "📚 Documentation:"
echo "   - README.md: Complete framework guide"
echo "   - memory-bank/: Project context and learnings"
echo "   - .cursor/rules/: Framework configuration"
echo ""
echo "🔧 Framework Structure:"
echo "   .cursor/rules/core.mdc           - Core framework logic"
echo "   .cursor/rules/state.mdc          - Project state management"
echo "   .cursor/rules/riper-workflow.mdc - RIPER mode specifications"
echo "   memory-bank/                     - Project memory and context"
echo ""
echo "Happy coding with CursorRIPER! 🎉"
