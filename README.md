# MouseJiggler

🇬🇧 English | [🇩🇪 Deutsch](README.de.md)

A tiny AutoIt script that keeps Windows believing there's still somebody at the desk. On a
fixed interval the pointer moves one pixel and straight back, which produces real
`WM_MOUSEMOVE` events - the same ones a physical mouse produces. Around here it goes by
*home-office cheater*, and that's the whole point: the machine should keep thinking someone
is sitting there.

So the screensaver stays off, the display stays on, standby stays away, and the browser
doesn't throttle the background tab.

What it can't do: the Netflix pause. *"Are you still watching?"* shows up on a PC after
three episodes because Netflix counts the use of a player control, not activity
([help page, node/114059](https://help.netflix.com/en/node/114059)). Mouse movement doesn't
count, and neither does a hardware jiggler - Chrome can't tell synthetic mouse input from a
real one. That's what the sibling project
[InputJiggler](https://github.com/HolgiB/InputJiggler) is for: this nudge plus the player
keepalive.

## Settings

    $iIntervalMouse = 60000   ; nudge every 60 s (ms)
    $bShowTip       = True    ; short message on start
    $iTipHold       = 8000    ; hide it after x ms

The interval is the only thing you really have to touch. Shorter than the machine's idle
timeout, longer than nothing - 60 seconds works fine.

## Running it

Install AutoIt and run `MouseJiggler.au3`, that's it. If you want an `.exe`, right-click and
pick *Compile Script*; there's deliberately none in the repo. `ESC` quits, and the tray
tooltip shows it's running.

## License

MIT, see `LICENSE`.
