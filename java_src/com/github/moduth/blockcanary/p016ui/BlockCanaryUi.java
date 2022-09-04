package com.github.moduth.blockcanary.p016ui;

import android.content.res.Resources;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.util.DisplayMetrics;
/* renamed from: com.github.moduth.blockcanary.ui.BlockCanaryUi */
/* loaded from: classes2.dex */
final class BlockCanaryUi {
    static final PorterDuffXfermode CLEAR_XFER_MODE = new PorterDuffXfermode(PorterDuff.Mode.CLEAR);
    static final int LEAK_COLOR = -5155506;
    static final int LIGHT_GREY = -4539718;
    static final int ROOT_COLOR = -8083771;

    private BlockCanaryUi() {
        throw new AssertionError();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float dpToPixel(float dp, Resources resources) {
        DisplayMetrics metrics = resources.getDisplayMetrics();
        return metrics.density * dp;
    }
}
