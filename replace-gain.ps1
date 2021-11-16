#Requires -RunAsAdministrator
Write-Host "Renaming old gain.wav file to gain.wav.bak"
Rename-Item -Path "C:\CyberPatriot\gain.wav" -NewName "gain.wav.bak"
Write-Host "Copying over new gain.wav file"
Invoke-WebRequest -Uri "https://github.com/elysium-suite/aeacus/raw/master/assets/wav/gain.wav" -OutFile "C:\CyberPatriot\gain.wav"
Write-Host "Done! Enjoy your new sound!"