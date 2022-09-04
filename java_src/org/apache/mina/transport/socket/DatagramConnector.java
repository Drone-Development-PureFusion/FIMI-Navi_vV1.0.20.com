package org.apache.mina.transport.socket;

import java.net.InetSocketAddress;
import org.apache.mina.core.service.IoConnector;
/* loaded from: classes2.dex */
public interface DatagramConnector extends IoConnector {
    @Override // org.apache.mina.core.service.IoConnector
    /* renamed from: getDefaultRemoteAddress */
    InetSocketAddress mo1940getDefaultRemoteAddress();

    @Override // org.apache.mina.core.service.IoService
    /* renamed from: getSessionConfig */
    DatagramSessionConfig mo1950getSessionConfig();

    void setDefaultRemoteAddress(InetSocketAddress inetSocketAddress);
}
