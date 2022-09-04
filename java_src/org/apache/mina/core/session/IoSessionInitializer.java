package org.apache.mina.core.session;

import org.apache.mina.core.future.IoFuture;
/* loaded from: classes2.dex */
public interface IoSessionInitializer<T extends IoFuture> {
    void initializeSession(IoSession ioSession, T t);
}
