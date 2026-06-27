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

## Schnellstart

1. **Installieren & öffnen** — siehe [`INSTALLATION.md`](INSTALLATION.md) (CLI, Claude Code
   oder Cloud).
2. **Onboarding** — Beim ersten Start führt dich der Coach durch ein kurzes Interview über dein
   Kind (Skript: `START-HIER.md`) und legt `PROFIL.md` + `STAND.md` an. Die Datei `START-HIER.md`
   löscht sich danach selbst — die Werkstatt ist sofort einsatzbereit.
3. **Loslegen** — Sag dem Coach z. B.: *„Ich sitze gerade mit meinem Kind da, wir wollen das
   Einmaleins üben — was schlägst du vor?"*

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

Dies ist ein Template zum Forken und Verbessern. Verbesserungen an den generischen Teilen
(Prinzipien, Werkzeuge, Vorlagen) sind willkommen — persönliche Profile gehören **nicht** ins
öffentliche Repo.

## Hinweis zu den Quellen

Die Spickzettel in `prinzipien/` sind **eigenständige Zusammenfassungen** der Kernideen — sie
ersetzen die Bücher nicht. Wer tiefer einsteigen will, lese die Originale (Quellenangaben in den
Dateien). Ein Kauf der Bücher unterstützt die Autorinnen und Autoren.

## Lizenz

[MIT](LICENSE) — frei nutzbar, ohne Gewähr.
