package p021rx.internal.operators;

import com.facebook.common.time.Clock;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
/* renamed from: rx.internal.operators.BackpressureUtils */
/* loaded from: classes2.dex */
public final class BackpressureUtils {
    private BackpressureUtils() {
        throw new IllegalStateException("No instances!");
    }

    public static <T> long getAndAddRequest(AtomicLongFieldUpdater<T> requested, T object, long n) {
        long current;
        long next;
        do {
            current = requested.get(object);
            next = addCap(current, n);
        } while (!requested.compareAndSet(object, current, next));
        return current;
    }

    public static long getAndAddRequest(AtomicLong requested, long n) {
        long current;
        long next;
        do {
            current = requested.get();
            next = addCap(current, n);
        } while (!requested.compareAndSet(current, next));
        return current;
    }

    public static long multiplyCap(long a, long b) {
        long u = a * b;
        if (((a | b) >>> 31) != 0 && b != 0 && u / b != a) {
            return Clock.MAX_TIME;
        }
        return u;
    }

    public static long addCap(long a, long b) {
        long u = a + b;
        if (u < 0) {
            return Clock.MAX_TIME;
        }
        return u;
    }

    public static long produced(AtomicLong requested, long n) {
        long current;
        long next;
        do {
            current = requested.get();
            if (current == Clock.MAX_TIME) {
                return Clock.MAX_TIME;
            }
            next = current - n;
            if (next < 0) {
                throw new IllegalStateException("More produced than requested: " + next);
            }
        } while (!requested.compareAndSet(current, next));
        return next;
    }
}
