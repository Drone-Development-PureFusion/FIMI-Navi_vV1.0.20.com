package p021rx.internal.operators;

import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicIntegerFieldUpdater;
import p021rx.Completable;
import p021rx.Observable;
import p021rx.Subscriber;
import p021rx.Subscription;
import p021rx.exceptions.MissingBackpressureException;
import p021rx.internal.util.unsafe.SpscArrayQueue;
import p021rx.plugins.RxJavaPlugins;
import p021rx.subscriptions.SerialSubscription;
/* renamed from: rx.internal.operators.CompletableOnSubscribeConcat */
/* loaded from: classes2.dex */
public final class CompletableOnSubscribeConcat implements Completable.CompletableOnSubscribe {
    final int prefetch;
    final Observable<? extends Completable> sources;

    public CompletableOnSubscribeConcat(Observable<? extends Completable> sources, int prefetch) {
        this.sources = sources;
        this.prefetch = prefetch;
    }

    @Override // p021rx.functions.Action1
    public void call(Completable.CompletableSubscriber s) {
        CompletableConcatSubscriber parent = new CompletableConcatSubscriber(s, this.prefetch);
        s.onSubscribe(parent);
        this.sources.subscribe((Subscriber<? super Object>) parent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: rx.internal.operators.CompletableOnSubscribeConcat$CompletableConcatSubscriber */
    /* loaded from: classes2.dex */
    public static final class CompletableConcatSubscriber extends Subscriber<Completable> {
        static final AtomicIntegerFieldUpdater<CompletableConcatSubscriber> ONCE = AtomicIntegerFieldUpdater.newUpdater(CompletableConcatSubscriber.class, "once");
        final Completable.CompletableSubscriber actual;
        volatile boolean done;
        volatile int once;
        final int prefetch;
        final SpscArrayQueue<Completable> queue;

        /* renamed from: sr */
        final SerialSubscription f1501sr = new SerialSubscription();
        final ConcatInnerSubscriber inner = new ConcatInnerSubscriber();
        final AtomicInteger wip = new AtomicInteger();

        public CompletableConcatSubscriber(Completable.CompletableSubscriber actual, int prefetch) {
            this.actual = actual;
            this.prefetch = prefetch;
            this.queue = new SpscArrayQueue<>(prefetch);
            add(this.f1501sr);
            request(prefetch);
        }

        @Override // p021rx.Observer
        public void onNext(Completable t) {
            if (!this.queue.offer(t)) {
                onError(new MissingBackpressureException());
            } else if (this.wip.getAndIncrement() == 0) {
                next();
            }
        }

        @Override // p021rx.Observer
        public void onError(Throwable t) {
            if (ONCE.compareAndSet(this, 0, 1)) {
                this.actual.onError(t);
            } else {
                RxJavaPlugins.getInstance().getErrorHandler().handleError(t);
            }
        }

        @Override // p021rx.Observer
        public void onCompleted() {
            if (!this.done) {
                this.done = true;
                if (this.wip.getAndIncrement() == 0) {
                    next();
                }
            }
        }

        void innerError(Throwable e) {
            unsubscribe();
            onError(e);
        }

        void innerComplete() {
            if (this.wip.decrementAndGet() != 0) {
                next();
            }
            if (!this.done) {
                request(1L);
            }
        }

        void next() {
            boolean d = this.done;
            Completable c = this.queue.poll();
            if (c == null) {
                if (d) {
                    if (ONCE.compareAndSet(this, 0, 1)) {
                        this.actual.onCompleted();
                        return;
                    }
                    return;
                }
                RxJavaPlugins.getInstance().getErrorHandler().handleError(new IllegalStateException("Queue is empty?!"));
                return;
            }
            c.subscribe(this.inner);
        }

        /* JADX INFO: Access modifiers changed from: package-private */
        /* renamed from: rx.internal.operators.CompletableOnSubscribeConcat$CompletableConcatSubscriber$ConcatInnerSubscriber */
        /* loaded from: classes2.dex */
        public final class ConcatInnerSubscriber implements Completable.CompletableSubscriber {
            ConcatInnerSubscriber() {
            }

            @Override // p021rx.Completable.CompletableSubscriber
            public void onSubscribe(Subscription d) {
                CompletableConcatSubscriber.this.f1501sr.set(d);
            }

            @Override // p021rx.Completable.CompletableSubscriber
            public void onError(Throwable e) {
                CompletableConcatSubscriber.this.innerError(e);
            }

            @Override // p021rx.Completable.CompletableSubscriber
            public void onCompleted() {
                CompletableConcatSubscriber.this.innerComplete();
            }
        }
    }
}
