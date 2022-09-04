package org.apache.mina.proxy.handlers;

import java.net.InetSocketAddress;
/* loaded from: classes2.dex */
public abstract class ProxyRequest {
    private InetSocketAddress endpointAddress;

    public ProxyRequest() {
        this.endpointAddress = null;
    }

    public ProxyRequest(InetSocketAddress endpointAddress) {
        this.endpointAddress = null;
        this.endpointAddress = endpointAddress;
    }

    public InetSocketAddress getEndpointAddress() {
        return this.endpointAddress;
    }
}
