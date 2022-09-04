package com.fimi.app.x8s.controls.camera;

import android.annotation.SuppressLint;
import android.os.Handler;
import android.os.Message;
import android.view.View;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import com.fimi.app.x8s.C0885R;
import com.fimi.app.x8s.interfaces.AbsX8MenuBoxControllers;
import com.fimi.kernel.utils.AbViewUtil;
import com.fimi.x8sdk.controller.CameraManager;
/* loaded from: classes.dex */
public class X8CameraInterestMeteringController extends AbsX8MenuBoxControllers implements View.OnClickListener {
    private CameraManager cameraManager;
    private int interestMeteringIndex;
    private boolean isLockEv;
    private int leftX;
    private View parentView;
    private int topY;
    private ImageView x8IvInterestMetering;
    private final int MSG_METERING = 1;
    private final int MSG_LOCK_EV = 2;
    private final int DELAYED_TIME = 5000;
    @SuppressLint({"HandlerLeak"})
    private Handler handler = new Handler() { // from class: com.fimi.app.x8s.controls.camera.X8CameraInterestMeteringController.1
        @Override // android.os.Handler
        public void handleMessage(Message msg) {
            super.handleMessage(msg);
            int msgID = msg.what;
            if (msgID == 1) {
                X8CameraInterestMeteringController.this.x8IvInterestMetering.setVisibility(8);
            } else if (msgID == 2) {
                X8CameraInterestMeteringController.this.x8IvInterestMetering.setAlpha(0.5f);
            }
        }
    };

    public X8CameraInterestMeteringController(View rootView) {
        super(rootView);
    }

    public void setCameraManager(CameraManager cameraManager) {
        this.cameraManager = cameraManager;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int id = view.getId();
        if (id == C0885R.C0889id.x8_iv_interest_metering) {
            if (this.isLockEv) {
                this.x8IvInterestMetering.setVisibility(8);
                this.isLockEv = false;
                this.handler.removeMessages(2);
                return;
            }
            this.cameraManager.setInterestMetering((this.interestMeteringIndex + 24) + "");
            this.x8IvInterestMetering.setImageResource(C0885R.C0888drawable.x8_camera_interest_metering_pressed);
            this.isLockEv = true;
            this.handler.removeMessages(1);
            this.handler.sendEmptyMessageDelayed(2, 5000L);
        }
    }

    @Override // com.fimi.app.x8s.interfaces.IControllers
    public void initViews(View rootView) {
        this.parentView = rootView.findViewById(C0885R.C0889id.x8_rl_interest_merering);
        this.x8IvInterestMetering = (ImageView) this.parentView.findViewById(C0885R.C0889id.x8_iv_interest_metering);
        this.x8IvInterestMetering.setOnClickListener(this);
    }

    @Override // com.fimi.app.x8s.interfaces.IControllers
    public void initActions() {
    }

    @Override // com.fimi.app.x8s.interfaces.IControllers
    public void defaultVal() {
    }

    public void setImageViewXY(float x, float y) {
        int i = 220;
        if (this.isLockEv && this.x8IvInterestMetering.getVisibility() == 0) {
            this.x8IvInterestMetering.setAlpha(1.0f);
            this.handler.removeMessages(2);
            this.handler.sendEmptyMessageDelayed(2, 5000L);
            return;
        }
        this.interestMeteringIndex = AbViewUtil.xyToBox(this.parentView.getContext(), x, y);
        this.cameraManager.setInterestMetering(this.interestMeteringIndex + "");
        this.handler.removeMessages(1);
        RelativeLayout.LayoutParams params = (RelativeLayout.LayoutParams) this.x8IvInterestMetering.getLayoutParams();
        this.leftX = (int) (x - ((this.x8IvInterestMetering.getWidth() == 0 ? 220 : this.x8IvInterestMetering.getWidth()) / 2));
        if (AbViewUtil.getScreenWidth(this.rootView.getContext()) - this.x8IvInterestMetering.getWidth() < this.leftX) {
            this.leftX = AbViewUtil.getScreenWidth(this.rootView.getContext());
        }
        if (this.x8IvInterestMetering.getHeight() != 0) {
            i = this.x8IvInterestMetering.getHeight();
        }
        this.topY = (int) (y - (i / 2));
        if (AbViewUtil.getScreenHeight(this.rootView.getContext()) - this.x8IvInterestMetering.getHeight() < this.topY) {
            this.topY = AbViewUtil.getScreenHeight(this.rootView.getContext());
        }
        params.topMargin = this.topY;
        params.leftMargin = this.leftX;
        this.x8IvInterestMetering.setLayoutParams(params);
        this.x8IvInterestMetering.setVisibility(0);
        this.x8IvInterestMetering.setAlpha(1.0f);
        this.x8IvInterestMetering.setImageResource(C0885R.C0888drawable.x8_camera_interest_metering);
        this.handler.sendEmptyMessageDelayed(1, 5000L);
    }

    public void setIvInterestMeteringVisibility(int visibility) {
        this.x8IvInterestMetering.setVisibility(visibility);
    }

    public int getIvInterestMeteringVisibility() {
        return this.x8IvInterestMetering.getVisibility();
    }
}
