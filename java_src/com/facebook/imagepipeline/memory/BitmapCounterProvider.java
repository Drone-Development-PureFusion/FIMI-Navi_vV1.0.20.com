package com.facebook.imagepipeline.memory;
/* loaded from: classes.dex */
public class BitmapCounterProvider {

    /* renamed from: KB */
    private static final long f75KB = 1024;
    public static final int MAX_BITMAP_COUNT = 384;
    public static final int MAX_BITMAP_TOTAL_SIZE = getMaxSizeHardCap();

    /* renamed from: MB */
    private static final long f76MB = 1048576;
    private static BitmapCounter sBitmapCounter;

    private static int getMaxSizeHardCap() {
        int maxMemory = (int) Math.min(Runtime.getRuntime().maxMemory(), 2147483647L);
        return ((long) maxMemory) > 16777216 ? (maxMemory / 4) * 3 : maxMemory / 2;
    }

    public static BitmapCounter get() {
        if (sBitmapCounter == null) {
            sBitmapCounter = new BitmapCounter(MAX_BITMAP_COUNT, MAX_BITMAP_TOTAL_SIZE);
        }
        return sBitmapCounter;
    }
}
