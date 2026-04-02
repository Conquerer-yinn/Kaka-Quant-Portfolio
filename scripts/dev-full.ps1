$ErrorActionPreference = "Stop"

$root = Join-Path $PSScriptRoot ".."

Start-Process powershell -ArgumentList "-NoExit", "-Command", "Set-Location '$root'; uvicorn backend.main:app --reload"
Start-Process powershell -ArgumentList "-NoExit", "-Command", "Set-Location '$root\\frontend'; npm run dev"
