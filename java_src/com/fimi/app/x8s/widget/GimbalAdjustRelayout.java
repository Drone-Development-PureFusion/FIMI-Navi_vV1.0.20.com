package com.fimi.app.x8s.widget;

import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.Button;
import android.widget.EditText;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.fimi.app.x8s.C0885R;
/* loaded from: classes.dex */
public class GimbalAdjustRelayout extends RelativeLayout {
    Context mContext;
    Button btnAdd = (Button) findViewById(C0885R.C0889id.btn_add);
    Button btnSub = (Button) findViewById(C0885R.C0889id.btn_sub);
    EditText etxValue = (EditText) findViewById(C0885R.C0889id.etx_value);
    TextView tvGimbalModel = (TextView) findViewById(C0885R.C0889id.tv_gimbal_model);

    public GimbalAdjustRelayout(Context context, AttributeSet attrs) {
        super(context, attrs);
        this.mContext = context;
        LayoutInflater.from(context).inflate(C0885R.layout.item_gimable_adjust, this);
    }

    public TextView getTvGimbalModel() {
        return this.tvGimbalModel;
    }

    public Button getBtnSub() {
        return this.btnSub;
    }

    public Button getBtnAdd() {
        return this.btnAdd;
    }

    public EditText getEtxValue() {
        return this.etxValue;
    }
}
