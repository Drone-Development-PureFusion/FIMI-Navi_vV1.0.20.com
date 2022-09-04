package org.apache.mina.filter.codec;

import org.apache.mina.core.future.WriteFuture;
/* loaded from: classes2.dex */
public interface ProtocolEncoderOutput {
    WriteFuture flush();

    void mergeAll();

    void write(Object obj);
}
