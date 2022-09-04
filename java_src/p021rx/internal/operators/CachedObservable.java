package p021rx.internal.operators;

import com.facebook.common.time.Clock;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicLong;
import p021rx.Observable;
import p021rx.Observer;
import p021rx.Producer;
import p021rx.Subscriber;
import p021rx.Subscription;
import p021rx.internal.util.LinkedArrayList;
import p021rx.subscriptions.SerialSubscription;
/* renamed from: rx.internal.operators.CachedObservable */
/* loaded from: classes2.dex */
public final class CachedObservable<T> extends Observable<T> {
    private final CacheState<T> state;

    public static <T> CachedObservable<T> from(Observable<? extends T> source) {
        return from(source, 16);
    }

    public static <T> CachedObservable<T> from(Observable<? extends T> source, int capacityHint) {
        if (capacityHint < 1) {
            throw new IllegalArgumentException("capacityHint > 0 required");
        }
        CacheState<T> state = new CacheState<>(source, capacityHint);
        CachedSubscribe<T> onSubscribe = new CachedSubscribe<>(state);
        return new CachedObservable<>(onSubscribe, state);
    }

    private CachedObservable(Observable.OnSubscribe<T> onSubscribe, CacheState<T> state) {
        super(onSubscribe);
        this.state = state;
    }

    boolean isConnected() {
        return this.state.isConnected;
    }

    boolean hasObservers() {
        return this.state.producers.length != 0;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: rx.internal.operators.CachedObservable$CacheState */
    /* loaded from: classes2.dex */
    public static final class CacheState<T> extends LinkedArrayList implements Observer<T> {
        static final ReplayProducer<?>[] EMPTY = new ReplayProducer[0];
        volatile boolean isConnected;
        final Observable<? extends T> source;
        boolean sourceDone;
        volatile ReplayProducer<?>[] producers = EMPTY;

        /* renamed from: nl */
        final NotificationLite<T> f1500nl = NotificationLite.instance();
        final SerialSubscription connection = new SerialSubscription();

        public CacheState(Observable<? extends T> source, int capacityHint) {
            super(capacityHint);
            this.source = source;
        }

        /* JADX WARN: Multi-variable type inference failed */
        public void addProducer(ReplayProducer<T> p) {
            synchronized (this.connection) {
                ReplayProducer<?>[] a = this.producers;
                int n = a.length;
                ReplayProducer<?>[] b = new ReplayProducer[n + 1];
                System.arraycopy(a, 0, b, 0, n);
                b[n] = p;
                this.producers = b;
            }
        }

        public void removeProducer(ReplayProducer<T> p) {
            synchronized (this.connection) {
                ReplayProducer<?>[] a = this.producers;
                int n = a.length;
                int j = -1;
                int i = 0;
                while (true) {
                    if (i >= n) {
                        break;
                    } else if (!a[i].equals(p)) {
                        i++;
                    } else {
                        j = i;
                        break;
                    }
                }
                if (j >= 0) {
                    if (n == 1) {
                        this.producers = EMPTY;
                        return;
                    }
                    ReplayProducer<?>[] b = new ReplayProducer[n - 1];
                    System.arraycopy(a, 0, b, 0, j);
                    System.arraycopy(a, j + 1, b, j, (n - j) - 1);
                    this.producers = b;
                }
            }
        }

        public void connect() {
            Subscriber<T> subscriber = new Subscriber<T>() { // from class: rx.internal.operators.CachedObservable.CacheState.1
                @Override // p021rx.Observer
                public void onNext(T t) {
                    CacheState.this.onNext(t);
                }

                @Override // p021rx.Observer
                public void onError(Throwable e) {
                    CacheState.this.onError(e);
                }

                @Override // p021rx.Observer
                public void onCompleted() {
                    CacheState.this.onCompleted();
                }
            };
            this.connection.set(subscriber);
            this.source.unsafeSubscribe(subscriber);
            this.isConnected = true;
        }

        @Override // p021rx.Observer
        public void onNext(T t) {
            if (!this.sourceDone) {
                Object o = this.f1500nl.next(t);
                add(o);
                dispatch();
            }
        }

        @Override // p021rx.Observer
        public void onError(Throwable e) {
            if (!this.sourceDone) {
                this.sourceDone = true;
                Object o = this.f1500nl.error(e);
                add(o);
                this.connection.unsubscribe();
                dispatch();
            }
        }

        @Override // p021rx.Observer
        public void onCompleted() {
            if (!this.sourceDone) {
                this.sourceDone = true;
                Object o = this.f1500nl.completed();
                add(o);
                this.connection.unsubscribe();
                dispatch();
            }
        }

        void dispatch() {
            ReplayProducer<?>[] a = this.producers;
            for (ReplayProducer<?> rp : a) {
                rp.replay();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: rx.internal.operators.CachedObservable$CachedSubscribe */
    /* loaded from: classes2.dex */
    public static final class CachedSubscribe<T> extends AtomicBoolean implements Observable.OnSubscribe<T> {
        private static final long serialVersionUID = -2817751667698696782L;
        final CacheState<T> state;

        @Override // p021rx.functions.Action1
        public /* bridge */ /* synthetic */ void call(Object x0) {
            call((Subscriber) ((Subscriber) x0));
        }

        public CachedSubscribe(CacheState<T> state) {
            this.state = state;
        }

        public void call(Subscriber<? super T> t) {
            ReplayProducer<T> rp = new ReplayProducer<>(t, this.state);
            this.state.addProducer(rp);
            t.add(rp);
            t.setProducer(rp);
            if (!get() && compareAndSet(false, true)) {
                this.state.connect();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: rx.internal.operators.CachedObservable$ReplayProducer */
    /* loaded from: classes2.dex */
    public static final class ReplayProducer<T> extends AtomicLong implements Producer, Subscription {
        private static final long serialVersionUID = -2557562030197141021L;
        final Subscriber<? super T> child;
        Object[] currentBuffer;
        int currentIndexInBuffer;
        boolean emitting;
        int index;
        boolean missed;
        final CacheState<T> state;

        public ReplayProducer(Subscriber<? super T> child, CacheState<T> state) {
            this.child = child;
            this.state = state;
        }

        @Override // p021rx.Producer
        public void request(long n) {
            long r;
            long u;
            do {
                r = get();
                if (r >= 0) {
                    u = r + n;
                    if (u < 0) {
                        u = Clock.MAX_TIME;
                    }
                } else {
                    return;
                }
            } while (!compareAndSet(r, u));
            replay();
        }

        public long produced(long n) {
            return addAndGet(-n);
        }

        @Override // p021rx.Subscription
        public boolean isUnsubscribed() {
            return get() < 0;
        }

        @Override // p021rx.Subscription
        public void unsubscribe() {
            long r = get();
            if (r >= 0) {
                long r2 = getAndSet(-1L);
                if (r2 >= 0) {
                    this.state.removeProducer(this);
                }
            }
        }

        public void replay() {
            synchronized (this) {
                if (this.emitting) {
                    this.missed = true;
                    return;
                }
                this.emitting = true;
                try {
                    NotificationLite<T> nl = this.state.f1500nl;
                    Subscriber<? super T> child = this.child;
                    while (true) {
                        long r = get();
                        if (r < 0) {
                            if (1 != 0) {
                                return;
                            }
                            synchronized (this) {
                                this.emitting = false;
                            }
                            return;
                        }
                        int s = this.state.size();
                        if (s != 0) {
                            Object[] b = this.currentBuffer;
                            if (b == null) {
                                b = this.state.head();
                                this.currentBuffer = b;
                            }
                            int n = b.length - 1;
                            int j = this.index;
                            int k = this.currentIndexInBuffer;
                            if (r == 0) {
                                Object o = b[k];
                                if (nl.isCompleted(o)) {
                                    child.onCompleted();
                                    unsubscribe();
                                    if (1 != 0) {
                                        return;
                                    }
                                    synchronized (this) {
                                        this.emitting = false;
                                    }
                                    return;
                                } else if (nl.isError(o)) {
                                    child.onError(nl.getError(o));
                                    unsubscribe();
                                    if (1 != 0) {
                                        return;
                                    }
                                    synchronized (this) {
                                        this.emitting = false;
                                    }
                                    return;
                                }
                            } else if (r > 0) {
                                int valuesProduced = 0;
                                while (j < s && r > 0) {
                                    if (child.isUnsubscribed()) {
                                        if (1 != 0) {
                                            return;
                                        }
                                        synchronized (this) {
                                            this.emitting = false;
                                        }
                                        return;
                                    }
                                    if (k == n) {
                                        b = (Object[]) b[n];
                                        k = 0;
                                    }
                                    if (nl.accept(child, b[k])) {
                                        unsubscribe();
                                        if (1 != 0) {
                                            return;
                                        }
                                        synchronized (this) {
                                            this.emitting = false;
                                        }
                                        return;
                                    }
                                    k++;
                                    j++;
                                    r--;
                                    valuesProduced++;
                                }
                                if (child.isUnsubscribed()) {
                                    if (1 != 0) {
                                        return;
                                    }
                                    synchronized (this) {
                                        this.emitting = false;
                                    }
                                    return;
                                }
                                this.index = j;
                                this.currentIndexInBuffer = k;
                                this.currentBuffer = b;
                                produced(valuesProduced);
                            }
                        }
                        synchronized (this) {
                            if (!this.missed) {
                                this.emitting = false;
                            } else {
                                this.missed = false;
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
}
