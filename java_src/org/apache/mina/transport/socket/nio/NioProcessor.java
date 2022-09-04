package org.apache.mina.transport.socket.nio;

import java.io.IOException;
import java.nio.channels.ByteChannel;
import java.nio.channels.DatagramChannel;
import java.nio.channels.SelectableChannel;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.SocketChannel;
import java.nio.channels.spi.SelectorProvider;
import java.util.Iterator;
import java.util.Set;
import java.util.concurrent.Executor;
import org.apache.mina.core.RuntimeIoException;
import org.apache.mina.core.buffer.IoBuffer;
import org.apache.mina.core.file.FileRegion;
import org.apache.mina.core.polling.AbstractPollingIoProcessor;
import org.apache.mina.core.session.SessionState;
/* loaded from: classes2.dex */
public final class NioProcessor extends AbstractPollingIoProcessor<NioSession> {
    private Selector selector;
    private SelectorProvider selectorProvider = null;

    public NioProcessor(Executor executor) {
        super(executor);
        try {
            this.selector = Selector.open();
        } catch (IOException e) {
            throw new RuntimeIoException("Failed to open a selector.", e);
        }
    }

    public NioProcessor(Executor executor, SelectorProvider selectorProvider) {
        super(executor);
        try {
            if (selectorProvider == null) {
                this.selector = Selector.open();
            } else {
                this.selector = selectorProvider.openSelector();
            }
        } catch (IOException e) {
            throw new RuntimeIoException("Failed to open a selector.", e);
        }
    }

    @Override // org.apache.mina.core.polling.AbstractPollingIoProcessor
    protected void doDispose() throws Exception {
        this.selector.close();
    }

    @Override // org.apache.mina.core.polling.AbstractPollingIoProcessor
    protected int select(long timeout) throws Exception {
        return this.selector.select(timeout);
    }

    @Override // org.apache.mina.core.polling.AbstractPollingIoProcessor
    protected int select() throws Exception {
        return this.selector.select();
    }

    @Override // org.apache.mina.core.polling.AbstractPollingIoProcessor
    protected boolean isSelectorEmpty() {
        return this.selector.keys().isEmpty();
    }

    @Override // org.apache.mina.core.polling.AbstractPollingIoProcessor
    protected void wakeup() {
        this.wakeupCalled.getAndSet(true);
        this.selector.wakeup();
    }

    @Override // org.apache.mina.core.polling.AbstractPollingIoProcessor
    protected Iterator<NioSession> allSessions() {
        return new IoSessionIterator(this.selector.keys());
    }

    @Override // org.apache.mina.core.polling.AbstractPollingIoProcessor
    protected Iterator<NioSession> selectedSessions() {
        return new IoSessionIterator(this.selector.selectedKeys());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.mina.core.polling.AbstractPollingIoProcessor
    public void init(NioSession session) throws Exception {
        SelectableChannel ch2 = (SelectableChannel) session.mo1942getChannel();
        ch2.configureBlocking(false);
        session.setSelectionKey(ch2.register(this.selector, 1, session));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.mina.core.polling.AbstractPollingIoProcessor
    public void destroy(NioSession session) throws Exception {
        ByteChannel ch2 = session.mo1942getChannel();
        SelectionKey key = session.getSelectionKey();
        if (key != null) {
            key.cancel();
        }
        if (ch2.isOpen()) {
            ch2.close();
        }
    }

    @Override // org.apache.mina.core.polling.AbstractPollingIoProcessor
    protected void registerNewSelector() throws IOException {
        Selector newSelector;
        synchronized (this.selector) {
            Set<SelectionKey> keys = this.selector.keys();
            if (this.selectorProvider == null) {
                newSelector = Selector.open();
            } else {
                newSelector = this.selectorProvider.openSelector();
            }
            for (SelectionKey key : keys) {
                SelectableChannel ch2 = key.channel();
                NioSession session = (NioSession) key.attachment();
                SelectionKey newKey = ch2.register(newSelector, key.interestOps(), session);
                session.setSelectionKey(newKey);
            }
            this.selector.close();
            this.selector = newSelector;
        }
    }

    @Override // org.apache.mina.core.polling.AbstractPollingIoProcessor
    protected boolean isBrokenConnection() throws IOException {
        boolean brokenSession = false;
        synchronized (this.selector) {
            Set<SelectionKey> keys = this.selector.keys();
            for (SelectionKey key : keys) {
                SelectableChannel channel = key.channel();
                if (((channel instanceof DatagramChannel) && !((DatagramChannel) channel).isConnected()) || ((channel instanceof SocketChannel) && !((SocketChannel) channel).isConnected())) {
                    key.cancel();
                    brokenSession = true;
                }
            }
        }
        return brokenSession;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.mina.core.polling.AbstractPollingIoProcessor
    public SessionState getState(NioSession session) {
        SelectionKey key = session.getSelectionKey();
        if (key == null) {
            return SessionState.OPENING;
        }
        if (key.isValid()) {
            return SessionState.OPENED;
        }
        return SessionState.CLOSING;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.mina.core.polling.AbstractPollingIoProcessor
    public boolean isReadable(NioSession session) {
        SelectionKey key = session.getSelectionKey();
        return key != null && key.isValid() && key.isReadable();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.mina.core.polling.AbstractPollingIoProcessor
    public boolean isWritable(NioSession session) {
        SelectionKey key = session.getSelectionKey();
        return key != null && key.isValid() && key.isWritable();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.mina.core.polling.AbstractPollingIoProcessor
    public boolean isInterestedInRead(NioSession session) {
        SelectionKey key = session.getSelectionKey();
        return (key == null || !key.isValid() || (key.interestOps() & 1) == 0) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.mina.core.polling.AbstractPollingIoProcessor
    public boolean isInterestedInWrite(NioSession session) {
        SelectionKey key = session.getSelectionKey();
        return (key == null || !key.isValid() || (key.interestOps() & 4) == 0) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.mina.core.polling.AbstractPollingIoProcessor
    public void setInterestedInRead(NioSession session, boolean isInterested) throws Exception {
        int newInterestOps;
        SelectionKey key = session.getSelectionKey();
        if (key != null && key.isValid()) {
            int oldInterestOps = key.interestOps();
            if (isInterested) {
                newInterestOps = oldInterestOps | 1;
            } else {
                newInterestOps = oldInterestOps & (-2);
            }
            if (oldInterestOps != newInterestOps) {
                key.interestOps(newInterestOps);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.mina.core.polling.AbstractPollingIoProcessor
    public void setInterestedInWrite(NioSession session, boolean isInterested) throws Exception {
        int newInterestOps;
        SelectionKey key = session.getSelectionKey();
        if (key != null && key.isValid()) {
            int newInterestOps2 = key.interestOps();
            if (isInterested) {
                newInterestOps = newInterestOps2 | 4;
            } else {
                newInterestOps = newInterestOps2 & (-5);
            }
            key.interestOps(newInterestOps);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.mina.core.polling.AbstractPollingIoProcessor
    public int read(NioSession session, IoBuffer buf) throws Exception {
        ByteChannel channel = session.mo1942getChannel();
        return channel.read(buf.buf());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.mina.core.polling.AbstractPollingIoProcessor
    public int write(NioSession session, IoBuffer buf, int length) throws IOException {
        if (buf.remaining() <= length) {
            return session.mo1942getChannel().write(buf.buf());
        }
        int oldLimit = buf.limit();
        buf.limit(buf.position() + length);
        try {
            return session.mo1942getChannel().write(buf.buf());
        } finally {
            buf.limit(oldLimit);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.apache.mina.core.polling.AbstractPollingIoProcessor
    public int transferFile(NioSession session, FileRegion region, int length) throws Exception {
        try {
            return (int) region.getFileChannel().transferTo(region.getPosition(), length, session.mo1942getChannel());
        } catch (IOException e) {
            String message = e.getMessage();
            if (message != null && message.contains("temporarily unavailable")) {
                return 0;
            }
            throw e;
        }
    }

    /* loaded from: classes2.dex */
    protected static class IoSessionIterator<NioSession> implements Iterator<NioSession> {
        private final Iterator<SelectionKey> iterator;

        private IoSessionIterator(Set<SelectionKey> keys) {
            this.iterator = keys.iterator();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.iterator.hasNext();
        }

        @Override // java.util.Iterator
        public NioSession next() {
            SelectionKey key = this.iterator.next();
            NioSession nioSession = (NioSession) key.attachment();
            return nioSession;
        }

        @Override // java.util.Iterator
        public void remove() {
            this.iterator.remove();
        }
    }
}
