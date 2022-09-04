package com.twitter.sdk.android.core.internal.scribe;

import java.io.IOException;
/* loaded from: classes2.dex */
public interface FileRollOverManager {
    void cancelTimeBasedFileRollOver();

    boolean rollFileOver() throws IOException;

    void scheduleTimeBasedRollOverIfNeeded();
}
