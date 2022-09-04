package com.fimi.app.x8s.widget;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.View;
import android.widget.CheckBox;
import android.widget.TextView;
import com.fimi.app.x8s.C0885R;
/* loaded from: classes.dex */
public class X8DoubleCustomDialog extends X8sBaseDialog {
    public CheckBox x8CbSingDialog = (CheckBox) findViewById(C0885R.C0889id.x8_cb_sing_dialog);

    /* loaded from: classes.dex */
    public interface onDialogButtonClickListener {
        void onLeft();

        void onRight();
    }

    public X8DoubleCustomDialog(@NonNull Context context, @Nullable String title, @NonNull String message, @NonNull final onDialogButtonClickListener listener) {
        super(context, C0885R.style.fimisdk_custom_dialog);
        setContentView(C0885R.layout.x8_double_dialog_custom);
        this.x8CbSingDialog.setVisibility(8);
        if (title != null) {
            TextView tvTitle = (TextView) findViewById(C0885R.C0889id.tv_title);
            tvTitle.setText(title);
        }
        TextView tvMessage = (TextView) findViewById(C0885R.C0889id.tv_message);
        tvMessage.setText(message);
        TextView tvLeft = (TextView) findViewById(C0885R.C0889id.btn_left);
        TextView tvRight = (TextView) findViewById(C0885R.C0889id.btn_right);
        tvLeft.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.app.x8s.widget.X8DoubleCustomDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (listener != null) {
                    listener.onLeft();
                }
                X8DoubleCustomDialog.this.dismiss();
            }
        });
        tvRight.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.app.x8s.widget.X8DoubleCustomDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (listener != null) {
                    listener.onRight();
                }
                X8DoubleCustomDialog.this.dismiss();
            }
        });
    }

    public X8DoubleCustomDialog(@NonNull Context context, @Nullable String title, @NonNull String message, String btnRight, @NonNull final onDialogButtonClickListener listener) {
        super(context, C0885R.style.fimisdk_custom_dialog);
        setContentView(C0885R.layout.x8_double_dialog_custom);
        this.x8CbSingDialog.setVisibility(8);
        if (title != null) {
            TextView tvTitle = (TextView) findViewById(C0885R.C0889id.tv_title);
            tvTitle.setText(title);
        }
        TextView tvMessage = (TextView) findViewById(C0885R.C0889id.tv_message);
        tvMessage.setText(message);
        TextView tvLeft = (TextView) findViewById(C0885R.C0889id.btn_left);
        TextView tvRight = (TextView) findViewById(C0885R.C0889id.btn_right);
        tvRight.setText(btnRight);
        tvLeft.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.app.x8s.widget.X8DoubleCustomDialog.3
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (listener != null) {
                    listener.onLeft();
                }
                X8DoubleCustomDialog.this.dismiss();
            }
        });
        tvRight.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.app.x8s.widget.X8DoubleCustomDialog.4
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (listener != null) {
                    listener.onRight();
                }
                X8DoubleCustomDialog.this.dismiss();
            }
        });
    }

    public X8DoubleCustomDialog(@NonNull Context context, @Nullable String title, @NonNull String message, String btnLeft, String btnRight, @NonNull final onDialogButtonClickListener listener) {
        super(context, C0885R.style.fimisdk_custom_dialog);
        setContentView(C0885R.layout.x8_double_dialog_custom);
        this.x8CbSingDialog.setVisibility(8);
        if (title != null) {
            TextView tvTitle = (TextView) findViewById(C0885R.C0889id.tv_title);
            tvTitle.setText(title);
        }
        TextView tvMessage = (TextView) findViewById(C0885R.C0889id.tv_message);
        tvMessage.setText(message);
        TextView tvLeft = (TextView) findViewById(C0885R.C0889id.btn_left);
        TextView tvRight = (TextView) findViewById(C0885R.C0889id.btn_right);
        tvLeft.setText(btnLeft);
        tvRight.setText(btnRight);
        tvLeft.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.app.x8s.widget.X8DoubleCustomDialog.5
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (listener != null) {
                    listener.onLeft();
                }
                X8DoubleCustomDialog.this.dismiss();
            }
        });
        tvRight.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.app.x8s.widget.X8DoubleCustomDialog.6
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (listener != null) {
                    listener.onRight();
                }
                X8DoubleCustomDialog.this.dismiss();
            }
        });
    }

    public X8DoubleCustomDialog(@NonNull Context context, @Nullable String title, @NonNull String message, String btnLeft, String btnRight, String checkStr, @NonNull final onDialogButtonClickListener listener) {
        super(context, C0885R.style.fimisdk_custom_dialog);
        setContentView(C0885R.layout.x8_double_dialog_custom);
        this.x8CbSingDialog.setVisibility(0);
        this.x8CbSingDialog.setText(checkStr);
        if (title != null) {
            TextView tvTitle = (TextView) findViewById(C0885R.C0889id.tv_title);
            tvTitle.setText(title);
        }
        TextView tvMessage = (TextView) findViewById(C0885R.C0889id.tv_message);
        tvMessage.setText(message);
        TextView tvLeft = (TextView) findViewById(C0885R.C0889id.btn_left);
        TextView tvRight = (TextView) findViewById(C0885R.C0889id.btn_right);
        tvLeft.setText(btnLeft);
        tvRight.setText(btnRight);
        tvLeft.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.app.x8s.widget.X8DoubleCustomDialog.7
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (listener != null) {
                    listener.onLeft();
                }
                X8DoubleCustomDialog.this.dismiss();
            }
        });
        tvRight.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.app.x8s.widget.X8DoubleCustomDialog.8
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (listener != null) {
                    listener.onRight();
                }
                X8DoubleCustomDialog.this.dismiss();
            }
        });
    }
}
