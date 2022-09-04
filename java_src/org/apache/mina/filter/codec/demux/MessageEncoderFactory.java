package org.apache.mina.filter.codec.demux;
/* loaded from: classes2.dex */
public interface MessageEncoderFactory<T> {
    MessageEncoder<T> getEncoder() throws Exception;
}
