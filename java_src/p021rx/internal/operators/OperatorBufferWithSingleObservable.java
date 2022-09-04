package p021rx.internal.operators;

import java.util.ArrayList;
import java.util.List;
import p021rx.Observable;
import p021rx.Subscriber;
import p021rx.exceptions.Exceptions;
import p021rx.functions.Func0;
import p021rx.observers.SerializedSubscriber;
import p021rx.observers.Subscribers;
/* renamed from: rx.internal.operators.OperatorBufferWithSingleObservable */
/* loaded from: classes2.dex */
public final class OperatorBufferWithSingleObservable<T, TClosing> implements Observable.Operator<List<T>, T> {
    final Func0<? extends Observable<? extends TClosing>> bufferClosingSelector;
    final int initialCapacity;

    @Override // p021rx.functions.Func1
    /* renamed from: call */
    public /* bridge */ /* synthetic */ Object mo1999call(Object x0) {
        return call((Subscriber) ((Subscriber) x0));
    }

    public OperatorBufferWithSingleObservable(Func0<? extends Observable<? extends TClosing>> bufferClosingSelector, int initialCapacity) {
        this.bufferClosingSelector = bufferClosingSelector;
        this.initialCapacity = initialCapacity;
    }

    public OperatorBufferWithSingleObservable(final Observable<? extends TClosing> bufferClosing, int initialCapacity) {
        this.bufferClosingSelector = new Func0<Observable<? extends TClosing>>() { // from class: rx.internal.operators.OperatorBufferWithSingleObservable.1
            @Override // p021rx.functions.Func0, java.util.concurrent.Callable
            /* renamed from: call  reason: collision with other method in class */
            public Observable<? extends TClosing> mo1996call() {
                return bufferClosing;
            }
        };
        this.initialCapacity = initialCapacity;
    }

    public Subscriber<? super T> call(Subscriber<? super List<T>> child) {
        try {
            Observable<? extends TClosing> closing = this.bufferClosingSelector.mo1996call();
            final OperatorBufferWithSingleObservable<T, TClosing>.BufferingSubscriber bsub = new BufferingSubscriber(new SerializedSubscriber(child));
            Subscriber<TClosing> closingSubscriber = new Subscriber<TClosing>() { // from class: rx.internal.operators.OperatorBufferWithSingleObservable.2
                @Override // p021rx.Observer
                public void onNext(TClosing t) {
                    bsub.emit();
                }

                @Override // p021rx.Observer
                public void onError(Throwable e) {
                    bsub.onError(e);
                }

                @Override // p021rx.Observer
                public void onCompleted() {
                    bsub.onCompleted();
                }
            };
            child.add(closingSubscriber);
            child.add(bsub);
            closing.unsafeSubscribe(closingSubscriber);
            return bsub;
        } catch (Throwable t) {
            Exceptions.throwOrReport(t, child);
            return Subscribers.empty();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: rx.internal.operators.OperatorBufferWithSingleObservable$BufferingSubscriber */
    /* loaded from: classes2.dex */
    public final class BufferingSubscriber extends Subscriber<T> {
        final Subscriber<? super List<T>> child;
        List<T> chunk;
        boolean done;

        public BufferingSubscriber(Subscriber<? super List<T>> child) {
            this.child = child;
            this.chunk = new ArrayList(OperatorBufferWithSingleObservable.this.initialCapacity);
        }

        @Override // p021rx.Observer
        public void onNext(T t) {
            synchronized (this) {
                if (!this.done) {
                    this.chunk.add(t);
                }
            }
        }

        @Override // p021rx.Observer
        public void onError(Throwable e) {
            synchronized (this) {
                if (!this.done) {
                    this.done = true;
                    this.chunk = null;
                    this.child.onError(e);
                    unsubscribe();
                }
            }
        }

        @Override // p021rx.Observer
        public void onCompleted() {
            try {
                synchronized (this) {
                    if (!this.done) {
                        this.done = true;
                        List<T> toEmit = this.chunk;
                        this.chunk = null;
                        this.child.onNext(toEmit);
                        this.child.onCompleted();
                        unsubscribe();
                    }
                }
            } catch (Throwable t) {
                Exceptions.throwOrReport(t, this.child);
            }
        }

        void emit() {
            synchronized (this) {
                if (!this.done) {
                    List<T> toEmit = this.chunk;
                    this.chunk = new ArrayList(OperatorBufferWithSingleObservable.this.initialCapacity);
                    try {
                        this.child.onNext(toEmit);
                    } finally {
                    }
                }
            }
        }
    }
}
