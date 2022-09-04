package p021rx.internal.operators;

import java.util.concurrent.atomic.AtomicBoolean;
import p021rx.Observable;
import p021rx.Subscriber;
import p021rx.Subscription;
import p021rx.exceptions.Exceptions;
import p021rx.functions.Action0;
import p021rx.functions.Action1;
import p021rx.functions.Func0;
import p021rx.functions.Func1;
import p021rx.observers.Subscribers;
/* renamed from: rx.internal.operators.OnSubscribeUsing */
/* loaded from: classes2.dex */
public final class OnSubscribeUsing<T, Resource> implements Observable.OnSubscribe<T> {
    private final Action1<? super Resource> dispose;
    private final boolean disposeEagerly;
    private final Func1<? super Resource, ? extends Observable<? extends T>> observableFactory;
    private final Func0<Resource> resourceFactory;

    @Override // p021rx.functions.Action1
    public /* bridge */ /* synthetic */ void call(Object x0) {
        call((Subscriber) ((Subscriber) x0));
    }

    public OnSubscribeUsing(Func0<Resource> resourceFactory, Func1<? super Resource, ? extends Observable<? extends T>> observableFactory, Action1<? super Resource> dispose, boolean disposeEagerly) {
        this.resourceFactory = resourceFactory;
        this.observableFactory = observableFactory;
        this.dispose = dispose;
        this.disposeEagerly = disposeEagerly;
    }

    public void call(Subscriber<? super T> subscriber) {
        Observable<? extends T> observable;
        try {
            Resource resource = this.resourceFactory.mo1996call();
            DisposeAction<Resource> disposeOnceOnly = new DisposeAction<>(this.dispose, resource);
            subscriber.add(disposeOnceOnly);
            Observable<? extends T> source = this.observableFactory.mo1999call(resource);
            if (this.disposeEagerly) {
                observable = source.doOnTerminate(disposeOnceOnly);
            } else {
                observable = source;
            }
            observable.unsafeSubscribe(Subscribers.wrap(subscriber));
        } catch (Throwable e) {
            Exceptions.throwOrReport(e, subscriber);
        }
    }

    private Throwable disposeEagerlyIfRequested(Action0 disposeOnceOnly) {
        if (this.disposeEagerly) {
            try {
                disposeOnceOnly.call();
                return null;
            } catch (Throwable th) {
                return th;
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: rx.internal.operators.OnSubscribeUsing$DisposeAction */
    /* loaded from: classes2.dex */
    public static final class DisposeAction<Resource> extends AtomicBoolean implements Action0, Subscription {
        private static final long serialVersionUID = 4262875056400218316L;
        private Action1<? super Resource> dispose;
        private Resource resource;

        DisposeAction(Action1<? super Resource> dispose, Resource resource) {
            this.dispose = dispose;
            this.resource = resource;
            lazySet(false);
        }

        /* JADX WARN: Type inference failed for: r2v0, types: [Resource, rx.functions.Action1<? super Resource>] */
        @Override // p021rx.functions.Action0
        public void call() {
            ?? r2 = (Resource) false;
            if (compareAndSet(false, true)) {
                try {
                    this.dispose.call((Resource) this.resource);
                } finally {
                    this.resource = null;
                    this.dispose = null;
                }
            }
        }

        @Override // p021rx.Subscription
        public boolean isUnsubscribed() {
            return get();
        }

        @Override // p021rx.Subscription
        public void unsubscribe() {
            call();
        }
    }
}
