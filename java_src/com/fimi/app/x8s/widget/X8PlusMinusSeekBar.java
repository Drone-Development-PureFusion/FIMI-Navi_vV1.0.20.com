package com.fimi.app.x8s.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.RelativeLayout;
import android.widget.SeekBar;
import com.fimi.app.x8s.C0885R;
import com.fimi.app.x8s.widget.X8CustomSeekBar;
/* loaded from: classes.dex */
public class X8PlusMinusSeekBar extends RelativeLayout implements View.OnClickListener, SeekBar.OnSeekBarChangeListener {
    private X8CustomSeekBar.onSeekValueSetListener listener;
    private X8CustomSeekBar.onSeekValueSetListener onSeekChangedListener;
    private int seekBarMax = 100;
    private int seekBarMin = 10;
    private int curValue = 10;
    private int defaultValue = 0;
    private SeekBar mSeekBar = (SeekBar) findViewById(C0885R.C0889id.sb_value);
    private View rlMinus = findViewById(C0885R.C0889id.rl_minus);
    private View rlPlus = findViewById(C0885R.C0889id.rl_plus);
    private View imgReset = findViewById(C0885R.C0889id.img_reset);

    public void setListener(X8CustomSeekBar.onSeekValueSetListener listener) {
        this.listener = listener;
    }

    public X8PlusMinusSeekBar(Context context, AttributeSet attrs) {
        super(context, attrs);
        LayoutInflater.from(context).inflate(C0885R.layout.x8_plus_minus_seekbar_layout, (ViewGroup) this, true);
        this.rlMinus.setOnClickListener(this);
        this.rlPlus.setOnClickListener(this);
        this.imgReset.setOnClickListener(this);
        this.mSeekBar.setMax(this.seekBarMax - this.seekBarMin);
        this.mSeekBar.setOnSeekBarChangeListener(this);
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
            if (this.mSeekBar.getProgress() != this.mSeekBar.getMax()) {
                this.mSeekBar.setProgress(this.mSeekBar.getProgress() + 1);
            }
        } else if (i == C0885R.C0889id.rl_minus) {
            if (this.mSeekBar.getProgress() != 0) {
                this.mSeekBar.setProgress(this.mSeekBar.getProgress() - 1);
            }
        } else if (i == C0885R.C0889id.img_reset) {
            this.mSeekBar.setProgress(this.defaultValue);
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onProgressChanged(SeekBar seekBar, int progress, boolean fromUser) {
        this.curValue = this.seekBarMin + progress;
        if (this.listener != null) {
            this.listener.onSeekValueSet(getId(), this.curValue);
        }
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStartTrackingTouch(SeekBar seekBar) {
    }

    @Override // android.widget.SeekBar.OnSeekBarChangeListener
    public void onStopTrackingTouch(SeekBar seekBar) {
    }

    public int getProgress() {
        return this.curValue;
    }
}
