#!/usr/bin/env bash
# update.sh — holt Verbesserungen aus dem öffentlichen Template,
# OHNE deine persönlichen Daten anzufassen.
#
# Aktualisiert NUR generische Dateien:
#   prinzipien/, tools/, vorlagen/, CLAUDE.md, README.md, LICENSE
# NICHT angefasst (deine Inhalte bleiben unverändert):
#   PROFIL.md, STAND.md, protokolle/, material/, inputs/
#
# Danach: mit `git diff` ansehen, was sich geändert hat, und committen wenn du magst.

set -euo pipefail

TEMPLATE_URL="https://github.com/ju-scho/KI-Lernwerkstatt.git"
TMP="$(mktemp -d)"
trap 'rm -rf "$TMP"' EXIT

echo "Hole aktuelle Version des Templates …"
git clone --depth 1 "$TEMPLATE_URL" "$TMP" >/dev/null 2>&1

for path in prinzipien tools vorlagen CLAUDE.md README.md LICENSE; do
  if [ -e "$TMP/$path" ]; then
    rm -rf "./$path"
    cp -r "$TMP/$path" "./$path"
    echo "  aktualisiert: $path"
  fi
done

chmod +x ./tools/*.sh 2>/dev/null || true

echo
echo "✅ Generische Dateien aktualisiert."
echo "   Deine persönlichen Daten (PROFIL.md, STAND.md, protokolle/, material/, inputs/)"
echo "   wurden NICHT verändert."
echo
echo "Nächster Schritt: Änderungen ansehen mit:  git diff"
echo "Wenn alles passt:  git add -A && git commit -m \"Template-Updates übernommen\""
