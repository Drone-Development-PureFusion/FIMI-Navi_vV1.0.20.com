package com.fimi.app.x8s.widget;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.p001v4.view.InputDeviceCompat;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.fimi.app.x8s.C0885R;
import com.fimi.app.x8s.interfaces.IX8ValueSeakBarViewListener;
import com.fimi.app.x8s.tools.X8NumberUtil;
import com.fimi.app.x8s.widget.X8SeekBarView;
import com.fimi.widget.SwitchButton;
import com.fimi.x8sdk.modulestate.StateManager;
/* loaded from: classes.dex */
public class X8ValueSeakBarView extends RelativeLayout implements View.OnClickListener, X8SeekBarView.SlideChangeListener {
    private static final int DISABLED_ALPHA = 102;
    private static final int ENABLED_ALPHA = 255;
    private int closeColor;
    OnProgressConfirmListener confirmListener;
    private int historyProgress;
    private boolean isFloat;
    private IX8ValueSeakBarViewListener listener;

    /* renamed from: na */
    private String f174na;
    private int openColor;
    private float seekBarDefault;
    private float seekBarMax;
    private float seekBarMin;
    private String suffix = "";
    private String title = "";
    private int currentProgress = 0;
    private float currentValue = 0.0f;
    private int MAX = 0;
    private int MIN = 0;
    private int accuracy = 1;
    private boolean isEnableClick = true;
    private TextView mTvTitle = (TextView) findViewById(C0885R.C0889id.tv_title);
    private TextView mTvValue = (TextView) findViewById(C0885R.C0889id.tv_value);
    private ImageView imgMenu = (ImageView) findViewById(C0885R.C0889id.img_flag_menu);
    private View vMinus = findViewById(C0885R.C0889id.view_minus);
    private View vPlus = findViewById(C0885R.C0889id.view_plus);
    private ImageButton imbConfirm = (ImageButton) findViewById(C0885R.C0889id.imb_confirm);
    private X8SeekBarView mSeekBar = (X8SeekBarView) findViewById(C0885R.C0889id.sb_value);
    private View rlFlagMenu = findViewById(C0885R.C0889id.rl_flag_menu);
    private View rlSeekBar = findViewById(C0885R.C0889id.rl_seekbar);
    private View rlMinus = findViewById(C0885R.C0889id.rl_minus);
    private View rlPlus = findViewById(C0885R.C0889id.rl_plus);
    private SwitchButton switchButton = (SwitchButton) findViewById(C0885R.C0889id.swb_toggle);

    /* loaded from: classes.dex */
    public interface OnProgressConfirmListener {
        void onConfirm(float f);
    }

    @Override // com.fimi.app.x8s.widget.X8SeekBarView.SlideChangeListener
    public void onStart(X8SeekBarView slideView, int progress) {
    }

    @Override // com.fimi.app.x8s.widget.X8SeekBarView.SlideChangeListener
    public void onProgress(X8SeekBarView slideView, int progress) {
        this.mTvValue.setText(getValueString(progress));
        this.historyProgress = progress;
        if (this.currentProgress == progress) {
            this.imbConfirm.setEnabled(false);
        } else {
            this.imbConfirm.setEnabled(true);
        }
    }

    @Override // com.fimi.app.x8s.widget.X8SeekBarView.SlideChangeListener
    public void onStop(X8SeekBarView slideView, int progress) {
    }

    public void setEnableClick(boolean enableClick) {
        this.isEnableClick = enableClick;
    }

    public boolean isEnableClick() {
        return this.isEnableClick;
    }

    public void setConfirmListener(OnProgressConfirmListener confirmListener) {
        this.confirmListener = confirmListener;
    }

    public X8ValueSeakBarView(Context context, AttributeSet attrs) {
        super(context, attrs);
        readAttr(context, attrs);
        this.f174na = context.getResources().getString(C0885R.string.x8_na);
        LayoutInflater.from(context).inflate(C0885R.layout.x8_value_seekbar_layout, (ViewGroup) this, true);
        this.imbConfirm.setOnClickListener(this);
        this.rlMinus.setOnClickListener(this);
        this.rlPlus.setOnClickListener(this);
        this.rlFlagMenu.setOnClickListener(this);
        this.mSeekBar.setOnSlideChangeListener(this);
        this.rlSeekBar.setVisibility(8);
        this.mTvValue.setTextColor(this.closeColor);
        this.mTvTitle.setText(this.title);
        this.mSeekBar.setMaxProgress(this.MAX);
        this.imbConfirm.setEnabled(false);
    }

    public void setImgMenuVisiable(int visiable) {
        this.imgMenu.setVisibility(visiable);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        int id = v.getId();
        if (id == C0885R.C0889id.rl_flag_menu) {
            if (this.isEnableClick) {
                if (this.rlSeekBar.getVisibility() == 8) {
                    this.rlSeekBar.setVisibility(0);
                    this.mTvValue.setTextColor(this.openColor);
                    this.imgMenu.setSelected(true);
                    if (this.listener != null) {
                        this.listener.onSelect(true);
                        return;
                    }
                    return;
                }
                onOtherSelect();
            }
        } else if (id == C0885R.C0889id.rl_minus) {
            if (this.mSeekBar.getProgress() != this.MIN) {
                int s = this.mSeekBar.getProgress() - this.accuracy;
                if (s < this.MIN) {
                    s = this.MIN;
                }
                this.mSeekBar.setProgress(s);
            }
        } else if (id == C0885R.C0889id.rl_plus) {
            if (this.mSeekBar.getProgress() != this.MAX) {
                int s2 = this.mSeekBar.getProgress() + this.accuracy;
                if (s2 > this.MAX) {
                    s2 = this.MAX;
                }
                this.mSeekBar.setProgress(s2);
            }
        } else if (id == C0885R.C0889id.imb_confirm && this.confirmListener != null) {
            this.confirmListener.onConfirm(this.currentValue / this.accuracy);
        }
    }

    public void setImbConfirmEnable(boolean enable) {
        this.currentProgress = this.historyProgress;
        this.imbConfirm.setEnabled(enable);
    }

    public void setViewEnableByMode(boolean b) {
        if (b) {
            if (this.currentProgress == this.mSeekBar.getProgress()) {
                this.imbConfirm.setEnabled(false);
            } else {
                this.imbConfirm.setEnabled(true);
            }
        } else {
            this.imbConfirm.setEnabled(b);
        }
        this.mSeekBar.setEnabled(b);
        this.vMinus.setEnabled(b);
        this.vPlus.setEnabled(b);
        this.rlMinus.setEnabled(b);
        this.rlPlus.setEnabled(b);
        this.switchButton.setEnabled(b);
        if (b) {
            this.mSeekBar.setAlpha(1.0f);
            this.switchButton.setAlpha(1.0f);
            this.vMinus.getBackground().setAlpha(255);
            this.vPlus.getBackground().setAlpha(255);
            return;
        }
        this.mSeekBar.setAlpha(0.4f);
        this.switchButton.setAlpha(0.4f);
        this.vMinus.getBackground().setAlpha(102);
        this.vPlus.getBackground().setAlpha(102);
    }

    public void setViewEnable(boolean b) {
        this.imbConfirm.setEnabled(b);
        this.mSeekBar.setEnabled(b);
        this.vMinus.setEnabled(b);
        this.vPlus.setEnabled(b);
        this.rlMinus.setEnabled(b);
        this.rlPlus.setEnabled(b);
        this.switchButton.setEnabled(b);
        if (b) {
            this.mSeekBar.setAlpha(1.0f);
            this.switchButton.setAlpha(1.0f);
            this.vMinus.getBackground().setAlpha(255);
            this.vPlus.getBackground().setAlpha(255);
            return;
        }
        this.mSeekBar.setAlpha(0.4f);
        this.switchButton.setAlpha(0.4f);
        this.vMinus.getBackground().setAlpha(102);
        this.vPlus.getBackground().setAlpha(102);
        this.mTvValue.setText(this.f174na);
    }

    private void readAttr(Context context, AttributeSet attrs) {
        TypedArray a = context.obtainStyledAttributes(attrs, C0885R.styleable.X8ValueSeakBarView);
        this.accuracy = a.getInteger(C0885R.styleable.X8ValueSeakBarView_x8_value_accuracy, 1);
        this.title = a.getString(C0885R.styleable.X8ValueSeakBarView_x8_value_title);
        this.suffix = a.getString(C0885R.styleable.X8ValueSeakBarView_x8_value_suffix);
        this.closeColor = a.getColor(C0885R.styleable.X8ValueSeakBarView_x8_value_close_color, -1);
        this.openColor = a.getColor(C0885R.styleable.X8ValueSeakBarView_x8_value_open_color, InputDeviceCompat.SOURCE_ANY);
        this.seekBarMax = a.getFloat(C0885R.styleable.X8ValueSeakBarView_x8_value_seekbar_max, 0.0f) * this.accuracy;
        this.seekBarMin = a.getFloat(C0885R.styleable.X8ValueSeakBarView_x8_value_seekbar_min, 0.0f) * this.accuracy;
        this.seekBarDefault = a.getFloat(C0885R.styleable.X8ValueSeakBarView_x8_value_seekbar_default, 0.0f);
        this.isFloat = a.getBoolean(C0885R.styleable.X8ValueSeakBarView_x8_value_seekbar_float, false);
        a.recycle();
        if (this.isFloat) {
            this.MAX = (int) (this.seekBarMax - this.seekBarMin);
        } else {
            this.MAX = (int) (this.seekBarMax - this.seekBarMin);
        }
    }

    public void switchUnityWithSpeedLimit() {
        this.mTvValue.setText(X8NumberUtil.getSpeedNumberString(this.currentValue / this.accuracy, 1, true));
    }

    public void switchUnityWithDistanceLimit() {
        this.mTvValue.setText(X8NumberUtil.getDistanceNumberString(this.currentValue / this.accuracy, 1, true));
    }

    public String getValueString(int progress) {
        String s;
        String s2;
        if (this.isFloat) {
            float p = progress + this.seekBarMin;
            this.currentValue = p;
            if (this.suffix.equals("M")) {
                s2 = X8NumberUtil.getDistanceNumberString(this.currentValue / this.accuracy, 1, true);
            } else if (this.suffix.equals("M/S")) {
                s2 = X8NumberUtil.getSpeedNumberString(this.currentValue / this.accuracy, 1, true);
            } else {
                s2 = p + this.suffix;
            }
            return s2;
        }
        int p2 = (int) (progress + this.seekBarMin);
        this.currentValue = p2;
        if (this.suffix.equals("M")) {
            s = X8NumberUtil.getDistanceNumberString(this.currentValue / this.accuracy, 1, true);
        } else if (this.suffix.equals("M/S")) {
            s = X8NumberUtil.getSpeedNumberString(this.currentValue / this.accuracy, 1, true);
        } else {
            s = p2 + this.suffix;
        }
        return s;
    }

    public void setProgress(float progress) {
        this.currentValue = this.accuracy * progress;
        int p = (int) (this.currentValue - this.seekBarMin);
        this.mSeekBar.setProgress(p);
        this.mTvValue.setText(getValueString(this.mSeekBar.getProgress()));
        this.currentProgress = p;
    }

    public void setProgress(int progress) {
        this.currentValue = this.accuracy * progress;
        int p = (int) (this.currentValue - this.seekBarMin);
        this.mSeekBar.setProgress(p);
        this.currentProgress = p;
    }

    public float getCurrentValue() {
        return this.currentValue;
    }

    private void resetView() {
        if (this.isFloat) {
            setProgress(this.currentValue);
        } else {
            setProgress((int) this.currentValue);
        }
    }

    public void onOtherSelect() {
        if (StateManager.getInstance().getConectState().isConnectDrone()) {
            this.mTvValue.setText(getValueString(this.currentProgress));
            this.mSeekBar.setProgress(this.currentProgress);
        }
        this.rlSeekBar.setVisibility(8);
        this.mTvValue.setTextColor(this.closeColor);
        this.imgMenu.setSelected(false);
    }

    public void setListener(IX8ValueSeakBarViewListener ix8ValueSeakBarViewListener) {
        this.listener = ix8ValueSeakBarViewListener;
    }

    public void setSwitchButtonVisibility(int visibility) {
        this.switchButton.setVisibility(visibility);
    }

    public void setOnSwitchListener(SwitchButton.OnSwitchListener listener) {
        this.switchButton.setOnSwitchListener(listener);
    }

    public void setSwitchButtonState(boolean b) {
        this.switchButton.setSwitchState(b);
    }

    public void setNoLimit() {
        this.imgMenu.setVisibility(8);
        setEnableClick(false);
        onOtherSelect();
        this.mTvValue.setText(getResources().getString(C0885R.string.x8_fc_fly_distance_limit_tip));
    }

    public void setProgress(float progress, boolean b) {
        setProgress(progress);
        setEnableClick(b);
        if (b) {
            this.imgMenu.setVisibility(0);
        } else {
            this.imgMenu.setVisibility(8);
        }
    }

    public void setSwitchButtonByNew() {
        onOtherSelect();
        setImgMenuVisiable(8);
        this.switchButton.setVisibility(8);
    }

    public void setSwitchButtonVisibility() {
        this.switchButton.setVisibility(0);
    }

    public void setValueVisibily(int v, boolean b) {
        this.mTvValue.setVisibility(v);
        if (b) {
            this.imgMenu.setVisibility(8);
        } else {
            this.imgMenu.setVisibility(v);
        }
    }
}
