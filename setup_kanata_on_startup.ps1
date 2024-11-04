$StartupPath="HKCU:\Software\Microsoft\Windows\CurrentVersion\Run"
$ProgramName="Kanata"
# change the executable path
$KanataPath="C:\Program Files\Kanata\kanata_gui.exe"
# change the config path
$KanataConfigPath="C:\Program Files\Kanata\"
$KanataConfigName="kanata.kbd"

# C:\Windows\system32\conhost.exe --headless 
$StartupCommand="`"$KanataPath`" --cfg `"$KanataConfigPath$KanataConfigName`""

Set-ItemProperty -LiteralPath "$StartupPath" -Name "$ProgramName" -Value "$StartupCommand" 
