package com.fimi.kernel.utils;

import android.content.Context;
import android.text.SpannableString;
import android.text.style.ScaleXSpan;
import android.util.AttributeSet;
import android.widget.TextView;
/* loaded from: classes.dex */
public class ChangeTextSpaceView extends TextView {
    private float spacing = 0.0f;
    private CharSequence originalText = "";

    public ChangeTextSpaceView(Context context) {
        super(context);
    }

    public ChangeTextSpaceView(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public ChangeTextSpaceView(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
    }

    public float getSpacing() {
        return this.spacing;
    }

    public void setSpacing(float spacing) {
        this.spacing = spacing;
        applySpacing();
    }

    @Override // android.widget.TextView
    public void setText(CharSequence text, TextView.BufferType type) {
        this.originalText = text;
        applySpacing();
    }

    @Override // android.widget.TextView
    public CharSequence getText() {
        return this.originalText;
    }

    private void applySpacing() {
        if (this != null && this.originalText != null) {
            StringBuilder builder = new StringBuilder();
            for (int i = 0; i < this.originalText.length(); i++) {
                builder.append(this.originalText.charAt(i));
                if (i + 1 < this.originalText.length()) {
                    builder.append(" ");
                }
            }
            SpannableString finalText = new SpannableString(builder.toString());
            if (builder.toString().length() > 1) {
                for (int i2 = 1; i2 < builder.toString().length(); i2 += 2) {
                    finalText.setSpan(new ScaleXSpan((this.spacing + 1.0f) / 10.0f), i2, i2 + 1, 33);
                }
            }
            super.setText(finalText, TextView.BufferType.SPANNABLE);
        }
    }

    /* loaded from: classes.dex */
    public class Spacing {
        public static final float NORMAL = 0.0f;

        public Spacing() {
        }
    }
}
