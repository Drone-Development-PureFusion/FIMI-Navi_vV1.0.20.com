package p021rx.internal.operators;

import com.facebook.common.time.Clock;
import java.util.concurrent.atomic.AtomicLong;
import p021rx.Observable;
import p021rx.Producer;
import p021rx.Subscriber;
/* renamed from: rx.internal.operators.OnSubscribeRange */
/* loaded from: classes2.dex */
public final class OnSubscribeRange implements Observable.OnSubscribe<Integer> {
    private final int end;
    private final int start;

    public OnSubscribeRange(int start, int end) {
        this.start = start;
        this.end = end;
    }

    @Override // p021rx.functions.Action1
    public void call(Subscriber<? super Integer> o) {
        o.setProducer(new RangeProducer(o, this.start, this.end));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: rx.internal.operators.OnSubscribeRange$RangeProducer */
    /* loaded from: classes2.dex */
    public static final class RangeProducer extends AtomicLong implements Producer {
        private static final long serialVersionUID = 4114392207069098388L;
        private final int end;
        private long index;

        /* renamed from: o */
        private final Subscriber<? super Integer> f1514o;

        RangeProducer(Subscriber<? super Integer> o, int start, int end) {
            this.f1514o = o;
            this.index = start;
            this.end = end;
        }

        @Override // p021rx.Producer
        public void request(long n) {
            if (get() != Clock.MAX_TIME) {
                if (n == Clock.MAX_TIME && compareAndSet(0L, Clock.MAX_TIME)) {
                    fastpath();
                } else if (n > 0) {
                    long c = BackpressureUtils.getAndAddRequest(this, n);
                    if (c == 0) {
                        slowpath(n);
                    }
                }
            }
        }

        void slowpath(long r) {
            long idx = this.index;
            do {
                long fs = (this.end - idx) + 1;
                long e = Math.min(fs, r);
                boolean complete = fs <= r;
                long fs2 = e + idx;
                Subscriber<? super Integer> o = this.f1514o;
                for (long i = idx; i != fs2; i++) {
                    if (!o.isUnsubscribed()) {
                        o.onNext(Integer.valueOf((int) i));
                    } else {
                        return;
                    }
                }
                if (complete) {
                    if (!o.isUnsubscribed()) {
                        o.onCompleted();
                        return;
                    }
                    return;
                }
                idx = fs2;
                this.index = fs2;
                r = addAndGet(-e);
            } while (r != 0);
        }

        void fastpath() {
            long end = this.end + 1;
            Subscriber<? super Integer> o = this.f1514o;
            for (long i = this.index; i != end; i++) {
                if (!o.isUnsubscribed()) {
                    o.onNext(Integer.valueOf((int) i));
                } else {
                    return;
                }
            }
            if (!o.isUnsubscribed()) {
                o.onCompleted();
            }
        }
    }
}
