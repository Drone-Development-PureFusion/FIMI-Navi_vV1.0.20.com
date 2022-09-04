package p021rx.internal.operators;

import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.concurrent.Semaphore;
import java.util.concurrent.atomic.AtomicReference;
import p021rx.Notification;
import p021rx.Observable;
import p021rx.Subscriber;
import p021rx.exceptions.Exceptions;
/* renamed from: rx.internal.operators.BlockingOperatorLatest */
/* loaded from: classes2.dex */
public final class BlockingOperatorLatest {
    private BlockingOperatorLatest() {
        throw new IllegalStateException("No instances!");
    }

    public static <T> Iterable<T> latest(final Observable<? extends T> source) {
        return new Iterable<T>() { // from class: rx.internal.operators.BlockingOperatorLatest.1
            @Override // java.lang.Iterable
            public Iterator<T> iterator() {
                LatestObserverIterator latestObserverIterator = new LatestObserverIterator();
                Observable.this.materialize().subscribe((Subscriber) latestObserverIterator);
                return latestObserverIterator;
            }
        };
    }

    /* renamed from: rx.internal.operators.BlockingOperatorLatest$LatestObserverIterator */
    /* loaded from: classes2.dex */
    static final class LatestObserverIterator<T> extends Subscriber<Notification<? extends T>> implements Iterator<T> {
        Notification<? extends T> iNotif;
        final Semaphore notify = new Semaphore(0);
        final AtomicReference<Notification<? extends T>> value = new AtomicReference<>();

        LatestObserverIterator() {
        }

        @Override // p021rx.Observer
        public /* bridge */ /* synthetic */ void onNext(Object x0) {
            onNext((Notification) ((Notification) x0));
        }

        public void onNext(Notification<? extends T> args) {
            boolean wasntAvailable = this.value.getAndSet(args) == null;
            if (wasntAvailable) {
                this.notify.release();
            }
        }

        @Override // p021rx.Observer
        public void onError(Throwable e) {
        }

        @Override // p021rx.Observer
        public void onCompleted() {
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            if (this.iNotif != null && this.iNotif.isOnError()) {
                throw Exceptions.propagate(this.iNotif.getThrowable());
            }
            if ((this.iNotif == null || !this.iNotif.isOnCompleted()) && this.iNotif == null) {
                try {
                    this.notify.acquire();
                    Notification<? extends T> n = this.value.getAndSet(null);
                    this.iNotif = n;
                    if (this.iNotif.isOnError()) {
                        throw Exceptions.propagate(this.iNotif.getThrowable());
                    }
                } catch (InterruptedException ex) {
                    unsubscribe();
                    Thread.currentThread().interrupt();
                    this.iNotif = Notification.createOnError(ex);
                    throw Exceptions.propagate(ex);
                }
            }
            return !this.iNotif.isOnCompleted();
        }

        @Override // java.util.Iterator
        public T next() {
            if (hasNext() && this.iNotif.isOnNext()) {
                T v = this.iNotif.getValue();
                this.iNotif = null;
                return v;
            }
            throw new NoSuchElementException();
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("Read-only iterator.");
        }
    }
}
