package org.apache.mina.core.future;

import java.util.concurrent.atomic.AtomicInteger;
import org.apache.mina.core.future.IoFuture;
/* loaded from: classes2.dex */
public class CompositeIoFuture<E extends IoFuture> extends DefaultIoFuture {
    private volatile boolean constructionFinished;
    private final CompositeIoFuture<E>.NotifyingListener listener = new NotifyingListener();
    private final AtomicInteger unnotified = new AtomicInteger();

    public CompositeIoFuture(Iterable<E> children) {
        super(null);
        for (E f : children) {
            f.mo1923addListener(this.listener);
            this.unnotified.incrementAndGet();
        }
        this.constructionFinished = true;
        if (this.unnotified.get() == 0) {
            setValue(true);
        }
    }

    /* loaded from: classes2.dex */
    private class NotifyingListener implements IoFutureListener<IoFuture> {
        private NotifyingListener() {
        }

        @Override // org.apache.mina.core.future.IoFutureListener
        public void operationComplete(IoFuture future) {
            if (CompositeIoFuture.this.unnotified.decrementAndGet() == 0 && CompositeIoFuture.this.constructionFinished) {
                CompositeIoFuture.this.setValue(true);
            }
        }
    }
}
