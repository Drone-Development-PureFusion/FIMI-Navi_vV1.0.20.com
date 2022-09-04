package com.fimi.app.x8s.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import com.fimi.app.x8s.C0885R;
import com.fimi.app.x8s.widget.X8SeekBarView;
/* loaded from: classes.dex */
public class X8PlusMinusSeekBar2 extends RelativeLayout implements View.OnClickListener, X8SeekBarView.SlideChangeListener {
    private onSeekValueSetListener listener;
    private int seekBarMax = 100;
    private int seekBarMin = 10;
    private int curValue = 10;
    private X8SeekBarView mSeekBar = (X8SeekBarView) findViewById(C0885R.C0889id.sb_value);
    private View rlMinus = findViewById(C0885R.C0889id.rl_minus);
    private View rlPlus = findViewById(C0885R.C0889id.rl_plus);

    /* loaded from: classes.dex */
    public interface onSeekValueSetListener {
        void onSeekValueSet(int i, int i2);

        void onStart(int i, int i2);

        void onStop(int i, int i2);
    }

    public void setListener(onSeekValueSetListener listener) {
        this.listener = listener;
    }

    public X8PlusMinusSeekBar2(Context context, AttributeSet attrs) {
        super(context, attrs);
        LayoutInflater.from(context).inflate(C0885R.layout.x8_plus_minus_seekbar_layout2, (ViewGroup) this, true);
        this.rlMinus.setOnClickListener(this);
        this.rlPlus.setOnClickListener(this);
        this.mSeekBar.setMaxProgress(this.seekBarMax - this.seekBarMin);
        this.mSeekBar.setOnSlideChangeListener(this);
        setProgress(this.curValue);
    }

    public void initData(int seekBarMin, int seekBarMax) {
        this.seekBarMin = seekBarMin;
        this.seekBarMax = seekBarMax;
        this.mSeekBar.setMaxProgress(seekBarMax - seekBarMin);
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
        this.mSeekBar.setProgress(value - this.seekBarMin);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        int i = v.getId();
        if (i == C0885R.C0889id.rl_plus) {
            if (this.mSeekBar.getProgress() != this.mSeekBar.getMaxProgress()) {
                int s = this.mSeekBar.getProgress() + 1;
                if (s > this.mSeekBar.getMaxProgress()) {
                    s = this.mSeekBar.getMaxProgress();
                }
                this.mSeekBar.setProgress(s);
            }
        } else if (i == C0885R.C0889id.rl_minus && this.mSeekBar.getProgress() != 0) {
            int s2 = this.mSeekBar.getProgress() - 1;
            if (s2 < 0) {
                s2 = 0;
            }
            this.mSeekBar.setProgress(s2);
        }
    }

    public int getProgress() {
        return this.curValue;
    }

    @Override // com.fimi.app.x8s.widget.X8SeekBarView.SlideChangeListener
    public void onStart(X8SeekBarView slideView, int progress) {
        this.listener.onStart(slideView.getId(), progress);
    }

    @Override // com.fimi.app.x8s.widget.X8SeekBarView.SlideChangeListener
    public void onProgress(X8SeekBarView slideView, int progress) {
        this.curValue = this.seekBarMin + progress;
        if (this.listener != null) {
            this.listener.onSeekValueSet(getId(), this.curValue);
        }
    }

    @Override // com.fimi.app.x8s.widget.X8SeekBarView.SlideChangeListener
    public void onStop(X8SeekBarView slideView, int progress) {
        this.listener.onStop(slideView.getId(), progress);
    }
}
