# tools/ — Bildgenerierung für Lernmaterial

## Wozu
Damit Claude in Live-Sessions in Sekunden **kindgerechte Lernbilder** erzeugen kann:
Mathe-Visualisierungen mit *exakter* Anzahl (Pferde-Gruppen, Zahlenfeld, Reihen),
Französisch-Vokabelkarten mit Bild + Aussprache, usw.

## Warum so (statt KI-Bildgenerator / Excalidraw)
- **Exakte Anzahl** ist bei Mathe Pflicht — KI-Bildgeneratoren können nicht zuverlässig
  zählen. Hier platzieren wir genau N Emoji/Elemente.
- **Gratis & offline**, kein API-Key. Läuft über das lokale Headless-Chrome.
- **Bunt & kindgerecht** dank Noto-Color-Emoji (🐴 etc.) + großen, klaren Schriften.
- Excalidraw (Cole Medins Skill) ist super für *technische* Diagramme, aber der falsche
  Stil für Kinder-Lernmaterial.

## Zwei Ausgabewege

**1. Bildschirm-Vorschau (PNG)** — zum Anschauen am Laptop in der Live-Session:
```bash
tools/bild.sh <input.html> <output.png> [breite]
tools/bild.sh karte.html material/bilder/cheval.png 520
```
Rendert mit Headless-Chrome (2× für Schärfe), schneidet den weißen Rand automatisch zu.

**2. Druckfertig (A4-PDF)** — zum Ausdrucken zuhause:
```bash
tools/druck.sh <input.html> <output.pdf>
tools/druck.sh material/.../arbeitsblatt.html 99_export/arbeitsblatt.pdf
```
Erzeugt **A4-Seiten** (mehrere Seiten erlaubt). Kein Block wird mitten umgebrochen —
dafür muss das HTML die Druck-Regeln enthalten (siehe unten).

### A4-Druck-Regeln (in jedes druckbare HTML einbauen)
```css
@media print{
  @page{size:A4;margin:12mm}
  body{width:auto;padding:0}   /* füllt die A4-Breite statt fixer px-Breite */
}
/* jeden zusammengehörigen Kasten als Ganzes auf einer Seite halten: */
.block,.motto,.ende,.trick{break-inside:avoid;page-break-inside:avoid}
```
Regel: Jedes in sich geschlossene Element (Aufgabenkasten, Bildkarte) bekommt
`break-inside:avoid`. So entstehen saubere A4-Seiten ohne zerschnittene Aufgaben.

## Bausteine, die gut funktionieren
- **Schrift:** `font-family:"Comic Sans MS","Segoe UI",sans-serif;` — freundlich, gut lesbar.
- **Farben (Projekt-Palette):** Blau `#4a6fa5`, Grün `#88b04b`, Orange `#e07a5f`,
  Hintergrund `#fffdf7`.
- **Emoji groß** über `font-size` (z. B. 130px für Karten-Motive, 34px für Abzähl-Tiere).
- **Die Welt des Kindes nutzen:** z. B. 🐴 Pferde, 🐱🐶 Tiere, ⚽ Sport, 🚀 Weltraum, ⭐ als Belohnung.
- **Wenig Text** (viele Grundschulkinder lesen technisch, verstehen Texte aber noch schwer) — Bild + kurzes Wort.

### Vorlage: Mathe — N Gruppen mit je M Dingen
Flex-Container mit Karten; pro Karte M Emoji + Zwischensumme; unten die Multiplikation.
(Siehe Git-Historie / frühere Beispiele; HTML wird je Session frisch geschrieben.)

### Vorlage: Französisch — Vokabelkarte
Eine Karte mit großem Emoji, französischem Wort, Aussprache in `[ … ]`, deutschem Wort.

## Hinweis
HTML wird pro Session passend zum Lernziel neu geschrieben — keine starren Templates,
damit das Material zum jeweiligen Moment passt. Gute Ergebnisse in `material/bilder/`
ablegen und committen, damit eine wiederverwendbare Material-Bibliothek entsteht.
