package p021rx.internal.operators;

import java.util.Iterator;
import java.util.concurrent.atomic.AtomicInteger;
import p021rx.Completable;
import p021rx.Subscription;
import p021rx.subscriptions.SerialSubscription;
import p021rx.subscriptions.Subscriptions;
/* renamed from: rx.internal.operators.CompletableOnSubscribeConcatIterable */
/* loaded from: classes2.dex */
public final class CompletableOnSubscribeConcatIterable implements Completable.CompletableOnSubscribe {
    final Iterable<? extends Completable> sources;

    public CompletableOnSubscribeConcatIterable(Iterable<? extends Completable> sources) {
        this.sources = sources;
    }

    @Override // p021rx.functions.Action1
    public void call(Completable.CompletableSubscriber s) {
        try {
            Iterator<? extends Completable> it = this.sources.iterator();
            if (it == null) {
                s.onSubscribe(Subscriptions.unsubscribed());
                s.onError(new NullPointerException("The iterator returned is null"));
                return;
            }
            ConcatInnerSubscriber inner = new ConcatInnerSubscriber(s, it);
            s.onSubscribe(inner.f1503sd);
            inner.next();
        } catch (Throwable e) {
            s.onSubscribe(Subscriptions.unsubscribed());
            s.onError(e);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: rx.internal.operators.CompletableOnSubscribeConcatIterable$ConcatInnerSubscriber */
    /* loaded from: classes2.dex */
    public static final class ConcatInnerSubscriber extends AtomicInteger implements Completable.CompletableSubscriber {
        private static final long serialVersionUID = -7965400327305809232L;
        final Completable.CompletableSubscriber actual;
        int index;

        /* renamed from: sd */
        final SerialSubscription f1503sd = new SerialSubscription();
        final Iterator<? extends Completable> sources;

        public ConcatInnerSubscriber(Completable.CompletableSubscriber actual, Iterator<? extends Completable> sources) {
            this.actual = actual;
            this.sources = sources;
        }

        @Override // p021rx.Completable.CompletableSubscriber
        public void onSubscribe(Subscription d) {
            this.f1503sd.set(d);
        }

        @Override // p021rx.Completable.CompletableSubscriber
        public void onError(Throwable e) {
            this.actual.onError(e);
        }

        @Override // p021rx.Completable.CompletableSubscriber
        public void onCompleted() {
            next();
        }

        void next() {
            if (!this.f1503sd.isUnsubscribed() && getAndIncrement() == 0) {
                Iterator<? extends Completable> a = this.sources;
                while (!this.f1503sd.isUnsubscribed()) {
                    try {
                        boolean b = a.hasNext();
                        if (!b) {
                            this.actual.onCompleted();
                            return;
                        }
                        try {
                            Completable c = a.next();
                            if (c == null) {
                                this.actual.onError(new NullPointerException("The completable returned is null"));
                                return;
                            }
                            c.subscribe(this);
                            if (decrementAndGet() == 0) {
                                return;
                            }
                        } catch (Throwable ex) {
                            this.actual.onError(ex);
                            return;
                        }
                    } catch (Throwable ex2) {
                        this.actual.onError(ex2);
                        return;
                    }
                }
            }
        }
    }
}
