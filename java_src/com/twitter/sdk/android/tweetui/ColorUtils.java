package com.twitter.sdk.android.tweetui;

import android.graphics.Color;
/* loaded from: classes2.dex */
final class ColorUtils {
    private ColorUtils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int calculateOpacityTransform(double opacity, int overlayColor, int primaryColor) {
        int redPrimary = Color.red(primaryColor);
        int redOverlay = Color.red(overlayColor);
        int greenPrimary = Color.green(primaryColor);
        int greenOverlay = Color.green(overlayColor);
        int bluePrimary = Color.blue(primaryColor);
        int blueOverlay = Color.blue(overlayColor);
        int redCalculated = (int) (((1.0d - opacity) * redPrimary) + (redOverlay * opacity));
        int greenCalculated = (int) (((1.0d - opacity) * greenPrimary) + (greenOverlay * opacity));
        int blueCalculated = (int) (((1.0d - opacity) * bluePrimary) + (blueOverlay * opacity));
        return Color.rgb(redCalculated, greenCalculated, blueCalculated);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean isLightColor(int color) {
        int r = Color.red(color);
        int g = Color.green(color);
        int b = Color.blue(color);
        double threshold = (0.21d * r) + (0.72d * g) + (0.07d * b);
        return threshold > 128.0d;
    }
}
