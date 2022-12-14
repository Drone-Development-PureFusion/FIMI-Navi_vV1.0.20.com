package p021rx.internal.operators;

import com.facebook.common.time.Clock;
import com.facebook.internal.AnalyticsEvents;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import java.util.Queue;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import java.util.concurrent.atomic.AtomicLongFieldUpdater;
import java.util.concurrent.atomic.AtomicReferenceFieldUpdater;
import p021rx.Observable;
import p021rx.Producer;
import p021rx.Subscriber;
import p021rx.Subscription;
import p021rx.functions.Action0;
import p021rx.functions.Func1;
import p021rx.internal.producers.ProducerArbiter;
import p021rx.internal.util.RxRingBuffer;
import p021rx.internal.util.UtilityFunctions;
import p021rx.observables.GroupedObservable;
import p021rx.plugins.RxJavaPlugins;
import p021rx.subscriptions.Subscriptions;
/* renamed from: rx.internal.operators.OperatorGroupBy */
/* loaded from: classes2.dex */
public final class OperatorGroupBy<T, K, V> implements Observable.Operator<GroupedObservable<K, V>, T> {
    final int bufferSize;
    final boolean delayError;
    final Func1<? super T, ? extends K> keySelector;
    final Func1<? super T, ? extends V> valueSelector;

    @Override // p021rx.functions.Func1
    /* renamed from: call */
    public /* bridge */ /* synthetic */ Object mo1999call(Object x0) {
        return call((Subscriber) ((Subscriber) x0));
    }

    public OperatorGroupBy(Func1<? super T, ? extends K> keySelector) {
        this(keySelector, UtilityFunctions.identity(), RxRingBuffer.SIZE, false);
    }

    public OperatorGroupBy(Func1<? super T, ? extends K> keySelector, Func1<? super T, ? extends V> valueSelector) {
        this(keySelector, valueSelector, RxRingBuffer.SIZE, false);
    }

    public OperatorGroupBy(Func1<? super T, ? extends K> keySelector, Func1<? super T, ? extends V> valueSelector, int bufferSize, boolean delayError) {
        this.keySelector = keySelector;
        this.valueSelector = valueSelector;
        this.bufferSize = bufferSize;
        this.delayError = delayError;
    }

    public Subscriber<? super T> call(Subscriber<? super GroupedObservable<K, V>> t) {
        final GroupBySubscriber<T, K, V> parent = new GroupBySubscriber<>(t, this.keySelector, this.valueSelector, this.bufferSize, this.delayError);
        t.add(Subscriptions.create(new Action0() { // from class: rx.internal.operators.OperatorGroupBy.1
            @Override // p021rx.functions.Action0
            public void call() {
                parent.cancel();
            }
        }));
        t.setProducer(parent.producer);
        return parent;
    }

    /* renamed from: rx.internal.operators.OperatorGroupBy$GroupByProducer */
    /* loaded from: classes2.dex */
    public static final class GroupByProducer implements Producer {
        final GroupBySubscriber<?, ?, ?> parent;

        public GroupByProducer(GroupBySubscriber<?, ?, ?> parent) {
            this.parent = parent;
        }

        @Override // p021rx.Producer
        public void request(long n) {
            this.parent.requestMore(n);
        }
    }

    /* renamed from: rx.internal.operators.OperatorGroupBy$GroupBySubscriber */
    /* loaded from: classes2.dex */
    public static final class GroupBySubscriber<T, K, V> extends Subscriber<T> {
        final Subscriber<? super GroupedObservable<K, V>> actual;
        final int bufferSize;
        volatile int cancelled;
        final boolean delayError;
        volatile boolean done;
        Throwable error;
        volatile int groupCount;
        final Func1<? super T, ? extends K> keySelector;
        volatile long requested;
        final Func1<? super T, ? extends V> valueSelector;
        volatile int wip;
        static final Object NULL_KEY = new Object();
        static final AtomicIntegerFieldUpdater<GroupBySubscriber> CANCELLED = AtomicIntegerFieldUpdater.newUpdater(GroupBySubscriber.class, AnalyticsEvents.PARAMETER_SHARE_OUTCOME_CANCELLED);
        static final AtomicLongFieldUpdater<GroupBySubscriber> REQUESTED = AtomicLongFieldUpdater.newUpdater(GroupBySubscriber.class, "requested");
        static final AtomicIntegerFieldUpdater<GroupBySubscriber> GROUP_COUNT = AtomicIntegerFieldUpdater.newUpdater(GroupBySubscriber.class, "groupCount");
        static final AtomicIntegerFieldUpdater<GroupBySubscriber> WIP = AtomicIntegerFieldUpdater.newUpdater(GroupBySubscriber.class, "wip");
        final Map<Object, GroupedUnicast<K, V>> groups = new ConcurrentHashMap();
        final Queue<GroupedObservable<K, V>> queue = new ConcurrentLinkedQueue();

        /* renamed from: s */
        final ProducerArbiter f1518s = new ProducerArbiter();
        final GroupByProducer producer = new GroupByProducer(this);

        public GroupBySubscriber(Subscriber<? super GroupedObservable<K, V>> actual, Func1<? super T, ? extends K> keySelector, Func1<? super T, ? extends V> valueSelector, int bufferSize, boolean delayError) {
            this.actual = actual;
            this.keySelector = keySelector;
            this.valueSelector = valueSelector;
            this.bufferSize = bufferSize;
            this.delayError = delayError;
            GROUP_COUNT.lazySet(this, 1);
            this.f1518s.request(bufferSize);
        }

        @Override // p021rx.Subscriber
        public void setProducer(Producer s) {
            this.f1518s.setProducer(s);
        }

        @Override // p021rx.Observer
        public void onNext(T t) {
            if (!this.done) {
                Queue<GroupedObservable<K, V>> q = this.queue;
                Subscriber<? super GroupedObservable<K, V>> a = this.actual;
                try {
                    K key = this.keySelector.mo1999call(t);
                    boolean notNew = true;
                    Object mapKey = key != null ? key : NULL_KEY;
                    GroupedUnicast<K, V> group = this.groups.get(mapKey);
                    if (group == null) {
                        if (this.cancelled == 0) {
                            group = GroupedUnicast.createWith(key, this.bufferSize, this, this.delayError);
                            this.groups.put(mapKey, group);
                            GROUP_COUNT.getAndIncrement(this);
                            notNew = false;
                            q.offer(group);
                            drain();
                        } else {
                            return;
                        }
                    }
                    try {
                        V v = this.valueSelector.mo1999call(t);
                        group.onNext(v);
                        if (notNew) {
                            this.f1518s.request(1L);
                        }
                    } catch (Throwable ex) {
                        unsubscribe();
                        errorAll(a, q, ex);
                    }
                } catch (Throwable ex2) {
                    unsubscribe();
                    errorAll(a, q, ex2);
                }
            }
        }

        @Override // p021rx.Observer
        public void onError(Throwable t) {
            if (this.done) {
                RxJavaPlugins.getInstance().getErrorHandler().handleError(t);
                return;
            }
            this.error = t;
            this.done = true;
            GROUP_COUNT.decrementAndGet(this);
            drain();
        }

        @Override // p021rx.Observer
        public void onCompleted() {
            if (!this.done) {
                this.done = true;
                GROUP_COUNT.decrementAndGet(this);
                drain();
            }
        }

        public void requestMore(long n) {
            if (n < 0) {
                throw new IllegalArgumentException("n >= 0 required but it was " + n);
            }
            BackpressureUtils.getAndAddRequest(REQUESTED, this, n);
            drain();
        }

        public void cancel() {
            if (CANCELLED.compareAndSet(this, 0, 1) && GROUP_COUNT.decrementAndGet(this) == 0) {
                unsubscribe();
            }
        }

        public void cancel(K key) {
            Object mapKey = key != null ? key : NULL_KEY;
            if (this.groups.remove(mapKey) != null && GROUP_COUNT.decrementAndGet(this) == 0) {
                unsubscribe();
            }
        }

        void drain() {
            if (WIP.getAndIncrement(this) == 0) {
                int missed = 1;
                Queue<GroupedObservable<K, V>> q = this.queue;
                Subscriber<? super GroupedObservable<K, V>> a = this.actual;
                while (!checkTerminated(this.done, q.isEmpty(), a, q)) {
                    long r = this.requested;
                    boolean unbounded = r == Clock.MAX_TIME;
                    long e = 0;
                    while (r != 0) {
                        boolean d = this.done;
                        GroupedObservable<K, V> t = q.poll();
                        boolean empty = t == null;
                        if (!checkTerminated(d, empty, a, q)) {
                            if (empty) {
                                break;
                            }
                            a.onNext(t);
                            r--;
                            e--;
                        } else {
                            return;
                        }
                    }
                    if (e != 0) {
                        if (!unbounded) {
                            REQUESTED.addAndGet(this, e);
                        }
                        this.f1518s.request(-e);
                    }
                    missed = WIP.addAndGet(this, -missed);
                    if (missed == 0) {
                        return;
                    }
                }
            }
        }

        void errorAll(Subscriber<? super GroupedObservable<K, V>> a, Queue<?> q, Throwable ex) {
            q.clear();
            List<GroupedUnicast<K, V>> list = new ArrayList<>(this.groups.values());
            this.groups.clear();
            for (GroupedUnicast<K, V> e : list) {
                e.onError(ex);
            }
            a.onError(ex);
        }

        boolean checkTerminated(boolean d, boolean empty, Subscriber<? super GroupedObservable<K, V>> a, Queue<?> q) {
            if (d) {
                Throwable err = this.error;
                if (err != null) {
                    errorAll(a, q, err);
                    return true;
                } else if (empty) {
                    List<GroupedUnicast<K, V>> list = new ArrayList<>(this.groups.values());
                    this.groups.clear();
                    for (GroupedUnicast<K, V> e : list) {
                        e.onComplete();
                    }
                    this.actual.onCompleted();
                    return true;
                }
            }
            return false;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: rx.internal.operators.OperatorGroupBy$GroupedUnicast */
    /* loaded from: classes2.dex */
    public static final class GroupedUnicast<K, T> extends GroupedObservable<K, T> {
        final State<T, K> state;

        public static <T, K> GroupedUnicast<K, T> createWith(K key, int bufferSize, GroupBySubscriber<?, K, T> parent, boolean delayError) {
            State<T, K> state = new State<>(bufferSize, parent, key, delayError);
            return new GroupedUnicast<>(key, state);
        }

        protected GroupedUnicast(K key, State<T, K> state) {
            super(key, state);
            this.state = state;
        }

        public void onNext(T t) {
            this.state.onNext(t);
        }

        public void onError(Throwable e) {
            this.state.onError(e);
        }

        public void onComplete() {
            this.state.onComplete();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: rx.internal.operators.OperatorGroupBy$State */
    /* loaded from: classes2.dex */
    public static final class State<T, K> extends AtomicInteger implements Producer, Subscription, Observable.OnSubscribe<T> {
        private static final long serialVersionUID = -3852313036005250360L;
        volatile Subscriber<? super T> actual;
        volatile int cancelled;
        final boolean delayError;
        volatile boolean done;
        Throwable error;
        final K key;
        volatile int once;
        final GroupBySubscriber<?, K, T> parent;
        final Queue<Object> queue = new ConcurrentLinkedQueue();
        volatile long requested;
        static final AtomicLongFieldUpdater<State> REQUESTED = AtomicLongFieldUpdater.newUpdater(State.class, "requested");
        static final AtomicIntegerFieldUpdater<State> CANCELLED = AtomicIntegerFieldUpdater.newUpdater(State.class, AnalyticsEvents.PARAMETER_SHARE_OUTCOME_CANCELLED);
        static final AtomicReferenceFieldUpdater<State, Subscriber> ACTUAL = AtomicReferenceFieldUpdater.newUpdater(State.class, Subscriber.class, "actual");
        static final AtomicIntegerFieldUpdater<State> ONCE = AtomicIntegerFieldUpdater.newUpdater(State.class, "once");

        @Override // p021rx.functions.Action1
        public /* bridge */ /* synthetic */ void call(Object x0) {
            call((Subscriber) ((Subscriber) x0));
        }

        public State(int bufferSize, GroupBySubscriber<?, K, T> parent, K key, boolean delayError) {
            this.parent = parent;
            this.key = key;
            this.delayError = delayError;
        }

        @Override // p021rx.Producer
        public void request(long n) {
            if (n < 0) {
                throw new IllegalArgumentException("n >= required but it was " + n);
            }
            if (n != 0) {
                BackpressureUtils.getAndAddRequest(REQUESTED, this, n);
                drain();
            }
        }

        @Override // p021rx.Subscription
        public boolean isUnsubscribed() {
            return this.cancelled != 0;
        }

        @Override // p021rx.Subscription
        public void unsubscribe() {
            if (CANCELLED.compareAndSet(this, 0, 1) && getAndIncrement() == 0) {
                this.parent.cancel(this.key);
            }
        }

        public void call(Subscriber<? super T> s) {
            if (ONCE.compareAndSet(this, 0, 1)) {
                s.add(this);
                s.setProducer(this);
                ACTUAL.lazySet(this, s);
                drain();
                return;
            }
            s.onError(new IllegalStateException("Only one Subscriber allowed!"));
        }

        public void onNext(T t) {
            if (t == null) {
                this.error = new NullPointerException();
                this.done = true;
            } else {
                this.queue.offer(NotificationLite.instance().next(t));
            }
            drain();
        }

        public void onError(Throwable e) {
            this.error = e;
            this.done = true;
            drain();
        }

        public void onComplete() {
            this.done = true;
            drain();
        }

        void drain() {
            if (getAndIncrement() == 0) {
                int missed = 1;
                Queue<Object> q = this.queue;
                boolean delayError = this.delayError;
                Subscriber<? super T> a = this.actual;
                NotificationLite<T> nl = NotificationLite.instance();
                while (true) {
                    if (a != null) {
                        if (!checkTerminated(this.done, q.isEmpty(), a, delayError)) {
                            long r = this.requested;
                            boolean unbounded = r == Clock.MAX_TIME;
                            long e = 0;
                            while (r != 0) {
                                boolean d = this.done;
                                Object v = q.poll();
                                boolean empty = v == null;
                                if (!checkTerminated(d, empty, a, delayError)) {
                                    if (empty) {
                                        break;
                                    }
                                    a.onNext((Object) nl.getValue(v));
                                    r--;
                                    e--;
                                } else {
                                    return;
                                }
                            }
                            if (e != 0) {
                                if (!unbounded) {
                                    REQUESTED.addAndGet(this, e);
                                }
                                this.parent.f1518s.request(-e);
                            }
                        } else {
                            return;
                        }
                    }
                    missed = addAndGet(-missed);
                    if (missed != 0) {
                        if (a == null) {
                            a = this.actual;
                        }
                    } else {
                        return;
                    }
                }
            }
        }

        boolean checkTerminated(boolean d, boolean empty, Subscriber<? super T> a, boolean delayError) {
            if (this.cancelled != 0) {
                this.queue.clear();
                this.parent.cancel(this.key);
                return true;
            }
            if (d) {
                if (delayError) {
                    if (empty) {
                        Throwable e = this.error;
                        if (e != null) {
                            a.onError(e);
                            return true;
                        }
                        a.onCompleted();
                        return true;
                    }
                } else {
                    Throwable e2 = this.error;
                    if (e2 != null) {
                        this.queue.clear();
                        a.onError(e2);
                        return true;
                    } else if (empty) {
                        a.onCompleted();
                        return true;
                    }
                }
            }
            return false;
        }
    }
}
