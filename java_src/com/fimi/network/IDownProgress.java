package com.fimi.network;

import com.fimi.network.DownFwService;
/* loaded from: classes.dex */
public interface IDownProgress {
    void onProgress(DownFwService.DownState downState, int i, String str);
}
