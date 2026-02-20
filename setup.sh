#!/usr/bin/env bash
set -euo pipefail

# Second Brain — Setup Script
# Appends auto-capture rules to ~/.claude/CLAUDE.md so Claude Code
# automatically captures knowledge to this vault.

VAULT_ROOT="$(cd "$(dirname "$0")" && pwd)"
CLAUDE_DIR="$HOME/.claude"
CLAUDE_MD="$CLAUDE_DIR/CLAUDE.md"
MARKER="<!-- second-brain-auto-capture -->"

echo "Second Brain setup"
echo "  Vault: $VAULT_ROOT"
echo ""

# Ensure ~/.claude/ exists
mkdir -p "$CLAUDE_DIR"

# Check if already installed
if [ -f "$CLAUDE_MD" ] && grep -qF "$MARKER" "$CLAUDE_MD"; then
  echo "Auto-capture rules already present in $CLAUDE_MD — nothing to do."
  exit 0
fi

# Append auto-capture block
cat >> "$CLAUDE_MD" << EOF

$MARKER
## Second Brain — Auto-Capture

Obsidian vault at \`$VAULT_ROOT\`. **Automatically capture noteworthy events** without being asked.

| Trigger | Where (under vault root) |
|---------|--------------------------|
| Fixed a non-trivial bug | \`03-resources/debugging/YYYY-MM-DD-<slug>.md\` |
| Made a technical decision | \`01-projects/decisions/YYYY-MM-DD-<slug>.md\` |
| Discovered a pattern or gotcha | \`03-resources/til/YYYY-MM-DD-<slug>.md\` |
| Updated project architecture | \`01-projects/<project>.md\` |

**How**: \`mkdir -p <dir>\`, then Write (forward slashes!) with frontmatter (\`tags\`, \`date\`, \`project\`). Use \`[[wikilinks]]\`, keep notes concrete, confirm briefly.

**Tags**: \`#debugging\`, \`#decision\`, \`#til\`, \`#pattern\`, \`#claude-code\`
Add your own \`#project/<name>\` tags as needed.

**Skip**: trivial fixes, throwaway experiments, duplicates of existing notes.
$MARKER
EOF

echo "Auto-capture rules appended to $CLAUDE_MD"
echo ""
echo "Done! Open this folder in Obsidian and start using /brain in Claude Code."
