package com.fimi.x8sdk.listener;

import com.fimi.x8sdk.dataparser.AutoFcSportState;
import com.fimi.x8sdk.modulestate.GimbalState;
/* loaded from: classes2.dex */
public interface FcSportStateListener {
    void showGimbalState(GimbalState gimbalState);

    void showSportState(AutoFcSportState autoFcSportState);
}
