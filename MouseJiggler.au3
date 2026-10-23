#cs
    MouseJiggler   (21.10.2026)

    Zweck: Windows soll den Benutzer fuer anwesend halten.
      * kein Bildschirmschoner, kein Display-Aus, kein Standby
      * kein aggressives Tab-Throttling im Browser

    Wirkung: Bewegt den Mauszeiger in festem Takt um 1 Pixel und sofort wieder zurueck.
    Das erzeugt echte WM_MOUSEMOVE-Ereignisse - dieselben, die eine echte Maus erzeugt.

    WICHTIG - was dieses Skript NICHT kann:
    Die Netflix-Pause "Schaust du noch?" nach drei Folgen laesst sich damit nicht
    verhindern. Netflix zaehlt auf PCs naemlich keine Aktivitaet, sondern die Benutzung
    einer Bedienfunktion des Players (Hilfe: node/114059). Mausbewegungen zaehlen nicht.
    Dafuer gibt es das Schwesterskript InputJiggler.

    Beenden: ESC
#ce

; =====================  EINSTELLUNGEN  =====================================
Local $iIntervalMouse = 60000       ; Nudge alle 60 s (ms)
Local $bShowTip       = True        ; kurze Anzeige beim Start
Local $iTipHold       = 8000        ; Anzeige nach x ms ausblenden
; ==========================================================================

Local $hTimerMouse = TimerInit()
Local $hTimerTip = TimerInit()
Local $bTipOn = False

HotKeySet("{ESC}", "Terminate")
TraySetToolTip("MouseJiggler aktiv - ESC beendet")

If $bShowTip Then
    ShowStatus("MouseJiggler aktiv (ESC beendet)")
EndIf

While 1
    If TimerDiff($hTimerMouse) >= $iIntervalMouse Then
        Local $aPos = MouseGetPos()
        MouseMove($aPos[0] + 1, $aPos[1], 0)
        MouseMove($aPos[0], $aPos[1], 0)
        $hTimerMouse = TimerInit()
    EndIf

    If $bTipOn And $iTipHold > 0 And TimerDiff($hTimerTip) >= $iTipHold Then
        ToolTip("")
        $bTipOn = False
    EndIf

    Sleep(1000)
WEnd

Func ShowStatus($sMsg)
    ToolTip("")                 ; erst restlos weg, sonst zeichnet AutoIt uebereinander
    ToolTip($sMsg, 0, 0)
    $hTimerTip = TimerInit()
    $bTipOn = True
EndFunc

Func Terminate()
    ToolTip("")
    Exit
EndFunc
