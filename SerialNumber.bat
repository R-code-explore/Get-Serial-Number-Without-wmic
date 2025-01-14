@echo off
:: Définir la variable pour le chemin du bureau
set "Desktop=%USERPROFILE%\Desktop"

:: Exécuter PowerShell pour récupérer le numéro de série
powershell -Command "Get-CimInstance -ClassName Win32_BIOS | Select-Object -ExpandProperty SerialNumber | Out-File -FilePath '%Desktop%\NumeroDeSerie.txt' -Encoding utf8; Get-Content '%Desktop%\NumeroDeSerie.txt' | Set-Clipboard"

:: Message de confirmation
echo Le numéro de série a été copié dans le presse-papier et enregistré sur le bureau dans 'NumeroDeSerie.txt'.
pause