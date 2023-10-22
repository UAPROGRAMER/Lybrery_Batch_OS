Set WshShell = CreateObject("WScript.Shell")
strUser = CreateObject("WScript.Network").UserName & "\Desktop\OS\loading.bat"
WshShell.Run chr(34) & "C:\Users\" & strUser & Chr(34), 0
Set WshShell = Nothing