package com.fimi.app.x8s.controls.aifly;

import android.app.Activity;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import com.fimi.app.x8s.C0885R;
import com.fimi.app.x8s.X8Application;
import com.fimi.app.x8s.enums.X8AiTLRState;
import com.fimi.app.x8s.interfaces.AbsX8AiController;
import com.fimi.app.x8s.interfaces.IX8TLRListener;
import com.fimi.app.x8s.widget.X8DoubleCustomDialog;
import com.fimi.kernel.dataparser.usb.CmdResult;
import com.fimi.kernel.dataparser.usb.UiCallBackListener;
import com.fimi.widget.X8ToastUtil;
import com.fimi.x8sdk.controller.FcManager;
import com.fimi.x8sdk.modulestate.StateManager;
/* loaded from: classes.dex */
public class X8AiTakeoffLandingReturnHomeExcuteController extends AbsX8AiController implements View.OnClickListener, X8DoubleCustomDialog.onDialogButtonClickListener {
    protected int MAX_WIDTH;
    private Activity activity;
    private X8DoubleCustomDialog dialog;
    private FcManager fcManager;
    private View flagSmall;
    private ImageView imgBack;
    private ImageView imgSmall;
    protected boolean isShow;
    private IX8TLRListener listener;
    private TextView tvTakeLandReturn;
    private int type;
    protected int width = X8Application.ANIMATION_WIDTH;
    X8AiTLRState state = X8AiTLRState.IDLE;

    @Override // com.fimi.app.x8s.widget.X8DoubleCustomDialog.onDialogButtonClickListener
    public void onLeft() {
    }

    @Override // com.fimi.app.x8s.widget.X8DoubleCustomDialog.onDialogButtonClickListener
    public void onRight() {
        if (this.state == X8AiTLRState.RUNING) {
            taskExit();
        }
    }

    public X8AiTakeoffLandingReturnHomeExcuteController(Activity activity, View rootView, int type) {
        super(rootView);
        this.activity = activity;
        this.type = type;
    }

    public void setListener(IX8TLRListener listener) {
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

    @Override // android.view.View.OnClickListener
    public void onClick(View v) {
        int id = v.getId();
        if (id == C0885R.C0889id.img_ai_follow_back) {
            if (this.state == X8AiTLRState.RUNING) {
                showExitDialog();
            }
        } else if (id == C0885R.C0889id.rl_flag_small) {
            if (this.tvTakeLandReturn.getVisibility() == 0) {
                this.tvTakeLandReturn.setVisibility(8);
            } else {
                this.tvTakeLandReturn.setVisibility(0);
            }
        }
    }

    @Override // com.fimi.app.x8s.interfaces.AbsX8AiController, com.fimi.app.x8s.interfaces.AbsX8Controllers, com.fimi.app.x8s.interfaces.IControllers
    public void openUi() {
        this.isShow = true;
        LayoutInflater inflater = LayoutInflater.from(this.rootView.getContext());
        this.handleView = inflater.inflate(C0885R.layout.x8_ai_takeoff_landing_return_excute_layout, (ViewGroup) this.rootView, true);
        this.imgBack = (ImageView) this.handleView.findViewById(C0885R.C0889id.img_ai_follow_back);
        this.tvTakeLandReturn = (TextView) this.handleView.findViewById(C0885R.C0889id.tv_take_land_return);
        this.flagSmall = this.handleView.findViewById(C0885R.C0889id.rl_flag_small);
        this.imgSmall = (ImageView) this.handleView.findViewById(C0885R.C0889id.img_ai_flag_small);
        this.imgBack.setOnClickListener(this);
        this.flagSmall.setOnClickListener(this);
        showTaskView();
        super.openUi();
    }

    @Override // com.fimi.app.x8s.interfaces.AbsX8AiController, com.fimi.app.x8s.interfaces.AbsX8Controllers, com.fimi.app.x8s.interfaces.IControllers
    public void closeUi() {
        this.isShow = false;
        this.state = X8AiTLRState.IDLE;
        super.closeUi();
    }

    public void setFcManager(FcManager fcManager) {
        this.fcManager = fcManager;
    }

    public void showTaskView() {
        if (this.state == X8AiTLRState.IDLE) {
            this.state = X8AiTLRState.RUNING;
            if (this.listener != null) {
                this.listener.onRunning();
            }
            String t = "";
            int res = 0;
            if (this.type == 2) {
                t = this.rootView.getContext().getString(C0885R.string.x8_ai_fly_take_off);
                res = C0885R.C0888drawable.x8_img_take_off_small;
            } else if (this.type == 3) {
                t = this.rootView.getContext().getString(C0885R.string.x8_ai_fly_land_off);
                res = C0885R.C0888drawable.x8_img_landing_small;
            } else if (this.type == 7) {
                t = this.rootView.getContext().getString(C0885R.string.x8_ai_fly_return_home);
                res = C0885R.C0888drawable.x8_img_return_small;
            } else if (this.type == 8) {
                t = this.rootView.getContext().getString(C0885R.string.x8_ai_fly_disconnect_return_home);
                res = C0885R.C0888drawable.x8_img_return_small;
            } else if (this.type == 9) {
                t = this.rootView.getContext().getString(C0885R.string.x8_ai_fly_lowpower_return_home);
                res = C0885R.C0888drawable.x8_img_return_small;
            }
            this.tvTakeLandReturn.setText(t);
            this.imgSmall.setBackgroundResource(res);
        }
    }

    @Override // com.fimi.app.x8s.interfaces.AbsX8Controllers
    public boolean isShow() {
        return this.isShow;
    }

    public void showExitDialog() {
        String t = "";
        String m = "";
        if (this.type == 2) {
            t = this.rootView.getContext().getString(C0885R.string.x8_ai_fly_take_off);
            m = this.rootView.getContext().getString(C0885R.string.x8_ai_fly_takeland_exit);
        } else if (this.type == 3) {
            t = this.rootView.getContext().getString(C0885R.string.x8_ai_fly_land_off);
            m = this.rootView.getContext().getString(C0885R.string.x8_ai_fly_takeland_exit);
        } else if (this.type == 7) {
            t = this.rootView.getContext().getString(C0885R.string.x8_ai_fly_return_home);
            m = this.rootView.getContext().getString(C0885R.string.x8_ai_fly_return_exit);
        } else if (this.type == 8) {
            t = this.rootView.getContext().getString(C0885R.string.x8_ai_fly_disconnect_return_home);
            m = this.rootView.getContext().getString(C0885R.string.x8_ai_fly_return_exit);
        } else if (this.type == 9) {
            t = this.rootView.getContext().getString(C0885R.string.x8_ai_fly_lowpower_return_home);
            m = this.rootView.getContext().getString(C0885R.string.x8_ai_fly_return_exit);
        }
        this.dialog = new X8DoubleCustomDialog(this.rootView.getContext(), t, m, this);
        this.dialog.show();
    }

    public void taskExit() {
        this.state = X8AiTLRState.STOP;
        if (this.type == 2) {
            this.fcManager.takeOffExit(new UiCallBackListener() { // from class: com.fimi.app.x8s.controls.aifly.X8AiTakeoffLandingReturnHomeExcuteController.1
                @Override // com.fimi.kernel.dataparser.usb.UiCallBackListener
                public void onComplete(CmdResult cmdResult, Object o) {
                    if (cmdResult.isSuccess()) {
                        X8AiTakeoffLandingReturnHomeExcuteController.this.state = X8AiTLRState.WAIT_EXIT;
                        return;
                    }
                    X8AiTakeoffLandingReturnHomeExcuteController.this.state = X8AiTLRState.RUNING;
                }
            });
        } else if (this.type == 3) {
            this.fcManager.landExit(new UiCallBackListener() { // from class: com.fimi.app.x8s.controls.aifly.X8AiTakeoffLandingReturnHomeExcuteController.2
                @Override // com.fimi.kernel.dataparser.usb.UiCallBackListener
                public void onComplete(CmdResult cmdResult, Object o) {
                    if (cmdResult.isSuccess()) {
                        X8AiTakeoffLandingReturnHomeExcuteController.this.state = X8AiTLRState.WAIT_EXIT;
                        return;
                    }
                    X8AiTakeoffLandingReturnHomeExcuteController.this.state = X8AiTLRState.RUNING;
                }
            });
        } else if (this.type == 7) {
            this.fcManager.setAiRetureHomeExite(new UiCallBackListener() { // from class: com.fimi.app.x8s.controls.aifly.X8AiTakeoffLandingReturnHomeExcuteController.3
                @Override // com.fimi.kernel.dataparser.usb.UiCallBackListener
                public void onComplete(CmdResult cmdResult, Object o) {
                    if (cmdResult.isSuccess()) {
                        X8AiTakeoffLandingReturnHomeExcuteController.this.state = X8AiTLRState.WAIT_EXIT;
                        return;
                    }
                    X8AiTakeoffLandingReturnHomeExcuteController.this.state = X8AiTLRState.RUNING;
                    if (cmdResult.getmMsgRpt() == 50) {
                        X8ToastUtil.showToast(X8AiTakeoffLandingReturnHomeExcuteController.this.rootView.getContext(), X8AiTakeoffLandingReturnHomeExcuteController.this.getString(C0885R.string.x8_ai_fly_return_home_error), 0);
                    }
                }
            });
        } else if (this.type == 8) {
            this.fcManager.setAiRetureHomeExite(new UiCallBackListener() { // from class: com.fimi.app.x8s.controls.aifly.X8AiTakeoffLandingReturnHomeExcuteController.4
                @Override // com.fimi.kernel.dataparser.usb.UiCallBackListener
                public void onComplete(CmdResult cmdResult, Object o) {
                    if (cmdResult.isSuccess()) {
                        X8AiTakeoffLandingReturnHomeExcuteController.this.state = X8AiTLRState.WAIT_EXIT;
                        return;
                    }
                    X8AiTakeoffLandingReturnHomeExcuteController.this.state = X8AiTLRState.RUNING;
                }
            });
        } else if (this.type == 9) {
            this.fcManager.setAiRetureHomeExite(new UiCallBackListener() { // from class: com.fimi.app.x8s.controls.aifly.X8AiTakeoffLandingReturnHomeExcuteController.5
                @Override // com.fimi.kernel.dataparser.usb.UiCallBackListener
                public void onComplete(CmdResult cmdResult, Object o) {
                    if (cmdResult.isSuccess()) {
                        X8AiTakeoffLandingReturnHomeExcuteController.this.state = X8AiTLRState.WAIT_EXIT;
                        return;
                    }
                    X8AiTakeoffLandingReturnHomeExcuteController.this.state = X8AiTLRState.RUNING;
                }
            });
        }
    }

    @Override // com.fimi.app.x8s.interfaces.AbsX8Controllers
    public void onDroneConnected(boolean b) {
        if (this.isShow && !b && this.state != X8AiTLRState.IDLE) {
            ononDroneDisconnectedTaskComplete();
        }
    }

    public void onTaskComplete(boolean isShow) {
        closeUi();
        String t = "";
        if (this.type == 2) {
            t = this.rootView.getContext().getString(C0885R.string.x8_ai_fly_take_off_complete);
            isShow = false;
        } else if (this.type == 3) {
            t = this.rootView.getContext().getString(C0885R.string.x8_ai_fly_land_complete);
            isShow = false;
        } else if (this.type == 7) {
            t = this.rootView.getContext().getString(C0885R.string.x8_ai_fly_return_home_complete);
            isShow = false;
        } else if (this.type == 8) {
            t = this.rootView.getContext().getString(C0885R.string.x8_ai_fly_disconnect_return_home_complete);
            isShow = false;
        } else if (this.type == 9) {
            t = this.rootView.getContext().getString(C0885R.string.x8_ai_fly_lowpower_return_home_complete);
            isShow = false;
        }
        if (this.listener != null) {
            this.listener.onComplete(t, isShow);
        }
    }

    public void ononDroneDisconnectedTaskComplete() {
        StateManager.getInstance().getX8Drone().resetCtrlMode();
        closeUi();
        String t = "";
        if (this.type == 2) {
            t = this.rootView.getContext().getString(C0885R.string.x8_ai_fly_take_off_complete);
        } else if (this.type == 3) {
            t = this.rootView.getContext().getString(C0885R.string.x8_ai_fly_land_complete);
        } else if (this.type == 7) {
            t = this.rootView.getContext().getString(C0885R.string.x8_ai_fly_return_home_complete);
        } else if (this.type == 8) {
            t = this.rootView.getContext().getString(C0885R.string.x8_ai_fly_disconnect_return_home_complete);
        } else if (this.type == 9) {
            t = this.rootView.getContext().getString(C0885R.string.x8_ai_fly_lowpower_return_home_complete);
        }
        if (this.listener != null) {
            this.listener.onComplete(t, false);
        }
    }

    @Override // com.fimi.app.x8s.interfaces.IControllers
    public boolean onClickBackKey() {
        return false;
    }

    public void cancleByModeChange(int taskMode) {
        boolean z = true;
        if (taskMode != 1) {
            z = false;
        }
        onTaskComplete(z);
    }
}
