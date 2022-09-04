package p021rx.internal.operators;

import com.facebook.common.time.Clock;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicLong;
import p021rx.Observable;
import p021rx.Producer;
import p021rx.Scheduler;
import p021rx.Subscriber;
import p021rx.exceptions.MissingBackpressureException;
import p021rx.functions.Action0;
import p021rx.internal.util.RxRingBuffer;
import p021rx.internal.util.atomic.SpscAtomicArrayQueue;
import p021rx.internal.util.unsafe.SpscArrayQueue;
import p021rx.internal.util.unsafe.UnsafeAccess;
import p021rx.plugins.RxJavaPlugins;
import p021rx.schedulers.ImmediateScheduler;
import p021rx.schedulers.TrampolineScheduler;
/* renamed from: rx.internal.operators.OperatorObserveOn */
/* loaded from: classes2.dex */
public final class OperatorObserveOn<T> implements Observable.Operator<T, T> {
    private final boolean delayError;
    private final Scheduler scheduler;

    @Override // p021rx.functions.Func1
    /* renamed from: call */
    public /* bridge */ /* synthetic */ Object mo1999call(Object x0) {
        return call((Subscriber) ((Subscriber) x0));
    }

    public OperatorObserveOn(Scheduler scheduler, boolean delayError) {
        this.scheduler = scheduler;
        this.delayError = delayError;
    }

    public Subscriber<? super T> call(Subscriber<? super T> child) {
        if (!(this.scheduler instanceof ImmediateScheduler) && !(this.scheduler instanceof TrampolineScheduler)) {
            ObserveOnSubscriber<T> parent = new ObserveOnSubscriber<>(this.scheduler, child, this.delayError);
            parent.init();
            return parent;
        }
        return child;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: rx.internal.operators.OperatorObserveOn$ObserveOnSubscriber */
    /* loaded from: classes2.dex */
    public static final class ObserveOnSubscriber<T> extends Subscriber<T> implements Action0 {
        final Subscriber<? super T> child;
        final boolean delayError;
        Throwable error;
        volatile boolean finished;
        final Queue<Object> queue;
        final Scheduler.Worker recursiveScheduler;
        final AtomicLong requested = new AtomicLong();
        final AtomicLong counter = new AtomicLong();

        /* renamed from: on */
        final NotificationLite<T> f1524on = NotificationLite.instance();

        public ObserveOnSubscriber(Scheduler scheduler, Subscriber<? super T> child, boolean delayError) {
            this.child = child;
            this.recursiveScheduler = scheduler.createWorker();
            this.delayError = delayError;
            if (UnsafeAccess.isUnsafeAvailable()) {
                this.queue = new SpscArrayQueue(RxRingBuffer.SIZE);
            } else {
                this.queue = new SpscAtomicArrayQueue(RxRingBuffer.SIZE);
            }
        }

        void init() {
            Subscriber<? super T> localChild = this.child;
            localChild.setProducer(new Producer() { // from class: rx.internal.operators.OperatorObserveOn.ObserveOnSubscriber.1
                @Override // p021rx.Producer
                public void request(long n) {
                    if (n > 0) {
                        BackpressureUtils.getAndAddRequest(ObserveOnSubscriber.this.requested, n);
                        ObserveOnSubscriber.this.schedule();
                    }
                }
            });
            localChild.add(this.recursiveScheduler);
            localChild.add(this);
        }

        @Override // p021rx.Subscriber
        public void onStart() {
            request(RxRingBuffer.SIZE);
        }

        @Override // p021rx.Observer
        public void onNext(T t) {
            if (!isUnsubscribed() && !this.finished) {
                if (!this.queue.offer(this.f1524on.next(t))) {
                    onError(new MissingBackpressureException());
                } else {
                    schedule();
                }
            }
        }

        @Override // p021rx.Observer
        public void onCompleted() {
            if (!isUnsubscribed() && !this.finished) {
                this.finished = true;
                schedule();
            }
        }

        @Override // p021rx.Observer
        public void onError(Throwable e) {
            if (isUnsubscribed() || this.finished) {
                RxJavaPlugins.getInstance().getErrorHandler().handleError(e);
                return;
            }
            this.error = e;
            this.finished = true;
            schedule();
        }

        protected void schedule() {
            if (this.counter.getAndIncrement() == 0) {
                this.recursiveScheduler.schedule(this);
            }
        }

        @Override // p021rx.functions.Action0
        public void call() {
            long emitted = 0;
            long missed = 1;
            Queue<Object> q = this.queue;
            Subscriber<? super T> localChild = this.child;
            NotificationLite<T> localOn = this.f1524on;
            while (!checkTerminated(this.finished, q.isEmpty(), localChild, q)) {
                long requestAmount = this.requested.get();
                boolean unbounded = requestAmount == Clock.MAX_TIME;
                long currentEmission = 0;
                while (requestAmount != 0) {
                    boolean done = this.finished;
                    Object v = q.poll();
                    boolean empty = v == null;
                    if (!checkTerminated(done, empty, localChild, q)) {
                        if (empty) {
                            break;
                        }
                        localChild.onNext((T) localOn.getValue(v));
                        requestAmount--;
                        currentEmission--;
                        emitted++;
                    } else {
                        return;
                    }
                }
                if (currentEmission != 0 && !unbounded) {
                    this.requested.addAndGet(currentEmission);
                }
                missed = this.counter.addAndGet(-missed);
                if (missed == 0) {
                    if (emitted != 0) {
                        request(emitted);
                        return;
                    }
                    return;
                }
            }
        }

        boolean checkTerminated(boolean done, boolean isEmpty, Subscriber<? super T> a, Queue<Object> q) {
            if (a.isUnsubscribed()) {
                q.clear();
                return true;
            }
            if (done) {
                if (this.delayError) {
                    if (isEmpty) {
                        Throwable e = this.error;
                        try {
                            if (e != null) {
                                a.onError(e);
                            } else {
                                a.onCompleted();
                            }
                        } finally {
                        }
                    }
                } else {
                    Throwable e2 = this.error;
                    if (e2 != null) {
                        q.clear();
                        try {
                            a.onError(e2);
                            return true;
                        } finally {
                        }
                    } else if (isEmpty) {
                        try {
                            a.onCompleted();
                            return true;
                        } finally {
                        }
                    }
                }
            }
            return false;
        }
    }
}
