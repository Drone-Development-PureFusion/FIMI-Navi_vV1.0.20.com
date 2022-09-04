package com.fimi.app.x8s.widget;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.View;
import android.view.inputmethod.InputMethodManager;
import android.widget.Button;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import com.fimi.app.x8s.C0885R;
/* loaded from: classes.dex */
public class X8EditorCustomDialog extends X8sBaseDialog {
    private InputMethodManager inputManager;
    private boolean isShowInput = false;
    private final EditText mEtView;

    /* loaded from: classes.dex */
    public interface onDialogButtonClickListener {
        void onCenter(String str);

        void onLeft();

        void onRight(String str);
    }

    public X8EditorCustomDialog(@NonNull Context context, @Nullable String title, @NonNull final onDialogButtonClickListener listener) {
        super(context, C0885R.style.fimisdk_custom_dialog);
        setContentView(C0885R.layout.x8_editor_dialog_custom);
        if (title != null) {
            TextView tvTitle = (TextView) findViewById(C0885R.C0889id.tv_title);
            tvTitle.setText(title);
        }
        this.mEtView = (EditText) findViewById(C0885R.C0889id.tv_message);
        this.inputManager = (InputMethodManager) this.mEtView.getContext().getSystemService("input_method");
        final TextView tvLeft = (TextView) findViewById(C0885R.C0889id.btn_left);
        final TextView tvRight = (TextView) findViewById(C0885R.C0889id.btn_right);
        final View imgMiddle = findViewById(C0885R.C0889id.img_middle);
        final ImageView editorPic = (ImageView) findViewById(C0885R.C0889id.x8_dialog_editor_name_center_pic);
        final Button btnCenter = (Button) findViewById(C0885R.C0889id.x8_dialog_editor_name_center_ok);
        editorPic.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.app.x8s.widget.X8EditorCustomDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                X8EditorCustomDialog.this.mEtView.setVisibility(0);
                tvRight.setVisibility(0);
                tvLeft.setVisibility(0);
                imgMiddle.setVisibility(0);
                editorPic.setVisibility(8);
                btnCenter.setVisibility(8);
                X8EditorCustomDialog.this.showSoftInputFromWindow();
            }
        });
        btnCenter.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.app.x8s.widget.X8EditorCustomDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                if (listener != null) {
                    listener.onCenter("");
                }
                X8EditorCustomDialog.this.dismiss();
            }
        });
        tvLeft.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.app.x8s.widget.X8EditorCustomDialog.3
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (listener != null) {
                    listener.onLeft();
                }
                X8EditorCustomDialog.this.isShowInput = false;
                X8EditorCustomDialog.this.dismiss();
            }
        });
        tvRight.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.app.x8s.widget.X8EditorCustomDialog.4
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (listener != null) {
                    listener.onRight(X8EditorCustomDialog.this.mEtView.getText().toString().trim());
                }
                X8EditorCustomDialog.this.isShowInput = false;
                X8EditorCustomDialog.this.dismiss();
            }
        });
    }

    public void showSoftInputFromWindow() {
        this.mEtView.setFocusable(true);
        this.mEtView.setFocusableInTouchMode(true);
        this.mEtView.requestFocus();
        if (this.inputManager != null) {
            this.inputManager.showSoftInput(this.mEtView, 0);
            this.isShowInput = true;
        }
    }

    public void hideSoftInputFromWindow() {
        if (this.inputManager != null && this.isShowInput) {
            this.inputManager.toggleSoftInput(0, 2);
            this.isShowInput = false;
        }
    }
}
