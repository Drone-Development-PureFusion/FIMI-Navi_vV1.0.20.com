package com.umeng.commonsdk.proguard;

import com.umeng.commonsdk.proguard.AbstractC2365l;
import com.umeng.commonsdk.proguard.AbstractC2374s;
import java.io.Serializable;
/* compiled from: TBase.java */
/* renamed from: com.umeng.commonsdk.proguard.l */
/* loaded from: classes2.dex */
public interface AbstractC2365l<T extends AbstractC2365l<?, ?>, F extends AbstractC2374s> extends Serializable {
    void clear();

    AbstractC2365l<T, F> deepCopy();

    F fieldForId(int i);

    void read(AbstractC2328ak abstractC2328ak) throws C2373r;

    void write(AbstractC2328ak abstractC2328ak) throws C2373r;
}
