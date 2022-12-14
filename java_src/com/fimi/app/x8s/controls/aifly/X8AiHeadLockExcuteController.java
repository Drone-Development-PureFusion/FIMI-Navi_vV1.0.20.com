package com.fimi.app.x8s.controls.aifly;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.animation.ObjectAnimator;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.fimi.app.x8s.C0885R;
import com.fimi.app.x8s.X8Application;
import com.fimi.app.x8s.interfaces.AbsX8AiController;
import com.fimi.app.x8s.interfaces.IX8AiHeadLockListener;
import com.fimi.app.x8s.p011ui.activity.X8sMainActivity;
import com.fimi.app.x8s.tools.ImageUtils;
import com.fimi.app.x8s.widget.X8DoubleCustomDialog;
import com.fimi.kernel.dataparser.usb.CmdResult;
import com.fimi.kernel.dataparser.usb.UiCallBackListener;
import com.fimi.x8sdk.controller.FcCtrlManager;
import com.fimi.x8sdk.dataparser.AutoFcSportState;
import com.fimi.x8sdk.modulestate.StateManager;
/* loaded from: classes.dex */
public class X8AiHeadLockExcuteController extends AbsX8AiController implements View.OnClickListener, X8DoubleCustomDialog.onDialogButtonClickListener {
    protected int MAX_WIDTH;
    private X8sMainActivity activity;
    private View blank;
    private Button btnOk;
    private X8DoubleCustomDialog dialog;
    private View flagSmall;
    private ImageView imgBack;
    private ImageView imgChangeAngle;
    private ImageView imgLockAngle;
    private ImageView imgLockBg;
    private boolean isNextShow;
    protected boolean isShow;
    private IX8AiHeadLockListener listener;
    private FcCtrlManager mFcCtrlManager;
    private View nextRootView;
    private String prex;
    private TextView tvAngle;
    private TextView tvFlag;
    protected int width = X8Application.ANIMATION_WIDTH;

    @Override // com.fimi.app.x8s.widget.X8DoubleCustomDialog.onDialogButtonClickListener
    public void onLeft() {
    }

    @Override // com.fimi.app.x8s.widget.X8DoubleCustomDialog.onDialogButtonClickListener
    public void onRight() {
        setTypeEnable();
    }

    public X8AiHeadLockExcuteController(X8sMainActivity activity, View rootView) {
        super(rootView);
        this.activity = activity;
    }

    public void setListener(IX8AiHeadLockListener listener) {
        this.listener = listener;
    }

    @Override // com.fimi.app.x8s.interfaces.IControllers
    public void initViews(View rootView) {
    }

    public void initViewStubViews(View view) {
    }

    @Override // com.fimi.app.x8s.interfaces.IControllers
    public void initActions() {
    }

    @Override // com.fimi.app.x8s.interfaces.IControllers
    public void defaultVal() {
    }

    @Override // com.fimi.app.x8s.interfaces.IControllers
    public boolean onClickBackKey() {
        return false;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        int id = v.getId();
        if (id == C0885R.C0889id.img_ai_follow_back) {
            showExitDialog();
        } else if (id == C0885R.C0889id.img_change_angle) {
            openNextUi();
        } else if (id == C0885R.C0889id.x8_head_lock_next_blank) {
            closeNextUi();
        } else if (id == C0885R.C0889id.btn_ai_follow_confirm_ok) {
            updateHead();
        } else if (id == C0885R.C0889id.rl_flag_small) {
            if (this.tvFlag.getVisibility() == 0) {
                this.tvFlag.setVisibility(8);
            } else {
                this.tvFlag.setVisibility(0);
            }
        }
    }

    @Override // com.fimi.app.x8s.interfaces.AbsX8AiController, com.fimi.app.x8s.interfaces.AbsX8Controllers, com.fimi.app.x8s.interfaces.IControllers
    public void openUi() {
        this.isShow = true;
        LayoutInflater inflater = LayoutInflater.from(this.rootView.getContext());
        this.handleView = inflater.inflate(C0885R.layout.x8_ai_head_lock_excute_layout, (ViewGroup) this.rootView, true);
        this.imgBack = (ImageView) this.handleView.findViewById(C0885R.C0889id.img_ai_follow_back);
        this.nextRootView = this.rootView.findViewById(C0885R.C0889id.v_x8_head_lock_next);
        this.blank = this.rootView.findViewById(C0885R.C0889id.x8_head_lock_next_blank);
        this.imgChangeAngle = (ImageView) this.handleView.findViewById(C0885R.C0889id.img_change_angle);
        this.imgLockBg = (ImageView) this.rootView.findViewById(C0885R.C0889id.img_lock_bg);
        this.imgLockAngle = (ImageView) this.rootView.findViewById(C0885R.C0889id.img_lock_angle);
        this.imgLockBg.setImageBitmap(ImageUtils.getBitmapByPath(this.rootView.getContext(), C0885R.C0888drawable.x8_img_head_lock_bg));
        this.imgLockAngle.setImageBitmap(ImageUtils.getBitmapByPath(this.rootView.getContext(), C0885R.C0888drawable.x8_img_head_lock_arrow));
        this.flagSmall = this.handleView.findViewById(C0885R.C0889id.rl_flag_small);
        this.tvFlag = (TextView) this.handleView.findViewById(C0885R.C0889id.tv_task_tip);
        this.listener.onAiHeadLockRunning();
        this.imgBack.setOnClickListener(this);
        this.imgChangeAngle.setOnClickListener(this);
        this.blank.setOnClickListener(this);
        this.btnOk = (Button) this.rootView.findViewById(C0885R.C0889id.btn_ai_follow_confirm_ok);
        this.btnOk.setOnClickListener(this);
        this.flagSmall.setOnClickListener(this);
        this.tvAngle = (TextView) this.rootView.findViewById(C0885R.C0889id.tv_lock_angle);
        this.prex = this.rootView.getContext().getString(C0885R.string.x8_ai_heading_lock_tip3);
        this.tvAngle.setText(String.format(this.prex, Float.valueOf(60.0f)));
        this.imgLockAngle.setRotation(60.0f);
        super.openUi();
    }

    @Override // com.fimi.app.x8s.interfaces.AbsX8AiController, com.fimi.app.x8s.interfaces.AbsX8Controllers, com.fimi.app.x8s.interfaces.IControllers
    public void closeUi() {
        this.isShow = false;
        super.closeUi();
    }

    public void openNextUi() {
        this.nextRootView.setVisibility(0);
        this.blank.setVisibility(0);
        if (!this.isNextShow) {
            this.isNextShow = true;
            this.width = X8Application.ANIMATION_WIDTH;
            ObjectAnimator animatorY = ObjectAnimator.ofFloat(this.nextRootView, "translationX", this.width, 0.0f);
            animatorY.setDuration(300L);
            animatorY.start();
        }
        this.activity.taskFullScreen(true);
    }

    public void closeNextUi() {
        this.blank.setVisibility(8);
        if (this.isNextShow) {
            this.isNextShow = false;
            ObjectAnimator translationRight = ObjectAnimator.ofFloat(this.nextRootView, "translationX", 0.0f, this.width);
            translationRight.setDuration(300L);
            translationRight.start();
            translationRight.addListener(new AnimatorListenerAdapter() { // from class: com.fimi.app.x8s.controls.aifly.X8AiHeadLockExcuteController.1
                @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
                public void onAnimationEnd(Animator animation) {
                    super.onAnimationEnd(animation);
                    X8AiHeadLockExcuteController.this.nextRootView.setVisibility(8);
                }
            });
        }
        this.activity.taskFullScreen(false);
    }

    public void setFcManager(FcCtrlManager fcManager) {
        this.mFcCtrlManager = fcManager;
    }

    @Override // com.fimi.app.x8s.interfaces.AbsX8Controllers
    public boolean isShow() {
        if (StateManager.getInstance().getX8Drone().getCtrlMode() == 12) {
            return false;
        }
        return this.isShow;
    }

    public void showExitDialog() {
        String t = this.rootView.getContext().getString(C0885R.string.x8_ai_fixedwing_exite_title);
        String m = this.rootView.getContext().getString(C0885R.string.x8_ai_heading_lock_tip5);
        this.dialog = new X8DoubleCustomDialog(this.rootView.getContext(), t, m, this);
        this.dialog.show();
    }

    public void taskExit() {
        onTaskComplete();
    }

    @Override // com.fimi.app.x8s.interfaces.AbsX8Controllers
    public void cancleByModeChange() {
        onTaskComplete();
    }

    @Override // com.fimi.app.x8s.interfaces.AbsX8Controllers
    public void onDroneConnected(boolean b) {
        if (this.isShow && !b) {
            ononDroneDisconnectedTaskComplete();
        }
    }

    private void onTaskComplete() {
        StateManager.getInstance().getX8Drone().resetCtrlMode();
        closeFixedwing();
        if (this.listener != null) {
            this.listener.onAiHeadLockComplete(true);
        }
    }

    public void ononDroneDisconnectedTaskComplete() {
        StateManager.getInstance().getX8Drone().resetCtrlMode();
        closeFixedwing();
        if (this.listener != null) {
            this.listener.onAiHeadLockComplete(false);
        }
    }

    private void closeFixedwing() {
        closeUi();
        if (this.listener != null) {
            this.listener.onAiHeadLockBackClick();
        }
    }

    public void showSportState(AutoFcSportState state) {
        float angle = state.getDeviceAngle();
        this.tvAngle.setText(String.format(this.prex, Float.valueOf(angle)));
        this.imgLockAngle.setRotation(angle);
    }

    public void setTypeEnable() {
        this.mFcCtrlManager.setDisenableHeadingFree(new UiCallBackListener() { // from class: com.fimi.app.x8s.controls.aifly.X8AiHeadLockExcuteController.2
            @Override // com.fimi.kernel.dataparser.usb.UiCallBackListener
            public void onComplete(CmdResult cmdResult, Object o) {
                if (cmdResult.isSuccess()) {
                    X8AiHeadLockExcuteController.this.taskExit();
                }
            }
        });
    }

    public void updateHead() {
        this.mFcCtrlManager.setUpdateHeadingFree(new UiCallBackListener() { // from class: com.fimi.app.x8s.controls.aifly.X8AiHeadLockExcuteController.3
            @Override // com.fimi.kernel.dataparser.usb.UiCallBackListener
            public void onComplete(CmdResult cmdResult, Object o) {
                if (cmdResult.isSuccess()) {
                    X8AiHeadLockExcuteController.this.closeNextUi();
                }
            }
        });
    }
}
