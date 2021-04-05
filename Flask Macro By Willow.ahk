#IfWinActive, ahk_class POEWindowClass
#MaxThreadsPerHotkey 2
#SingleInstance Force


;============== INSTRUCTIONS: keybind your flasks to 1 2 3 4 5
;============== f4 is pause script incase anything goes terribly wrong.
;============== delete key to toggle your flask usage (you can rebind this, delete is my side mouse button)
;============== very important! on startup press the toggle on and off then wait 15 seconds before first use. this is to sync the timers. you only need to do this once on start up.
;============== flasks will all instantly start at the same time instead of waiting if you do this ^


;============== HOW TO SET THIS MACRO UP FOR YOUR CHARACTER PROPERLY:
;============== there are 5 timers within this macro, one for each flask slot. (example: "random, delay0, 4700, 4750")
;============== every 1000 is one second, set this timer about 50-100 below your flasks duration, while also leaving a 50 window for it to randomize in...
;============== "4700, 4750" is for a 4.8 second flask for example.
;============== setting the second time to 50ms below the flask expires give you a 50ms ping tollerence (4750)
;============== setting the first time to 50ms below the second time gives it a 50ms error window, this is so GGG cannot detect a macro is being used. (4700)
;============== you could have a larger ping tollerance or a larger error window if you wish, its all customizable!
;============== this set up gets a lot easier once you are familiar with this macro. (i personally copy/paste this macro for every character i play so the timings get saved)
;============== you can disable a flask slot from being toggled if you wish (instructions below) this is usefull for life flasks.


;============== PROS/CONS OF THIS MACRO COMPAIRED TO OTHER FLASK MACROS:
;============== PRO:
;============== one button, no repressing. its a toggle.
;============== never wastes flask charges
;============== fully customizable
;============== undetectable by GGG
;============== CON:
;============== hard to set up
;============== you gotta remember to turn it on and off between maps


;================== Keybinds section =====================================

f4::pause
;============== you can find the toggle key below within flask macro (delete is default)


;============================ Flask Macro ================================

delete::
If (Toggle = "")
{
	random, delay1, 6100, 6150
	random, delay2, 4700, 4750
	random, delay3, 4700, 4750
	random, delay4, 4700, 4750
	random, delay5, 4700, 4750

	SetTimer, Loop1, %delay1%
	SetTimer, Loop2, %delay2%
	SetTimer, Loop3, %delay3%
	SetTimer, Loop4, %delay4%
	SetTimer, Loop5, %delay5%
}
Else
	Pause
If (Toggle := !Toggle)
return

;============== To disable a flask put a ; before it
;============== Example: 
;============== ;SetTimer, Loop9, %delay9%

Loop1:
Send, 1
return

Loop2:
Send, 2
return

Loop3:
Send, 3
return

Loop4:
Send, 4
return

Loop5:
Send, 5
return


;=========================================================================

