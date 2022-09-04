package org.apache.mina.transport.socket;

import java.net.InetSocketAddress;
import org.apache.mina.core.service.IoAcceptor;
import org.apache.mina.core.session.IoSessionRecycler;
/* loaded from: classes2.dex */
public interface DatagramAcceptor extends IoAcceptor {
    @Override // org.apache.mina.core.service.IoAcceptor
    /* renamed from: getDefaultLocalAddress */
    InetSocketAddress mo1947getDefaultLocalAddress();

    @Override // org.apache.mina.core.service.IoAcceptor
    /* renamed from: getLocalAddress */
    InetSocketAddress mo1948getLocalAddress();

    @Override // org.apache.mina.core.service.IoService
    /* renamed from: getSessionConfig */
    DatagramSessionConfig mo1950getSessionConfig();

    IoSessionRecycler getSessionRecycler();

    void setDefaultLocalAddress(InetSocketAddress inetSocketAddress);

    void setSessionRecycler(IoSessionRecycler ioSessionRecycler);
}
