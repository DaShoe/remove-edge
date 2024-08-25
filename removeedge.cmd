set "appdataPath=%AppData%"

TaskKill /im "msedge.exe" /f
rmdir /s "C:\Program Files (x86)\Microsoft\Edge"
rmdir /s "C:\Program Files (x86)\Microsoft\EdgeCore"
rmdir /s "C:\Program Files (x86)\Microsoft\EdgeWebView"
rmdir /s "C:\Program Files (x86)\Microsoft\EdgeUpdate"

reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Search" /v AllowSearchToUseLocation /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Search" /v AllowCortana /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Search" /v DisableWebSearch /t REG_DWORD /d 1 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Search" /v ConnectedSearchUseWeb /t REG_DWORD /d 0 /f
reg add "HKLM\SOFTWARE\Policies\Microsoft\Windows\Search" /v ConnectedSearchUseWebOverMeteredConnections /t REG_DWORD /d 0 /f

reg add "HKCU\Software\Policies\Microsoft\Windows\Explorer" /v DisableSearchBoxSuggestions /t REG_DWORD /d 1 /f

del "C:\ProgramData\Microsoft\Windows\Start Menu\Programs\Microsoft Edge.lnk"
del "C:\Windows\System32\config\systemprofile\AppData\Roaming\Microsoft\Internet Explorer\Quick Launch\Microsoft Edge.lnk"
del "%appdataPath%\Roaming\Microsoft\Internet Explorer\Quick Launch\Microsoft Edge.lnk"

shutdown /r

