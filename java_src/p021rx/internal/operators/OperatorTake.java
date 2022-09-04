package p021rx.internal.operators;

import java.util.concurrent.atomic.AtomicLong;
import p021rx.Observable;
import p021rx.Producer;
import p021rx.Subscriber;
/* renamed from: rx.internal.operators.OperatorTake */
/* loaded from: classes2.dex */
public final class OperatorTake<T> implements Observable.Operator<T, T> {
    final int limit;

    @Override // p021rx.functions.Func1
    /* renamed from: call */
    public /* bridge */ /* synthetic */ Object mo1999call(Object x0) {
        return call((Subscriber) ((Subscriber) x0));
    }

    public OperatorTake(int limit) {
        if (limit < 0) {
            throw new IllegalArgumentException("limit >= 0 required but it was " + limit);
        }
        this.limit = limit;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: rx.internal.operators.OperatorTake$1 */
    /* loaded from: classes2.dex */
    public class C30021 extends Subscriber<T> {
        boolean completed;
        int count;
        final /* synthetic */ Subscriber val$child;

        C30021(Subscriber subscriber) {
            this.val$child = subscriber;
        }

        @Override // p021rx.Observer
        public void onCompleted() {
            if (!this.completed) {
                this.completed = true;
                this.val$child.onCompleted();
            }
        }

        @Override // p021rx.Observer
        public void onError(Throwable e) {
            if (!this.completed) {
                this.completed = true;
                try {
                    this.val$child.onError(e);
                } finally {
                    unsubscribe();
                }
            }
        }

        @Override // p021rx.Observer
        public void onNext(T i) {
            if (!isUnsubscribed()) {
                int i2 = this.count;
                this.count = i2 + 1;
                if (i2 < OperatorTake.this.limit) {
                    boolean stop = this.count == OperatorTake.this.limit;
                    this.val$child.onNext(i);
                    if (stop && !this.completed) {
                        this.completed = true;
                        try {
                            this.val$child.onCompleted();
                        } finally {
                            unsubscribe();
                        }
                    }
                }
            }
        }

        @Override // p021rx.Subscriber
        public void setProducer(final Producer producer) {
            this.val$child.setProducer(new Producer() { // from class: rx.internal.operators.OperatorTake.1.1
                final AtomicLong requested = new AtomicLong(0);

                @Override // p021rx.Producer
                public void request(long n) {
                    long r;
                    long c;
                    if (n > 0 && !C30021.this.completed) {
                        do {
                            r = this.requested.get();
                            c = Math.min(n, OperatorTake.this.limit - r);
                            if (c == 0) {
                                return;
                            }
                        } while (!this.requested.compareAndSet(r, r + c));
                        producer.request(c);
                    }
                }
            });
        }
    }

    public Subscriber<? super T> call(Subscriber<? super T> child) {
        C30021 c30021 = new C30021(child);
        if (this.limit == 0) {
            child.onCompleted();
            c30021.unsubscribe();
        }
        child.add(c30021);
        return c30021;
    }
}
