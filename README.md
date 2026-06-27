# 🎒 KI-Lernwerkstatt

**Ein KI-Lern-Coach, der dir hilft, dein Kind beim Lernen zu begleiten — fundiert, spielerisch
und ohne Notendruck.**

Das hier ist kein Lernprogramm und keine App, sondern ein **Begleiter**: Du arbeitest mit einem
KI-Coach (z. B. [Claude Code](https://claude.com/claude-code)) direkt in diesem Projektordner.
Du kommst immer wieder auf ihn zu — live während des Lernens („was machen wir jetzt?") oder
reflektierend danach („so lief's heute") — und die Vorschläge werden mit jeder Rückmeldung
passender für *dein* Kind.

> **Ziel:** Lernfreude, Selbstvertrauen, Frustrationstoleranz und die Fähigkeit, sich Inhalte
> selbst zu erschließen — nicht bessere Noten. **Fach-agnostisch:** funktioniert für Mathe,
> Sprachen, Lesen, Sachthemen, ein Instrument … alles, was ihr üben wollt.

## Für wen — und wofür

**Diese Werkstatt ist für dich als Elternteil — nicht für dein Kind selbst.** Der KI-Coach
ist dein Sparringspartner: Er hilft *dir*, gute, kurze Lerneinheiten mit deinem Kind zu
gestalten und passendes Arbeitsmaterial zu erstellen. Das Kind sitzt **nicht** selbst am
Computer und chattet mit der KI.

**Wofür sie gedacht ist:**
- Eine **kurze, spielerische Lerneinheit** mit deinem Kind vorbereiten und durchführen.
- **Arbeitsmaterial erzeugen** (Arbeitsblätter, Karten — als Bildschirm-Vorschau oder
  druckfertiges A4-PDF), das ihr dann gemeinsam durcharbeitet.
- Übergeordnet: deinem Kind **das Lernen selbst** beibringen — Lernkompetenz, Neugier und
  Frustrationstoleranz fördern.

**Wofür sie *nicht* gedacht ist:**
- ❌ Kein Werkzeug für das Kind allein.
- ❌ **Keine Hausaufgabenhilfe** und kein „Lösungs-Automat" (das ist nicht das Ziel — und
  bewusst nicht getestet).
- ❌ Kein Nachhilfe-Ersatz, der gezielt Noten in einem Fach hochtreibt. Es geht um die
  **Lernkompetenz an sich**, nicht um „besser in Mathe/Englisch werden". Dass sich Fächer
  dabei verbessern, ist ein willkommener Nebeneffekt — nicht der Zweck.

## Was ist das Besondere?

- **Fundiert statt Bauchgefühl.** Jeder Vorschlag läuft durch eine Checkliste, die auf drei
  Standardwerken der Lernforschung beruht (*Make It Stick*, *Mindset*, *Why Don't Students Like
  School?*). Die Kernideen sind als Spickzettel in `prinzipien/` destilliert.
- **Lernt dein Kind kennen.** Ein `PROFIL.md` hält fest, wie dein Kind tickt (Interessen,
  Frust-Muster, was motiviert). Der Coach richtet alles daran aus und lernt mit jeder Session dazu.
- **Erstellt Material.** Der Coach kann kindgerechte Arbeitsblätter und Karten erzeugen — als
  Bildschirm-Vorschau (PNG) oder **druckfertiges A4-PDF**, mit *exakt* richtigen Anzahlen.
- **Bleibt synchron.** Profil, Stand und Protokolle werden festgehalten — bei jedem Start liest
  der Coach den Stand, am Ende aktualisiert er ihn.

## So funktioniert's (Architektur)

| Datei/Ordner | Rolle |
|---|---|
| `CLAUDE.md` | Betriebsanleitung für den KI-Coach (lädt automatisch) |
| `PROFIL.md` | Wie dein Kind tickt (entsteht beim Onboarding, wächst mit) |
| `STAND.md` | Wo ihr gerade steht, nächster Schritt (immer aktuell) |
| `prinzipien/` | Die Lern-Theorie + `LERN-CHECK.md` (die Qualitäts-Gate) |
| `tools/` | Bild-/Druck-Werkzeuge (PNG-Vorschau & A4-PDF) |
| `material/` | Eure Arbeitsblätter & Karten (Beispiele in `material/beispiele/`) |
| `protokolle/` | Verlauf der Sessions |
| `vorlagen/` | Leere Vorlagen (Profil, Stand, Protokoll, Interview) |

## 🚀 Loslegen — Schritt für Schritt

> Keine Sorge, du musst kein Technik-Profi sein. Arbeite die Schritte einfach der Reihe nach
> ab. Wenn ein Befehl kompliziert wirkt: kopieren, einfügen, Enter. Hängst du fest, frag später
> den Coach selbst — er hilft dir weiter.

### Was du brauchst
- Einen **Computer** (Windows, Mac oder Linux) mit Internet.
- **Claude Code** — das KI-Werkzeug, mit dem du arbeitest. Kostenlos installieren und einrichten
  nach Anleitung hier: <https://claude.com/claude-code> (du brauchst dafür ein Anthropic-Konto).
- Optional, aber empfohlen: ein kostenloses **GitHub-Konto** (<https://github.com>) — damit dein
  Stand gesichert ist und auf mehreren Geräten funktioniert.

### Schritt 1 — Die Werkstatt auf deinen Computer holen

Du hast zwei Möglichkeiten. **Weg B ist empfohlen**, wenn du ein GitHub-Konto hast.

**Weg A — einfach ausprobieren (lokal, ohne GitHub-Konto):**
Öffne ein Terminal (bei Windows: „Eingabeaufforderung" bzw. „PowerShell") und gib ein:
```bash
git clone https://github.com/ju-scho/KI-Lernwerkstatt.git meine-lernwerkstatt
cd meine-lernwerkstatt
```
Das lädt die Werkstatt in einen Ordner namens `meine-lernwerkstatt` herunter und wechselt hinein.

**Weg B — eigene private Kopie mit Sicherung (empfohlen):**
1. Klick auf dieser GitHub-Seite oben auf den grünen Button **„Use this template"** →
   **„Create a new repository"**.
2. Gib einen Namen ein (z. B. `meine-lernwerkstatt`), wähle **Private** und klick **„Create
   repository"**.
3. Hol deine private Kopie auf den Computer (ersetze `DEIN-GITHUB-NAME`):
   ```bash
   git clone https://github.com/DEIN-GITHUB-NAME/meine-lernwerkstatt.git
   cd meine-lernwerkstatt
   ```
So hast du eine **eigene, private** Kopie — komplett getrennt vom öffentlichen Original. (Das ist
kein „Fork": es gibt keine Verbindung zurück, dein Privates bleibt privat.)

### Schritt 2 — Den KI-Coach starten
Im selben Ordner eingeben:
```bash
claude
```
Claude Code öffnet sich und liest automatisch die Anleitung (`CLAUDE.md`).

### Schritt 3 — Einmaliges Onboarding (~10 Minuten)
Weil es noch kein Profil deines Kindes gibt, führt dich der Coach automatisch durch:
1. einen **Datenschutz-Hinweis** (du bestätigst),
2. ein **kurzes Interview** über dein Kind,
3. das Anlegen von `PROFIL.md` und `STAND.md`,
4. danach **löscht sich die Onboarding-Datei selbst** — fertig eingerichtet.

Sag dem Coach danach z. B.: *„Ich sitze gerade mit meinem Kind da, wir wollen das Einmaleins
üben — was schlägst du vor?"*

### Schritt 4 — (Optional) Stand sichern & synchronisieren
Hast du Weg A genommen und willst später doch sichern? Lege ein **privates** GitHub-Repo an und
verbinde es (dafür brauchst du die GitHub CLI `gh` und ein GitHub-Konto):
```bash
gh repo create meine-lernwerkstatt --private --source=. --push
```
Danach sichert der Coach den Stand am Ende jeder Session automatisch. **Wichtig:** Wegen der
persönlichen Daten in `PROFIL.md` immer ein **privates** Repository.

### Werkzeuge für Arbeitsblätter (optional)
Das Coaching läuft ohne Zusatzsoftware. Nur damit der Coach **druckbare Arbeitsblätter/Karten**
erzeugen kann, brauchst du zusätzlich Google Chrome (oder Chromium), ImageMagick, Poppler und
eine Emoji-Schrift.
- **Ubuntu/Debian:** `sudo apt install chromium-browser imagemagick poppler-utils fonts-noto-color-emoji`
- **macOS:** `brew install --cask google-chrome` und `brew install imagemagick poppler`

Fehlt davon etwas, funktioniert das Coaching trotzdem — nur die Bild-/PDF-Erstellung nicht.

## 🔄 Updates bekommen (wenn das Template verbessert wird)

Deine private Kopie ist **eigenständig** — sie aktualisiert sich nicht von selbst (und das ist
gut so: so wandert nie versehentlich etwas Privates ins öffentliche Repo). Wenn es Verbesserungen
am Template gibt, holst du sie bewusst, wann du willst.

**Der einfache Weg:** Sag es im Projekt einfach dem Coach:
> „Hol bitte die neuesten Verbesserungen aus dem Template."

Er führt dann das mitgelieferte Skript aus und fasst zusammen, was sich geändert hat.

**Oder selbst per Befehl:**
```bash
tools/update.sh
git diff          # ansehen, was sich geändert hat
git add -A && git commit -m "Template-Updates übernommen"
```

**Was passiert mit deinen Daten?** Nichts — sie bleiben unangetastet. Das Update überschreibt
**nur die generischen Dateien** (`prinzipien/`, `tools/`, `vorlagen/`, `CLAUDE.md`, `README.md`,
`LICENSE`). Deine persönlichen Inhalte — **`PROFIL.md`, `STAND.md`, `protokolle/`, `material/`,
`inputs/`** — werden nie angefasst. Vor dem Committen kannst du mit `git diff` alles in Ruhe prüfen.

## 🔒 Datenschutz (bitte lesen)

Diese Werkstatt arbeitet mit einer **KI (LLM)**. Alles, was du eingibst, wird von einem KI-Dienst
verarbeitet; eine Nutzung/Speicherung durch den Anbieter lässt sich nie ganz ausschließen.
Deshalb:

- Für dein Kind nur **Vorname oder Spitzname** verwenden — keine vollen Namen, Adressen,
  Schul-/Klassennamen oder Gesundheitsdaten.
- Wenn du dein Projekt online sicherst: **immer ein privates Repository** (das `PROFIL.md`
  enthält persönliche Beobachtungen).
- Du kannst `PROFIL.md` jederzeit ansehen, ändern oder löschen.

## Mitmachen

Dies ist ein Template zum Kopieren („Use this template") und Verbessern. Verbesserungen an den
generischen Teilen (Prinzipien, Werkzeuge, Vorlagen) sind willkommen — persönliche Profile
gehören **nicht** ins öffentliche Repo.

## Hinweis zu den Quellen

Die Spickzettel in `prinzipien/` sind **eigenständige Zusammenfassungen** der Kernideen — sie
ersetzen die Bücher nicht. Wer tiefer einsteigen will, lese die Originale (Quellenangaben in den
Dateien). Ein Kauf der Bücher unterstützt die Autorinnen und Autoren.

## Lizenz

[MIT](LICENSE) — frei nutzbar, ohne Gewähr.
