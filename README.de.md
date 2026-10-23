# MouseJiggler

[🇬🇧 English](README.md) | 🇩🇪 Deutsch

Ein kleines AutoIt-Skript, das Windows glauben laesst, es sitze noch jemand am Rechner. In
festem Takt wandert der Mauszeiger einen Pixel und sofort zurueck, und das erzeugt echte
`WM_MOUSEMOVE`-Ereignisse - dieselben, die eine physische Maus erzeugt. Im Haus laeuft das
Ding unter *Home-Office-Cheater*, und genau darum geht es: die Kiste soll weiter glauben,
dass jemand am Schreibtisch sitzt.

Damit bleibt der Bildschirmschoner aus, das Display an und der Standby weg, und der Browser
drosselt den Hintergrund-Tab nicht mehr herunter.

Was es nicht kann: die Netflix-Pause. Das *"Schaust du noch?"* kommt am PC nach drei Folgen,
weil Netflix die Benutzung einer Bedienfunktion des Players zaehlt und keine Aktivitaet
([Hilfeseite, node/114059](https://help.netflix.com/en/node/114059)). Mausbewegung zaehlt
dabei nicht, und die eines Hardware-Jigglers auch nicht - Chrome kann synthetische und echte
Maus nicht unterscheiden. Dafuer gibt es das Schwesterskript
[InputJiggler](https://github.com/HolgiB/InputJiggler): das enthaelt diesen Nudge und
zusaetzlich das Player-Keepalive.

## Einstellungen

    $iIntervalMouse = 60000   ; Nudge alle 60 s (ms)
    $bShowTip       = True    ; kurze Anzeige beim Start
    $iTipHold       = 8000    ; danach ausblenden

Das Intervall ist das einzige, was man wirklich anfassen muss. Kuerzer als die Abschaltzeit
des Rechners, laenger als nichts - 60 Sekunden passen eigentlich immer.

## Loslegen

AutoIt installieren und `MouseJiggler.au3` starten, das ist alles. Wer eine `.exe` will,
Rechtsklick und *Compile Script* - im Repo liegt absichtlich keine. `ESC` beendet, und der
Tray-Tooltip zeigt, dass es laeuft.

## Lizenz

MIT, siehe `LICENSE`.
