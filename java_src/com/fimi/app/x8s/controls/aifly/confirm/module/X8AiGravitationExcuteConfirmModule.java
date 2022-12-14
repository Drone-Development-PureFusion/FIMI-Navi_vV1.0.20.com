package com.fimi.app.x8s.controls.aifly.confirm.module;

import android.view.View;
import com.fimi.app.x8s.controls.aifly.confirm.p010ui.X8AiGravitationExcuteComfirmUi;
import com.fimi.app.x8s.interfaces.IX8NextViewListener;
import com.fimi.app.x8s.p011ui.activity.X8sMainActivity;
import com.fimi.x8sdk.controller.CameraManager;
import com.fimi.x8sdk.controller.FcManager;
/* loaded from: classes.dex */
public class X8AiGravitationExcuteConfirmModule extends X8BaseModule {
    private X8AiGravitationExcuteComfirmUi mX8AiGravitationExcuteComfirmUi;

    public void init(X8sMainActivity activity, View rootView, CameraManager cameraManager) {
        this.mX8AiGravitationExcuteComfirmUi = new X8AiGravitationExcuteComfirmUi(activity, rootView, cameraManager);
    }

    @Override // com.fimi.app.x8s.controls.aifly.confirm.module.X8BaseModule
    public void setFcHeart(boolean isInSky, boolean isLowPower) {
        this.mX8AiGravitationExcuteComfirmUi.setFcHeart(isInSky, isLowPower);
    }

    public void setsetListener(IX8NextViewListener listener, FcManager fcManager) {
        this.mX8AiGravitationExcuteComfirmUi.setListener(listener, fcManager);
    }
}
