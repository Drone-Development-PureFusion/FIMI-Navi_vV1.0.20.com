package p021rx.internal.operators;

import java.util.ArrayList;
import java.util.List;
import p021rx.Observable;
import p021rx.Producer;
import p021rx.Subscriber;
import p021rx.internal.producers.ProducerArbiter;
import p021rx.observers.SerializedSubscriber;
import p021rx.subscriptions.SerialSubscription;
/* renamed from: rx.internal.operators.OperatorSwitch */
/* loaded from: classes2.dex */
public final class OperatorSwitch<T> implements Observable.Operator<T, Observable<? extends T>> {
    @Override // p021rx.functions.Func1
    /* renamed from: call */
    public /* bridge */ /* synthetic */ Object mo1999call(Object x0) {
        return call((Subscriber) ((Subscriber) x0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: rx.internal.operators.OperatorSwitch$Holder */
    /* loaded from: classes2.dex */
    public static final class Holder {
        static final OperatorSwitch<Object> INSTANCE = new OperatorSwitch<>();

        private Holder() {
        }
    }

    public static <T> OperatorSwitch<T> instance() {
        return (OperatorSwitch<T>) Holder.INSTANCE;
    }

    OperatorSwitch() {
    }

    public Subscriber<? super Observable<? extends T>> call(Subscriber<? super T> child) {
        SwitchSubscriber<T> sws = new SwitchSubscriber<>(child);
        child.add(sws);
        return sws;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: rx.internal.operators.OperatorSwitch$SwitchSubscriber */
    /* loaded from: classes2.dex */
    public static final class SwitchSubscriber<T> extends Subscriber<Observable<? extends T>> {
        boolean active;
        InnerSubscriber<T> currentSubscriber;
        boolean emitting;
        int index;
        boolean mainDone;
        List<Object> queue;
        final SerializedSubscriber<T> serializedChild;
        final Object guard = new Object();

        /* renamed from: nl */
        final NotificationLite<?> f1533nl = NotificationLite.instance();
        final ProducerArbiter arbiter = new ProducerArbiter();
        final SerialSubscription ssub = new SerialSubscription();

        @Override // p021rx.Observer
        public /* bridge */ /* synthetic */ void onNext(Object x0) {
            onNext((Observable) ((Observable) x0));
        }

        SwitchSubscriber(Subscriber<? super T> child) {
            this.serializedChild = new SerializedSubscriber<>(child);
            child.add(this.ssub);
            child.setProducer(new Producer() { // from class: rx.internal.operators.OperatorSwitch.SwitchSubscriber.1
                @Override // p021rx.Producer
                public void request(long n) {
                    if (n > 0) {
                        SwitchSubscriber.this.arbiter.request(n);
                    }
                }
            });
        }

        public void onNext(Observable<? extends T> t) {
            synchronized (this.guard) {
                int id = this.index + 1;
                this.index = id;
                this.active = true;
                this.currentSubscriber = new InnerSubscriber<>(id, this.arbiter, this);
            }
            this.ssub.set(this.currentSubscriber);
            t.unsafeSubscribe(this.currentSubscriber);
        }

        @Override // p021rx.Observer
        public void onError(Throwable e) {
            this.serializedChild.onError(e);
            unsubscribe();
        }

        @Override // p021rx.Observer
        public void onCompleted() {
            synchronized (this.guard) {
                this.mainDone = true;
                if (!this.active) {
                    if (this.emitting) {
                        if (this.queue == null) {
                            this.queue = new ArrayList();
                        }
                        this.queue.add(this.f1533nl.completed());
                        return;
                    }
                    List<Object> localQueue = this.queue;
                    this.queue = null;
                    this.emitting = true;
                    drain(localQueue);
                    this.serializedChild.onCompleted();
                    unsubscribe();
                }
            }
        }

        /* JADX WARN: Code restructure failed: missing block: B:48:0x0049, code lost:
            r6.emitting = false;
            r2 = true;
         */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        void emit(T value, int id, InnerSubscriber<T> innerSubscriber) {
            synchronized (this.guard) {
                if (id == this.index) {
                    if (this.emitting) {
                        if (this.queue == null) {
                            this.queue = new ArrayList();
                        }
                        this.queue.add(value);
                        return;
                    }
                    List<Object> localQueue = this.queue;
                    this.queue = null;
                    this.emitting = true;
                    boolean once = true;
                    boolean skipFinal = false;
                    while (true) {
                        try {
                            drain(localQueue);
                            if (once) {
                                once = false;
                                this.serializedChild.onNext(value);
                                this.arbiter.produced(1L);
                            }
                            synchronized (this.guard) {
                                localQueue = this.queue;
                                this.queue = null;
                                if (localQueue != null) {
                                    if (this.serializedChild.isUnsubscribed()) {
                                        break;
                                    }
                                } else {
                                    break;
                                }
                            }
                        } catch (Throwable th) {
                            if (!skipFinal) {
                                synchronized (this.guard) {
                                    this.emitting = false;
                                }
                            }
                            throw th;
                        }
                    }
                    if (!skipFinal) {
                        synchronized (this.guard) {
                            this.emitting = false;
                        }
                    }
                }
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        void drain(List<Object> localQueue) {
            if (localQueue != null) {
                for (Object o : localQueue) {
                    if (this.f1533nl.isCompleted(o)) {
                        this.serializedChild.onCompleted();
                        return;
                    } else if (this.f1533nl.isError(o)) {
                        this.serializedChild.onError(this.f1533nl.getError(o));
                        return;
                    } else {
                        this.serializedChild.onNext(o);
                        this.arbiter.produced(1L);
                    }
                }
            }
        }

        void error(Throwable e, int id) {
            synchronized (this.guard) {
                if (id == this.index) {
                    if (this.emitting) {
                        if (this.queue == null) {
                            this.queue = new ArrayList();
                        }
                        this.queue.add(this.f1533nl.error(e));
                        return;
                    }
                    List<Object> localQueue = this.queue;
                    this.queue = null;
                    this.emitting = true;
                    drain(localQueue);
                    this.serializedChild.onError(e);
                    unsubscribe();
                }
            }
        }

        void complete(int id) {
            synchronized (this.guard) {
                if (id == this.index) {
                    this.active = false;
                    if (this.mainDone) {
                        if (this.emitting) {
                            if (this.queue == null) {
                                this.queue = new ArrayList();
                            }
                            this.queue.add(this.f1533nl.completed());
                            return;
                        }
                        List<Object> localQueue = this.queue;
                        this.queue = null;
                        this.emitting = true;
                        drain(localQueue);
                        this.serializedChild.onCompleted();
                        unsubscribe();
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: rx.internal.operators.OperatorSwitch$InnerSubscriber */
    /* loaded from: classes2.dex */
    public static final class InnerSubscriber<T> extends Subscriber<T> {
        private final ProducerArbiter arbiter;

        /* renamed from: id */
        private final int f1532id;
        private final SwitchSubscriber<T> parent;

        InnerSubscriber(int id, ProducerArbiter arbiter, SwitchSubscriber<T> parent) {
            this.f1532id = id;
            this.arbiter = arbiter;
            this.parent = parent;
        }

        @Override // p021rx.Subscriber
        public void setProducer(Producer p) {
            this.arbiter.setProducer(p);
        }

        @Override // p021rx.Observer
        public void onNext(T t) {
            this.parent.emit(t, this.f1532id, this);
        }

        @Override // p021rx.Observer
        public void onError(Throwable e) {
            this.parent.error(e, this.f1532id);
        }

        @Override // p021rx.Observer
        public void onCompleted() {
            this.parent.complete(this.f1532id);
        }
    }
}
