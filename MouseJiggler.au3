#cs
    Einfacher Mouse Jiggler für Audials / Streaming
    - Bewegt die Maus alle 60 Sekunden um 1 Pixel und zurück.
    - Drücke ESC, um das Skript jederzeit zu beenden.
#ce

; Intervall in Millisekunden (60000 ms = 60 Sekunden)
Local $iInterval = 60000

; Hotkey zum schnellen Beenden (Escape-Taste)
HotKeySet("{ESC}", "Terminate")

; Info-Tooltip anzeigen (verschwindet beim Beenden)
ToolTip("Mouse Jiggler aktiv (Beenden mit ESC)", 0, 0)

While 1
    ; Aktuelle Mausposition ermitteln
    Local $aPos = MouseGetPos()

    ; Maus 1 Pixel nach rechts und sofort wieder zurück bewegen (0 = ohne sichtbare Animationsverzögerung)
    MouseMove($aPos[0] + 1, $aPos[1], 0)
    MouseMove($aPos[0], $aPos[1], 0)

    ; Warten bis zum nächsten Intervall
    Sleep($iInterval)
WEnd

Func Terminate()
    ToolTip("") ; Tooltip entfernen
    Exit
EndFunc