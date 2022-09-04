package com.fimi.app.x8s.widget;

import android.content.Context;
import android.os.Handler;
import android.os.Message;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.View;
import android.widget.TextView;
import com.fimi.app.x8s.C0885R;
import com.fimi.app.x8s.widget.X8DoubleCustomDialog;
/* loaded from: classes.dex */
public class X8WithTimeDoubleCustomDialog extends X8sBaseDialog {
    private X8DoubleCustomDialog.onDialogButtonClickListener listener;
    private String prex;
    final TextView tvRight;

    /* renamed from: i */
    private int f176i = 10;
    private Handler mHandler = new Handler() { // from class: com.fimi.app.x8s.widget.X8WithTimeDoubleCustomDialog.3
        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            if (X8WithTimeDoubleCustomDialog.this.f176i < 0) {
                if (X8WithTimeDoubleCustomDialog.this.listener != null) {
                    X8WithTimeDoubleCustomDialog.this.listener.onRight();
                }
                X8WithTimeDoubleCustomDialog.this.dismiss();
                return;
            }
            X8WithTimeDoubleCustomDialog.this.tvRight.setText(String.format(X8WithTimeDoubleCustomDialog.this.prex, Integer.valueOf(X8WithTimeDoubleCustomDialog.access$010(X8WithTimeDoubleCustomDialog.this))));
            X8WithTimeDoubleCustomDialog.this.mHandler.sendEmptyMessageDelayed(0, 1000L);
        }
    };

    static /* synthetic */ int access$010(X8WithTimeDoubleCustomDialog x0) {
        int i = x0.f176i;
        x0.f176i = i - 1;
        return i;
    }

    public X8WithTimeDoubleCustomDialog(@NonNull Context context, @Nullable String title, @NonNull String message, @NonNull final X8DoubleCustomDialog.onDialogButtonClickListener listener) {
        super(context, C0885R.style.fimisdk_custom_dialog);
        setContentView(C0885R.layout.x8_whith_time_double_dialog_custom);
        this.listener = listener;
        this.prex = context.getString(C0885R.string.x8_battery_ok_time_tip);
        if (title != null) {
            TextView tvTitle = (TextView) findViewById(C0885R.C0889id.tv_title);
            tvTitle.setText(title);
        }
        TextView tvMessage = (TextView) findViewById(C0885R.C0889id.tv_message);
        tvMessage.setText(message);
        TextView tvLeft = (TextView) findViewById(C0885R.C0889id.btn_left);
        this.tvRight = (TextView) findViewById(C0885R.C0889id.btn_right);
        View viewById = findViewById(C0885R.C0889id.x8_cb_sing_dialog);
        viewById.setVisibility(4);
        tvLeft.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.app.x8s.widget.X8WithTimeDoubleCustomDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (listener != null) {
                    listener.onLeft();
                }
                X8WithTimeDoubleCustomDialog.this.dismiss();
            }
        });
        this.tvRight.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.app.x8s.widget.X8WithTimeDoubleCustomDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (listener != null) {
                    listener.onRight();
                }
                X8WithTimeDoubleCustomDialog.this.dismiss();
            }
        });
        this.tvRight.setText(String.format(this.prex, Integer.valueOf(this.f176i)));
    }

    @Override // com.fimi.app.x8s.widget.X8sBaseDialog, android.app.Dialog
    public void show() {
        super.show();
        this.mHandler.sendEmptyMessageDelayed(0, 1000L);
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        this.mHandler.removeMessages(0);
    }
}
