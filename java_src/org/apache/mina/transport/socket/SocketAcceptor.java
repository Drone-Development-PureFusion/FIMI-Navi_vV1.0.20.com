package org.apache.mina.transport.socket;

import java.net.InetSocketAddress;
import org.apache.mina.core.service.IoAcceptor;
/* loaded from: classes2.dex */
public interface SocketAcceptor extends IoAcceptor {
    int getBacklog();

    @Override // org.apache.mina.core.service.IoAcceptor
    /* renamed from: getDefaultLocalAddress */
    InetSocketAddress mo1947getDefaultLocalAddress();

    @Override // org.apache.mina.core.service.IoAcceptor
    /* renamed from: getLocalAddress */
    InetSocketAddress mo1948getLocalAddress();

    @Override // org.apache.mina.core.service.IoService
    /* renamed from: getSessionConfig */
    SocketSessionConfig mo1950getSessionConfig();

    boolean isReuseAddress();

    void setBacklog(int i);

    void setDefaultLocalAddress(InetSocketAddress inetSocketAddress);

    void setReuseAddress(boolean z);
}
