package com.fimi.widget;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.text.TextPaint;
import android.text.method.ScrollingMovementMethod;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.fimi.sdk.C1787R;
/* loaded from: classes.dex */
public class FirmwareUpdateDialog extends Dialog {
    public FirmwareUpdateDialog(Context context) {
        super(context);
    }

    public FirmwareUpdateDialog(Context context, int themeResId) {
        super(context, themeResId);
    }

    /* loaded from: classes.dex */
    public static class Builder {
        private View contentView;
        private Context context;
        private String delcare;
        private DialogInterface.OnClickListener leftButtonClickListener;
        private String leftButtonText;
        private String message;
        private DialogInterface.OnClickListener rightButtonClickListener;
        private String rightButtonText;
        private DialogInterface.OnClickListener singleButtonClickListener;
        private String singleButtonText;
        private String subTitle;
        private String title;
        private boolean isSingle = false;
        private boolean clickOutIsCancle = false;

        public Builder(Context context) {
            this.context = context;
        }

        public Builder setMessage(String message) {
            this.message = message;
            return this;
        }

        public Builder setSubTitle(String subTitle) {
            this.subTitle = subTitle;
            return this;
        }

        public Builder setDelcare(String delcare) {
            this.delcare = delcare;
            return this;
        }

        public Builder setMessage(int message) {
            this.message = (String) this.context.getText(message);
            return this;
        }

        public Builder setSingle(boolean single) {
            this.isSingle = single;
            return this;
        }

        public Builder setTitle(int title) {
            this.title = (String) this.context.getText(title);
            return this;
        }

        public Builder setTitle(String title) {
            this.title = title;
            return this;
        }

        public Builder setContentView(View v) {
            this.contentView = v;
            return this;
        }

        public Builder setRightButton(int rightButtonText, DialogInterface.OnClickListener listener) {
            this.rightButtonText = (String) this.context.getText(rightButtonText);
            this.rightButtonClickListener = listener;
            return this;
        }

        public Builder setRightButton(String rightButtonText, DialogInterface.OnClickListener listener) {
            this.rightButtonText = rightButtonText;
            this.rightButtonClickListener = listener;
            return this;
        }

        public Builder setSingleButton(int singleButtonText, DialogInterface.OnClickListener listener) {
            this.singleButtonText = (String) this.context.getText(singleButtonText);
            this.singleButtonClickListener = listener;
            return this;
        }

        public Builder setSingleButton(String singleButtonText, DialogInterface.OnClickListener listener) {
            this.singleButtonText = singleButtonText;
            this.singleButtonClickListener = listener;
            return this;
        }

        public Builder setLeftButton(int negativeButtonText, DialogInterface.OnClickListener listener) {
            this.leftButtonText = (String) this.context.getText(negativeButtonText);
            this.leftButtonClickListener = listener;
            return this;
        }

        public Builder setLeftButton(String leftButtonText, DialogInterface.OnClickListener listener) {
            this.leftButtonText = leftButtonText;
            this.leftButtonClickListener = listener;
            return this;
        }

        public Builder setClickOutIsCancle(boolean clickOutIsCancle) {
            this.clickOutIsCancle = clickOutIsCancle;
            return this;
        }

        public FirmwareUpdateDialog create() {
            LayoutInflater inflater = (LayoutInflater) this.context.getSystemService("layout_inflater");
            final FirmwareUpdateDialog dialog = new FirmwareUpdateDialog(this.context, C1787R.style.fimisdk_custom_dialog);
            View layout = inflater.inflate(C1787R.layout.fimisdk_dialog_fimware_update, (ViewGroup) null);
            dialog.addContentView(layout, new LinearLayout.LayoutParams(-1, -2));
            if (this.rightButtonText != null) {
                ((Button) layout.findViewById(C1787R.C1791id.btn_right)).setText(this.rightButtonText);
                if (this.rightButtonClickListener != null) {
                    ((Button) layout.findViewById(C1787R.C1791id.btn_right)).setOnClickListener(new View.OnClickListener() { // from class: com.fimi.widget.FirmwareUpdateDialog.Builder.1
                        @Override // android.view.View.OnClickListener
                        public void onClick(View v) {
                            Builder.this.rightButtonClickListener.onClick(dialog, -1);
                        }
                    });
                }
            }
            if (this.leftButtonText != null) {
                ((Button) layout.findViewById(C1787R.C1791id.btn_left)).setText(this.leftButtonText);
                if (this.leftButtonClickListener != null) {
                    ((Button) layout.findViewById(C1787R.C1791id.btn_left)).setOnClickListener(new View.OnClickListener() { // from class: com.fimi.widget.FirmwareUpdateDialog.Builder.2
                        @Override // android.view.View.OnClickListener
                        public void onClick(View v) {
                            Builder.this.leftButtonClickListener.onClick(dialog, -2);
                        }
                    });
                }
            }
            if (this.message != null) {
                ((TextView) layout.findViewById(C1787R.C1791id.tv_content)).setText(this.message);
                ((TextView) layout.findViewById(C1787R.C1791id.tv_content)).setMovementMethod(new ScrollingMovementMethod());
            }
            if (this.title != null) {
                ((TextView) layout.findViewById(C1787R.C1791id.tv_title)).setText(this.title);
                setBoldText((TextView) layout.findViewById(C1787R.C1791id.tv_title));
            }
            if (this.isSingle) {
                layout.findViewById(C1787R.C1791id.rl_double).setVisibility(4);
                layout.findViewById(C1787R.C1791id.btn_single).setVisibility(0);
            } else {
                layout.findViewById(C1787R.C1791id.rl_double).setVisibility(0);
                layout.findViewById(C1787R.C1791id.btn_single).setVisibility(4);
            }
            if (this.subTitle != null) {
                ((TextView) layout.findViewById(C1787R.C1791id.tv_sub_title)).setText(this.subTitle);
            }
            if (this.delcare != null) {
                ((TextView) layout.findViewById(C1787R.C1791id.tv_delcare)).setText(this.delcare);
            }
            if (this.clickOutIsCancle) {
                dialog.setCanceledOnTouchOutside(false);
                dialog.setCancelable(false);
            } else {
                dialog.setCanceledOnTouchOutside(true);
                dialog.setCancelable(true);
            }
            dialog.setContentView(layout);
            return dialog;
        }

        private void setBoldText(TextView textView) {
            TextPaint tp = textView.getPaint();
            tp.setFakeBoldText(true);
        }
    }
}
