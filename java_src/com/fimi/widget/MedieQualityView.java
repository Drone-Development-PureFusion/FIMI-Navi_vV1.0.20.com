package com.fimi.widget;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.widget.FrameLayout;
import android.widget.TextView;
import com.fimi.kernel.utils.LogUtil;
import com.fimi.sdk.C1787R;
import java.text.DecimalFormat;
/* loaded from: classes.dex */
public class MedieQualityView extends FrameLayout {
    int arg1 = 0;
    int arg2 = 0;
    boolean isAnimation = false;
    private Handler mHandler = new Handler() { // from class: com.fimi.widget.MedieQualityView.1
        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            if (msg.what == 0) {
                float showArg2 = MedieQualityView.this.arg2 / 10.0f;
                DecimalFormat decimalFormat = new DecimalFormat("0.00");
                String arg2Str = decimalFormat.format(showArg2);
                MedieQualityView.this.tvArg1.setText("" + MedieQualityView.this.arg1);
                MedieQualityView.this.tvArg2.setText(arg2Str + "%");
                MedieQualityView.this.mHandler.sendEmptyMessage(1);
                return;
            }
            float showArg22 = MedieQualityView.this.arg2 / 10.0f;
            DecimalFormat decimalFormat2 = new DecimalFormat("0.00");
            String arg2Str2 = decimalFormat2.format(showArg22);
            MedieQualityView.this.tvArg1.setText(" " + MedieQualityView.this.arg1);
            MedieQualityView.this.tvArg2.setText(" " + arg2Str2 + "%");
            MedieQualityView.this.mHandler.sendEmptyMessage(0);
        }
    };
    TextView tvArg1 = (TextView) findViewById(C1787R.C1791id.tv_arg1);
    TextView tvArg2 = (TextView) findViewById(C1787R.C1791id.tv_arg2);

    public MedieQualityView(@NonNull Context context, @Nullable AttributeSet attrs) {
        super(context, attrs);
        LayoutInflater.from(context).inflate(C1787R.layout.item_media_quality, this);
    }

    public void setMediaQuality(int arg1, int arg2) {
        LogUtil.m1330d("moweiru", "arg1:" + arg1 + ";arg2:" + arg2);
        float showArg2 = arg2 / 10.0f;
        DecimalFormat decimalFormat = new DecimalFormat("0.00");
        String arg2Str = decimalFormat.format(showArg2);
        if (this.isAnimation) {
            this.tvArg1.setText("" + arg1);
            this.tvArg2.setText(arg2Str + "%");
            this.isAnimation = false;
            return;
        }
        this.tvArg1.setText("  " + arg1);
        this.tvArg2.setText("  " + arg2Str + "%");
        this.isAnimation = true;
    }

    public void removeMessage() {
        this.mHandler.removeMessages(0);
    }

    @Override // android.view.View
    public void onVisibilityAggregated(boolean isVisible) {
        super.onVisibilityAggregated(isVisible);
    }
}
