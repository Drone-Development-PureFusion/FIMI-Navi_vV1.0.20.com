package p021rx.internal.operators;

import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import p021rx.Observable;
import p021rx.Subscriber;
import p021rx.exceptions.Exceptions;
import p021rx.functions.Action0;
import p021rx.subscriptions.Subscriptions;
/* renamed from: rx.internal.operators.OnSubscribeToObservableFuture */
/* loaded from: classes2.dex */
public final class OnSubscribeToObservableFuture {
    private OnSubscribeToObservableFuture() {
        throw new IllegalStateException("No instances!");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: rx.internal.operators.OnSubscribeToObservableFuture$ToObservableFuture */
    /* loaded from: classes2.dex */
    public static class ToObservableFuture<T> implements Observable.OnSubscribe<T> {
        final Future<? extends T> that;
        private final long time;
        private final TimeUnit unit;

        @Override // p021rx.functions.Action1
        public /* bridge */ /* synthetic */ void call(Object x0) {
            call((Subscriber) ((Subscriber) x0));
        }

        public ToObservableFuture(Future<? extends T> that) {
            this.that = that;
            this.time = 0L;
            this.unit = null;
        }

        public ToObservableFuture(Future<? extends T> that, long time, TimeUnit unit) {
            this.that = that;
            this.time = time;
            this.unit = unit;
        }

        public void call(Subscriber<? super T> subscriber) {
            subscriber.add(Subscriptions.create(new Action0() { // from class: rx.internal.operators.OnSubscribeToObservableFuture.ToObservableFuture.1
                @Override // p021rx.functions.Action0
                public void call() {
                    ToObservableFuture.this.that.cancel(true);
                }
            }));
            try {
                if (!subscriber.isUnsubscribed()) {
                    T value = this.unit == null ? this.that.get() : this.that.get(this.time, this.unit);
                    subscriber.onNext(value);
                    subscriber.onCompleted();
                }
            } catch (Throwable e) {
                if (!subscriber.isUnsubscribed()) {
                    Exceptions.throwOrReport(e, subscriber);
                }
            }
        }
    }

    public static <T> Observable.OnSubscribe<T> toObservableFuture(Future<? extends T> that) {
        return new ToObservableFuture(that);
    }

    public static <T> Observable.OnSubscribe<T> toObservableFuture(Future<? extends T> that, long time, TimeUnit unit) {
        return new ToObservableFuture(that, time, unit);
    }
}
