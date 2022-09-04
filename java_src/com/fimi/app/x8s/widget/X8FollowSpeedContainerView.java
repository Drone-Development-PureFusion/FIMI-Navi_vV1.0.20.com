package com.fimi.app.x8s.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.fimi.app.x8s.C0885R;
import com.fimi.app.x8s.tools.X8NumberUtil;
import com.fimi.app.x8s.widget.X8FollowSpeedView;
/* loaded from: classes.dex */
public class X8FollowSpeedContainerView extends RelativeLayout implements View.OnClickListener, X8FollowSpeedView.OnChangeListener {
    private OnSendSpeedListener listener;
    private String prex;
    private int speed;
    private int MIN = 0;
    private int MAX = 40;
    private int accuracy = 10;
    private X8FollowSpeedView fsv = (X8FollowSpeedView) findViewById(C0885R.C0889id.v_speed);
    private TextView tvSpeed = (TextView) findViewById(C0885R.C0889id.tv_speed);
    private ImageView imgAntiClockwise = (ImageView) findViewById(C0885R.C0889id.img_anti_clockwise);
    private ImageView imgClockwise = (ImageView) findViewById(C0885R.C0889id.img_clockwise);

    /* loaded from: classes.dex */
    public interface OnSendSpeedListener {
        void onSendSpeed(int i);
    }

    public X8FollowSpeedContainerView(Context context, AttributeSet attrs) {
        super(context, attrs);
        LayoutInflater.from(context).inflate(C0885R.layout.x8_ai_follow_speed_containt_layout, (ViewGroup) this, true);
        this.fsv.setOnSpeedChangeListener(this);
        this.imgAntiClockwise.setOnClickListener(this);
        this.imgClockwise.setOnClickListener(this);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        int s;
        int s2;
        int id = v.getId();
        if (id == C0885R.C0889id.img_anti_clockwise) {
            int s3 = this.speed;
            if (s3 >= 0) {
                s2 = s3 - this.MIN;
            } else {
                s2 = s3 + this.MIN;
            }
            this.fsv.setLeftClick(s2, this.MAX, this.MIN);
        } else if (id == C0885R.C0889id.img_clockwise) {
            int s4 = this.speed;
            if (s4 >= 0) {
                s = s4 - this.MIN;
            } else {
                s = s4 + this.MIN;
            }
            this.fsv.setRightClick(s, this.MAX, this.MIN);
        }
    }

    @Override // com.fimi.app.x8s.widget.X8FollowSpeedView.OnChangeListener
    public void onChange(float percent, boolean isRight) {
        this.speed = (int) (((this.MAX - this.MIN) * percent) + this.MIN);
        float s = (this.speed * 1.0f) / 10.0f;
        this.tvSpeed.setText(X8NumberUtil.getSpeedNumberString(s, 1, true));
        if (!isRight) {
            this.speed = -this.speed;
        }
    }

    @Override // com.fimi.app.x8s.widget.X8FollowSpeedView.OnChangeListener
    public void onSendData() {
        if (this.listener != null) {
            this.listener.onSendSpeed(this.speed * this.accuracy);
        }
    }

    public void setOnSendSpeedListener(OnSendSpeedListener listener) {
        this.listener = listener;
    }

    public void setSpeed(int s) {
        this.fsv.setSpeed(s / 10, this.MAX - this.MIN);
    }

    public void setMaxMin(int max, int min, int accuracy) {
        this.MAX = max;
        this.MIN = min;
        this.accuracy = accuracy;
    }

    public void setSpeed2(int s) {
        int s2;
        if (s >= 0) {
            s2 = s - this.MIN;
        } else {
            s2 = s + this.MIN;
        }
        this.fsv.setSpeed(s2, this.MAX - this.MIN);
    }

    public void switchUnity() {
        float s = (this.speed * 1.0f) / 10.0f;
        this.tvSpeed.setText(X8NumberUtil.getSpeedNumberString(s, 1, true));
    }
}
