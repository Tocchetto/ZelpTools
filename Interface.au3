;Interface.au3

#include <ButtonConstants.au3>
#include <GUIConstantsEx.au3>
#include <GUIListBox.au3>
#include <WindowsConstants.au3>
#include <File.au3>
#include "deps/AutoitUtils/Utils.au3"

#Region ### START Koda GUI section ### Form=C:\Users\Zelp\Documents\git\ZelpTools\Forms\Form1.kxf
$Form1 = GUICreate("ZelpTools", 360, 207, 907, 399)
$btnAbrir = GUICtrlCreateButton("Abrir", 272, 8, 75, 25)
$btnConfigurar = GUICtrlCreateButton("Configurar", 272, 40, 75, 25)
$lstScripts = GUICtrlCreateList("", 8, 8, 257, 188)
GUISetState(@SW_SHOW)
#EndRegion ### END Koda GUI section ###

Func InitializeList()
	$aDepsFolderNames = _FileListToArray(@ScriptDir & "/deps", Default, $FLTA_FOLDERS)
	
	GUIPopulateSelectionList($lstScripts, $aDepsFolderNames)
EndFunc
InitializeList()

While 1
	$nMsg = GUIGetMsg()
	Switch $nMsg
		Case $GUI_EVENT_CLOSE
			Exit

	EndSwitch
WEnd