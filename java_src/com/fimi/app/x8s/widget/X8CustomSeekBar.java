package com.fimi.app.x8s.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.fimi.app.x8s.C0885R;
import com.fimi.app.x8s.interfaces.LongClickListener;
import com.fimi.app.x8s.widget.X8SeekBarView;
/* loaded from: classes.dex */
public class X8CustomSeekBar extends LinearLayout implements View.OnClickListener, X8SeekBarView.SlideChangeListener {
    private onSeekValueSetListener listener;
    private RelativeLayout rlAdd;
    private RelativeLayout rlReduce;
    private X8SeekBarView seekBar;
    private TextView tvParam;
    private final String TAG = "DDLog";
    private String name = "name";
    private int seekBarMax = 100;
    private int seekBarMin = 10;
    private int curValue = 10;
    private LongClickListener longClickListener = new LongClickListener() { // from class: com.fimi.app.x8s.widget.X8CustomSeekBar.1
        @Override // com.fimi.app.x8s.interfaces.LongClickListener
        public void longClickCallback(int viewId) {
            if (viewId == C0885R.C0889id.rl_add) {
                if (X8CustomSeekBar.this.curValue < X8CustomSeekBar.this.seekBarMax) {
                    X8CustomSeekBar.access$008(X8CustomSeekBar.this);
                    X8CustomSeekBar.this.setProgress(X8CustomSeekBar.this.curValue);
                }
            } else if (viewId == C0885R.C0889id.rl_reduce && X8CustomSeekBar.this.curValue > X8CustomSeekBar.this.seekBarMin) {
                X8CustomSeekBar.access$010(X8CustomSeekBar.this);
                X8CustomSeekBar.this.setProgress(X8CustomSeekBar.this.curValue);
            }
        }

        @Override // com.fimi.app.x8s.interfaces.LongClickListener
        public void onFingerUp(int viewId) {
            if (X8CustomSeekBar.this.listener != null) {
                X8CustomSeekBar.this.listener.onSeekValueSet(X8CustomSeekBar.this.getId(), X8CustomSeekBar.this.curValue);
            }
        }
    };

    /* loaded from: classes.dex */
    public interface onSeekValueSetListener {
        void onSeekValueSet(int i, int i2);
    }

    static /* synthetic */ int access$008(X8CustomSeekBar x0) {
        int i = x0.curValue;
        x0.curValue = i + 1;
        return i;
    }

    static /* synthetic */ int access$010(X8CustomSeekBar x0) {
        int i = x0.curValue;
        x0.curValue = i - 1;
        return i;
    }

    @SuppressLint({"ClickableViewAccessibility"})
    public X8CustomSeekBar(Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
        View view = LayoutInflater.from(context).inflate(C0885R.layout.x8_view_custom_seekbar, (ViewGroup) null);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(-1, -1);
        view.setLayoutParams(layoutParams);
        addView(view);
        this.rlAdd = (RelativeLayout) view.findViewById(C0885R.C0889id.rl_add);
        this.rlReduce = (RelativeLayout) view.findViewById(C0885R.C0889id.rl_reduce);
        this.rlAdd.setOnClickListener(this);
        this.rlReduce.setOnClickListener(this);
        this.rlAdd.setOnTouchListener(this.longClickListener);
        this.rlReduce.setOnTouchListener(this.longClickListener);
        this.tvParam = (TextView) view.findViewById(C0885R.C0889id.tv_param);
        this.seekBar = (X8SeekBarView) view.findViewById(C0885R.C0889id.sb_value);
        this.seekBar.setMaxProgress(this.seekBarMax - this.seekBarMin);
        this.seekBar.setOnSlideChangeListener(this);
        setProgress(this.curValue);
    }

    public void initData(String name, int seekBarMin, int seekBarMax) {
        this.name = name;
        this.seekBarMin = seekBarMin;
        this.seekBarMax = seekBarMax;
        setProgress(this.curValue);
    }

    public void setProgress(int value) {
        if (value > this.seekBarMax) {
            value = this.seekBarMax;
        }
        if (value < this.seekBarMin) {
            value = this.seekBarMin;
        }
        this.curValue = value;
        this.seekBar.setProgress(value - this.seekBarMin);
        this.tvParam.setText(this.name + "\u3000" + this.curValue + "%");
    }

    public int getCurValue() {
        return this.curValue;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        int i = v.getId();
        if (i == C0885R.C0889id.rl_add) {
            if (this.curValue < this.seekBarMax) {
                this.curValue++;
                if (this.listener != null) {
                    this.listener.onSeekValueSet(getId(), this.curValue);
                }
            }
        } else if (i == C0885R.C0889id.rl_reduce && this.curValue > this.seekBarMin) {
            this.curValue--;
            if (this.listener != null) {
                this.listener.onSeekValueSet(getId(), this.curValue);
            }
        }
    }

    public void setOnSeekChangedListener(onSeekValueSetListener listener) {
        this.listener = listener;
    }

    @Override // com.fimi.app.x8s.widget.X8SeekBarView.SlideChangeListener
    public void onStart(X8SeekBarView slideView, int progress) {
    }

    @Override // com.fimi.app.x8s.widget.X8SeekBarView.SlideChangeListener
    public void onProgress(X8SeekBarView slideView, int progress) {
        this.curValue = this.seekBarMin + progress;
    }

    @Override // com.fimi.app.x8s.widget.X8SeekBarView.SlideChangeListener
    public void onStop(X8SeekBarView slideView, int progress) {
        if (this.listener != null) {
            this.listener.onSeekValueSet(getId(), this.curValue);
        }
    }
}
