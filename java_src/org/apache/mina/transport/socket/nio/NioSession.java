package org.apache.mina.transport.socket.nio;

import java.nio.channels.ByteChannel;
import java.nio.channels.Channel;
import java.nio.channels.SelectionKey;
import org.apache.mina.core.filterchain.DefaultIoFilterChain;
import org.apache.mina.core.filterchain.IoFilterChain;
import org.apache.mina.core.service.IoProcessor;
import org.apache.mina.core.service.IoService;
import org.apache.mina.core.session.AbstractIoSession;
/* loaded from: classes2.dex */
public abstract class NioSession extends AbstractIoSession {
    protected final Channel channel;
    private final IoFilterChain filterChain = new DefaultIoFilterChain(this);
    private SelectionKey key;
    protected final IoProcessor<NioSession> processor;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: getChannel */
    public abstract ByteChannel mo1942getChannel();

    /* JADX INFO: Access modifiers changed from: protected */
    public NioSession(IoProcessor<NioSession> processor, IoService service, Channel channel) {
        super(service);
        this.channel = channel;
        this.processor = processor;
    }

    @Override // org.apache.mina.core.session.IoSession
    public IoFilterChain getFilterChain() {
        return this.filterChain;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SelectionKey getSelectionKey() {
        return this.key;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setSelectionKey(SelectionKey key) {
        this.key = key;
    }

    @Override // org.apache.mina.core.session.AbstractIoSession
    public IoProcessor<NioSession> getProcessor() {
        return this.processor;
    }

    @Override // org.apache.mina.core.session.AbstractIoSession, org.apache.mina.core.session.IoSession
    public final boolean isActive() {
        return this.key.isValid();
    }
}
