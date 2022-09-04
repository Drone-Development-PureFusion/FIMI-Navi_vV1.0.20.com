package p021rx.internal.operators;

import java.util.concurrent.atomic.AtomicInteger;
import p021rx.Completable;
import p021rx.Subscription;
import p021rx.subscriptions.SerialSubscription;
/* renamed from: rx.internal.operators.CompletableOnSubscribeConcatArray */
/* loaded from: classes2.dex */
public final class CompletableOnSubscribeConcatArray implements Completable.CompletableOnSubscribe {
    final Completable[] sources;

    public CompletableOnSubscribeConcatArray(Completable[] sources) {
        this.sources = sources;
    }

    @Override // p021rx.functions.Action1
    public void call(Completable.CompletableSubscriber s) {
        ConcatInnerSubscriber inner = new ConcatInnerSubscriber(s, this.sources);
        s.onSubscribe(inner.f1502sd);
        inner.next();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: rx.internal.operators.CompletableOnSubscribeConcatArray$ConcatInnerSubscriber */
    /* loaded from: classes2.dex */
    public static final class ConcatInnerSubscriber extends AtomicInteger implements Completable.CompletableSubscriber {
        private static final long serialVersionUID = -7965400327305809232L;
        final Completable.CompletableSubscriber actual;
        int index;

        /* renamed from: sd */
        final SerialSubscription f1502sd = new SerialSubscription();
        final Completable[] sources;

        public ConcatInnerSubscriber(Completable.CompletableSubscriber actual, Completable[] sources) {
            this.actual = actual;
            this.sources = sources;
        }

        @Override // p021rx.Completable.CompletableSubscriber
        public void onSubscribe(Subscription d) {
            this.f1502sd.set(d);
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
            if (!this.f1502sd.isUnsubscribed() && getAndIncrement() == 0) {
                Completable[] a = this.sources;
                while (!this.f1502sd.isUnsubscribed()) {
                    int idx = this.index;
                    this.index = idx + 1;
                    if (idx == a.length) {
                        this.actual.onCompleted();
                        return;
                    }
                    a[idx].subscribe(this);
                    if (decrementAndGet() == 0) {
                        return;
                    }
                }
            }
        }
    }
}
