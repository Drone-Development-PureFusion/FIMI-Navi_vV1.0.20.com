package com.fimi.app.x8s.controls.aifly.confirm.module;

import android.app.Activity;
import android.view.View;
import com.fimi.app.x8s.controls.X8MainAiFlyController;
import com.fimi.app.x8s.controls.aifly.confirm.p010ui.X8AiSarConfirmUi;
/* loaded from: classes.dex */
public class X8AiSarConfirmModule extends X8BaseModule {
    private X8AiSarConfirmUi mUi;

    @Override // com.fimi.app.x8s.controls.aifly.confirm.module.X8BaseModule
    public void init(Activity activity, View rootView) {
        this.mUi = new X8AiSarConfirmUi(activity, rootView);
    }

    @Override // com.fimi.app.x8s.controls.aifly.confirm.module.X8BaseModule
    public void setFcHeart(boolean isInSky, boolean isLowPower) {
        this.mUi.setFcHeart(isInSky, isLowPower);
    }

    public void setListener(X8MainAiFlyController mX8MainAiFlyController) {
        this.mUi.setX8MainAiFlyController(mX8MainAiFlyController);
    }
}
