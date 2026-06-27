#!/usr/bin/env bash
# druck.sh — rendert eine HTML-Datei zu einem druckfertigen A4-PDF.
# Nutzung:  tools/druck.sh <input.html> <output.pdf>
# Beispiel: tools/druck.sh arbeitsblatt.html 99_export/arbeitsblatt.pdf
#
# Ergebnis: A4-Seiten, mehrere Seiten erlaubt, KEIN Block mitten durchgeschnitten
# (sofern das HTML die Druck-Regeln nutzt — siehe tools/README.md bzw. tools/druck.css).
# Headless-Chrome druckt nach PDF und respektiert @page A4 + break-inside:avoid.

set -euo pipefail

IN="${1:?HTML-Eingabedatei fehlt}"
OUT="${2:?PDF-Ausgabedatei fehlt}"

CHROME="$(command -v google-chrome || command -v chromium-browser)"
mkdir -p "$(dirname "$OUT")"

"$CHROME" --headless=new --disable-gpu --no-sandbox \
  --no-pdf-header-footer \
  --print-to-pdf="$OUT" "$(readlink -f "$IN")" >/dev/null 2>&1

pages="$(pdfinfo "$OUT" 2>/dev/null | awk '/^Pages:/{print $2}')"
echo "✅ $OUT (A4, ${pages:-?} Seite(n))"
