package com.fimi.app.x8s.widget;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.util.AttributeSet;
import android.view.View;
import android.view.animation.AnimationUtils;
import android.widget.TextSwitcher;
import android.widget.TextView;
import android.widget.ViewSwitcher;
import com.fimi.app.x8s.C0885R;
import com.fimi.app.x8s.interfaces.IX8ErrorTextSwitchView;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public class X8ErrorTextSwitchView extends TextSwitcher implements ViewSwitcher.ViewFactory {
    private Context context;
    private IX8ErrorTextSwitchView mRotationText;
    private TextView mTv;
    private int index = -1;
    private List<String> resString = new ArrayList();
    private int colorRes = C0885R.C0887color.white_100;
    private Handler mHandler = new Handler() { // from class: com.fimi.app.x8s.widget.X8ErrorTextSwitchView.1
        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            X8ErrorTextSwitchView.this.updateText();
        }
    };

    public X8ErrorTextSwitchView(Context context) {
        super(context);
        this.context = context;
        init();
    }

    public X8ErrorTextSwitchView(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.context = context;
        init();
    }

    private void init() {
        setFactory(this);
        setInAnimation(AnimationUtils.loadAnimation(this.context, C0885R.C0886anim.in_animation));
        setOutAnimation(AnimationUtils.loadAnimation(this.context, C0885R.C0886anim.out_animation));
    }

    public void setResources(List<String> res, IX8ErrorTextSwitchView rotationText) {
        this.resString.clear();
        this.resString = res;
        this.mRotationText = rotationText;
        this.mHandler.sendEmptyMessage(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void updateText() {
        this.index++;
        if (this.index >= this.resString.size() && this.mRotationText != null) {
            if (this.mHandler != null) {
                this.mHandler.removeCallbacksAndMessages(null);
            }
            this.mRotationText.isRotationFinish();
            this.index = -1;
        }
        if (this.index >= 0 && this.index < this.resString.size()) {
            setText(this.resString.get(this.index));
            this.mHandler.sendEmptyMessageDelayed(0, 4000L);
        }
    }

    @Override // android.widget.ViewSwitcher.ViewFactory
    public View makeView() {
        this.mTv = new TextView(this.context);
        this.mTv.setTextSize(12.0f);
        this.mTv.setTextColor(getResources().getColor(this.colorRes));
        return this.mTv;
    }

    public void setTextColor(int resColor) {
        this.mTv.setTextColor(getResources().getColor(resColor));
    }
}
