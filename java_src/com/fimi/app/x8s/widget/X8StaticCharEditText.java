package com.fimi.app.x8s.widget;

import android.content.Context;
import android.graphics.Canvas;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.widget.EditText;
/* loaded from: classes.dex */
public class X8StaticCharEditText extends EditText {
    private String fixedText;
    private int rightPadding;

    public X8StaticCharEditText(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public void setFixedText(String text) {
        this.fixedText = text;
        invalidate();
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!TextUtils.isEmpty(this.fixedText)) {
            canvas.drawText(this.fixedText, (getX() + getWidth()) - getPaddingRight(), getBaseline(), getPaint());
        }
    }
}
