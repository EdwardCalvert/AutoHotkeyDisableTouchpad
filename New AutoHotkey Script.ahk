﻿#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.


touchpadEnabled:=True

#SingleInstance Force

if not A_IsAdmin

Run *RunAs "%A_ScriptFullPath%"

F9::

if (touchpadEnabled = true)

{touchpadEnabled := !touchpadEnabled

Run, SystemSettingsAdminFlows.exe EnableTouchPad 0 ;removed %windir%\Sysnative\

}

else

{

touchpadEnabled := !touchpadEnabled

Run, SystemSettingsAdminFlows.exe EnableTouchPad 1

}

return