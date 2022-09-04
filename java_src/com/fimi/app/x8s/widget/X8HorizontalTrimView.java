package com.fimi.app.x8s.widget;

import android.annotation.SuppressLint;
import android.content.Context;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.fimi.app.x8s.C0885R;
import com.fimi.app.x8s.interfaces.IX8GimbalHorizontalTrimListener;
import com.fimi.app.x8s.widget.X8DoubleWaySeekBar;
import com.fimi.kernel.percent.PercentRelativeLayout;
/* loaded from: classes.dex */
public class X8HorizontalTrimView extends RelativeLayout implements View.OnClickListener {
    private ImageButton btnAdd;
    private ImageButton btnReduce;
    private int currValue = 0;
    private boolean isReady = false;
    private IX8GimbalHorizontalTrimListener listener;
    private PercentRelativeLayout root_layout;
    private X8DoubleWaySeekBar seekBar;
    private TextView tvBubbleTop;

    public X8HorizontalTrimView(final Context context, AttributeSet attrs) {
        super(context, attrs);
        View view = LayoutInflater.from(context).inflate(C0885R.layout.x8_gimbal_horizontal_trim_layout, (ViewGroup) null);
        this.root_layout = (PercentRelativeLayout) view.findViewById(C0885R.C0889id.root_layout);
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -1);
        addView(view, layoutParams);
        this.seekBar = (X8DoubleWaySeekBar) view.findViewById(C0885R.C0889id.seek_bar);
        this.tvBubbleTop = (TextView) view.findViewById(C0885R.C0889id.tv_bubble_top);
        view.findViewById(C0885R.C0889id.btn_sure).setOnClickListener(this);
        this.btnReduce = (ImageButton) view.findViewById(C0885R.C0889id.btn_gimbal_reduce_left);
        this.btnAdd = (ImageButton) view.findViewById(C0885R.C0889id.btn_gimbal_add_right);
        this.btnReduce.setOnClickListener(this);
        this.btnAdd.setOnClickListener(this);
        this.seekBar.setOnSeekProgressListener(new X8DoubleWaySeekBar.OnSeekProgressListener() { // from class: com.fimi.app.x8s.widget.X8HorizontalTrimView.1
            @Override // com.fimi.app.x8s.widget.X8DoubleWaySeekBar.OnSeekProgressListener
            @SuppressLint({"StringFormatMatches"})
            public void onSeekProgress(int progress) {
                X8HorizontalTrimView.this.currValue = progress;
                if (progress <= 0) {
                    String rt = String.format(context.getString(C0885R.string.x8_cloud_minus_angle), Float.valueOf(progress / 10.0f));
                    X8HorizontalTrimView.this.tvBubbleTop.setText(String.valueOf(rt));
                    return;
                }
                String rt2 = String.format(context.getString(C0885R.string.x8_cloud_angle), Float.valueOf(progress / 10.0f));
                X8HorizontalTrimView.this.tvBubbleTop.setText(String.valueOf(rt2));
            }

            @Override // com.fimi.app.x8s.widget.X8DoubleWaySeekBar.OnSeekProgressListener
            public void onPointerPositionChanged(int x, int y) {
                X8HorizontalTrimView.this.tvBubbleTop.setX(x - (X8HorizontalTrimView.this.tvBubbleTop.getWidth() / 2));
            }

            @Override // com.fimi.app.x8s.widget.X8DoubleWaySeekBar.OnSeekProgressListener
            public void onSizeChanged() {
                X8HorizontalTrimView.this.seekBar.setProgress(X8HorizontalTrimView.this.currValue);
                X8HorizontalTrimView.this.isReady = true;
            }
        });
    }

    @Override // android.view.View
    public void setEnabled(boolean enabled) {
        this.btnReduce.setEnabled(enabled);
        this.btnAdd.setEnabled(enabled);
        this.seekBar.setEnabled(enabled);
        updateViewEnable(enabled, this.root_layout);
    }

    public void updateViewEnable(boolean enable, ViewGroup... parent) {
        if (parent != null && parent.length > 0) {
            for (ViewGroup group : parent) {
                int len = group.getChildCount();
                for (int j = 0; j < len; j++) {
                    View subView = group.getChildAt(j);
                    if (subView instanceof ViewGroup) {
                        updateViewEnable(enable, (ViewGroup) subView);
                    } else {
                        subView.setEnabled(enable);
                        if (enable) {
                            subView.setAlpha(1.0f);
                        } else {
                            subView.setAlpha(0.6f);
                        }
                    }
                }
            }
        }
    }

    public void setCurrValue(float currValue) {
        if (this.isReady) {
            this.seekBar.setProgress(currValue);
        }
    }

    public float getCurrValue() {
        return this.currValue / 10.0f;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        int i = v.getId();
        if (i == C0885R.C0889id.btn_sure) {
            if (this.listener != null) {
                this.listener.onSettingReady(this.currValue);
            }
        } else if (i == C0885R.C0889id.btn_gimbal_reduce_left) {
            setCurrValue(this.currValue - 1.1f);
        } else if (i == C0885R.C0889id.btn_gimbal_add_right) {
            setCurrValue(this.currValue + 1.1f);
        }
    }

    public void setListener(IX8GimbalHorizontalTrimListener listener) {
        this.listener = listener;
    }
}
