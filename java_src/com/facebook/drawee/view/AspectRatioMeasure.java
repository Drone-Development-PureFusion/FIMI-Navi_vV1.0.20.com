package com.facebook.drawee.view;

import android.view.View;
import android.view.ViewGroup;
import javax.annotation.Nullable;
import org.apache.mina.proxy.handlers.http.ntlm.NTLMConstants;
/* loaded from: classes.dex */
public class AspectRatioMeasure {

    /* loaded from: classes.dex */
    public static class Spec {
        public int height;
        public int width;
    }

    public static void updateMeasureSpec(Spec spec, float aspectRatio, @Nullable ViewGroup.LayoutParams layoutParams, int widthPadding, int heightPadding) {
        if (aspectRatio > 0.0f && layoutParams != null) {
            if (shouldAdjust(layoutParams.height)) {
                int widthSpecSize = View.MeasureSpec.getSize(spec.width);
                int desiredHeight = (int) (((widthSpecSize - widthPadding) / aspectRatio) + heightPadding);
                int resolvedHeight = View.resolveSize(desiredHeight, spec.height);
                spec.height = View.MeasureSpec.makeMeasureSpec(resolvedHeight, NTLMConstants.FLAG_NEGOTIATE_KEY_EXCHANGE);
            } else if (shouldAdjust(layoutParams.width)) {
                int heightSpecSize = View.MeasureSpec.getSize(spec.height);
                int desiredWidth = (int) (((heightSpecSize - heightPadding) * aspectRatio) + widthPadding);
                int resolvedWidth = View.resolveSize(desiredWidth, spec.width);
                spec.width = View.MeasureSpec.makeMeasureSpec(resolvedWidth, NTLMConstants.FLAG_NEGOTIATE_KEY_EXCHANGE);
            }
        }
    }

    private static boolean shouldAdjust(int layoutDimension) {
        return layoutDimension == 0 || layoutDimension == -2;
    }
}
