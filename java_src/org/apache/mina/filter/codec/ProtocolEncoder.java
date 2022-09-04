package org.apache.mina.filter.codec;

import org.apache.mina.core.session.IoSession;
/* loaded from: classes2.dex */
public interface ProtocolEncoder {
    void dispose(IoSession ioSession) throws Exception;

    void encode(IoSession ioSession, Object obj, ProtocolEncoderOutput protocolEncoderOutput) throws Exception;
}
