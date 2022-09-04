package com.fimi.app.x8s.widget;

import android.content.Context;
import android.support.annotation.NonNull;
import android.support.annotation.Nullable;
import android.view.View;
import android.widget.ImageView;
import android.widget.TextView;
import com.fimi.app.x8s.C0885R;
import com.fimi.app.x8s.tools.ImageUtils;
import com.fimi.app.x8s.tools.X8NumberUtil;
import com.fimi.app.x8s.widget.X8DoubleCustomDialog;
import com.fimi.x8sdk.common.GlobalConfig;
import com.fimi.x8sdk.dataparser.AutoFcSportState;
import com.fimi.x8sdk.modulestate.StateManager;
/* loaded from: classes.dex */
public class X8TLRDialog extends X8sBaseDialog {
    private boolean isNeedChange;
    float temp = 0.0f;
    int res = 0;
    int tmpRes = 0;
    private String prex = getContext().getString(C0885R.string.x8_ai_fly_return_home_tip);
    private TextView tvMessage = (TextView) findViewById(C0885R.C0889id.tv_message);
    private TextView tvTitle = (TextView) findViewById(C0885R.C0889id.tv_title);
    private ImageView imgFlag = (ImageView) findViewById(C0885R.C0889id.img_ai_return_flag);

    public X8TLRDialog(@NonNull Context context, @Nullable String title, @NonNull String message, boolean isNeedChange, int drawId, @NonNull final X8DoubleCustomDialog.onDialogButtonClickListener listener) {
        super(context, C0885R.style.fimisdk_custom_dialog);
        setContentView(C0885R.layout.x8_return_dialog_custom);
        this.isNeedChange = isNeedChange;
        TextView tvLeft = (TextView) findViewById(C0885R.C0889id.btn_left);
        TextView tvRight = (TextView) findViewById(C0885R.C0889id.btn_right);
        this.tvTitle.setText(title);
        tvLeft.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.app.x8s.widget.X8TLRDialog.1
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (listener != null) {
                    listener.onLeft();
                }
                X8TLRDialog.this.dismiss();
            }
        });
        tvRight.setOnClickListener(new View.OnClickListener() { // from class: com.fimi.app.x8s.widget.X8TLRDialog.2
            @Override // android.view.View.OnClickListener
            public void onClick(View v) {
                if (listener != null) {
                    listener.onRight();
                }
                X8TLRDialog.this.dismiss();
            }
        });
        if (isNeedChange) {
            AutoFcSportState state = StateManager.getInstance().getX8Drone().getFcSportState();
            if (state != null) {
                showSportState(state);
                return;
            }
            return;
        }
        this.tvMessage.setText(message);
        this.imgFlag.setImageBitmap(ImageUtils.getBitmapByPath(getContext(), drawId));
    }

    public void showSportState(AutoFcSportState state) {
        if (this.isNeedChange) {
            float h = state.getHeight();
            float d = state.getHomeDistance();
            if (d <= 10.0f) {
                boolean isOpenAccurateLanding = StateManager.getInstance().getX8Drone().isOpenAccurateLanding();
                if (h <= 3.0f) {
                    this.temp = 3.0f;
                    if (isOpenAccurateLanding) {
                        if (GlobalConfig.getInstance().isShowmMtric()) {
                            this.tmpRes = C0885R.C0888drawable.x8_img_ai_return_5;
                        } else {
                            this.tmpRes = C0885R.C0888drawable.x8_img_ai_return_ft_5;
                        }
                    } else if (GlobalConfig.getInstance().isShowmMtric()) {
                        this.tmpRes = C0885R.C0888drawable.x8_img_ai_return_1;
                    } else {
                        this.tmpRes = C0885R.C0888drawable.x8_img_ai_return_ft_1;
                    }
                } else {
                    this.temp = h;
                    if (isOpenAccurateLanding) {
                        if (GlobalConfig.getInstance().isShowmMtric()) {
                            this.tmpRes = C0885R.C0888drawable.x8_img_ai_return_6;
                        } else {
                            this.tmpRes = C0885R.C0888drawable.x8_img_ai_return_ft_6;
                        }
                    } else if (GlobalConfig.getInstance().isShowmMtric()) {
                        this.tmpRes = C0885R.C0888drawable.x8_img_ai_return_2;
                    } else {
                        this.tmpRes = C0885R.C0888drawable.x8_img_ai_return_ft_2;
                    }
                }
            } else if (h <= StateManager.getInstance().getX8Drone().getReturnHomeHight()) {
                if (GlobalConfig.getInstance().isNewHand()) {
                    StateManager.getInstance().getX8Drone().getClass();
                    this.temp = 30.0f;
                } else {
                    this.temp = StateManager.getInstance().getX8Drone().getReturnHomeHight();
                }
                if (GlobalConfig.getInstance().isShowmMtric()) {
                    this.tmpRes = C0885R.C0888drawable.x8_img_ai_return_3;
                } else {
                    this.tmpRes = C0885R.C0888drawable.x8_img_ai_return_ft_3;
                }
            } else {
                this.temp = h;
                if (GlobalConfig.getInstance().isShowmMtric()) {
                    this.tmpRes = C0885R.C0888drawable.x8_img_ai_return_4;
                } else {
                    this.tmpRes = C0885R.C0888drawable.x8_img_ai_return_ft_4;
                }
            }
            String s = String.format(this.prex, X8NumberUtil.getDistanceNumberString(this.temp, 1, true));
            this.tvMessage.setText(s);
            if (this.tmpRes != 0 && this.tmpRes != this.res) {
                this.res = this.tmpRes;
                this.imgFlag.setImageBitmap(ImageUtils.getBitmapByPath(getContext(), this.res));
            }
        }
    }
}
