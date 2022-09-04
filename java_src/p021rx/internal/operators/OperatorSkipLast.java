package p021rx.internal.operators;

import java.util.ArrayDeque;
import java.util.Deque;
import p021rx.Observable;
import p021rx.Subscriber;
/* renamed from: rx.internal.operators.OperatorSkipLast */
/* loaded from: classes2.dex */
public class OperatorSkipLast<T> implements Observable.Operator<T, T> {
    final int count;

    @Override // p021rx.functions.Func1
    /* renamed from: call */
    public /* bridge */ /* synthetic */ Object mo1999call(Object x0) {
        return call((Subscriber) ((Subscriber) x0));
    }

    public OperatorSkipLast(int count) {
        if (count < 0) {
            throw new IndexOutOfBoundsException("count could not be negative");
        }
        this.count = count;
    }

    public Subscriber<? super T> call(final Subscriber<? super T> subscriber) {
        return (Subscriber<T>) new Subscriber<T>(subscriber) { // from class: rx.internal.operators.OperatorSkipLast.1

            /* renamed from: on */
            private final NotificationLite<T> f1531on = NotificationLite.instance();
            private final Deque<Object> deque = new ArrayDeque();

            @Override // p021rx.Observer
            public void onCompleted() {
                subscriber.onCompleted();
            }

            @Override // p021rx.Observer
            public void onError(Throwable e) {
                subscriber.onError(e);
            }

            @Override // p021rx.Observer
            public void onNext(T value) {
                if (OperatorSkipLast.this.count == 0) {
                    subscriber.onNext(value);
                    return;
                }
                if (this.deque.size() == OperatorSkipLast.this.count) {
                    subscriber.onNext(this.f1531on.getValue(this.deque.removeFirst()));
                } else {
                    request(1L);
                }
                this.deque.offerLast(this.f1531on.next(value));
            }
        };
    }
}
