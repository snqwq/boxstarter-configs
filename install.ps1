# System Configuration
Set-ExplorerOptions -showHiddenFilesFoldersDrives -showProtectedOSFiles -showFileExtensions


# Chocolatey Installs
choco install winfetch
choco install microsoft-windows-terminal

choco install 7zip.install

choco install firefox
choco install googlechrome

choco install notepadplusplus.install
choco install sublime-text

choco install python
choco install nodejs

choco install vlc.install

choco install transmission

# Debloat
& ([scriptblock]::Create((irm "https://raw.githubusercontent.com/Raphire/Win11Debloat/master/Get.ps1"))) -RunDefaults -Silent -RemoveW11Outlook

# Change wallpaper
$wallpaper = "C:\Users\$env:UserName\Pictures\wallpaper.jpg"
$wallpaperUrl = "https://raw.githubusercontent.com/snqwq/boxstarter-configs/main/wallpaper.jpg"

Invoke-WebRequest -Uri $wallpaperUrl -OutFile $wallpaper
set-itemproperty -path "HKCU:Control Panel\Desktop" -name WallPaper -value $wallpaper

# Say Bye
Write-Host "All done! Buh-bye!"