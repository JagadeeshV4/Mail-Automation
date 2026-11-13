Set-Location "E:\mailautomation"
while ($true) {
    $proc = Get-Process -Name listmonk -ErrorAction SilentlyContinue
    if (-not $proc) {
        Start-Process -FilePath "E:\mailautomation\listmonk.exe" -ArgumentList "--config=config.toml" -WorkingDirectory "E:\mailautomation" -WindowStyle Hidden -RedirectStandardOutput "E:\mailautomation\listmonk-host.log" -RedirectStandardError "E:\mailautomation\listmonk-host-err.log"
    }
    Start-Sleep -Seconds 5
}
