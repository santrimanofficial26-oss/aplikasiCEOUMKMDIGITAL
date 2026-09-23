@echo off
chcp 65001 >nul
echo ========================================================
echo  GIT PUSH - CEO2024-DIGITAL UMKM (VERCEL PWA WRAPPER)
echo ========================================================
echo.

cd /d "%~dp0"

echo [1/3] Menambahkan perubahan ke staging (git add .)...
git add .

set /p commit_msg="Masukkan pesan commit (Tekan Enter untuk default): "
if "%commit_msg%"=="" (
    set commit_msg=feat: pembaruan logo 3D, brand CEO2024-DIGITAL UMKM, dan slogan neon
)

echo.
echo [2/3] Melakukan commit...
git commit -m "%commit_msg%"

echo.
echo [3/3] Mengirim perubahan ke GitHub (git push origin main)...
git push origin main

if %ERRORLEVEL% EQU 0 (
    echo.
    echo ========================================================
    echo  SUKSES! Kode terkirim ke GitHub.
    echo  Vercel akan otomatis melakukan auto-deploy PWA!
    echo ========================================================
) else (
    echo.
    echo  Gagal melakukan push. Periksa koneksi internet atau izin login GitHub.
)

echo.
pause
