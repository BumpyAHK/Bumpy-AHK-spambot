#SingleInstance force
Gui, Add, Text,, Spambot!
Gui, Add, Text,, Key Delay (Default = 50)
Gui, Add, Edit, w300 vKeyDelay, 50
Gui, Add, Text,, Spam Count (Default = 10)
Gui, Add, Edit, w30 vCount, 10
Gui, Add, Text,, Message to Spam
Gui, Add, Edit, R10 w300 vSpamNote
Gui, Add, Text,, Made by https://github.com/BumpyAHK
Gui, Add, Text,, F5 To Start Script, F6 To Stop Script When Its Not Spamming.
Gui, Add, Text,, Version 2.1

Gui, Show
*F5::
Gui, Submit, Nohide
loop, %Count% {
    SetKeyDelay, %KeyDelay%
    Send, %SpamNote% {enter}
}
return

GuiClose:
ExitApp

F6::ExitApp