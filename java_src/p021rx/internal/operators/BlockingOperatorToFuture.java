package p021rx.internal.operators;

import java.util.concurrent.CancellationException;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.TimeoutException;
import java.util.concurrent.atomic.AtomicReference;
import p021rx.Observable;
import p021rx.Subscriber;
import p021rx.Subscription;
/* renamed from: rx.internal.operators.BlockingOperatorToFuture */
/* loaded from: classes2.dex */
public final class BlockingOperatorToFuture {
    private BlockingOperatorToFuture() {
        throw new IllegalStateException("No instances!");
    }

    public static <T> Future<T> toFuture(Observable<? extends T> that) {
        final CountDownLatch finished = new CountDownLatch(1);
        final AtomicReference<T> value = new AtomicReference<>();
        final AtomicReference<Throwable> error = new AtomicReference<>();
        final Subscription s = that.single().subscribe((Subscriber<? super Object>) ((Subscriber<T>) new Subscriber<T>() { // from class: rx.internal.operators.BlockingOperatorToFuture.1
            @Override // p021rx.Observer
            public void onCompleted() {
                finished.countDown();
            }

            @Override // p021rx.Observer
            public void onError(Throwable e) {
                error.compareAndSet(null, e);
                finished.countDown();
            }

            @Override // p021rx.Observer
            public void onNext(T v) {
                value.set(v);
            }
        }));
        return new Future<T>() { // from class: rx.internal.operators.BlockingOperatorToFuture.2
            private volatile boolean cancelled = false;

            @Override // java.util.concurrent.Future
            public boolean cancel(boolean mayInterruptIfRunning) {
                if (finished.getCount() > 0) {
                    this.cancelled = true;
                    s.unsubscribe();
                    finished.countDown();
                    return true;
                }
                return false;
            }

            @Override // java.util.concurrent.Future
            public boolean isCancelled() {
                return this.cancelled;
            }

            @Override // java.util.concurrent.Future
            public boolean isDone() {
                return finished.getCount() == 0;
            }

            /* JADX WARN: Type inference failed for: r0v1, types: [T, java.lang.Object] */
            @Override // java.util.concurrent.Future
            public T get() throws InterruptedException, ExecutionException {
                finished.await();
                return getValue();
            }

            /* JADX WARN: Type inference failed for: r0v3, types: [T, java.lang.Object] */
            @Override // java.util.concurrent.Future
            public T get(long timeout, TimeUnit unit) throws InterruptedException, ExecutionException, TimeoutException {
                if (finished.await(timeout, unit)) {
                    return getValue();
                }
                throw new TimeoutException("Timed out after " + unit.toMillis(timeout) + "ms waiting for underlying Observable.");
            }

            /* JADX WARN: Type inference failed for: r1v3, types: [T, java.lang.Object] */
            private T getValue() throws ExecutionException {
                Throwable throwable = (Throwable) error.get();
                if (throwable != null) {
                    throw new ExecutionException("Observable onError", throwable);
                }
                if (this.cancelled) {
                    throw new CancellationException("Subscription unsubscribed");
                }
                return value.get();
            }
        };
    }
}
