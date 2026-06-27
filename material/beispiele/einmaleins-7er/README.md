# Beispiel: Einmaleins (7er-Reihe), Pferde-Thema

Ein vollständiges, durch den `LERN-CHECK` geführtes Arbeitsblatt — als **Beispiel**, wie der
KI-Coach Material erzeugt. Hier ist es auf das Interesse „Pferde" zugeschnitten; bei deinem Kind
nimmt der Coach dessen Interessen (Dinos, Fußball, Weltraum …).

Dateien:
- `arbeitsblatt-7er.html` — die Quelle (HTML/CSS, mit A4-Druck-Regeln)
- `vorschau.png` — Bildschirm-Vorschau
- `druck-a4.pdf` — druckfertig (A4, kein Block wird umgebrochen)

So sind die Lernprinzipien eingebaut:
1. **Anker** (Strategie statt Auswendiglernen): 5×7=35 konkret mit Bildern → müheloser Einstieg.
2. **Vom Anker ableiten** (Generation): 6×7 = 35+7, 4×7 = 35−7.
3. **Muster** (+7): Lücken selbst füllen.
4. **Aus dem Kopf** (Abruf, „ohne Finger"), gemischte Aufgaben (Interleaving).
5. **Metakognition**: „Mein bester Trick heute war …".
6. **Wachstums-Haltung**: „noch nicht", Fortschrittsbild, positiver Abschluss.

Neu erzeugen:
```bash
tools/bild.sh  material/beispiele/einmaleins-7er/arbeitsblatt-7er.html vorschau.png 780
tools/druck.sh material/beispiele/einmaleins-7er/arbeitsblatt-7er.html druck-a4.pdf
```
