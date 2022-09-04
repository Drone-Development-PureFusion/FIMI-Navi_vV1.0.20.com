package p021rx.singles;

import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Future;
import java.util.concurrent.atomic.AtomicReference;
import p021rx.Single;
import p021rx.SingleSubscriber;
import p021rx.Subscription;
import p021rx.annotations.Experimental;
import p021rx.internal.operators.BlockingOperatorToFuture;
import p021rx.internal.util.BlockingUtils;
@Experimental
/* renamed from: rx.singles.BlockingSingle */
/* loaded from: classes2.dex */
public class BlockingSingle<T> {
    private final Single<? extends T> single;

    private BlockingSingle(Single<? extends T> single) {
        this.single = single;
    }

    @Experimental
    public static <T> BlockingSingle<T> from(Single<? extends T> single) {
        return new BlockingSingle<>(single);
    }

    @Experimental
    public T value() {
        final AtomicReference<T> returnItem = new AtomicReference<>();
        final AtomicReference<Throwable> returnException = new AtomicReference<>();
        final CountDownLatch latch = new CountDownLatch(1);
        Subscription subscription = this.single.subscribe((SingleSubscriber<? super Object>) new SingleSubscriber<T>() { // from class: rx.singles.BlockingSingle.1
            @Override // p021rx.SingleSubscriber
            public void onSuccess(T value) {
                returnItem.set(value);
                latch.countDown();
            }

            @Override // p021rx.SingleSubscriber
            public void onError(Throwable error) {
                returnException.set(error);
                latch.countDown();
            }
        });
        BlockingUtils.awaitForComplete(latch, subscription);
        Throwable throwable = returnException.get();
        if (throwable != null) {
            if (throwable instanceof RuntimeException) {
                throw ((RuntimeException) throwable);
            }
            throw new RuntimeException(throwable);
        }
        return returnItem.get();
    }

    @Experimental
    public Future<T> toFuture() {
        return BlockingOperatorToFuture.toFuture(this.single.toObservable());
    }
}
