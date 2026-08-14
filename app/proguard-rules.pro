# Keep WebView JS interfaces and the app entry points.
-keepclassmembers class * {
    @android.webkit.JavascriptInterface <methods>;
}
-keep public class com.mangareader.app.** { *; }
-dontwarn android.webkit.**
