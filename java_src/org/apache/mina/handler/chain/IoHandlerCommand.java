package org.apache.mina.handler.chain;

import org.apache.mina.core.session.IoSession;
/* loaded from: classes2.dex */
public interface IoHandlerCommand {

    /* loaded from: classes2.dex */
    public interface NextCommand {
        void execute(IoSession ioSession, Object obj) throws Exception;
    }

    void execute(NextCommand nextCommand, IoSession ioSession, Object obj) throws Exception;
}
