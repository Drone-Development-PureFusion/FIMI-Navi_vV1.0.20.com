package p021rx.internal.operators;

import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicReference;
import p021rx.Observable;
import p021rx.Observer;
import p021rx.Subscriber;
import p021rx.functions.Action0;
import p021rx.subjects.Subject;
import p021rx.subscriptions.Subscriptions;
/* renamed from: rx.internal.operators.BufferUntilSubscriber */
/* loaded from: classes2.dex */
public final class BufferUntilSubscriber<T> extends Subject<T, T> {
    static final Observer EMPTY_OBSERVER = new Observer() { // from class: rx.internal.operators.BufferUntilSubscriber.1
        @Override // p021rx.Observer
        public void onCompleted() {
        }

        @Override // p021rx.Observer
        public void onError(Throwable e) {
        }

        @Override // p021rx.Observer
        public void onNext(Object t) {
        }
    };
    private boolean forward = false;
    final State<T> state;

    public static <T> BufferUntilSubscriber<T> create() {
        State<T> state = new State<>();
        return new BufferUntilSubscriber<>(state);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: rx.internal.operators.BufferUntilSubscriber$State */
    /* loaded from: classes2.dex */
    public static final class State<T> extends AtomicReference<Observer<? super T>> {
        final Object guard = new Object();
        boolean emitting = false;
        final ConcurrentLinkedQueue<Object> buffer = new ConcurrentLinkedQueue<>();

        /* renamed from: nl */
        final NotificationLite<T> f1499nl = NotificationLite.instance();

        State() {
        }

        boolean casObserverRef(Observer<? super T> expected, Observer<? super T> next) {
            return compareAndSet(expected, next);
        }
    }

    /* renamed from: rx.internal.operators.BufferUntilSubscriber$OnSubscribeAction */
    /* loaded from: classes2.dex */
    static final class OnSubscribeAction<T> implements Observable.OnSubscribe<T> {
        final State<T> state;

        @Override // p021rx.functions.Action1
        public /* bridge */ /* synthetic */ void call(Object x0) {
            call((Subscriber) ((Subscriber) x0));
        }

        public OnSubscribeAction(State<T> state) {
            this.state = state;
        }

        public void call(Subscriber<? super T> s) {
            if (this.state.casObserverRef(null, s)) {
                s.add(Subscriptions.create(new Action0() { // from class: rx.internal.operators.BufferUntilSubscriber.OnSubscribeAction.1
                    @Override // p021rx.functions.Action0
                    public void call() {
                        OnSubscribeAction.this.state.set(BufferUntilSubscriber.EMPTY_OBSERVER);
                    }
                }));
                boolean win = false;
                synchronized (this.state.guard) {
                    if (!this.state.emitting) {
                        this.state.emitting = true;
                        win = true;
                    }
                }
                if (win) {
                    NotificationLite<T> nl = NotificationLite.instance();
                    while (true) {
                        Object o = this.state.buffer.poll();
                        if (o != null) {
                            nl.accept(this.state.get(), o);
                        } else {
                            synchronized (this.state.guard) {
                                if (this.state.buffer.isEmpty()) {
                                    this.state.emitting = false;
                                    return;
                                }
                            }
                        }
                    }
                }
            } else {
                s.onError(new IllegalStateException("Only one subscriber allowed!"));
            }
        }
    }

    private BufferUntilSubscriber(State<T> state) {
        super(new OnSubscribeAction(state));
        this.state = state;
    }

    private void emit(Object v) {
        synchronized (this.state.guard) {
            this.state.buffer.add(v);
            if (this.state.get() != null && !this.state.emitting) {
                this.forward = true;
                this.state.emitting = true;
            }
        }
        if (this.forward) {
            while (true) {
                Object o = this.state.buffer.poll();
                if (o != null) {
                    this.state.f1499nl.accept(this.state.get(), o);
                } else {
                    return;
                }
            }
        }
    }

    @Override // p021rx.Observer
    public void onCompleted() {
        if (this.forward) {
            this.state.get().onCompleted();
        } else {
            emit(this.state.f1499nl.completed());
        }
    }

    @Override // p021rx.Observer
    public void onError(Throwable e) {
        if (this.forward) {
            this.state.get().onError(e);
        } else {
            emit(this.state.f1499nl.error(e));
        }
    }

    @Override // p021rx.Observer
    public void onNext(T t) {
        if (this.forward) {
            this.state.get().onNext(t);
        } else {
            emit(this.state.f1499nl.next(t));
        }
    }

    @Override // p021rx.subjects.Subject
    public boolean hasObservers() {
        boolean z;
        synchronized (this.state.guard) {
            z = this.state.get() != null;
        }
        return z;
    }
}
