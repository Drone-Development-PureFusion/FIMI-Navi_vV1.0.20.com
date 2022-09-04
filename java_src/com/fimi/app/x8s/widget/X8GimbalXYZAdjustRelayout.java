package com.fimi.app.x8s.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.Button;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.fimi.app.x8s.C0885R;
/* loaded from: classes.dex */
public class X8GimbalXYZAdjustRelayout extends RelativeLayout {
    Context mContext;
    Button x8BtnGimbalXyzAdd = (Button) findViewById(C0885R.C0889id.x8_btn_gimbal_xyz_add);
    Button x8BtnGimbalXyzSubtract = (Button) findViewById(C0885R.C0889id.x8_btn_gimbal_xyz_subtract);
    TextView x8TvGimbalXyzName = (TextView) findViewById(C0885R.C0889id.x8_tv_gimbal_xyz_name);
    TextView x8TvGimbalXyzValue = (TextView) findViewById(C0885R.C0889id.x8_tv_gimbal_xyz_value);

    public X8GimbalXYZAdjustRelayout(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mContext = context;
        LayoutInflater.from(context).inflate(C0885R.layout.x8_gimable_xyz_adjust_item, this);
    }

    public TextView getTvGimbalXyzName() {
        return this.x8TvGimbalXyzName;
    }

    public TextView getTvGimbalXyzValue() {
        return this.x8TvGimbalXyzValue;
    }

    public Button getBtnGimbalXyzSubtract() {
        return this.x8BtnGimbalXyzSubtract;
    }

    public Button getBtnGimbalXyzAdd() {
        return this.x8BtnGimbalXyzAdd;
    }
}
