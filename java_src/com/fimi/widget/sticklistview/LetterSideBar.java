package com.fimi.widget.sticklistview;

import android.content.Context;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Typeface;
import android.support.p001v4.view.ViewCompat;
import android.util.AttributeSet;
import android.util.Log;
import android.view.MotionEvent;
import android.view.View;
import android.widget.TextView;
import com.fimi.sdk.C1787R;
/* loaded from: classes.dex */
public class LetterSideBar extends View {
    private static final String TAG = "LetterSideBar";
    public static String[] mLetters = {"A", "B", "C", "D", "E", "F", "G", "H", "I", "J", "K", "L", "M", "N", "O", "P", "Q", "R", "S", "T", "U", "V", "W", "X", "Y", "Z"};
    private TextView mTextDialog;
    private OnTouchingLetterChangedListener onTouchingLetterChangedListener;
    private int mUpdateIndex = 0;
    private int mChooseIndex = -1;
    private int mLastChooseIndex = 0;
    private Paint mPaint = new Paint();

    /* loaded from: classes.dex */
    public interface OnTouchingLetterChangedListener {
        void onTouchingLetterChanged(String str);
    }

    public LetterSideBar(Context context, AttributeSet attrs, int defStyle) {
        super(context, attrs, defStyle);
    }

    public LetterSideBar(Context context, AttributeSet attrs) {
        super(context, attrs);
    }

    public LetterSideBar(Context context) {
        super(context);
    }

    @Override // android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        int height = getHeight();
        int width = getWidth();
        int singleHeight = height / mLetters.length;
        for (int i = 0; i < mLetters.length; i++) {
            this.mPaint.setColor(ViewCompat.MEASURED_STATE_MASK);
            this.mPaint.setTypeface(Typeface.DEFAULT);
            this.mPaint.setAntiAlias(true);
            this.mPaint.setTextSize(30.0f);
            Log.i(TAG, "onDraw: mChooseIndex:" + this.mChooseIndex);
            if (i == this.mChooseIndex || this.mUpdateIndex == i) {
                this.mPaint.setColor(getResources().getColor(C1787R.C1789color.fimisdk_letter_show));
                this.mPaint.setFakeBoldText(true);
            } else {
                this.mPaint.setColor(getResources().getColor(C1787R.C1789color.fimisdk_letter_unshow));
                this.mPaint.setFakeBoldText(false);
            }
            float x = (width / 2) - (this.mPaint.measureText(mLetters[i]) / 2.0f);
            float y = (singleHeight * i) + singleHeight;
            canvas.drawText(mLetters[i], x, y, this.mPaint);
            this.mPaint.reset();
        }
    }

    @Override // android.view.View
    public boolean dispatchTouchEvent(MotionEvent event) {
        int action = event.getAction();
        float y = event.getY();
        int oldChooseIndex = this.mChooseIndex;
        OnTouchingLetterChangedListener listener = this.onTouchingLetterChangedListener;
        int chooseIndex = (int) ((y / getHeight()) * mLetters.length);
        switch (action) {
            case 1:
                setBackgroundResource(17170445);
                this.mChooseIndex = -1;
                invalidate();
                if (this.mTextDialog != null) {
                    this.mTextDialog.setVisibility(4);
                    return true;
                }
                return true;
            default:
                if (oldChooseIndex != chooseIndex && chooseIndex >= 0 && chooseIndex < mLetters.length) {
                    if (listener != null) {
                        listener.onTouchingLetterChanged(mLetters[chooseIndex]);
                    }
                    if (this.mTextDialog != null) {
                        this.mTextDialog.setText(mLetters[chooseIndex]);
                        this.mTextDialog.setVisibility(0);
                    }
                    this.mChooseIndex = chooseIndex;
                    invalidate();
                    return true;
                }
                return true;
        }
    }

    public void setTextView(TextView mTextDialog) {
        this.mTextDialog = mTextDialog;
    }

    public void setOnTouchingLetterChangedListener(OnTouchingLetterChangedListener onTouchingLetterChangedListener) {
        this.onTouchingLetterChangedListener = onTouchingLetterChangedListener;
    }

    public void updateLetter(String updateLetter) {
        int i = 0;
        while (true) {
            if (i >= mLetters.length) {
                break;
            } else if (!mLetters[i].equals(updateLetter)) {
                i++;
            } else {
                this.mUpdateIndex = i;
                break;
            }
        }
        if (this.mLastChooseIndex != this.mUpdateIndex) {
            this.mLastChooseIndex = this.mUpdateIndex;
            invalidate();
        }
    }
}
