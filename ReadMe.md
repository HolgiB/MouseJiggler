# AutoIt Mouse Jiggler für Streaming & Audials

Ein leichtgewichtiges AutoIt-Skript, das automatische Inaktivitäts-Sperren, Standby-Modi und Netflix/Chrome-Sitzungsabbrüche verhindert. Es eignet sich ideal für lange Streaming- und Aufnahmesessions (z. B. mit Audials).

---

## 🚀 Funktionsweise

Das Skript ermittelt in einem festgelegten Intervall die aktuelle Position des Mauszeigers, verschiebt ihn unmerklich um **1 Pixel** nach rechts und bringt ihn sofort wieder an die ursprüngliche Stelle zurück.

Durch diese minimalen Signale denkt das Betriebssystem sowie der Browser, dass ein Benutzer aktiv am PC arbeitet:
* **Netflix:** Verhindert das automatische Pausieren nach mehreren Episoden („Schaust du noch?").
* **Chrome:** Verhindert aggressive Energieeinsparungen und Tab-Throttling wegen Inaktivität.
* **Windows:** Verhindert den automatischen Bildschirmschoner und Standby-Modus.

---

## 🛠️ Voraussetzungen

* **Windows OS**
* *(Optional)* **[AutoIt v3](https://www.autoitscript.com/)** zum Anpassen oder Ausführen des `.au3`-Quellcodes.

---

## 📋 Nutzung

### Option A: Fertige `.exe` starten (empfohlen)

1. `MouseJiggler.exe` herunterladen und per Doppelklick starten — keine Installation nötig.
2. Oben links auf dem Bildschirm erscheint kurz ein Tooltip als Bestätigung (`Mouse Jiggler aktiv (Beenden mit ESC)`).

Die mitgelieferte `.exe` ist vorkompiliert. Wenn du den Quellcode änderst, musst du sie neu bauen (Option B).

### Option B: Aus dem Quellcode

1. [AutoIt v3](https://www.autoitscript.com/) installieren.
2. `MouseJiggler.au3` per Doppelklick ausführen — oder mit einem Rechtsklick → **„Compile Script"** eine eigene portable `.exe` erzeugen.

---

## ⌨️ Steuerung & Einstellungen

* **Skript beenden:** Drücke einfach die `ESC`-Taste auf deiner Tastatur.
* **Intervall anpassen:** Öffne `MouseJiggler.au3` und ändere den Wert `$iInterval` (Standard ist `60000` ms = 60 Sekunden).

---

## 📁 Dateien

| Datei | Zweck |
|---|---|
| `MouseJiggler.au3` | AutoIt-Quellcode |
| `MouseJiggler.exe` | fertig kompilierte, portable Variante für Windows |
| `LICENSE` | MIT-Lizenz |

---

## 📄 Lizenz

MIT — siehe [LICENSE](LICENSE). Frei verwendbar und anpassbar.
