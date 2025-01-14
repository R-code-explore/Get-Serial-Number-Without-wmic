@echo off
:: Variable define for desktop's location || Définition de la variable pour le chemin du bureau
set "Desktop=%USERPROFILE%\Desktop"

:: PowerShell execution to get PC's serial number || Exécuter PowerShell pour récupérer le numéro de série
powershell -Command "Get-CimInstance -ClassName Win32_BIOS | Select-Object -ExpandProperty SerialNumber | Out-File -FilePath '%Desktop%\NumeroDeSerie.txt' -Encoding utf8; Get-Content '%Desktop%\NumeroDeSerie.txt' | Set-Clipboard"

:: Confirmation message || Message de confirmation
echo The serial number has been copied to the clipboard and saved in the file “NumeroDeSerie.txt” on the desktop -- Le numéro de série a été copié dans le presse-papier et enregistré sur le bureau dans 'NumeroDeSerie.txt'.
pause
