$ErrorActionPreference = "Stop"

Set-Location (Join-Path $PSScriptRoot "..")
uvicorn backend.main:app --reload
