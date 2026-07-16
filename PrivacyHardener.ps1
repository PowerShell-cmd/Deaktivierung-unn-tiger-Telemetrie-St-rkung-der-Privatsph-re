# ==============================================================================
# Script: Privacy & Empowerment Tool
# Ziel: Deaktivierung unnötiger Telemetrie & Stärkung der Privatsphäre
# Autor: 〆MøpZy々
# ==============================================================================

# WICHTIG: Dieses Skript muss als Administrator ausgeführt werden.
# Es wird empfohlen, vor dem Ausführen einen Wiederherstellungspunkt zu erstellen.

Write-Host "--- Privacy- & Empowerment-Tool wird gestartet ---" -ForegroundColor Cyan
Write-Host "Dieses Skript reduziert die Datensendungen deines Windows-Systems." -ForegroundColor Yellow

# 1. Telemetrie-Dienste einschränken (DataCollection)
$path = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection"
if (!(Test-Path $path)) { New-Item -Path $path -Force }
Set-ItemProperty -Path $path -Name "AllowTelemetry" -Value 0
Write-Host "[OK] Telemetrie deaktiviert." -ForegroundColor Green

# 2. Werbe-ID deaktivieren (verhindert personalisierte Werbung)
Set-ItemProperty -Path "HKCU:\Software\Microsoft\Windows\CurrentVersion\AdvertisingInfo" -Name "Enabled" -Value 0
Write-Host "[OK] Werbe-ID deaktiviert." -ForegroundColor Green

# 3. Cortana-Suche begrenzen (Ressourcen- & Datensparend)
$searchPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\Windows Search"
if (!(Test-Path $searchPath)) { New-Item -Path $searchPath -Force }
Set-ItemProperty -Path $searchPath -Name "AllowCortana" -Value 0
Write-Host "[OK] Cortana-Integration eingeschränkt." -ForegroundColor Green

# 4. Aktivitätsverlauf deaktivieren (verhindert lokale/Cloud-Protokollierung)
$sysPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\System"
Set-ItemProperty -Path $sysPath -Name "PublishUserActivities" -Value 0
Write-Host "[OK] Aktivitätsverlauf deaktiviert." -ForegroundColor Green

# 5. Feedback-Anfragen unterdrücken
$feedbackPath = "HKLM:\SOFTWARE\Policies\Microsoft\Windows\DataCollection"
Set-ItemProperty -Path $feedbackPath -Name "DoNotShowFeedbackNotifications" -Value 1
Write-Host "[OK] Feedback-Anfragen blockiert." -ForegroundColor Green

Write-Host "--- Fertig! Dein System sendet jetzt deutlich weniger Daten. ---" -ForegroundColor Green
Write-Host "Bitte starte den PC neu, damit alle Änderungen wirksam werden." -ForegroundColor Yellow
