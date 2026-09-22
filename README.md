# Aplikasi CEO UMKM Digital - Vercel PWA Custom Domain Wrapper

Repositori ini berisi file frontend **Progressive Web App (PWA)** dan **Iframe Wrapper** untuk menghubungkan Google Apps Script WebApp dengan **Custom Domain di Vercel**.

## 🚀 Fitur Utama
1. **PWA Standalone Ready**: Dilengkapi `manifest.json`, `sw.js` (Service Worker), dan icon SVG/PNG 192px & 512px. Pengguna dapat langsung menginstal website ke Homescreen HP layaknya aplikasi native Android/iOS.
2. **Seamless Fullscreen Iframe**: Menampilkan WebApp Google Apps Script secara penuh (`100vw` & `100dvh`) tanpa scroll ganda.
3. **Deep Link & Query Forwarding**: Parameter URL (seperti referral `?ref=...` atau hash `#katalog`) otomatis diteruskan ke dalam WebApp Apps Script.
4. **Splash Screen Mewah**: Layar pembuka (*preloader*) bertema gelap modern dengan animasi logo dan status bar saat aplikasi dimuat.
5. **Permissions Lengkap**: Iframe mendukung kamera, QRIS, pembayaran, geolokasi, unduhan, dan clipboard.

---

## 📋 URL Target Apps Script
- **Google Apps Script Exec URL**:
  `https://script.google.com/macros/s/AKfycbx4tRpSIu6E_i_rzOuHkXK-brDN-GX0NGgXOuMCdlHdse_Va0A5rEXHeUiivhgcqwLUHA/exec`

---

## 🛠️ Langkah Git Push ke GitHub

Buka terminal di dalam folder `aplikasiCEOUMKMDIGITAL`, lalu jalankan perintah berikut:

```bash
git init
git add .
git commit -m "feat: Vercel PWA Custom Domain wrapper for CEO UMKM"
git branch -M main
git remote add origin https://github.com/santrimanofficial26-oss/aplikasiCEOUMKMDIGITAL.git
git push -u origin main
```

*(Jika repositori di GitHub sudah memiliki commit/file awal, Anda dapat menjalankan `git pull origin main --rebase` atau `git push -u origin main --force`)*.

---

## 🌐 Langkah Setup Custom Domain di Vercel

1. Buka dashboard [Vercel](https://vercel.com/) dan login dengan akun GitHub Anda.
2. Klik tombol **"Add New..."** -> **"Project"**.
3. Pilih repositori **`santrimanofficial26-oss/aplikasiCEOUMKMDIGITAL`**.
4. Pada bagian **Framework Preset**, biarkan **"Other"** (karena ini adalah situs HTML/PWA statis).
5. Klik tombol **"Deploy"**. Tunggu beberapa detik hingga proses deployment selesai.
6. Masuk ke tab **Settings** -> **Domains**.
7. Masukkan domain kustom Anda (misal: `app.ceoumkm.id` atau `ceoumkm.com`).
8. Ikuti petunjuk konfigurasi DNS (tambahkan CNAME / A Record) di penyedia domain Anda.
9. Setelah status domain terverifikasi (*Valid Configuration*), website Anda sudah aktif dengan Custom Domain + PWA siap install di HP!
