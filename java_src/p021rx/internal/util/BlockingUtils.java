package p021rx.internal.util;

import java.util.concurrent.CountDownLatch;
import p021rx.Subscription;
import p021rx.annotations.Experimental;
@Experimental
/* renamed from: rx.internal.util.BlockingUtils */
/* loaded from: classes2.dex */
public final class BlockingUtils {
    private BlockingUtils() {
    }

    @Experimental
    public static void awaitForComplete(CountDownLatch latch, Subscription subscription) {
        if (latch.getCount() != 0) {
            try {
                latch.await();
            } catch (InterruptedException e) {
                subscription.unsubscribe();
                Thread.currentThread().interrupt();
                throw new RuntimeException("Interrupted while waiting for subscription to complete.", e);
            }
        }
    }
}
