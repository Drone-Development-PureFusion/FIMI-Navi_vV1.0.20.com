package com.google.android.gms.common;

import android.content.Intent;
import com.google.android.gms.common.internal.Hide;
/* loaded from: classes2.dex */
public class GooglePlayServicesRepairableException extends UserRecoverableException {
    private final int zzehy;

    @Hide
    public GooglePlayServicesRepairableException(int i, String str, Intent intent) {
        super(str, intent);
        this.zzehy = i;
    }

    public int getConnectionStatusCode() {
        return this.zzehy;
    }
}
