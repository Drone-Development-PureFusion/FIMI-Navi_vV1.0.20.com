package com.fimi.app.x8s.widget;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.TextView;
import com.fimi.app.x8s.C0885R;
import com.fimi.host.HostConstants;
import com.fimi.kernel.store.shared.SPStoreManager;
/* loaded from: classes.dex */
public class X8SingleCustomDialog extends X8sBaseDialog {

    /* loaded from: classes.dex */
    public interface onDialogButtonClickListener {
        void onSingleButtonClick();
    }

    public X8SingleCustomDialog(@NonNull Context context, @Nullable String title, @NonNull String message, @NonNull final onDialogButtonClickListener listener) {
        super(context, C0885R.style.fimisdk_custom_dialog);
        setContentView(C0885R.layout.x8_view_custom_dialog);
        CheckBox x8CbSingDialog = (CheckBox) findViewById(C0885R.C0889id.x8_cb_sing_dialog);
        x8CbSingDialog.setVisibility(8);
        if (title != null) {
            TextView tvTitle = (TextView) findViewById(C0885R.C0889id.tv_title);
            tvTitle.setText(title);
        }
        TextView tvMessage = (TextView) findViewById(C0885R.C0889id.tv_message);
        tvMessage.setText(message);
        Button tvSure = (Button) findViewById(C0885R.C0889id.tv_sure);
        tvSure.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.app.x8s.widget.X8SingleCustomDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                X8SingleCustomDialog.this.dismiss();
                if (listener != null) {
                    listener.onSingleButtonClick();
                }
            }
        });
    }

    public X8SingleCustomDialog(@NonNull Context context, @Nullable String title, @NonNull String message, @NonNull String btnTxt, boolean isShowCheckBox, @NonNull final onDialogButtonClickListener listener) {
        super(context, C0885R.style.fimisdk_custom_dialog);
        setContentView(C0885R.layout.x8_view_custom_dialog);
        final CheckBox x8CbSingDialog = (CheckBox) findViewById(C0885R.C0889id.x8_cb_sing_dialog);
        if (isShowCheckBox) {
            x8CbSingDialog.setVisibility(0);
            x8CbSingDialog.setChecked(SPStoreManager.getInstance().getBoolean(HostConstants.SP_KEY_NOT_TIPS, false));
            x8CbSingDialog.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.app.x8s.widget.X8SingleCustomDialog.2
                @Override // android.view.View.OnClickListener
                public void onClick(View view) {
                    if (x8CbSingDialog.isChecked()) {
                        SPStoreManager.getInstance().saveObject(HostConstants.SP_KEY_NOT_TIPS, true);
                    } else {
                        SPStoreManager.getInstance().saveObject(HostConstants.SP_KEY_NOT_TIPS, false);
                    }
                }
            });
        } else {
            x8CbSingDialog.setVisibility(8);
        }
        if (title != null) {
            TextView tvTitle = (TextView) findViewById(C0885R.C0889id.tv_title);
            tvTitle.setText(title);
        }
        TextView tvMessage = (TextView) findViewById(C0885R.C0889id.tv_message);
        tvMessage.setText(message);
        Button tvSure = (Button) findViewById(C0885R.C0889id.tv_sure);
        tvSure.setText(btnTxt);
        tvSure.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.app.x8s.widget.X8SingleCustomDialog.3
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                X8SingleCustomDialog.this.dismiss();
                if (listener != null) {
                    listener.onSingleButtonClick();
                }
            }
        });
    }
}
