package p021rx.internal.util;

import com.facebook.common.time.Clock;
import java.util.concurrent.atomic.AtomicLong;
import p021rx.Producer;
import p021rx.annotations.Experimental;
@Experimental
/* renamed from: rx.internal.util.BackpressureDrainManager */
/* loaded from: classes2.dex */
public final class BackpressureDrainManager extends AtomicLong implements Producer {
    protected final BackpressureQueueCallback actual;
    protected boolean emitting;
    protected Throwable exception;
    protected volatile boolean terminated;

    /* renamed from: rx.internal.util.BackpressureDrainManager$BackpressureQueueCallback */
    /* loaded from: classes2.dex */
    public interface BackpressureQueueCallback {
        boolean accept(Object obj);

        void complete(Throwable th);

        Object peek();

        Object poll();
    }

    public BackpressureDrainManager(BackpressureQueueCallback actual) {
        this.actual = actual;
    }

    public final boolean isTerminated() {
        return this.terminated;
    }

    public final void terminate() {
        this.terminated = true;
    }

    public final void terminate(Throwable error) {
        if (!this.terminated) {
            this.exception = error;
            this.terminated = true;
        }
    }

    public final void terminateAndDrain() {
        this.terminated = true;
        drain();
    }

    public final void terminateAndDrain(Throwable error) {
        if (!this.terminated) {
            this.exception = error;
            this.terminated = true;
            drain();
        }
    }

    @Override // p021rx.Producer
    public final void request(long n) {
        long r;
        boolean mayDrain;
        long u;
        if (n != 0) {
            do {
                r = get();
                mayDrain = r == 0;
                if (r == Clock.MAX_TIME) {
                    break;
                } else if (n == Clock.MAX_TIME) {
                    u = n;
                    mayDrain = true;
                } else if (r > Clock.MAX_TIME - n) {
                    u = Clock.MAX_TIME;
                } else {
                    u = r + n;
                }
            } while (!compareAndSet(r, u));
            if (mayDrain) {
                drain();
            }
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:29:0x005f, code lost:
        if (1 != 0) goto L41;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0061, code lost:
        monitor-enter(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x0063, code lost:
        r14.emitting = false;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x0065, code lost:
        monitor-exit(r14);
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:?, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:41:?, code lost:
        return;
     */
    /* JADX WARN: Code restructure failed: missing block: B:52:0x00af, code lost:
        r14.emitting = false;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public final void drain() {
        synchronized (this) {
            if (this.emitting) {
                return;
            }
            this.emitting = true;
            boolean term = this.terminated;
            long n = get();
            try {
                BackpressureQueueCallback a = this.actual;
                while (true) {
                    int emitted = 0;
                    while (true) {
                        if (n <= 0 && !term) {
                            break;
                        }
                        if (term) {
                            if (a.peek() != null) {
                                if (n == 0) {
                                    break;
                                }
                            } else {
                                Throwable e = this.exception;
                                a.complete(e);
                                if (1 != 0) {
                                    return;
                                }
                                synchronized (this) {
                                    this.emitting = false;
                                }
                                return;
                            }
                        }
                        Object o = a.poll();
                        if (o == null) {
                            break;
                        } else if (a.accept(o)) {
                            if (1 != 0) {
                                return;
                            }
                            synchronized (this) {
                                this.emitting = false;
                            }
                            return;
                        } else {
                            n--;
                            emitted++;
                        }
                    }
                    synchronized (this) {
                        term = this.terminated;
                        boolean more = a.peek() != null;
                        if (get() != Clock.MAX_TIME) {
                            n = addAndGet(-emitted);
                            if ((n == 0 || !more) && (!term || more)) {
                                break;
                            }
                        } else if (more || term) {
                            n = Clock.MAX_TIME;
                        } else {
                            this.emitting = false;
                        }
                    }
                    if (1 != 0) {
                        return;
                    }
                    synchronized (this) {
                        this.emitting = false;
                    }
                    return;
                }
            } catch (Throwable th) {
                if (0 == 0) {
                    synchronized (this) {
                        this.emitting = false;
                    }
                }
                throw th;
            }
        }
    }
}
