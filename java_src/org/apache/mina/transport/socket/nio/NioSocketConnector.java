package org.apache.mina.transport.socket.nio;

import com.fimi.kernel.animutils.IOUtils;
import java.io.IOException;
import java.net.InetSocketAddress;
import java.net.SocketAddress;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.SocketChannel;
import java.util.Collection;
import java.util.Iterator;
import java.util.concurrent.Executor;
import org.apache.mina.core.polling.AbstractPollingIoConnector;
import org.apache.mina.core.service.IoProcessor;
import org.apache.mina.core.service.TransportMetadata;
import org.apache.mina.transport.socket.DefaultSocketSessionConfig;
import org.apache.mina.transport.socket.SocketConnector;
import org.apache.mina.transport.socket.SocketSessionConfig;
/* loaded from: classes2.dex */
public final class NioSocketConnector extends AbstractPollingIoConnector<NioSession, SocketChannel> implements SocketConnector {
    private volatile Selector selector;

    @Override // org.apache.mina.core.polling.AbstractPollingIoConnector
    protected /* bridge */ /* synthetic */ void register(SocketChannel socketChannel, AbstractPollingIoConnector.ConnectionRequest connectionRequest) throws Exception {
        register2(socketChannel, (AbstractPollingIoConnector<NioSession, SocketChannel>.ConnectionRequest) connectionRequest);
    }

    public NioSocketConnector() {
        super(new DefaultSocketSessionConfig(), NioProcessor.class);
        ((DefaultSocketSessionConfig) mo1950getSessionConfig()).init(this);
    }

    public NioSocketConnector(int processorCount) {
        super(new DefaultSocketSessionConfig(), NioProcessor.class, processorCount);
        ((DefaultSocketSessionConfig) mo1950getSessionConfig()).init(this);
    }

    public NioSocketConnector(IoProcessor<NioSession> processor) {
        super(new DefaultSocketSessionConfig(), processor);
        ((DefaultSocketSessionConfig) mo1950getSessionConfig()).init(this);
    }

    public NioSocketConnector(Executor executor, IoProcessor<NioSession> processor) {
        super(new DefaultSocketSessionConfig(), executor, processor);
        ((DefaultSocketSessionConfig) mo1950getSessionConfig()).init(this);
    }

    public NioSocketConnector(Class<? extends IoProcessor<NioSession>> processorClass, int processorCount) {
        super(new DefaultSocketSessionConfig(), processorClass, processorCount);
    }

    public NioSocketConnector(Class<? extends IoProcessor<NioSession>> processorClass) {
        super(new DefaultSocketSessionConfig(), processorClass);
    }

    @Override // org.apache.mina.core.polling.AbstractPollingIoConnector
    protected void init() throws Exception {
        this.selector = Selector.open();
    }

    @Override // org.apache.mina.core.polling.AbstractPollingIoConnector
    protected void destroy() throws Exception {
        if (this.selector != null) {
            this.selector.close();
        }
    }

    @Override // org.apache.mina.core.service.IoService
    public TransportMetadata getTransportMetadata() {
        return NioSocketSession.METADATA;
    }

    @Override // org.apache.mina.core.service.IoService
    /* renamed from: getSessionConfig  reason: collision with other method in class */
    public SocketSessionConfig mo1950getSessionConfig() {
        return (SocketSessionConfig) this.sessionConfig;
    }

    @Override // org.apache.mina.core.service.AbstractIoConnector, org.apache.mina.core.service.IoConnector
    /* renamed from: getDefaultRemoteAddress */
    public InetSocketAddress mo1940getDefaultRemoteAddress() {
        return (InetSocketAddress) super.getDefaultRemoteAddress();
    }

    @Override // org.apache.mina.transport.socket.SocketConnector
    public void setDefaultRemoteAddress(InetSocketAddress defaultRemoteAddress) {
        super.setDefaultRemoteAddress((SocketAddress) defaultRemoteAddress);
    }

    @Override // org.apache.mina.core.polling.AbstractPollingIoConnector
    protected Iterator<SocketChannel> allHandles() {
        return new SocketChannelIterator(this.selector.keys());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.mina.core.polling.AbstractPollingIoConnector
    public boolean connect(SocketChannel handle, SocketAddress remoteAddress) throws Exception {
        return handle.connect(remoteAddress);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.mina.core.polling.AbstractPollingIoConnector
    public AbstractPollingIoConnector<NioSession, SocketChannel>.ConnectionRequest getConnectionRequest(SocketChannel handle) {
        SelectionKey key = handle.keyFor(this.selector);
        if (key == null || !key.isValid()) {
            return null;
        }
        return (AbstractPollingIoConnector.ConnectionRequest) key.attachment();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.mina.core.polling.AbstractPollingIoConnector
    public void close(SocketChannel handle) throws Exception {
        SelectionKey key = handle.keyFor(this.selector);
        if (key != null) {
            key.cancel();
        }
        handle.close();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.mina.core.polling.AbstractPollingIoConnector
    public boolean finishConnect(SocketChannel handle) throws Exception {
        if (handle.finishConnect()) {
            SelectionKey key = handle.keyFor(this.selector);
            if (key != null) {
                key.cancel();
            }
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.mina.core.polling.AbstractPollingIoConnector
    public SocketChannel newHandle(SocketAddress localAddress) throws Exception {
        SocketChannel ch2 = SocketChannel.open();
        int receiveBufferSize = mo1950getSessionConfig().getReceiveBufferSize();
        if (receiveBufferSize > 65535) {
            ch2.socket().setReceiveBufferSize(receiveBufferSize);
        }
        if (localAddress != null) {
            try {
                ch2.socket().bind(localAddress);
            } catch (IOException ioe) {
                String newMessage = "Error while binding on " + localAddress + IOUtils.LINE_SEPARATOR_UNIX + "original message : " + ioe.getMessage();
                Exception e = new IOException(newMessage);
                e.initCause(ioe.getCause());
                ch2.close();
                throw e;
            }
        }
        ch2.configureBlocking(false);
        return ch2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.mina.core.polling.AbstractPollingIoConnector
    public NioSession newSession(IoProcessor<NioSession> processor, SocketChannel handle) {
        return new NioSocketSession(this, processor, handle);
    }

    /* renamed from: register  reason: avoid collision after fix types in other method */
    protected void register2(SocketChannel handle, AbstractPollingIoConnector<NioSession, SocketChannel>.ConnectionRequest request) throws Exception {
        handle.register(this.selector, 8, request);
    }

    @Override // org.apache.mina.core.polling.AbstractPollingIoConnector
    protected int select(int timeout) throws Exception {
        return this.selector.select(timeout);
    }

    @Override // org.apache.mina.core.polling.AbstractPollingIoConnector
    protected Iterator<SocketChannel> selectedHandles() {
        return new SocketChannelIterator(this.selector.selectedKeys());
    }

    @Override // org.apache.mina.core.polling.AbstractPollingIoConnector
    protected void wakeup() {
        this.selector.wakeup();
    }

    /* loaded from: classes2.dex */
    private static class SocketChannelIterator implements Iterator<SocketChannel> {

        /* renamed from: i */
        private final Iterator<SelectionKey> f1478i;

        private SocketChannelIterator(Collection<SelectionKey> selectedKeys) {
            this.f1478i = selectedKeys.iterator();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f1478i.hasNext();
        }

        @Override // java.util.Iterator
        public SocketChannel next() {
            SelectionKey key = this.f1478i.next();
            return (SocketChannel) key.channel();
        }

        @Override // java.util.Iterator
        public void remove() {
            this.f1478i.remove();
        }
    }
}
