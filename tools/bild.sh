#!/usr/bin/env bash
# bild.sh — rendert eine HTML-Datei zu einem zugeschnittenen PNG.
# Nutzung:  tools/bild.sh <input.html> <output.png> [breite]
# Beispiel: tools/bild.sh karte.html material/bilder/cheval.png 900
#
# Ansatz: Headless-Chrome rendert das HTML (farbige Emoji via Noto Color Emoji),
# danach schneidet ImageMagick den weißen Rand automatisch zu und legt einen
# kleinen sauberen Rand an. So muss die Bildhöhe nicht vorab bekannt sein.

set -euo pipefail

IN="${1:?HTML-Eingabedatei fehlt}"
OUT="${2:?PNG-Ausgabedatei fehlt}"
WIDTH="${3:-900}"
# großzügige Höhe; überschüssiges Weiß wird unten weggeschnitten
HEIGHT=2200

CHROME="$(command -v google-chrome || command -v chromium-browser)"
TMP="$(mktemp --suffix=.png)"
trap 'rm -f "$TMP"' EXIT

"$CHROME" --headless=new --disable-gpu --no-sandbox --hide-scrollbars \
  --force-device-scale-factor=2 \
  --screenshot="$TMP" --window-size="$((WIDTH+60)),$HEIGHT" \
  --default-background-color=ffffffff "$(readlink -f "$IN")" >/dev/null 2>&1

mkdir -p "$(dirname "$OUT")"
# weißen Rand wegschneiden, dann 24px sauberen Rand ergänzen
convert "$TMP" -trim +repage -bordercolor white -border 24 "$OUT"

echo "✅ $OUT ($(identify -format '%wx%h' "$OUT"))"
