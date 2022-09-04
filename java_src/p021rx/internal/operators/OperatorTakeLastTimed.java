package p021rx.internal.operators;

import com.facebook.common.time.Clock;
import java.util.ArrayDeque;
import java.util.Deque;
import java.util.concurrent.TimeUnit;
import p021rx.Observable;
import p021rx.Scheduler;
import p021rx.Subscriber;
/* renamed from: rx.internal.operators.OperatorTakeLastTimed */
/* loaded from: classes2.dex */
public final class OperatorTakeLastTimed<T> implements Observable.Operator<T, T> {
    final long ageMillis;
    final int count;
    final Scheduler scheduler;

    @Override // p021rx.functions.Func1
    /* renamed from: call */
    public /* bridge */ /* synthetic */ Object mo1999call(Object x0) {
        return call((Subscriber) ((Subscriber) x0));
    }

    public OperatorTakeLastTimed(long time, TimeUnit unit, Scheduler scheduler) {
        this.ageMillis = unit.toMillis(time);
        this.scheduler = scheduler;
        this.count = -1;
    }

    public OperatorTakeLastTimed(int count, long time, TimeUnit unit, Scheduler scheduler) {
        if (count < 0) {
            throw new IndexOutOfBoundsException("count could not be negative");
        }
        this.ageMillis = unit.toMillis(time);
        this.scheduler = scheduler;
        this.count = count;
    }

    public Subscriber<? super T> call(final Subscriber<? super T> subscriber) {
        final Deque<Object> buffer = new ArrayDeque<>();
        final Deque<Long> timestampBuffer = new ArrayDeque<>();
        final NotificationLite<T> notification = NotificationLite.instance();
        final TakeLastQueueProducer<T> producer = new TakeLastQueueProducer<>(notification, buffer, subscriber);
        subscriber.setProducer(producer);
        return (Subscriber<T>) new Subscriber<T>(subscriber) { // from class: rx.internal.operators.OperatorTakeLastTimed.1
            protected void runEvictionPolicy(long now) {
                while (OperatorTakeLastTimed.this.count >= 0 && buffer.size() > OperatorTakeLastTimed.this.count) {
                    timestampBuffer.pollFirst();
                    buffer.pollFirst();
                }
                while (!buffer.isEmpty()) {
                    long v = ((Long) timestampBuffer.peekFirst()).longValue();
                    if (v < now - OperatorTakeLastTimed.this.ageMillis) {
                        timestampBuffer.pollFirst();
                        buffer.pollFirst();
                    } else {
                        return;
                    }
                }
            }

            @Override // p021rx.Subscriber
            public void onStart() {
                request(Clock.MAX_TIME);
            }

            @Override // p021rx.Observer
            public void onNext(T args) {
                long t = OperatorTakeLastTimed.this.scheduler.now();
                timestampBuffer.add(Long.valueOf(t));
                buffer.add(notification.next(args));
                runEvictionPolicy(t);
            }

            @Override // p021rx.Observer
            public void onError(Throwable e) {
                timestampBuffer.clear();
                buffer.clear();
                subscriber.onError(e);
            }

            @Override // p021rx.Observer
            public void onCompleted() {
                runEvictionPolicy(OperatorTakeLastTimed.this.scheduler.now());
                timestampBuffer.clear();
                buffer.offer(notification.completed());
                producer.startEmitting();
            }
        };
    }
}
