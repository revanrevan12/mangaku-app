# Mangaku — Android WebView App

Project ini dibuat otomatis dari konfigurasi aplikasi di dashboard admin.
APK adalah WebView wrapper yang membuka website **https://manganyy.site/** di dalam aplikasi.

## Konfigurasi
- Nama aplikasi: **Mangaku**
- Package: `id.mangaku.app`
- Versi: **1.0.0** (versionCode 10000)
- Min Android: API 21 (Android 5.0 Lollipop)
- Target Android: API 34
- Warna tema: #7c3aed
- Orientasi: portrait
- Fullscreen: Tidak

## Cara Build APK

### Opsi A — GitHub Actions (TANPA Android Studio, paling mudah) ⭐
Tidak perlu install apa-apa di komputer-mu — APK dibangun otomatis di server GitHub.
1. Buat repository baru di https://github.com/new (private atau public bebas).
2. Upload **semua isi folder project ini** ke repo tersebut. Lewat terminal:
   ```
   git init
   git add .
   git commit -m "MangaKu app"
   git branch -M main
   git remote add origin https://github.com/USERNAME/nama-repo.git
   git push -u origin main
   ```
   (atau cukup drag-and-drop file ke web GitHub).
3. Buka tab **Actions** di repo. Workflow "Build APK" berjalan otomatis (~3-5 menit).
4. Klik run terbaru → scroll ke bawah → **download artifact** `app-release-apk`.
5. Unzip artifact tersebut → file **`app-release.apk`** siap diinstall di HP.

### Opsi B — Android Studio
1. Install **Android Studio** (Arctic Fox atau lebih baru) + **JDK 17**.
2. Buka folder project ini (pilih folder `MangakuApp`).
3. Tunggu Gradle sync selesai.
4. Menu: **Build → Build Bundle(s) / APK(s) → Build APK(s)**.
5. APK debug ada di `app/build/outputs/apk/debug/app-debug.apk`.

### Opsi C — Command line
1. Install JDK 17 dan Android SDK (set `sdk.dir` di `local.properties`).
2. Jalankan:
   ```
   ./gradlew assembleDebug
   ```
3. APK ada di `app/build/outputs/apk/debug/app-debug.apk`.

### Build Release (untuk distribusi)
1. Generate keystore:
   ```
   keytool -genkey -v -keystore release.keystore -alias mangakuapp \
     -keyalg RSA -keysize 2048 -validity 10000
   ```
2. Tambahkan signing config di `app/build.gradle` (release block).
3. Jalankan `./gradlew assembleRelease`.
4. APK ada di `app/build/outputs/apk/release/app-release.apk`.

## Fitur WebView
- JavaScript, DOM storage, database, geolocation aktif
- Pull-to-refresh (swipe ke bawah)
- Tombol back untuk navigasi history
- Download manager terintegrasi
- Share & copy via `window.Android.share(text)` / `.copy(text)` / `.toast(msg)`
- Splash screen saat startup
- Deep linking ke host `manganyy.site`
- Offline fallback page dengan tombol retry
- Cookie & third-party cookie diaktifkan

## Install APK di HP
1. Salin file `.apk` ke HP Android.
2. Buka file (izinkan "Install dari sumber tidak dikenal").
3. Selesai.
