package com.twitter.sdk.android.core.internal.persistence;
/* loaded from: classes2.dex */
public interface SerializationStrategy<T> {
    /* renamed from: deserialize */
    T mo1866deserialize(String str);

    String serialize(T t);
}
