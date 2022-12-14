package com.twitter.sdk.android.tweetui.internal;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.view.View;
import android.widget.FrameLayout;
import com.twitter.sdk.android.tweetui.C2168R;
import org.apache.mina.proxy.handlers.http.ntlm.NTLMConstants;
/* loaded from: classes2.dex */
public class AspectRatioFrameLayout extends FrameLayout {
    static final int ADJUST_DIMENSION_HEIGHT = 0;
    static final int ADJUST_DIMENSION_WIDTH = 1;
    private static final int DEFAULT_ADJUST_DIMENSION = 0;
    private static final float DEFAULT_ASPECT_RATIO = 1.0f;
    protected double aspectRatio;
    private int dimensionToAdjust;

    public AspectRatioFrameLayout(Context context) {
        this(context, null);
    }

    public AspectRatioFrameLayout(Context context, AttributeSet attrs) {
        this(context, attrs, 0);
    }

    public AspectRatioFrameLayout(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
        initAttributes(defStyle);
    }

    private void initAttributes(int styleResId) {
        TypedArray a = getContext().getTheme().obtainStyledAttributes(styleResId, C2168R.styleable.AspectRatioFrameLayout);
        try {
            this.aspectRatio = a.getFloat(C2168R.styleable.AspectRatioFrameLayout_tw__frame_layout_aspect_ratio, 1.0f);
            this.dimensionToAdjust = a.getInt(C2168R.styleable.AspectRatioFrameLayout_tw__frame_layout_dimension_to_adjust, 0);
        } finally {
            a.recycle();
        }
    }

    public void setAspectRatio(double aspectRatio) {
        this.aspectRatio = aspectRatio;
    }

    @Override // android.widget.FrameLayout, android.view.View
    protected void onMeasure(int widthMeasureSpec, int heightMeasureSpec) {
        int height;
        int width;
        int horizontalPadding = getPaddingLeft() + getPaddingRight();
        int verticalPadding = getPaddingBottom() + getPaddingTop();
        if (this.dimensionToAdjust == 0) {
            if (View.MeasureSpec.getMode(widthMeasureSpec) == 1073741824) {
                width = View.MeasureSpec.getSize(widthMeasureSpec) - horizontalPadding;
            } else {
                super.onMeasure(widthMeasureSpec, heightMeasureSpec);
                width = getMeasuredWidth() - horizontalPadding;
            }
            height = (int) (width / this.aspectRatio);
        } else {
            if (View.MeasureSpec.getMode(heightMeasureSpec) == 1073741824) {
                height = View.MeasureSpec.getSize(heightMeasureSpec) - verticalPadding;
            } else {
                super.onMeasure(widthMeasureSpec, heightMeasureSpec);
                height = getMeasuredHeight() - verticalPadding;
            }
            width = (int) (height * this.aspectRatio);
        }
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(width + horizontalPadding, NTLMConstants.FLAG_NEGOTIATE_KEY_EXCHANGE), View.MeasureSpec.makeMeasureSpec(height + verticalPadding, NTLMConstants.FLAG_NEGOTIATE_KEY_EXCHANGE));
    }
}
