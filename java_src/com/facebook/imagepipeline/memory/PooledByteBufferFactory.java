package com.facebook.imagepipeline.memory;

import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes.dex */
public interface PooledByteBufferFactory {
    /* renamed from: newByteBuffer */
    PooledByteBuffer mo1683newByteBuffer(int i);

    /* renamed from: newByteBuffer */
    PooledByteBuffer mo1684newByteBuffer(InputStream inputStream) throws IOException;

    /* renamed from: newByteBuffer */
    PooledByteBuffer mo1685newByteBuffer(InputStream inputStream, int i) throws IOException;

    /* renamed from: newByteBuffer */
    PooledByteBuffer mo1686newByteBuffer(byte[] bArr);

    /* renamed from: newOutputStream */
    PooledByteBufferOutputStream mo1687newOutputStream();

    /* renamed from: newOutputStream */
    PooledByteBufferOutputStream mo1688newOutputStream(int i);
}
