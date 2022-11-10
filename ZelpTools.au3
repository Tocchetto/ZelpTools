#include "Interface.au3"
#include "deps/AutoitUtils/Utils.au3"

Func HandleBtnAbrir()
	$sScript = GUICtrlRead($lstScripts)
	$sScriptPath = @ScriptDir & "/scripts/" & $sScript & "/" & $sScript & ".au3"
	
	RunAu3($sScriptPath)
EndFunc

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit
		Case $btnAbrir
			HandleBtnAbrir()
	EndSwitch
WEnd