# Keep everything required for ExoPlayer to work.
-keep class androidx.media3.** { *; }
-keep class com.google.android.exoplayer2.source.dash.manifest.** { *; }

# Do not warn about unused Exoplayer related classes.
-dontwarn androidx.media3.**
-dontwarn com.google.android.exoplayer2.source.dash.manifest.**
