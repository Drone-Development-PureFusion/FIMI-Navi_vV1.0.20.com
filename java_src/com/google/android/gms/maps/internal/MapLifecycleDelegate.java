package com.google.android.gms.maps.internal;

import com.google.android.gms.common.internal.Hide;
import com.google.android.gms.dynamic.LifecycleDelegate;
import com.google.android.gms.maps.OnMapReadyCallback;
@Hide
/* loaded from: classes2.dex */
public interface MapLifecycleDelegate extends LifecycleDelegate {
    void getMapAsync(OnMapReadyCallback onMapReadyCallback);
}
