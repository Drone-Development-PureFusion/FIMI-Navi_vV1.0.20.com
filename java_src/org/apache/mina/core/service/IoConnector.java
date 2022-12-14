package org.apache.mina.core.service;

import java.net.SocketAddress;
import org.apache.mina.core.future.ConnectFuture;
import org.apache.mina.core.session.IoSessionInitializer;
/* loaded from: classes2.dex */
public interface IoConnector extends IoService {
    ConnectFuture connect();

    ConnectFuture connect(SocketAddress socketAddress);

    ConnectFuture connect(SocketAddress socketAddress, SocketAddress socketAddress2);

    ConnectFuture connect(SocketAddress socketAddress, SocketAddress socketAddress2, IoSessionInitializer<? extends ConnectFuture> ioSessionInitializer);

    ConnectFuture connect(SocketAddress socketAddress, IoSessionInitializer<? extends ConnectFuture> ioSessionInitializer);

    ConnectFuture connect(IoSessionInitializer<? extends ConnectFuture> ioSessionInitializer);

    int getConnectTimeout();

    long getConnectTimeoutMillis();

    SocketAddress getDefaultLocalAddress();

    /* renamed from: getDefaultRemoteAddress */
    SocketAddress mo1940getDefaultRemoteAddress();

    void setConnectTimeout(int i);

    void setConnectTimeoutMillis(long j);

    void setDefaultLocalAddress(SocketAddress socketAddress);

    void setDefaultRemoteAddress(SocketAddress socketAddress);
}
