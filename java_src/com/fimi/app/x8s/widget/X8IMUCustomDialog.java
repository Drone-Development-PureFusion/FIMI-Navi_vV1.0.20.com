package com.fimi.app.x8s.widget;

import android.content.Context;
import android.content.DialogInterface;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.fimi.app.x8s.C0885R;
/* loaded from: classes.dex */
public class X8IMUCustomDialog extends X8sBaseDialog {
    private DialogInterface.OnKeyListener keyListener = new DialogInterface.OnKeyListener() { // from class: com.fimi.app.x8s.widget.X8IMUCustomDialog.3
        @Override // android.content.DialogInterface.OnKeyListener
        public boolean onKey(DialogInterface dialogInterface, int i, KeyEvent keyEvent) {
            return i == 4 && keyEvent.getRepeatCount() == 0;
        }
    };

    /* loaded from: classes.dex */
    public interface onDialogButtonClickListener {
        void onSingleButtonClick();
    }

    public X8IMUCustomDialog(@NonNull Context context, @Nullable String title, @NonNull String message, @NonNull String messageTwo, @NonNull boolean isShowImage, @NonNull final onDialogButtonClickListener listener) {
        super(context, C0885R.style.fimisdk_custom_dialog);
        setCanceledOnTouchOutside(false);
        setContentView(C0885R.layout.x8_imu_view_custom_dialog);
        TextView tvMessage = (TextView) findViewById(C0885R.C0889id.tv_message);
        TextView tvMessageTwo = (TextView) findViewById(C0885R.C0889id.tv_message_two);
        ImageView x8ImgvImucheckState = (ImageView) findViewById(C0885R.C0889id.x8_imgv_imucheck_state);
        if (title != null) {
            TextView tvTitle = (TextView) findViewById(C0885R.C0889id.tv_title);
            tvTitle.setText(title);
        }
        if (message != null) {
            tvMessage.setText(message);
            if (message.equalsIgnoreCase(context.getString(C0885R.string.x8_fc_item_imu_normal))) {
                tvMessage.setTextColor(context.getApplicationContext().getResources().getColor(C0885R.C0887color.x8_fc_imu_check_namal));
            } else {
                tvMessage.setTextColor(context.getApplicationContext().getResources().getColor(C0885R.C0887color.x8_fc_imu_check_exception));
            }
            tvMessage.setVisibility(0);
        } else {
            tvMessage.setVisibility(8);
        }
        if (messageTwo != null) {
            tvMessageTwo.setText(messageTwo);
            tvMessageTwo.setVisibility(0);
        } else {
            tvMessageTwo.setVisibility(8);
        }
        if (isShowImage) {
            x8ImgvImucheckState.setVisibility(0);
        } else {
            x8ImgvImucheckState.setVisibility(8);
        }
        Button tvSure = (Button) findViewById(C0885R.C0889id.tv_sure);
        tvSure.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.app.x8s.widget.X8IMUCustomDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                X8IMUCustomDialog.this.dismiss();
                if (listener != null) {
                    listener.onSingleButtonClick();
                }
            }
        });
        setOnKeyListener(this.keyListener);
    }

    public X8IMUCustomDialog(@NonNull Context context, @Nullable String title, @NonNull String messageTwo, @NonNull int imgSrc, @NonNull final onDialogButtonClickListener listener) {
        super(context, C0885R.style.fimisdk_custom_dialog);
        setCanceledOnTouchOutside(false);
        setContentView(C0885R.layout.x8_imu_view_custom_dialog);
        TextView tvMessage = (TextView) findViewById(C0885R.C0889id.tv_message);
        tvMessage.setVisibility(8);
        TextView tvMessageTwo = (TextView) findViewById(C0885R.C0889id.tv_message_two);
        ImageView x8ImgvImucheckState = (ImageView) findViewById(C0885R.C0889id.x8_imgv_imucheck_state);
        if (title != null) {
            TextView tvTitle = (TextView) findViewById(C0885R.C0889id.tv_title);
            tvTitle.setText(title);
        }
        if (messageTwo != null) {
            tvMessageTwo.setText(messageTwo);
            tvMessageTwo.setVisibility(0);
        } else {
            tvMessageTwo.setVisibility(8);
        }
        x8ImgvImucheckState.setImageResource(imgSrc);
        Button tvSure = (Button) findViewById(C0885R.C0889id.tv_sure);
        tvSure.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.app.x8s.widget.X8IMUCustomDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                X8IMUCustomDialog.this.dismiss();
                if (listener != null) {
                    listener.onSingleButtonClick();
                }
            }
        });
        setOnKeyListener(this.keyListener);
    }
}
