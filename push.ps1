# Script PowerShell Git Push Otomatis untuk aplikasiCEOUMKMDIGITAL
[Console]::OutputEncoding = [System.Text.Encoding]::UTF8
Set-Location -Path $PSScriptRoot

Write-Host "========================================================" -ForegroundColor Cyan
Write-Host "  GIT PUSH - CEO2024-DIGITAL UMKM (VERCEL PWA WRAPPER)" -ForegroundColor Yellow
Write-Host "========================================================" -ForegroundColor Cyan
Write-Host ""

Write-Host "[1/3] Menambahkan perubahan (git add .)..." -ForegroundColor Green
git add .

$defaultMsg = "feat: sinkronisasi tema light dark mode, palet warna mobile dock dan pwa shell"
$msg = Read-Host "Masukkan pesan commit (Tekan Enter untuk default: '$defaultMsg')"
if ([string]::IsNullOrWhiteSpace($msg)) {
    $msg = $defaultMsg
}

Write-Host "`n[2/3] Melakukan commit..." -ForegroundColor Green
git commit -m $msg

Write-Host "`n[3/3] Mengirim perubahan ke GitHub (git push origin main)..." -ForegroundColor Cyan
git push origin main

if ($LASTEXITCODE -eq 0) {
    Write-Host "`n========================================================" -ForegroundColor Green
    Write-Host "  SUKSES! Kode terkirim ke GitHub." -ForegroundColor Green
    Write-Host "  Vercel akan otomatis melakukan auto-deploy PWA!" -ForegroundColor Green
    Write-Host "========================================================" -ForegroundColor Green
} else {
    Write-Host "`n  Gagal melakukan push. Periksa koneksi internet atau izin login GitHub." -ForegroundColor Red
}
