package com.fimi.widget;

import android.content.Context;
import android.content.DialogInterface;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import com.fimi.widget.CustomDialog;
/* loaded from: classes.dex */
public class DialogManager {
    private boolean clickOutIsCancle;
    private Context context;
    private int customeLayoutId;
    private CharSequence dialogMessage;
    private String dialogTitle;
    private View dialogView;
    private boolean isShowVirtKey;
    private boolean isSingle;
    private boolean isSpan;
    private boolean isVerticalScreen;
    private String leftBtnText;
    private int leftButtonColor;
    private OnDialogListener listener;
    private CustomDialog mCustomDialog;
    private int mGravity;
    private OnDismissListener onDismissListener;
    private String rightBtnText;
    private int rightButtonColor;
    private String singleBtnText;
    private int singleButtonColor;
    private int titleColor;

    /* loaded from: classes.dex */
    public interface OnDialogListener {
        void dialogBtnLeftListener(View view, DialogInterface dialogInterface, int i);

        void dialogBtnRightOrSingleListener(View view, DialogInterface dialogInterface, int i);
    }

    /* loaded from: classes.dex */
    public interface OnDismissListener {
        void onDismiss();
    }

    public DialogManager(Context context, int customeLayoutId, String dialogTitle, String rightBtnText, String leftBtnText) {
        this.rightButtonColor = -1;
        this.leftButtonColor = -1;
        this.singleButtonColor = -1;
        this.titleColor = -1;
        this.mGravity = -1;
        this.isSpan = false;
        this.clickOutIsCancle = false;
        this.isShowVirtKey = true;
        this.isVerticalScreen = false;
        this.context = context;
        this.customeLayoutId = customeLayoutId;
        this.dialogTitle = dialogTitle;
        this.rightBtnText = rightBtnText;
        this.leftBtnText = leftBtnText;
        this.dialogView = View.inflate(context, customeLayoutId, null);
    }

    public DialogManager(Context context, String dialogTitle, CharSequence dialogMessage, String rightBtnText, String leftBtnText) {
        this.rightButtonColor = -1;
        this.leftButtonColor = -1;
        this.singleButtonColor = -1;
        this.titleColor = -1;
        this.mGravity = -1;
        this.isSpan = false;
        this.clickOutIsCancle = false;
        this.isShowVirtKey = true;
        this.isVerticalScreen = false;
        this.context = context;
        this.isSingle = false;
        this.dialogTitle = dialogTitle;
        this.dialogMessage = dialogMessage;
        this.rightBtnText = rightBtnText;
        this.leftBtnText = leftBtnText;
    }

    public DialogManager(Context context, String dialogTitle, CharSequence dialogMessage, String rightBtnText, String leftBtnText, int mGravity) {
        this.rightButtonColor = -1;
        this.leftButtonColor = -1;
        this.singleButtonColor = -1;
        this.titleColor = -1;
        this.mGravity = -1;
        this.isSpan = false;
        this.clickOutIsCancle = false;
        this.isShowVirtKey = true;
        this.isVerticalScreen = false;
        this.context = context;
        this.isSingle = false;
        this.dialogTitle = dialogTitle;
        this.dialogMessage = dialogMessage;
        this.rightBtnText = rightBtnText;
        this.leftBtnText = leftBtnText;
        this.mGravity = mGravity;
    }

    public DialogManager(Context context, String dialogTitle, CharSequence dialogMessage, String singleBtnText) {
        this.rightButtonColor = -1;
        this.leftButtonColor = -1;
        this.singleButtonColor = -1;
        this.titleColor = -1;
        this.mGravity = -1;
        this.isSpan = false;
        this.clickOutIsCancle = false;
        this.isShowVirtKey = true;
        this.isVerticalScreen = false;
        this.context = context;
        this.isSingle = true;
        this.dialogTitle = dialogTitle;
        this.dialogMessage = dialogMessage;
        this.singleBtnText = singleBtnText;
    }

    public void setDialogMessage(String dialogMessage) {
        this.dialogMessage = dialogMessage;
    }

    public void setVerticalScreen(boolean verticalScreen) {
        this.isVerticalScreen = verticalScreen;
    }

    public View getDialogView() {
        return this.dialogView;
    }

    public void setDialogView(View dialogView) {
        this.dialogView = dialogView;
    }

    public void setClickOutIsCancle(boolean clickOutIsCancle) {
        this.clickOutIsCancle = clickOutIsCancle;
    }

    public void setShowVirtKey(boolean isShowVirtKey) {
        this.isShowVirtKey = isShowVirtKey;
    }

    public void setRightButtonColor(int rightButtonColor) {
        this.rightButtonColor = rightButtonColor;
    }

    public void setLeftButtonColor(int leftButtonColor) {
        this.leftButtonColor = leftButtonColor;
    }

    public void setSingleButtonColor(int singleButtonColor) {
        this.singleButtonColor = singleButtonColor;
    }

    public void setSpan(boolean span) {
        this.isSpan = span;
    }

    public void setGravity(int gravity) {
        this.mGravity = gravity;
    }

    public void setTitleColor(int titleColor) {
        this.titleColor = titleColor;
    }

    public void showDialog() {
        if (this.mCustomDialog == null || !this.mCustomDialog.isShowing()) {
            CustomDialog.Builder dialog = new CustomDialog.Builder(this.context);
            dialog.setTitle(this.dialogTitle);
            if (this.dialogMessage != null) {
                dialog.setMessage(this.dialogMessage);
            } else {
                dialog.setContentView(this.dialogView);
            }
            if (this.clickOutIsCancle) {
                dialog.setClickOutIsCancle(true);
            } else {
                dialog.setClickOutIsCancle(false);
            }
            if (this.isSpan) {
                dialog.setSpan(true);
            }
            if (this.mGravity != -1) {
                dialog.setGravity(this.mGravity);
            }
            if (this.isShowVirtKey) {
                dialog.setShowVirtKey(true);
            } else {
                dialog.setShowVirtKey(false);
            }
            this.mCustomDialog = dialog.setRightButton(this.rightBtnText, new DialogInterface.OnClickListener() { // from class: com.fimi.widget.DialogManager.3
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int which) {
                    dialogInterface.dismiss();
                    if (DialogManager.this.listener != null) {
                        DialogManager.this.listener.dialogBtnRightOrSingleListener(DialogManager.this.dialogView, dialogInterface, which);
                    }
                }
            }).setLeftButton(this.leftBtnText, new DialogInterface.OnClickListener() { // from class: com.fimi.widget.DialogManager.2
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int which) {
                    dialogInterface.dismiss();
                    if (DialogManager.this.listener != null) {
                        DialogManager.this.listener.dialogBtnLeftListener(DialogManager.this.dialogView, dialogInterface, which);
                    }
                }
            }).setSingleButton(this.singleBtnText, new DialogInterface.OnClickListener() { // from class: com.fimi.widget.DialogManager.1
                @Override // android.content.DialogInterface.OnClickListener
                public void onClick(DialogInterface dialogInterface, int which) {
                    dialogInterface.dismiss();
                    if (DialogManager.this.listener != null) {
                        DialogManager.this.listener.dialogBtnRightOrSingleListener(DialogManager.this.dialogView, dialogInterface, which);
                    }
                }
            }).setRightButtonColor(this.rightButtonColor).setLeftButtonColor(this.leftButtonColor).setSingleButtonColor(this.singleButtonColor).setTitleColor(this.titleColor).setSingle(this.isSingle).setDissmssListener(this.onDismissListener).setVerticalScreen(this.isVerticalScreen).create();
            this.mCustomDialog.show();
        }
    }

    public void showPosition(Context context, int d_width, int d_height, int gravity) {
        if (this.mCustomDialog != null) {
            Window dialogWindow = this.mCustomDialog.getWindow();
            WindowManager.LayoutParams lp = dialogWindow.getAttributes();
            if (gravity == 0) {
                dialogWindow.setGravity(17);
            } else {
                dialogWindow.setGravity(gravity);
            }
            dialogWindow.setAttributes(lp);
        }
    }

    public void dismissDialog() {
        if (this.mCustomDialog != null) {
            this.mCustomDialog.dismiss();
        }
    }

    public CustomDialog getDialog() {
        return this.mCustomDialog;
    }

    public DialogManager setOnDiaLogListener(OnDialogListener listener) {
        this.listener = listener;
        return this;
    }

    public DialogManager setOnDissmissListener(OnDismissListener listener) {
        this.onDismissListener = listener;
        return this;
    }
}
