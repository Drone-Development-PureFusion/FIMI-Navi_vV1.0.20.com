package com.twitter.sdk.android.tweetui.internal;

import java.util.Locale;
/* loaded from: classes2.dex */
final class MediaTimeUtils {
    private static final String TIME_FORMAT_LONG = "%1$d:%2$02d:%3$02d";
    private static final String TIME_FORMAT_SHORT = "%1$d:%2$02d";

    private MediaTimeUtils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getPlaybackTime(long timeMillis) {
        int timeSeconds = (int) (timeMillis / 1000);
        int seconds = timeSeconds % 60;
        int minutes = (timeSeconds / 60) % 60;
        int hours = timeSeconds / 3600;
        return hours > 0 ? String.format(Locale.getDefault(), TIME_FORMAT_LONG, Integer.valueOf(hours), Integer.valueOf(minutes), Integer.valueOf(seconds)) : String.format(Locale.getDefault(), TIME_FORMAT_SHORT, Integer.valueOf(minutes), Integer.valueOf(seconds));
    }
}
