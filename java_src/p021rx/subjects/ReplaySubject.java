package p021rx.subjects;

import java.lang.reflect.Array;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicInteger;
import p021rx.Observable;
import p021rx.Observer;
import p021rx.Scheduler;
import p021rx.annotations.Beta;
import p021rx.exceptions.Exceptions;
import p021rx.functions.Action1;
import p021rx.functions.Func1;
import p021rx.internal.operators.NotificationLite;
import p021rx.internal.util.UtilityFunctions;
import p021rx.schedulers.Timestamped;
import p021rx.subjects.SubjectSubscriptionManager;
/* renamed from: rx.subjects.ReplaySubject */
/* loaded from: classes2.dex */
public final class ReplaySubject<T> extends Subject<T, T> {
    private static final Object[] EMPTY_ARRAY = new Object[0];
    final SubjectSubscriptionManager<T> ssm;
    final ReplayState<T, ?> state;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: rx.subjects.ReplaySubject$EvictionPolicy */
    /* loaded from: classes2.dex */
    public interface EvictionPolicy {
        void evict(NodeList<Object> nodeList);

        void evictFinal(NodeList<Object> nodeList);

        boolean test(Object obj, long j);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: rx.subjects.ReplaySubject$ReplayState */
    /* loaded from: classes2.dex */
    public interface ReplayState<T, I> {
        void complete();

        void error(Throwable th);

        boolean isEmpty();

        T latest();

        void next(T t);

        boolean replayObserver(SubjectSubscriptionManager.SubjectObserver<? super T> subjectObserver);

        I replayObserverFromIndex(I i, SubjectSubscriptionManager.SubjectObserver<? super T> subjectObserver);

        I replayObserverFromIndexTest(I i, SubjectSubscriptionManager.SubjectObserver<? super T> subjectObserver, long j);

        int size();

        boolean terminated();

        T[] toArray(T[] tArr);
    }

    public static <T> ReplaySubject<T> create() {
        return create(16);
    }

    public static <T> ReplaySubject<T> create(int capacity) {
        final UnboundedReplayState<T> state = new UnboundedReplayState<>(capacity);
        SubjectSubscriptionManager<T> ssm = new SubjectSubscriptionManager<>();
        ssm.onStart = new Action1<SubjectSubscriptionManager.SubjectObserver<T>>() { // from class: rx.subjects.ReplaySubject.1
            @Override // p021rx.functions.Action1
            public /* bridge */ /* synthetic */ void call(Object x0) {
                call((SubjectSubscriptionManager.SubjectObserver) ((SubjectSubscriptionManager.SubjectObserver) x0));
            }

            public void call(SubjectSubscriptionManager.SubjectObserver<T> o) {
                int lastIndex = UnboundedReplayState.this.replayObserverFromIndex((Integer) 0, (SubjectSubscriptionManager.SubjectObserver) o).intValue();
                o.index(Integer.valueOf(lastIndex));
            }
        };
        ssm.onAdded = new Action1<SubjectSubscriptionManager.SubjectObserver<T>>() { // from class: rx.subjects.ReplaySubject.2
            @Override // p021rx.functions.Action1
            public /* bridge */ /* synthetic */ void call(Object x0) {
                call((SubjectSubscriptionManager.SubjectObserver) ((SubjectSubscriptionManager.SubjectObserver) x0));
            }

            /* JADX WARN: Removed duplicated region for block: B:24:0x003e  */
            /* JADX WARN: Removed duplicated region for block: B:36:? A[RETURN, SYNTHETIC] */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public void call(SubjectSubscriptionManager.SubjectObserver<T> o) {
                synchronized (o) {
                    if (o.first && !o.emitting) {
                        o.first = false;
                        o.emitting = true;
                        boolean skipFinal = false;
                        try {
                            UnboundedReplayState<T> localState = UnboundedReplayState.this;
                            while (true) {
                                int idx = ((Integer) o.index()).intValue();
                                int sidx = localState.get();
                                if (idx != sidx) {
                                    Integer j = localState.replayObserverFromIndex(Integer.valueOf(idx), (SubjectSubscriptionManager.SubjectObserver) o);
                                    o.index(j);
                                }
                                synchronized (o) {
                                    if (sidx == localState.get()) {
                                        break;
                                    }
                                }
                                if (1 != 0) {
                                    synchronized (o) {
                                        o.emitting = false;
                                    }
                                    return;
                                }
                                return;
                            }
                            o.emitting = false;
                            skipFinal = true;
                            if (1 != 0) {
                            }
                        } catch (Throwable th) {
                            if (!skipFinal) {
                                synchronized (o) {
                                    o.emitting = false;
                                }
                            }
                            throw th;
                        }
                    }
                }
            }
        };
        ssm.onTerminated = new Action1<SubjectSubscriptionManager.SubjectObserver<T>>() { // from class: rx.subjects.ReplaySubject.3
            @Override // p021rx.functions.Action1
            public /* bridge */ /* synthetic */ void call(Object x0) {
                call((SubjectSubscriptionManager.SubjectObserver) ((SubjectSubscriptionManager.SubjectObserver) x0));
            }

            public void call(SubjectSubscriptionManager.SubjectObserver<T> o) {
                int idx = (Integer) o.index();
                if (idx == null) {
                    idx = 0;
                }
                UnboundedReplayState.this.replayObserverFromIndex(idx, (SubjectSubscriptionManager.SubjectObserver) o);
            }
        };
        return new ReplaySubject<>(ssm, ssm, state);
    }

    static <T> ReplaySubject<T> createUnbounded() {
        BoundedState<T> state = new BoundedState<>(new EmptyEvictionPolicy(), UtilityFunctions.identity(), UtilityFunctions.identity());
        return createWithState(state, new DefaultOnAdd(state));
    }

    public static <T> ReplaySubject<T> createWithSize(int size) {
        BoundedState<T> state = new BoundedState<>(new SizeEvictionPolicy(size), UtilityFunctions.identity(), UtilityFunctions.identity());
        return createWithState(state, new DefaultOnAdd(state));
    }

    public static <T> ReplaySubject<T> createWithTime(long time, TimeUnit unit, Scheduler scheduler) {
        BoundedState<T> state = new BoundedState<>(new TimeEvictionPolicy(unit.toMillis(time), scheduler), new AddTimestamped(scheduler), new RemoveTimestamped());
        return createWithState(state, new TimedOnAdd(state, scheduler));
    }

    public static <T> ReplaySubject<T> createWithTimeAndSize(long time, TimeUnit unit, int size, Scheduler scheduler) {
        BoundedState<T> state = new BoundedState<>(new PairEvictionPolicy(new SizeEvictionPolicy(size), new TimeEvictionPolicy(unit.toMillis(time), scheduler)), new AddTimestamped(scheduler), new RemoveTimestamped());
        return createWithState(state, new TimedOnAdd(state, scheduler));
    }

    static <T> ReplaySubject<T> createWithState(final BoundedState<T> state, Action1<SubjectSubscriptionManager.SubjectObserver<T>> onStart) {
        SubjectSubscriptionManager<T> ssm = new SubjectSubscriptionManager<>();
        ssm.onStart = onStart;
        ssm.onAdded = new Action1<SubjectSubscriptionManager.SubjectObserver<T>>() { // from class: rx.subjects.ReplaySubject.4
            @Override // p021rx.functions.Action1
            public /* bridge */ /* synthetic */ void call(Object x0) {
                call((SubjectSubscriptionManager.SubjectObserver) ((SubjectSubscriptionManager.SubjectObserver) x0));
            }

            /* JADX WARN: Removed duplicated region for block: B:23:0x003a  */
            /* JADX WARN: Removed duplicated region for block: B:35:? A[RETURN, SYNTHETIC] */
            /*
                Code decompiled incorrectly, please refer to instructions dump.
            */
            public void call(SubjectSubscriptionManager.SubjectObserver<T> o) {
                synchronized (o) {
                    if (o.first && !o.emitting) {
                        o.first = false;
                        o.emitting = true;
                        boolean skipFinal = false;
                        while (true) {
                            try {
                                NodeList.Node<Object> idx = (NodeList.Node) o.index();
                                NodeList.Node<Object> sidx = BoundedState.this.tail();
                                if (idx != sidx) {
                                    NodeList.Node<Object> j = BoundedState.this.replayObserverFromIndex(idx, (SubjectSubscriptionManager.SubjectObserver) o);
                                    o.index(j);
                                }
                                synchronized (o) {
                                    if (sidx == BoundedState.this.tail()) {
                                        break;
                                    }
                                }
                                if (1 != 0) {
                                    synchronized (o) {
                                        o.emitting = false;
                                    }
                                    return;
                                }
                                return;
                            } catch (Throwable th) {
                                if (!skipFinal) {
                                    synchronized (o) {
                                        o.emitting = false;
                                    }
                                }
                                throw th;
                            }
                        }
                        o.emitting = false;
                        skipFinal = true;
                        if (1 != 0) {
                        }
                    }
                }
            }
        };
        ssm.onTerminated = new Action1<SubjectSubscriptionManager.SubjectObserver<T>>() { // from class: rx.subjects.ReplaySubject.5
            @Override // p021rx.functions.Action1
            public /* bridge */ /* synthetic */ void call(Object x0) {
                call((SubjectSubscriptionManager.SubjectObserver) ((SubjectSubscriptionManager.SubjectObserver) x0));
            }

            public void call(SubjectSubscriptionManager.SubjectObserver<T> t1) {
                NodeList.Node<Object> l = (NodeList.Node) t1.index();
                if (l == null) {
                    l = BoundedState.this.head();
                }
                BoundedState.this.replayObserverFromIndex(l, (SubjectSubscriptionManager.SubjectObserver) t1);
            }
        };
        return new ReplaySubject<>(ssm, ssm, state);
    }

    ReplaySubject(Observable.OnSubscribe<T> onSubscribe, SubjectSubscriptionManager<T> ssm, ReplayState<T, ?> state) {
        super(onSubscribe);
        this.ssm = ssm;
        this.state = state;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // p021rx.Observer
    public void onNext(T t) {
        if (this.ssm.active) {
            this.state.next(t);
            SubjectSubscriptionManager.SubjectObserver[] arr$ = this.ssm.observers();
            for (SubjectSubscriptionManager.SubjectObserver subjectObserver : arr$) {
                if (caughtUp(subjectObserver)) {
                    subjectObserver.onNext(t);
                }
            }
        }
    }

    @Override // p021rx.Observer
    public void onError(Throwable e) {
        if (this.ssm.active) {
            this.state.error(e);
            List<Throwable> errors = null;
            SubjectSubscriptionManager.SubjectObserver[] arr$ = this.ssm.terminate(NotificationLite.instance().error(e));
            for (SubjectSubscriptionManager.SubjectObserver subjectObserver : arr$) {
                try {
                    if (caughtUp(subjectObserver)) {
                        subjectObserver.onError(e);
                    }
                } catch (Throwable e2) {
                    if (errors == null) {
                        errors = new ArrayList<>();
                    }
                    errors.add(e2);
                }
            }
            Exceptions.throwIfAny(errors);
        }
    }

    @Override // p021rx.Observer
    public void onCompleted() {
        if (this.ssm.active) {
            this.state.complete();
            SubjectSubscriptionManager.SubjectObserver[] arr$ = this.ssm.terminate(NotificationLite.instance().completed());
            for (SubjectSubscriptionManager.SubjectObserver subjectObserver : arr$) {
                if (caughtUp(subjectObserver)) {
                    subjectObserver.onCompleted();
                }
            }
        }
    }

    int subscriberCount() {
        return this.ssm.get().observers.length;
    }

    @Override // p021rx.subjects.Subject
    public boolean hasObservers() {
        return this.ssm.observers().length > 0;
    }

    private boolean caughtUp(SubjectSubscriptionManager.SubjectObserver<? super T> o) {
        if (!o.caughtUp) {
            if (this.state.replayObserver(o)) {
                o.caughtUp = true;
                o.index(null);
            }
            return false;
        }
        return true;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: rx.subjects.ReplaySubject$UnboundedReplayState */
    /* loaded from: classes2.dex */
    public static final class UnboundedReplayState<T> extends AtomicInteger implements ReplayState<T, Integer> {
        private final ArrayList<Object> list;

        /* renamed from: nl */
        private final NotificationLite<T> f1572nl = NotificationLite.instance();
        private volatile boolean terminated;

        public UnboundedReplayState(int initialCapacity) {
            this.list = new ArrayList<>(initialCapacity);
        }

        @Override // p021rx.subjects.ReplaySubject.ReplayState
        public void next(T n) {
            if (!this.terminated) {
                this.list.add(this.f1572nl.next(n));
                getAndIncrement();
            }
        }

        public void accept(Observer<? super T> o, int idx) {
            this.f1572nl.accept(o, this.list.get(idx));
        }

        @Override // p021rx.subjects.ReplaySubject.ReplayState
        public void complete() {
            if (!this.terminated) {
                this.terminated = true;
                this.list.add(this.f1572nl.completed());
                getAndIncrement();
            }
        }

        @Override // p021rx.subjects.ReplaySubject.ReplayState
        public void error(Throwable e) {
            if (!this.terminated) {
                this.terminated = true;
                this.list.add(this.f1572nl.error(e));
                getAndIncrement();
            }
        }

        @Override // p021rx.subjects.ReplaySubject.ReplayState
        public boolean terminated() {
            return this.terminated;
        }

        @Override // p021rx.subjects.ReplaySubject.ReplayState
        public boolean replayObserver(SubjectSubscriptionManager.SubjectObserver<? super T> observer) {
            synchronized (observer) {
                observer.first = false;
                if (observer.emitting) {
                    return false;
                }
                Integer lastEmittedLink = (Integer) observer.index();
                if (lastEmittedLink != null) {
                    int l = replayObserverFromIndex(lastEmittedLink, (SubjectSubscriptionManager.SubjectObserver) observer).intValue();
                    observer.index(Integer.valueOf(l));
                    return true;
                }
                throw new IllegalStateException("failed to find lastEmittedLink for: " + observer);
            }
        }

        @Override // p021rx.subjects.ReplaySubject.ReplayState
        public Integer replayObserverFromIndex(Integer idx, SubjectSubscriptionManager.SubjectObserver<? super T> observer) {
            int i = idx.intValue();
            while (i < get()) {
                accept(observer, i);
                i++;
            }
            return Integer.valueOf(i);
        }

        @Override // p021rx.subjects.ReplaySubject.ReplayState
        public Integer replayObserverFromIndexTest(Integer idx, SubjectSubscriptionManager.SubjectObserver<? super T> observer, long now) {
            return replayObserverFromIndex(idx, (SubjectSubscriptionManager.SubjectObserver) observer);
        }

        @Override // p021rx.subjects.ReplaySubject.ReplayState
        public int size() {
            int idx = get();
            if (idx > 0) {
                Object o = this.list.get(idx - 1);
                if (this.f1572nl.isCompleted(o) || this.f1572nl.isError(o)) {
                    return idx - 1;
                }
                return idx;
            }
            return idx;
        }

        @Override // p021rx.subjects.ReplaySubject.ReplayState
        public boolean isEmpty() {
            return size() == 0;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // p021rx.subjects.ReplaySubject.ReplayState
        public T[] toArray(T[] a) {
            int s = size();
            if (s > 0) {
                if (s > a.length) {
                    a = (T[]) ((Object[]) Array.newInstance(a.getClass().getComponentType(), s));
                }
                for (int i = 0; i < s; i++) {
                    a[i] = this.list.get(i);
                }
                if (a.length > s) {
                    a[s] = null;
                }
            } else if (a.length > 0) {
                a[0] = null;
            }
            return a;
        }

        @Override // p021rx.subjects.ReplaySubject.ReplayState
        public T latest() {
            int idx = get();
            if (idx > 0) {
                Object o = this.list.get(idx - 1);
                if (this.f1572nl.isCompleted(o) || this.f1572nl.isError(o)) {
                    if (idx <= 1) {
                        return null;
                    }
                    return this.f1572nl.getValue(this.list.get(idx - 2));
                }
                return this.f1572nl.getValue(o);
            }
            return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: rx.subjects.ReplaySubject$BoundedState */
    /* loaded from: classes2.dex */
    public static final class BoundedState<T> implements ReplayState<T, NodeList.Node<Object>> {
        final Func1<Object, Object> enterTransform;
        final EvictionPolicy evictionPolicy;
        final Func1<Object, Object> leaveTransform;
        volatile boolean terminated;

        /* renamed from: nl */
        final NotificationLite<T> f1571nl = NotificationLite.instance();
        final NodeList<Object> list = new NodeList<>();
        volatile NodeList.Node<Object> tail = this.list.tail;

        public BoundedState(EvictionPolicy evictionPolicy, Func1<Object, Object> enterTransform, Func1<Object, Object> leaveTransform) {
            this.evictionPolicy = evictionPolicy;
            this.enterTransform = enterTransform;
            this.leaveTransform = leaveTransform;
        }

        @Override // p021rx.subjects.ReplaySubject.ReplayState
        public void next(T value) {
            if (!this.terminated) {
                this.list.addLast(this.enterTransform.mo1999call(this.f1571nl.next(value)));
                this.evictionPolicy.evict(this.list);
                this.tail = this.list.tail;
            }
        }

        @Override // p021rx.subjects.ReplaySubject.ReplayState
        public void complete() {
            if (!this.terminated) {
                this.terminated = true;
                this.list.addLast(this.enterTransform.mo1999call(this.f1571nl.completed()));
                this.evictionPolicy.evictFinal(this.list);
                this.tail = this.list.tail;
            }
        }

        @Override // p021rx.subjects.ReplaySubject.ReplayState
        public void error(Throwable e) {
            if (!this.terminated) {
                this.terminated = true;
                this.list.addLast(this.enterTransform.mo1999call(this.f1571nl.error(e)));
                this.evictionPolicy.evictFinal(this.list);
                this.tail = this.list.tail;
            }
        }

        public void accept(Observer<? super T> o, NodeList.Node<Object> node) {
            this.f1571nl.accept(o, this.leaveTransform.mo1999call(node.value));
        }

        public void acceptTest(Observer<? super T> o, NodeList.Node<Object> node, long now) {
            Object v = node.value;
            if (!this.evictionPolicy.test(v, now)) {
                this.f1571nl.accept(o, this.leaveTransform.mo1999call(v));
            }
        }

        public NodeList.Node<Object> head() {
            return this.list.head;
        }

        public NodeList.Node<Object> tail() {
            return this.tail;
        }

        @Override // p021rx.subjects.ReplaySubject.ReplayState
        public boolean replayObserver(SubjectSubscriptionManager.SubjectObserver<? super T> observer) {
            synchronized (observer) {
                observer.first = false;
                if (observer.emitting) {
                    return false;
                }
                NodeList.Node<Object> lastEmittedLink = (NodeList.Node) observer.index();
                NodeList.Node<Object> l = replayObserverFromIndex(lastEmittedLink, (SubjectSubscriptionManager.SubjectObserver) observer);
                observer.index(l);
                return true;
            }
        }

        @Override // p021rx.subjects.ReplaySubject.ReplayState
        public NodeList.Node<Object> replayObserverFromIndex(NodeList.Node<Object> l, SubjectSubscriptionManager.SubjectObserver<? super T> observer) {
            while (l != tail()) {
                accept(observer, l.next);
                l = l.next;
            }
            return l;
        }

        @Override // p021rx.subjects.ReplaySubject.ReplayState
        public NodeList.Node<Object> replayObserverFromIndexTest(NodeList.Node<Object> l, SubjectSubscriptionManager.SubjectObserver<? super T> observer, long now) {
            while (l != tail()) {
                acceptTest(observer, l.next, now);
                l = l.next;
            }
            return l;
        }

        @Override // p021rx.subjects.ReplaySubject.ReplayState
        public boolean terminated() {
            return this.terminated;
        }

        @Override // p021rx.subjects.ReplaySubject.ReplayState
        public int size() {
            Object value;
            int size = 0;
            NodeList.Node<Object> l = head();
            for (NodeList.Node<Object> next = l.next; next != null; next = next.next) {
                size++;
                l = next;
            }
            if (l.value == null || (value = this.leaveTransform.mo1999call(l.value)) == null) {
                return size;
            }
            if (this.f1571nl.isError(value) || this.f1571nl.isCompleted(value)) {
                return size - 1;
            }
            return size;
        }

        @Override // p021rx.subjects.ReplaySubject.ReplayState
        public boolean isEmpty() {
            NodeList.Node<Object> l = head();
            NodeList.Node<Object> next = l.next;
            if (next == null) {
                return true;
            }
            Object value = this.leaveTransform.mo1999call(next.value);
            return this.f1571nl.isError(value) || this.f1571nl.isCompleted(value);
        }

        @Override // p021rx.subjects.ReplaySubject.ReplayState
        public T[] toArray(T[] a) {
            ArrayList arrayList = new ArrayList();
            NodeList.Node<Object> l = head();
            for (NodeList.Node<Object> next = l.next; next != null; next = next.next) {
                Object o = this.leaveTransform.mo1999call(next.value);
                if (next.next == null && (this.f1571nl.isError(o) || this.f1571nl.isCompleted(o))) {
                    break;
                }
                arrayList.add(o);
            }
            return (T[]) arrayList.toArray(a);
        }

        @Override // p021rx.subjects.ReplaySubject.ReplayState
        public T latest() {
            NodeList.Node<Object> h = head().next;
            if (h == null) {
                return null;
            }
            NodeList.Node<Object> p = null;
            while (h != tail()) {
                p = h;
                h = h.next;
            }
            Object value = this.leaveTransform.mo1999call(h.value);
            if (this.f1571nl.isError(value) || this.f1571nl.isCompleted(value)) {
                if (p == null) {
                    return null;
                }
                return this.f1571nl.getValue(this.leaveTransform.mo1999call(p.value));
            }
            return this.f1571nl.getValue(value);
        }
    }

    /* renamed from: rx.subjects.ReplaySubject$SizeEvictionPolicy */
    /* loaded from: classes2.dex */
    static final class SizeEvictionPolicy implements EvictionPolicy {
        final int maxSize;

        public SizeEvictionPolicy(int maxSize) {
            this.maxSize = maxSize;
        }

        @Override // p021rx.subjects.ReplaySubject.EvictionPolicy
        public void evict(NodeList<Object> t1) {
            while (t1.size() > this.maxSize) {
                t1.removeFirst();
            }
        }

        @Override // p021rx.subjects.ReplaySubject.EvictionPolicy
        public boolean test(Object value, long now) {
            return false;
        }

        @Override // p021rx.subjects.ReplaySubject.EvictionPolicy
        public void evictFinal(NodeList<Object> t1) {
            while (t1.size() > this.maxSize + 1) {
                t1.removeFirst();
            }
        }
    }

    /* renamed from: rx.subjects.ReplaySubject$TimeEvictionPolicy */
    /* loaded from: classes2.dex */
    static final class TimeEvictionPolicy implements EvictionPolicy {
        final long maxAgeMillis;
        final Scheduler scheduler;

        public TimeEvictionPolicy(long maxAgeMillis, Scheduler scheduler) {
            this.maxAgeMillis = maxAgeMillis;
            this.scheduler = scheduler;
        }

        @Override // p021rx.subjects.ReplaySubject.EvictionPolicy
        public void evict(NodeList<Object> t1) {
            long now = this.scheduler.now();
            while (!t1.isEmpty()) {
                NodeList.Node<Object> n = t1.head.next;
                if (test(n.value, now)) {
                    t1.removeFirst();
                } else {
                    return;
                }
            }
        }

        @Override // p021rx.subjects.ReplaySubject.EvictionPolicy
        public void evictFinal(NodeList<Object> t1) {
            long now = this.scheduler.now();
            while (t1.size > 1) {
                NodeList.Node<Object> n = t1.head.next;
                if (test(n.value, now)) {
                    t1.removeFirst();
                } else {
                    return;
                }
            }
        }

        @Override // p021rx.subjects.ReplaySubject.EvictionPolicy
        public boolean test(Object value, long now) {
            Timestamped<?> ts = (Timestamped) value;
            return ts.getTimestampMillis() <= now - this.maxAgeMillis;
        }
    }

    /* renamed from: rx.subjects.ReplaySubject$PairEvictionPolicy */
    /* loaded from: classes2.dex */
    static final class PairEvictionPolicy implements EvictionPolicy {
        final EvictionPolicy first;
        final EvictionPolicy second;

        public PairEvictionPolicy(EvictionPolicy first, EvictionPolicy second) {
            this.first = first;
            this.second = second;
        }

        @Override // p021rx.subjects.ReplaySubject.EvictionPolicy
        public void evict(NodeList<Object> t1) {
            this.first.evict(t1);
            this.second.evict(t1);
        }

        @Override // p021rx.subjects.ReplaySubject.EvictionPolicy
        public void evictFinal(NodeList<Object> t1) {
            this.first.evictFinal(t1);
            this.second.evictFinal(t1);
        }

        @Override // p021rx.subjects.ReplaySubject.EvictionPolicy
        public boolean test(Object value, long now) {
            return this.first.test(value, now) || this.second.test(value, now);
        }
    }

    /* renamed from: rx.subjects.ReplaySubject$AddTimestamped */
    /* loaded from: classes2.dex */
    static final class AddTimestamped implements Func1<Object, Object> {
        final Scheduler scheduler;

        public AddTimestamped(Scheduler scheduler) {
            this.scheduler = scheduler;
        }

        @Override // p021rx.functions.Func1
        /* renamed from: call */
        public Object mo1999call(Object t1) {
            return new Timestamped(this.scheduler.now(), t1);
        }
    }

    /* renamed from: rx.subjects.ReplaySubject$RemoveTimestamped */
    /* loaded from: classes2.dex */
    static final class RemoveTimestamped implements Func1<Object, Object> {
        RemoveTimestamped() {
        }

        @Override // p021rx.functions.Func1
        /* renamed from: call */
        public Object mo1999call(Object t1) {
            return ((Timestamped) t1).getValue();
        }
    }

    /* renamed from: rx.subjects.ReplaySubject$DefaultOnAdd */
    /* loaded from: classes2.dex */
    static final class DefaultOnAdd<T> implements Action1<SubjectSubscriptionManager.SubjectObserver<T>> {
        final BoundedState<T> state;

        @Override // p021rx.functions.Action1
        public /* bridge */ /* synthetic */ void call(Object x0) {
            call((SubjectSubscriptionManager.SubjectObserver) ((SubjectSubscriptionManager.SubjectObserver) x0));
        }

        public DefaultOnAdd(BoundedState<T> state) {
            this.state = state;
        }

        public void call(SubjectSubscriptionManager.SubjectObserver<T> t1) {
            NodeList.Node<Object> l = this.state.replayObserverFromIndex(this.state.head(), (SubjectSubscriptionManager.SubjectObserver) t1);
            t1.index(l);
        }
    }

    /* renamed from: rx.subjects.ReplaySubject$TimedOnAdd */
    /* loaded from: classes2.dex */
    static final class TimedOnAdd<T> implements Action1<SubjectSubscriptionManager.SubjectObserver<T>> {
        final Scheduler scheduler;
        final BoundedState<T> state;

        @Override // p021rx.functions.Action1
        public /* bridge */ /* synthetic */ void call(Object x0) {
            call((SubjectSubscriptionManager.SubjectObserver) ((SubjectSubscriptionManager.SubjectObserver) x0));
        }

        public TimedOnAdd(BoundedState<T> state, Scheduler scheduler) {
            this.state = state;
            this.scheduler = scheduler;
        }

        public void call(SubjectSubscriptionManager.SubjectObserver<T> t1) {
            NodeList.Node<Object> l;
            if (!this.state.terminated) {
                l = this.state.replayObserverFromIndexTest(this.state.head(), (SubjectSubscriptionManager.SubjectObserver) t1, this.scheduler.now());
            } else {
                l = this.state.replayObserverFromIndex(this.state.head(), (SubjectSubscriptionManager.SubjectObserver) t1);
            }
            t1.index(l);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: rx.subjects.ReplaySubject$NodeList */
    /* loaded from: classes2.dex */
    public static final class NodeList<T> {
        int size;
        final Node<T> head = new Node<>(null);
        Node<T> tail = this.head;

        NodeList() {
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: rx.subjects.ReplaySubject$NodeList$Node */
        /* loaded from: classes2.dex */
        public static final class Node<T> {
            volatile Node<T> next;
            final T value;

            Node(T value) {
                this.value = value;
            }
        }

        public void addLast(T value) {
            Node<T> t = this.tail;
            Node<T> t2 = new Node<>(value);
            t.next = t2;
            this.tail = t2;
            this.size++;
        }

        public T removeFirst() {
            if (this.head.next == null) {
                throw new IllegalStateException("Empty!");
            }
            Node<T> t = this.head.next;
            this.head.next = t.next;
            if (this.head.next == null) {
                this.tail = this.head;
            }
            this.size--;
            return t.value;
        }

        public boolean isEmpty() {
            return this.size == 0;
        }

        public int size() {
            return this.size;
        }

        public void clear() {
            this.tail = this.head;
            this.size = 0;
        }
    }

    /* renamed from: rx.subjects.ReplaySubject$EmptyEvictionPolicy */
    /* loaded from: classes2.dex */
    static final class EmptyEvictionPolicy implements EvictionPolicy {
        EmptyEvictionPolicy() {
        }

        @Override // p021rx.subjects.ReplaySubject.EvictionPolicy
        public boolean test(Object value, long now) {
            return true;
        }

        @Override // p021rx.subjects.ReplaySubject.EvictionPolicy
        public void evict(NodeList<Object> list) {
        }

        @Override // p021rx.subjects.ReplaySubject.EvictionPolicy
        public void evictFinal(NodeList<Object> list) {
        }
    }

    @Beta
    public boolean hasThrowable() {
        NotificationLite<T> nl = this.ssm.f1573nl;
        Object o = this.ssm.getLatest();
        return nl.isError(o);
    }

    @Beta
    public boolean hasCompleted() {
        NotificationLite<T> nl = this.ssm.f1573nl;
        Object o = this.ssm.getLatest();
        return o != null && !nl.isError(o);
    }

    @Beta
    public Throwable getThrowable() {
        NotificationLite<T> nl = this.ssm.f1573nl;
        Object o = this.ssm.getLatest();
        if (nl.isError(o)) {
            return nl.getError(o);
        }
        return null;
    }

    @Beta
    public int size() {
        return this.state.size();
    }

    @Beta
    public boolean hasAnyValue() {
        return !this.state.isEmpty();
    }

    @Beta
    public boolean hasValue() {
        return hasAnyValue();
    }

    @Beta
    public T[] getValues(T[] a) {
        return this.state.toArray(a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Beta
    public Object[] getValues() {
        T[] r = getValues(EMPTY_ARRAY);
        if (r == EMPTY_ARRAY) {
            return new Object[0];
        }
        return r;
    }

    @Beta
    public T getValue() {
        return this.state.latest();
    }
}
