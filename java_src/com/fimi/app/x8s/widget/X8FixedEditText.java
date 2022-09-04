package com.fimi.app.x8s.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.graphics.Canvas;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.inputmethod.InputMethodManager;
import android.widget.EditText;
import android.widget.TextView;
@SuppressLint({"AppCompatCustomView"})
/* loaded from: classes.dex */
public class X8FixedEditText extends EditText {
    public static final int ERROR_NOT_NUMBER = 2;
    public static final int ERROR_OTHERS = 3;
    public static final int ERROR_OVER_LIMIT = 1;
    private Context context;
    private String fixedText;
    private OnInputChangedListener listener;
    final String TAG = "DDLOG";
    private int MAX = 100;
    private int MIN = 10;

    /* loaded from: classes.dex */
    public interface OnInputChangedListener {
        void onError(EditText editText, int i, String str);

        void onInputChanged(int i, int i2);
    }

    public X8FixedEditText(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.context = context;
        setOnEditorActionListener(new TextView.OnEditorActionListener() { // from class: com.fimi.app.x8s.widget.X8FixedEditText.1
            @Override // android.widget.TextView.OnEditorActionListener
            public boolean onEditorAction(TextView v, int actionId, KeyEvent event) {
                if (actionId == 6 || event.getAction() == 4 || event.getAction() == 1) {
                    if (X8FixedEditText.this.listener != null) {
                        try {
                            int value = Integer.valueOf(X8FixedEditText.this.getText().toString()).intValue();
                            if (value < X8FixedEditText.this.MIN || X8FixedEditText.this.MAX < value) {
                                X8FixedEditText.this.listener.onError(X8FixedEditText.this, 1, null);
                            } else {
                                X8FixedEditText.this.listener.onInputChanged(X8FixedEditText.this.getId(), value);
                            }
                        } catch (Exception e) {
                            X8FixedEditText.this.listener.onError(X8FixedEditText.this, 3, e.getMessage());
                        }
                    }
                    X8FixedEditText.this.hintKeyBoard();
                    return true;
                }
                return false;
            }
        });
    }

    public void hintKeyBoard() {
        InputMethodManager imm = (InputMethodManager) this.context.getSystemService("input_method");
        if (imm.isActive()) {
            imm.hideSoftInputFromWindow(getWindowToken(), 0);
        }
    }

    public void setFixedText(String text) {
        this.fixedText = text;
        invalidate();
    }

    public void setInputLimit(int min, int max) {
        this.MIN = min;
        this.MAX = max;
    }

    @Override // android.widget.TextView, android.view.View
    protected void onDraw(Canvas canvas) {
        super.onDraw(canvas);
        if (!TextUtils.isEmpty(this.fixedText)) {
            int padding = (getWidth() / 2) + (((int) getPaint().measureText(getText().toString())) / 2);
            canvas.drawText(this.fixedText, padding, getBaseline(), getPaint());
        }
    }

    public void setOnInputChangedListener(OnInputChangedListener listener1) {
        this.listener = listener1;
    }
}
