package p021rx.internal.operators;

import com.facebook.common.time.Clock;
import java.util.ArrayDeque;
import java.util.Deque;
import p021rx.Observable;
import p021rx.Subscriber;
/* renamed from: rx.internal.operators.OperatorTakeLast */
/* loaded from: classes2.dex */
public final class OperatorTakeLast<T> implements Observable.Operator<T, T> {
    final int count;

    @Override // p021rx.functions.Func1
    /* renamed from: call */
    public /* bridge */ /* synthetic */ Object mo1999call(Object x0) {
        return call((Subscriber) ((Subscriber) x0));
    }

    public OperatorTakeLast(int count) {
        if (count < 0) {
            throw new IndexOutOfBoundsException("count cannot be negative");
        }
        this.count = count;
    }

    public Subscriber<? super T> call(final Subscriber<? super T> subscriber) {
        final Deque<Object> deque = new ArrayDeque<>();
        final NotificationLite<T> notification = NotificationLite.instance();
        final TakeLastQueueProducer<T> producer = new TakeLastQueueProducer<>(notification, deque, subscriber);
        subscriber.setProducer(producer);
        return (Subscriber<T>) new Subscriber<T>(subscriber) { // from class: rx.internal.operators.OperatorTakeLast.1
            @Override // p021rx.Subscriber
            public void onStart() {
                request(Clock.MAX_TIME);
            }

            @Override // p021rx.Observer
            public void onCompleted() {
                deque.offer(notification.completed());
                producer.startEmitting();
            }

            @Override // p021rx.Observer
            public void onError(Throwable e) {
                deque.clear();
                subscriber.onError(e);
            }

            @Override // p021rx.Observer
            public void onNext(T value) {
                if (OperatorTakeLast.this.count != 0) {
                    if (deque.size() == OperatorTakeLast.this.count) {
                        deque.removeFirst();
                    }
                    deque.offerLast(notification.next(value));
                }
            }
        };
    }
}
