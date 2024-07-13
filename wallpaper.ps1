# Wallpaper
$wallpaper = "C:\Users\$env:UserName\Pictures\wallpaper.jpg"
$wallpaperUrl = "https://raw.githubusercontent.com/snqwq/boxstarter-configs/main/wallpaper.jpg"

Invoke-WebRequest -Uri $wallpaperUrl -OutFile $wallpaper
set-itemproperty -path "HKCU:Control Panel\Desktop" -name WallPaper -value $wallpaper

# Say Bye
Write-Host "All done! Buh-bye!"
