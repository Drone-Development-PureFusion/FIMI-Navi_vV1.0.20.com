package com.fimi.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.res.TypedArray;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.support.p001v4.view.ViewCompat;
import android.text.TextPaint;
import android.util.AttributeSet;
import android.widget.TextView;
import com.fimi.sdk.C1787R;
import java.lang.reflect.Field;
@SuppressLint({"AppCompatCustomView"})
/* loaded from: classes.dex */
public class StrokeTextView extends TextView {
    int mInnerColor;
    int mOuterColor;
    private boolean m_bDrawSideLine = true;
    TextPaint m_TextPaint = getPaint();

    public StrokeTextView(Context context, int outerColor, int innnerColor) {
        super(context);
        this.mInnerColor = innnerColor;
        this.mOuterColor = outerColor;
    }

    public StrokeTextView(Context context, AttributeSet attrs) {
        super(context, attrs);
        TypedArray a = context.obtainStyledAttributes(attrs, C1787R.styleable.StrokeTextView);
        this.mInnerColor = a.getColor(C1787R.styleable.StrokeTextView_innnerColor, ViewCompat.MEASURED_SIZE_MASK);
        this.mOuterColor = a.getColor(C1787R.styleable.StrokeTextView_outerColor, 1275068416);
    }

    public StrokeTextView(Context context, AttributeSet attrs, int defStyle, int outerColor, int innnerColor) {
        super(context, attrs, defStyle);
        this.mInnerColor = innnerColor;
        this.mOuterColor = outerColor;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        if (this.m_bDrawSideLine) {
            setTextColorUseReflection(this.mOuterColor);
            this.m_TextPaint.setStrokeWidth(3.0f);
            this.m_TextPaint.setStyle(Paint.Style.STROKE);
            this.m_TextPaint.setFakeBoldText(false);
            super.onDraw(canvas);
            setTextColorUseReflection(this.mInnerColor);
            this.m_TextPaint.setStrokeWidth(0.0f);
            this.m_TextPaint.setStyle(Paint.Style.STROKE);
            this.m_TextPaint.setFakeBoldText(false);
        }
        super.onDraw(canvas);
    }

    private void setTextColorUseReflection(int color) {
        try {
            Field textColorField = TextView.class.getDeclaredField("mCurTextColor");
            textColorField.setAccessible(true);
            textColorField.set(this, Integer.valueOf(color));
            textColorField.setAccessible(false);
        } catch (IllegalAccessException e) {
            e.printStackTrace();
        } catch (IllegalArgumentException e2) {
            e2.printStackTrace();
        } catch (NoSuchFieldException e3) {
            e3.printStackTrace();
        }
        this.m_TextPaint.setColor(color);
    }
}
