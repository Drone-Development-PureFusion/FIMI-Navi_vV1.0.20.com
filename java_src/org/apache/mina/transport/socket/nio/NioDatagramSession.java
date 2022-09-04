package org.apache.mina.transport.socket.nio;

import java.net.InetSocketAddress;
import java.net.SocketAddress;
import java.nio.channels.DatagramChannel;
import org.apache.mina.core.buffer.IoBuffer;
import org.apache.mina.core.service.DefaultTransportMetadata;
import org.apache.mina.core.service.IoProcessor;
import org.apache.mina.core.service.IoService;
import org.apache.mina.core.service.TransportMetadata;
import org.apache.mina.transport.socket.DatagramSessionConfig;
/* loaded from: classes2.dex */
class NioDatagramSession extends NioSession {
    static final TransportMetadata METADATA = new DefaultTransportMetadata("nio", "datagram", true, false, InetSocketAddress.class, DatagramSessionConfig.class, IoBuffer.class);
    private final InetSocketAddress localAddress;
    private final InetSocketAddress remoteAddress;

    /* JADX INFO: Access modifiers changed from: package-private */
    public NioDatagramSession(IoService service, DatagramChannel channel, IoProcessor<NioSession> processor, SocketAddress remoteAddress) {
        super(processor, service, channel);
        this.config = new NioDatagramSessionConfig(channel);
        this.config.setAll(service.mo1950getSessionConfig());
        this.remoteAddress = (InetSocketAddress) remoteAddress;
        this.localAddress = (InetSocketAddress) channel.socket().getLocalSocketAddress();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public NioDatagramSession(IoService service, DatagramChannel channel, IoProcessor<NioSession> processor) {
        this(service, channel, processor, channel.socket().getRemoteSocketAddress());
    }

    @Override // org.apache.mina.core.session.AbstractIoSession, org.apache.mina.core.session.IoSession
    /* renamed from: getConfig  reason: collision with other method in class */
    public DatagramSessionConfig mo1951getConfig() {
        return (DatagramSessionConfig) this.config;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @Override // org.apache.mina.transport.socket.nio.NioSession
    /* renamed from: getChannel  reason: collision with other method in class */
    public DatagramChannel mo1942getChannel() {
        return (DatagramChannel) this.channel;
    }

    @Override // org.apache.mina.core.session.IoSession
    public TransportMetadata getTransportMetadata() {
        return METADATA;
    }

    @Override // org.apache.mina.core.session.IoSession
    /* renamed from: getRemoteAddress */
    public InetSocketAddress mo1953getRemoteAddress() {
        return this.remoteAddress;
    }

    @Override // org.apache.mina.core.session.IoSession
    /* renamed from: getLocalAddress */
    public InetSocketAddress mo1952getLocalAddress() {
        return this.localAddress;
    }

    @Override // org.apache.mina.core.session.AbstractIoSession, org.apache.mina.core.session.IoSession
    /* renamed from: getServiceAddress */
    public InetSocketAddress mo1954getServiceAddress() {
        return (InetSocketAddress) super.getServiceAddress();
    }
}
