package p021rx.internal.operators;

import com.facebook.common.time.Clock;
import java.util.Iterator;
import java.util.concurrent.atomic.AtomicLong;
import p021rx.Observable;
import p021rx.Producer;
import p021rx.Subscriber;
/* renamed from: rx.internal.operators.OnSubscribeFromIterable */
/* loaded from: classes2.dex */
public final class OnSubscribeFromIterable<T> implements Observable.OnSubscribe<T> {

    /* renamed from: is */
    final Iterable<? extends T> f1507is;

    @Override // p021rx.functions.Action1
    public /* bridge */ /* synthetic */ void call(Object x0) {
        call((Subscriber) ((Subscriber) x0));
    }

    public OnSubscribeFromIterable(Iterable<? extends T> iterable) {
        if (iterable == null) {
            throw new NullPointerException("iterable must not be null");
        }
        this.f1507is = iterable;
    }

    public void call(Subscriber<? super T> o) {
        Iterator<? extends T> it = this.f1507is.iterator();
        if (!it.hasNext() && !o.isUnsubscribed()) {
            o.onCompleted();
        } else {
            o.setProducer(new IterableProducer(o, it));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: rx.internal.operators.OnSubscribeFromIterable$IterableProducer */
    /* loaded from: classes2.dex */
    public static final class IterableProducer<T> extends AtomicLong implements Producer {
        private static final long serialVersionUID = -8730475647105475802L;

        /* renamed from: it */
        private final Iterator<? extends T> f1508it;

        /* renamed from: o */
        private final Subscriber<? super T> f1509o;

        IterableProducer(Subscriber<? super T> o, Iterator<? extends T> it) {
            this.f1509o = o;
            this.f1508it = it;
        }

        @Override // p021rx.Producer
        public void request(long n) {
            if (get() != Clock.MAX_TIME) {
                if (n == Clock.MAX_TIME && compareAndSet(0L, Clock.MAX_TIME)) {
                    fastpath();
                } else if (n > 0 && BackpressureUtils.getAndAddRequest(this, n) == 0) {
                    slowpath(n);
                }
            }
        }

        void slowpath(long n) {
            Subscriber<? super T> o = this.f1509o;
            Iterator<? extends T> it = this.f1508it;
            long r = n;
            do {
                long numToEmit = r;
                while (!o.isUnsubscribed()) {
                    if (it.hasNext()) {
                        numToEmit--;
                        if (numToEmit >= 0) {
                            o.onNext((T) it.next());
                        } else {
                            r = addAndGet(-r);
                        }
                    } else if (!o.isUnsubscribed()) {
                        o.onCompleted();
                        return;
                    } else {
                        return;
                    }
                }
                return;
            } while (r != 0);
        }

        void fastpath() {
            Subscriber<? super T> o = this.f1509o;
            Iterator<? extends T> it = this.f1508it;
            while (!o.isUnsubscribed()) {
                if (it.hasNext()) {
                    o.onNext((T) it.next());
                } else if (!o.isUnsubscribed()) {
                    o.onCompleted();
                    return;
                } else {
                    return;
                }
            }
        }
    }
}
