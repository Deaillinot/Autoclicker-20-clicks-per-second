#NoEnv  ; Recommended for performance and compatibility with future AutoHotkey releases.
; #Warn  ; Enable warnings to assist with detecting common errors.
SendMode Input  ; Recommended for new scripts due to its superior speed and reliability.
SetWorkingDir %A_ScriptDir%  ; Ensures a consistent starting directory.

+sc1::
exitapp ; Shift + ESC = Exit
!sc1::
suspend ; ALT + ESC = Pause
 LButton::

   Loop
      {
         Send, {LButton}
         Sleep, 1               
         If GetKeyState("LButton", "P") = 0
            Break
      }
   Return
   
   RButton::

   Loop
      {
         Send, {RButton}
         Sleep, 1               
         If GetKeyState("RButton", "P") = 0
            Break
      }
   Return
	