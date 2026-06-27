# Installation & Nutzung

Die KI-Lernwerkstatt ist ein Ordner mit Markdown-Dateien und kleinen Skripten. Du brauchst
einen **KI-Agenten, der in diesem Ordner arbeiten kann** (Dateien lesen/schreiben). Empfohlen:
[Claude Code](https://claude.com/claude-code). Es geht aber auch mit anderen CLI-Agenten oder
in der Cloud.

## 1. Projekt holen

```bash
# Variante A: per Git
git clone <URL-dieses-Templates> meine-lernwerkstatt
cd meine-lernwerkstatt

# Variante B: als ZIP herunterladen und entpacken, dann in den Ordner wechseln
```

## 2. KI-Agenten starten

### Empfohlen: Claude Code (CLI)
1. Claude Code installieren (siehe Link oben) und einloggen.
2. Im Projektordner starten:
   ```bash
   claude
   ```
3. `CLAUDE.md` wird automatisch geladen. Da es noch kein `PROFIL.md` gibt, startet der Coach
   das **Onboarding** (`START-HIER.md`): Datenschutz-Hinweis → kurzes Interview → `PROFIL.md`
   und `STAND.md` werden angelegt → `START-HIER.md` löscht sich → fertig.

### In der Cloud
Du kannst denselben Ordner in einer Cloud-Variante (z. B. claude.ai/code) öffnen bzw. dein
Git-Repository verbinden. Ablauf identisch: Onboarding beim ersten Start.

### Andere CLI-Agenten
Mit anderen Agenten (z. B. Codex CLI) sage dem Agenten zu Beginn einfach:
> „Lies `CLAUDE.md` und führe, falls noch kein `PROFIL.md` existiert, das Onboarding aus
> `START-HIER.md` durch."

## 3. (Optional, empfohlen) Stand sichern & synchronisieren

Damit Profil/Stand geräteübergreifend erhalten bleiben, sichere den Ordner in einem
**privaten** Git-Repository (wegen der persönlichen Daten in `PROFIL.md`):

```bash
git init
git add -A && git commit -m "Meine Lernwerkstatt"
# privates Repo anlegen (GitHub CLI) und pushen:
gh repo create meine-lernwerkstatt --private --source=. --push
```

Der Coach committet/pusht den Stand dann am Ende jeder Session.

## 4. Optionale Werkzeuge für die Bildgenerierung

Die Coaching-Funktion läuft ohne Zusatzsoftware. Nur für **selbst erzeugte Arbeitsblätter/
Karten** (`tools/bild.sh`, `tools/druck.sh`) brauchst du:

- **Google Chrome oder Chromium** (rendert HTML → PNG/PDF)
- **ImageMagick** (`convert`, schneidet PNGs zu)
- **Poppler** (`pdfinfo`/`pdftoppm`, für PDF-Infos)
- eine **Emoji-Schrift** (z. B. *Noto Color Emoji*) für bunte Motive

Beispiel-Installation unter Debian/Ubuntu:
```bash
sudo apt install chromium-browser imagemagick poppler-utils fonts-noto-color-emoji
```
Unter macOS via Homebrew: `brew install --cask google-chrome` sowie `brew install imagemagick poppler`.

Fehlt etwas davon, funktioniert das Coaching trotzdem — nur die Bild-/PDF-Erzeugung nicht.

## 5. Loslegen

Sag dem Coach im **Live-Modus**:
> „Ich sitze gerade mit meinem Kind da, wir wollen `<Thema>` üben — was schlägst du vor?"

oder im **Reflexions-Modus** nach einer Einheit:
> „Heute lief es so: … — was machen wir nächstes Mal?"
