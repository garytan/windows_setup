# Install chocolate
iex ((New-Object System.Net.WebClient).DownloadString('https://community.chocolatey.org/install.ps1'))

# Office software
# choco install -y notepadplusplus
choco install -y cmder
choco install -y 7zip
choco install -y googlechrome
choco install -y vscode
choco install -y thunderbird
choco install -y 1password

# Command line tool
# choco install -y python
# Remove-Item $env:LOCALAPPDATA\Microsoft\WindowsApps\python.exe
# Remove-Item $env:LOCALAPPDATA\Microsoft\WindowsApps\python3.exe

# choco install -y git
$git_email = Read-Host "git config user.email: "
$git_name = Read-Host "git config user.name: "

git config --global user.email $git_email
git config --global user.name $git_name
git config --global color.ui true
git config --global core.editor "code -w"
git config --global alias.lg "log --color --graph --all --pretty=format:'%Cred%h%Creset -%C(yellow)%d%Creset %s %Cgreen(%cr) %C(bold blue)<%an>%Creset' --abbrev-commit --"

# SNS software
choco install -y line
choco install -y telegram

# Entertainment software
choco install -y spotify

# Optimize
Write-Host 'Show file extensions in Explorer ' -F blue -B black
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "HideFileExt" /t  REG_DWORD /d 0 /f | Out-Null

Write-Host 'Show hidden file in Explorer ' -F blue -B black
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "Hidden" /t  REG_DWORD /d 1 /f | Out-Null

Write-Host 'Hide the search box from taskbar. ' -F blue -B black
reg add "HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Search" /v "SearchboxTaskbarMode" /t REG_DWORD /d 0 /f | Out-Null

Write-Host 'Windows Explorer to start on This PC instead of Quick Access ' -F blue -B black
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "LaunchTo" /t REG_DWORD /d 1 /f | Out-Null

Write-Host 'Hide the Copilot from taskbar. ' -F blue -B black
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowCopilotButton" /t REG_DWORD /d 0 /f | Out-Null

Write-Host 'Hide the TaskView from taskbar. ' -F blue -B black
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "ShowTaskViewButton" /t REG_DWORD /d 0 /f | Out-Null

Write-Host 'Hide the Widgets from taskbar. ' -F blue -B black
reg add "HKEY_CURRENT_USER\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer\Advanced" /v "TaskbarDa" /t REG_DWORD /d 0 /f | Out-Null

Write-Host 'Unpin the Store from taskbar. ' -F blue -B black
reg add "HKEY_CURRENT_USER\Software\Policies\Microsoft\Windows\Explorer" /v "NoPinningStoreToTaskbar" /t REG_DWORD /d 1 /f | Out-Null

Write-Host 'Hide the Gallery from explorer sidebar. ' -F blue -B black
reg add "HKEY_CURRENT_USER\Software\Classes\CLSID\{e88865ea-0e1c-4e20-9aa6-edcd0212c87c}" /v "System.IsPinnedToNameSpaceTree" /t REG_DWORD /d 0 /f | Out-Null

Write-Host 'Hide the Onedrive from explorer sidebar. ' -F blue -B black
reg add "HKEY_CURRENT_USER\SOFTWARE\Classes\CLSID\{018D5C66-4533-4307-9B53-224DE2ED1FE6}" /v System.IsPinnedToNameSpaceTree /t REG_DWORD /d 0 /f

taskkill /f /im explorer.exe
start explorer.exe