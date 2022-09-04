package p021rx.internal.operators;

import com.facebook.common.time.Clock;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicLong;
import java.util.concurrent.atomic.AtomicReference;
import p021rx.Observable;
import p021rx.Observer;
import p021rx.Producer;
import p021rx.Subscriber;
import p021rx.exceptions.Exceptions;
import p021rx.exceptions.OnErrorThrowable;
import p021rx.functions.Action0;
import p021rx.internal.util.atomic.SpscLinkedAtomicQueue;
import p021rx.internal.util.atomic.SpscUnboundedAtomicArrayQueue;
import p021rx.internal.util.unsafe.SpscLinkedQueue;
import p021rx.internal.util.unsafe.SpscUnboundedArrayQueue;
import p021rx.internal.util.unsafe.UnsafeAccess;
import p021rx.subjects.Subject;
import p021rx.subscriptions.Subscriptions;
/* renamed from: rx.internal.operators.UnicastSubject */
/* loaded from: classes2.dex */
public final class UnicastSubject<T> extends Subject<T, T> {
    final State<T> state;

    public static <T> UnicastSubject<T> create() {
        return create(16);
    }

    public static <T> UnicastSubject<T> create(int capacityHint) {
        State<T> state = new State<>(capacityHint);
        return new UnicastSubject<>(state);
    }

    private UnicastSubject(State<T> state) {
        super(state);
        this.state = state;
    }

    @Override // p021rx.Observer
    public void onNext(T t) {
        this.state.onNext(t);
    }

    @Override // p021rx.Observer
    public void onError(Throwable e) {
        this.state.onError(e);
    }

    @Override // p021rx.Observer
    public void onCompleted() {
        this.state.onCompleted();
    }

    @Override // p021rx.subjects.Subject
    public boolean hasObservers() {
        return this.state.subscriber.get() != null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: rx.internal.operators.UnicastSubject$State */
    /* loaded from: classes2.dex */
    public static final class State<T> extends AtomicLong implements Producer, Observer<T>, Action0, Observable.OnSubscribe<T> {
        private static final long serialVersionUID = -9044104859202255786L;
        volatile boolean caughtUp;
        volatile boolean done;
        boolean emitting;
        Throwable error;
        boolean missed;
        final Queue<Object> queue;

        /* renamed from: nl */
        final NotificationLite<T> f1537nl = NotificationLite.instance();
        final AtomicReference<Subscriber<? super T>> subscriber = new AtomicReference<>();

        @Override // p021rx.functions.Action1
        public /* bridge */ /* synthetic */ void call(Object x0) {
            call((Subscriber) ((Subscriber) x0));
        }

        public State(int capacityHint) {
            Queue<Object> q;
            if (capacityHint > 1) {
                q = UnsafeAccess.isUnsafeAvailable() ? new SpscUnboundedArrayQueue<>(capacityHint) : new SpscUnboundedAtomicArrayQueue<>(capacityHint);
            } else {
                q = UnsafeAccess.isUnsafeAvailable() ? new SpscLinkedQueue<>() : new SpscLinkedAtomicQueue<>();
            }
            this.queue = q;
        }

        @Override // p021rx.Observer
        public void onNext(T t) {
            if (!this.done) {
                if (!this.caughtUp) {
                    boolean stillReplay = false;
                    synchronized (this) {
                        if (!this.caughtUp) {
                            this.queue.offer(this.f1537nl.next(t));
                            stillReplay = true;
                        }
                    }
                    if (stillReplay) {
                        replay();
                        return;
                    }
                }
                Subscriber<? super T> s = this.subscriber.get();
                try {
                    s.onNext(t);
                } catch (Throwable ex) {
                    Exceptions.throwOrReport(ex, s, t);
                }
            }
        }

        @Override // p021rx.Observer
        public void onError(Throwable e) {
            boolean stillReplay;
            if (!this.done) {
                this.error = e;
                this.done = true;
                if (!this.caughtUp) {
                    synchronized (this) {
                        stillReplay = !this.caughtUp;
                    }
                    if (stillReplay) {
                        replay();
                        return;
                    }
                }
                this.subscriber.get().onError(e);
            }
        }

        @Override // p021rx.Observer
        public void onCompleted() {
            boolean stillReplay;
            if (!this.done) {
                this.done = true;
                if (!this.caughtUp) {
                    synchronized (this) {
                        stillReplay = !this.caughtUp;
                    }
                    if (stillReplay) {
                        replay();
                        return;
                    }
                }
                this.subscriber.get().onCompleted();
            }
        }

        @Override // p021rx.Producer
        public void request(long n) {
            if (n < 0) {
                throw new IllegalArgumentException("n >= 0 required");
            }
            if (n > 0) {
                BackpressureUtils.getAndAddRequest(this, n);
                replay();
            } else if (this.done) {
                replay();
            }
        }

        public void call(Subscriber<? super T> subscriber) {
            if (this.subscriber.compareAndSet(null, subscriber)) {
                subscriber.add(Subscriptions.create(this));
                subscriber.setProducer(this);
                return;
            }
            subscriber.onError(new IllegalStateException("Only a single subscriber is allowed"));
        }

        /* JADX WARN: Code restructure failed: missing block: B:56:0x005f, code lost:
            if (r9 == false) goto L60;
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:0x0065, code lost:
            if (r5.isEmpty() == false) goto L60;
         */
        /* JADX WARN: Code restructure failed: missing block: B:59:0x0067, code lost:
            r14.caughtUp = true;
         */
        /* JADX WARN: Code restructure failed: missing block: B:60:0x006a, code lost:
            r14.emitting = false;
         */
        /* JADX WARN: Code restructure failed: missing block: B:63:?, code lost:
            return;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        void replay() {
            synchronized (this) {
                if (this.emitting) {
                    this.missed = true;
                    return;
                }
                this.emitting = true;
                Queue<Object> q = this.queue;
                while (true) {
                    Subscriber<? super T> s = this.subscriber.get();
                    boolean unlimited = false;
                    if (s != null) {
                        boolean d = this.done;
                        if (!checkTerminated(d, q.isEmpty(), s)) {
                            long r = get();
                            unlimited = r == Clock.MAX_TIME;
                            long e = 0;
                            while (r != 0) {
                                boolean d2 = this.done;
                                Object v = q.poll();
                                boolean empty = v == null;
                                if (!checkTerminated(d2, empty, s)) {
                                    if (empty) {
                                        break;
                                    }
                                    Object obj = (T) this.f1537nl.getValue(v);
                                    try {
                                        s.onNext(obj);
                                        r--;
                                        e++;
                                    } catch (Throwable ex) {
                                        q.clear();
                                        Exceptions.throwIfFatal(ex);
                                        s.onError(OnErrorThrowable.addValueAsLastCause(ex, obj));
                                        return;
                                    }
                                } else {
                                    return;
                                }
                            }
                            if (!unlimited && e != 0) {
                                addAndGet(-e);
                            }
                        } else {
                            return;
                        }
                    }
                    synchronized (this) {
                        if (!this.missed) {
                            break;
                        }
                        this.missed = false;
                    }
                }
            }
        }

        @Override // p021rx.functions.Action0
        public void call() {
            this.done = true;
            synchronized (this) {
                if (!this.emitting) {
                    this.emitting = true;
                    this.queue.clear();
                }
            }
        }

        boolean checkTerminated(boolean done, boolean empty, Subscriber<? super T> s) {
            if (s.isUnsubscribed()) {
                this.queue.clear();
                return true;
            }
            if (done) {
                Throwable e = this.error;
                if (e != null) {
                    this.queue.clear();
                    s.onError(e);
                    return true;
                } else if (empty) {
                    s.onCompleted();
                    return true;
                }
            }
            return false;
        }
    }
}
