package p021rx.internal.operators;

import com.facebook.common.time.Clock;
import java.util.concurrent.atomic.AtomicLong;
import p021rx.Notification;
import p021rx.Observable;
import p021rx.Producer;
import p021rx.Subscriber;
import p021rx.plugins.RxJavaPlugins;
/* renamed from: rx.internal.operators.OperatorMaterialize */
/* loaded from: classes2.dex */
public final class OperatorMaterialize<T> implements Observable.Operator<Notification<T>, T> {
    @Override // p021rx.functions.Func1
    /* renamed from: call */
    public /* bridge */ /* synthetic */ Object mo1999call(Object x0) {
        return call((Subscriber) ((Subscriber) x0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: rx.internal.operators.OperatorMaterialize$Holder */
    /* loaded from: classes2.dex */
    public static final class Holder {
        static final OperatorMaterialize<Object> INSTANCE = new OperatorMaterialize<>();

        private Holder() {
        }
    }

    public static <T> OperatorMaterialize<T> instance() {
        return (OperatorMaterialize<T>) Holder.INSTANCE;
    }

    OperatorMaterialize() {
    }

    public Subscriber<? super T> call(Subscriber<? super Notification<T>> child) {
        final ParentSubscriber<T> parent = new ParentSubscriber<>(child);
        child.add(parent);
        child.setProducer(new Producer() { // from class: rx.internal.operators.OperatorMaterialize.1
            @Override // p021rx.Producer
            public void request(long n) {
                if (n > 0) {
                    parent.requestMore(n);
                }
            }
        });
        return parent;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: rx.internal.operators.OperatorMaterialize$ParentSubscriber */
    /* loaded from: classes2.dex */
    public static class ParentSubscriber<T> extends Subscriber<T> {
        private final Subscriber<? super Notification<T>> child;
        private volatile Notification<T> terminalNotification;
        private boolean busy = false;
        private boolean missed = false;
        private final AtomicLong requested = new AtomicLong();

        ParentSubscriber(Subscriber<? super Notification<T>> child) {
            this.child = child;
        }

        @Override // p021rx.Subscriber
        public void onStart() {
            request(0L);
        }

        void requestMore(long n) {
            BackpressureUtils.getAndAddRequest(this.requested, n);
            request(n);
            drain();
        }

        @Override // p021rx.Observer
        public void onCompleted() {
            this.terminalNotification = Notification.createOnCompleted();
            drain();
        }

        @Override // p021rx.Observer
        public void onError(Throwable e) {
            this.terminalNotification = Notification.createOnError(e);
            RxJavaPlugins.getInstance().getErrorHandler().handleError(e);
            drain();
        }

        @Override // p021rx.Observer
        public void onNext(T t) {
            this.child.onNext(Notification.createOnNext(t));
            decrementRequested();
        }

        private void decrementRequested() {
            long r;
            AtomicLong localRequested = this.requested;
            do {
                r = localRequested.get();
                if (r == Clock.MAX_TIME) {
                    return;
                }
            } while (!localRequested.compareAndSet(r, r - 1));
        }

        private void drain() {
            synchronized (this) {
                if (this.busy) {
                    this.missed = true;
                    return;
                }
                AtomicLong localRequested = this.requested;
                while (!this.child.isUnsubscribed()) {
                    Notification<T> tn = this.terminalNotification;
                    if (tn != null && localRequested.get() > 0) {
                        this.terminalNotification = null;
                        this.child.onNext(tn);
                        if (!this.child.isUnsubscribed()) {
                            this.child.onCompleted();
                            return;
                        }
                        return;
                    }
                    synchronized (this) {
                        if (!this.missed) {
                            this.busy = false;
                            return;
                        }
                    }
                }
            }
        }
    }
}
