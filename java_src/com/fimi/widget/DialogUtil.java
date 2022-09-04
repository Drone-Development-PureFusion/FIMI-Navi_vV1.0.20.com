package com.fimi.widget;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.graphics.drawable.ColorDrawable;
import android.graphics.drawable.Drawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.fimi.kernel.utils.AbViewUtil;
import com.fimi.sdk.C1787R;
/* loaded from: classes.dex */
public class DialogUtil extends Dialog {
    public DialogUtil(Context context) {
        super(context);
    }

    protected DialogUtil(Context context, boolean cancelable, DialogInterface.OnCancelListener cancelListener) {
        super(context, cancelable, cancelListener);
    }

    public DialogUtil(Context context, int theme) {
        super(context, theme);
    }

    /* loaded from: classes.dex */
    public static class DoubleButtonBuilder {
        private String content;
        private DialogUtil dialog;
        private boolean downLoadFirmware;
        private int ensureColor;
        private DialogInterface.OnClickListener leftButtonClickListener;
        private String leftButtonText;
        public Context mContext;
        private String message;
        private String rightButtonText;
        private DialogInterface.OnClickListener righteButtonClickListener;
        private DialogInterface.OnClickListener singleButtonClickListern;
        private String singleButtonText;
        private Drawable singleDrawable;
        private String title;
        private int rightTextButtonColor = -1;
        private int leftTextButtonColor = -1;

        public DoubleButtonBuilder(Context context) {
            this.mContext = context;
            this.dialog = new DialogUtil(this.mContext, C1787R.style.DropDialog1);
        }

        public DoubleButtonBuilder setTitle(String title) {
            this.title = title;
            return this;
        }

        public DoubleButtonBuilder setMessage(String message) {
            this.message = message;
            return this;
        }

        public DoubleButtonBuilder setRightButtonText(String rightButtonText) {
            this.rightButtonText = rightButtonText;
            return this;
        }

        public DoubleButtonBuilder setLeftButtonText(String leftButtonText) {
            this.leftButtonText = leftButtonText;
            return this;
        }

        public DoubleButtonBuilder setContent(String content) {
            this.content = content;
            return this;
        }

        public DoubleButtonBuilder setRightTextButtonColor(int rightTextButtonColor) {
            this.rightTextButtonColor = rightTextButtonColor;
            return this;
        }

        public DoubleButtonBuilder setLeftTextButtonColor(int leftTextButtonColor) {
            this.leftTextButtonColor = leftTextButtonColor;
            return this;
        }

        public DoubleButtonBuilder setRightButtonText(String rightButtonText, DialogInterface.OnClickListener listern) {
            this.rightButtonText = rightButtonText;
            this.righteButtonClickListener = listern;
            return this;
        }

        public DoubleButtonBuilder setLeftButtonText(String leftButtonText, DialogInterface.OnClickListener listener) {
            this.leftButtonText = leftButtonText;
            this.leftButtonClickListener = listener;
            return this;
        }

        public DoubleButtonBuilder setSingleButtonText(String singleButtonText, DialogInterface.OnClickListener listener) {
            this.singleButtonText = singleButtonText;
            this.singleButtonClickListern = listener;
            return this;
        }

        public DoubleButtonBuilder setSingleDrawable(Drawable singleDrawable) {
            this.singleDrawable = singleDrawable;
            return this;
        }

        public DoubleButtonBuilder setSingleButtonText(String singleButtonText) {
            this.singleButtonText = singleButtonText;
            return this;
        }

        public DoubleButtonBuilder setEnsureColor(int color) {
            this.ensureColor = color;
            return this;
        }

        public DoubleButtonBuilder setDownLoadFirmware(boolean downLoadFirmware) {
            this.downLoadFirmware = downLoadFirmware;
            return this;
        }

        public DialogUtil create() {
            View layout;
            LayoutInflater inflater = (LayoutInflater) this.mContext.getSystemService("layout_inflater");
            if (this.downLoadFirmware) {
                layout = inflater.inflate(C1787R.layout.down_firmware_dialog_content_double_button, (ViewGroup) null);
            } else if (this.content != null) {
                layout = inflater.inflate(C1787R.layout.vertical_screen_dialog_content_double_button, (ViewGroup) null);
            } else if (this.singleDrawable != null) {
                layout = inflater.inflate(C1787R.layout.vertical_screen_single_dialog_double_button, (ViewGroup) null);
            } else {
                layout = inflater.inflate(C1787R.layout.x9_screen_dialog_double_button, (ViewGroup) null);
            }
            Button leftBtn = (Button) layout.findViewById(C1787R.C1791id.left_btn);
            Button rightBtn = (Button) layout.findViewById(C1787R.C1791id.right_btn);
            TextView msgTv = (TextView) layout.findViewById(C1787R.C1791id.msg_tv);
            Button singleBtn = (Button) layout.findViewById(C1787R.C1791id.single_btn);
            if (this.rightButtonText != null) {
                rightBtn.setText(this.rightButtonText);
            }
            if (this.leftButtonText != null) {
                leftBtn.setText(this.leftButtonText);
            }
            if (this.message != null) {
                msgTv.setText(this.message);
            }
            if (this.rightTextButtonColor != -1) {
                rightBtn.setTextColor(this.rightTextButtonColor);
            }
            if (this.leftTextButtonColor != -1) {
                leftBtn.setTextColor(this.leftTextButtonColor);
            }
            if (this.righteButtonClickListener != null) {
                rightBtn.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.widget.DialogUtil.DoubleButtonBuilder.1
                    @Override // android.view.View.OnClickListener
                    public void onClick(View v) {
                        DoubleButtonBuilder.this.dialog.dismiss();
                        DoubleButtonBuilder.this.righteButtonClickListener.onClick(DoubleButtonBuilder.this.dialog, -1);
                    }
                });
            }
            if (this.leftButtonClickListener != null) {
                leftBtn.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.widget.DialogUtil.DoubleButtonBuilder.2
                    @Override // android.view.View.OnClickListener
                    public void onClick(View v) {
                        DoubleButtonBuilder.this.dialog.dismiss();
                        DoubleButtonBuilder.this.leftButtonClickListener.onClick(DoubleButtonBuilder.this.dialog, -2);
                    }
                });
            }
            if (this.singleButtonText != null) {
                singleBtn.setText(this.singleButtonText);
            }
            if (this.singleButtonClickListern != null) {
                singleBtn.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.widget.DialogUtil.DoubleButtonBuilder.3
                    @Override // android.view.View.OnClickListener
                    public void onClick(View v) {
                        DoubleButtonBuilder.this.dialog.dismiss();
                        DoubleButtonBuilder.this.singleButtonClickListern.onClick(DoubleButtonBuilder.this.dialog, -1);
                    }
                });
            }
            if (this.content != null) {
                TextView contentTv = (TextView) layout.findViewById(C1787R.C1791id.content_tv);
                contentTv.setText(this.content);
            }
            if (this.singleDrawable != null) {
                ImageView contentIv = (ImageView) layout.findViewById(C1787R.C1791id.content_iv);
                contentIv.setBackground(this.singleDrawable);
            }
            this.dialog.setContentView(layout);
            this.dialog.getWindow().setGravity(17);
            Window window = this.dialog.getWindow();
            window.setLayout((int) this.mContext.getResources().getDimension(C1787R.dimen.dialog_width), -2);
            this.dialog.getWindow().setBackgroundDrawable(new ColorDrawable(0));
            Window dialogWindow = this.dialog.getWindow();
            WindowManager.LayoutParams lp = dialogWindow.getAttributes();
            lp.alpha = 0.9f;
            window.setAttributes(lp);
            dialogWindow.setAttributes(lp);
            View decorView = this.dialog.getWindow().getDecorView();
            decorView.setBackgroundColor(0);
            return this.dialog;
        }

        public DialogUtil getDialog() {
            return this.dialog;
        }
    }

    /* loaded from: classes.dex */
    public static class ProgressDialogBuilder {
        private DialogUtil dialog;
        boolean isShowImage = false;
        private Context mContext;
        private String message;

        public ProgressDialogBuilder(Context context) {
            this.mContext = context;
            this.dialog = new DialogUtil(this.mContext, C1787R.style.DropDialog1);
        }

        public ProgressDialogBuilder setMessage(String message) {
            this.message = message;
            return this;
        }

        public ProgressDialogBuilder setMessage(String message, boolean isShowImage) {
            this.message = message;
            this.isShowImage = isShowImage;
            return this;
        }

        public DialogUtil create() {
            LayoutInflater inflater = (LayoutInflater) this.mContext.getSystemService("layout_inflater");
            View layout = inflater.inflate(C1787R.layout.x9_screen_dialog_double_button, (ViewGroup) null);
            TextView textView = (TextView) layout.findViewById(C1787R.C1791id.progress_tv);
            ImageView imageView = (ImageView) layout.findViewById(C1787R.C1791id.img_show);
            ProgressBar progressBar = (ProgressBar) layout.findViewById(C1787R.C1791id.progressBar);
            if (this.isShowImage) {
                imageView.setVisibility(0);
                progressBar.setVisibility(4);
            } else {
                imageView.setVisibility(8);
                progressBar.setVisibility(0);
            }
            if (this.message != null) {
                textView.setText(this.message);
            }
            this.dialog.setContentView(layout);
            this.dialog.getWindow().setGravity(17);
            this.dialog.getWindow().setBackgroundDrawable(new ColorDrawable(0));
            Window window = this.dialog.getWindow();
            window.setLayout((int) this.mContext.getResources().getDimension(C1787R.dimen.dialog_width), -2);
            Window dialogWindow = this.dialog.getWindow();
            WindowManager.LayoutParams lp = dialogWindow.getAttributes();
            lp.alpha = 0.9f;
            window.setAttributes(lp);
            float screenheight = AbViewUtil.getScreenHeight(this.mContext) > AbViewUtil.getScreenWidth(this.mContext) ? AbViewUtil.getScreenHeight(this.mContext) : AbViewUtil.getScreenWidth(this.mContext);
            lp.height = (int) ((218.0f * screenheight) / 1920.0f);
            dialogWindow.setAttributes(lp);
            View decorView = this.dialog.getWindow().getDecorView();
            decorView.setBackgroundColor(0);
            return this.dialog;
        }

        public DialogUtil getDialog() {
            return this.dialog;
        }
    }
}
