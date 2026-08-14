# Manga Reader

Android WebView shell for [8e72783a-c5b0-4605-b01a-89434796e075.app-preview.com](8e72783a-c5b0-4605-b01a-89434796e075.app-preview.com).

- Package: `com.mangareader.app`
- Version: 1.2.9 (build 127)
- minSdk 21 · targetSdk 34

## Build

CI (`.github/workflows/build-apk.yml`) runs `gradle :app:assembleRelease`,
zipaligns, signs with `apksigner` (v1+v2+v3), verifies the signature and
attaches the installable APK to a GitHub Release.

Signing secrets (optional — a debug-style keystore is generated when absent):
`KEYSTORE_BASE64`, `KEYSTORE_PASSWORD`, `KEY_ALIAS`, `KEY_PASSWORD`.

Content (manga, chapters, search) comes from the website API at runtime, so
new content never requires a rebuild.
