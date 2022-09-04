package p021rx.internal.producers;

import com.facebook.common.time.Clock;
import java.util.ArrayList;
import java.util.List;
import p021rx.Observer;
import p021rx.Producer;
import p021rx.Subscriber;
import p021rx.exceptions.Exceptions;
import p021rx.internal.operators.BackpressureUtils;
/* renamed from: rx.internal.producers.ProducerObserverArbiter */
/* loaded from: classes2.dex */
public final class ProducerObserverArbiter<T> implements Producer, Observer<T> {
    static final Producer NULL_PRODUCER = new Producer() { // from class: rx.internal.producers.ProducerObserverArbiter.1
        @Override // p021rx.Producer
        public void request(long n) {
        }
    };
    final Subscriber<? super T> child;
    Producer currentProducer;
    boolean emitting;
    volatile boolean hasError;
    Producer missedProducer;
    long missedRequested;
    Object missedTerminal;
    List<T> queue;
    long requested;

    public ProducerObserverArbiter(Subscriber<? super T> child) {
        this.child = child;
    }

    @Override // p021rx.Observer
    public void onNext(T t) {
        synchronized (this) {
            if (this.emitting) {
                List<T> q = this.queue;
                if (q == null) {
                    q = new ArrayList<>(4);
                    this.queue = q;
                }
                q.add(t);
                return;
            }
            try {
                this.child.onNext(t);
                long r = this.requested;
                if (r != Clock.MAX_TIME) {
                    this.requested = r - 1;
                }
                emitLoop();
                if (1 == 0) {
                    synchronized (this) {
                        this.emitting = false;
                    }
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

    @Override // p021rx.Observer
    public void onError(Throwable e) {
        boolean emit;
        synchronized (this) {
            if (this.emitting) {
                this.missedTerminal = e;
                emit = false;
            } else {
                this.emitting = true;
                emit = true;
            }
        }
        if (emit) {
            this.child.onError(e);
        } else {
            this.hasError = true;
        }
    }

    @Override // p021rx.Observer
    public void onCompleted() {
        synchronized (this) {
            if (this.emitting) {
                this.missedTerminal = true;
                return;
            }
            this.emitting = true;
            this.child.onCompleted();
        }
    }

    @Override // p021rx.Producer
    public void request(long n) {
        if (n < 0) {
            throw new IllegalArgumentException("n >= 0 required");
        }
        if (n != 0) {
            synchronized (this) {
                if (this.emitting) {
                    this.missedRequested += n;
                } else {
                    this.emitting = true;
                    Producer p = this.currentProducer;
                    try {
                        long r = this.requested;
                        long u = r + n;
                        if (u < 0) {
                            u = Clock.MAX_TIME;
                        }
                        this.requested = u;
                        emitLoop();
                        if (1 == 0) {
                            synchronized (this) {
                                this.emitting = false;
                            }
                        }
                        if (p != null) {
                            p.request(n);
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
    }

    public void setProducer(Producer p) {
        synchronized (this) {
            if (this.emitting) {
                if (p == null) {
                    p = NULL_PRODUCER;
                }
                this.missedProducer = p;
                return;
            }
            this.emitting = true;
            this.currentProducer = p;
            long r = this.requested;
            try {
                emitLoop();
                if (1 == 0) {
                    synchronized (this) {
                        this.emitting = false;
                    }
                }
                if (p != null && r != 0) {
                    p.request(r);
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

    /* JADX WARN: Code restructure failed: missing block: B:43:0x0008, code lost:
        continue;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    void emitLoop() {
        long localRequested;
        Producer localProducer;
        Object localTerminal;
        List<T> q;
        Subscriber<? super T> c = this.child;
        long toRequest = 0;
        Producer requestFrom = null;
        while (true) {
            boolean quit = false;
            synchronized (this) {
                localRequested = this.missedRequested;
                localProducer = this.missedProducer;
                localTerminal = this.missedTerminal;
                q = this.queue;
                if (localRequested == 0 && localProducer == null && q == null && localTerminal == null) {
                    this.emitting = false;
                    quit = true;
                } else {
                    this.missedRequested = 0L;
                    this.missedProducer = null;
                    this.queue = null;
                    this.missedTerminal = null;
                }
            }
            if (quit) {
                if (toRequest != 0 && requestFrom != null) {
                    requestFrom.request(toRequest);
                    return;
                }
                return;
            }
            boolean empty = q == null || q.isEmpty();
            if (localTerminal != null) {
                if (localTerminal != Boolean.TRUE) {
                    c.onError((Throwable) localTerminal);
                    return;
                } else if (empty) {
                    c.onCompleted();
                    return;
                }
            }
            long e = 0;
            if (q != null) {
                for (T t : q) {
                    if (!c.isUnsubscribed()) {
                        if (!this.hasError) {
                            try {
                                c.onNext(t);
                            } catch (Throwable ex) {
                                Exceptions.throwOrReport(ex, c, t);
                                return;
                            }
                        }
                    } else {
                        return;
                    }
                }
                e = 0 + q.size();
            }
            long r = this.requested;
            if (r != Clock.MAX_TIME) {
                if (localRequested != 0) {
                    long u = r + localRequested;
                    if (u < 0) {
                        u = Clock.MAX_TIME;
                    }
                    r = u;
                }
                if (e != 0 && r != Clock.MAX_TIME) {
                    long u2 = r - e;
                    if (u2 < 0) {
                        throw new IllegalStateException("More produced than requested");
                    }
                    r = u2;
                }
                this.requested = r;
            }
            if (localProducer != null) {
                if (localProducer == NULL_PRODUCER) {
                    this.currentProducer = null;
                } else {
                    this.currentProducer = localProducer;
                    if (r != 0) {
                        toRequest = BackpressureUtils.addCap(toRequest, r);
                        requestFrom = localProducer;
                    }
                }
            } else {
                Producer p = this.currentProducer;
                if (p != null && localRequested != 0) {
                    toRequest = BackpressureUtils.addCap(toRequest, localRequested);
                    requestFrom = p;
                }
            }
        }
    }
}
