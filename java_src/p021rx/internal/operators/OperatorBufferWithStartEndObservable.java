package p021rx.internal.operators;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import p021rx.Observable;
import p021rx.Subscriber;
import p021rx.exceptions.Exceptions;
import p021rx.functions.Func1;
import p021rx.observers.SerializedSubscriber;
import p021rx.subscriptions.CompositeSubscription;
/* renamed from: rx.internal.operators.OperatorBufferWithStartEndObservable */
/* loaded from: classes2.dex */
public final class OperatorBufferWithStartEndObservable<T, TOpening, TClosing> implements Observable.Operator<List<T>, T> {
    final Func1<? super TOpening, ? extends Observable<? extends TClosing>> bufferClosing;
    final Observable<? extends TOpening> bufferOpening;

    @Override // p021rx.functions.Func1
    /* renamed from: call */
    public /* bridge */ /* synthetic */ Object mo1999call(Object x0) {
        return call((Subscriber) ((Subscriber) x0));
    }

    public OperatorBufferWithStartEndObservable(Observable<? extends TOpening> bufferOpenings, Func1<? super TOpening, ? extends Observable<? extends TClosing>> bufferClosingSelector) {
        this.bufferOpening = bufferOpenings;
        this.bufferClosing = bufferClosingSelector;
    }

    public Subscriber<? super T> call(Subscriber<? super List<T>> child) {
        final OperatorBufferWithStartEndObservable<T, TOpening, TClosing>.BufferingSubscriber bsub = new BufferingSubscriber(new SerializedSubscriber(child));
        Subscriber<TOpening> openSubscriber = new Subscriber<TOpening>() { // from class: rx.internal.operators.OperatorBufferWithStartEndObservable.1
            @Override // p021rx.Observer
            public void onNext(TOpening t) {
                bsub.startBuffer(t);
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
        child.add(openSubscriber);
        child.add(bsub);
        this.bufferOpening.unsafeSubscribe(openSubscriber);
        return bsub;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: rx.internal.operators.OperatorBufferWithStartEndObservable$BufferingSubscriber */
    /* loaded from: classes2.dex */
    public final class BufferingSubscriber extends Subscriber<T> {
        final Subscriber<? super List<T>> child;
        final List<List<T>> chunks = new LinkedList();
        final CompositeSubscription closingSubscriptions = new CompositeSubscription();
        boolean done;

        public BufferingSubscriber(Subscriber<? super List<T>> child) {
            this.child = child;
            add(this.closingSubscriptions);
        }

        @Override // p021rx.Observer
        public void onNext(T t) {
            synchronized (this) {
                for (List<T> chunk : this.chunks) {
                    chunk.add(t);
                }
            }
        }

        @Override // p021rx.Observer
        public void onError(Throwable e) {
            synchronized (this) {
                if (!this.done) {
                    this.done = true;
                    this.chunks.clear();
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
                        List<List<T>> toEmit = new LinkedList<>(this.chunks);
                        this.chunks.clear();
                        for (List<T> chunk : toEmit) {
                            this.child.onNext(chunk);
                        }
                        this.child.onCompleted();
                        unsubscribe();
                    }
                }
            } catch (Throwable t) {
                Exceptions.throwOrReport(t, this.child);
            }
        }

        void startBuffer(TOpening v) {
            final List<T> chunk = new ArrayList<>();
            synchronized (this) {
                if (!this.done) {
                    this.chunks.add(chunk);
                    try {
                        Observable<? extends TClosing> cobs = OperatorBufferWithStartEndObservable.this.bufferClosing.mo1999call(v);
                        Subscriber<TClosing> closeSubscriber = new Subscriber<TClosing>() { // from class: rx.internal.operators.OperatorBufferWithStartEndObservable.BufferingSubscriber.1
                            @Override // p021rx.Observer
                            public void onNext(TClosing t) {
                                BufferingSubscriber.this.closingSubscriptions.remove(this);
                                BufferingSubscriber.this.endBuffer(chunk);
                            }

                            @Override // p021rx.Observer
                            public void onError(Throwable e) {
                                BufferingSubscriber.this.onError(e);
                            }

                            @Override // p021rx.Observer
                            public void onCompleted() {
                                BufferingSubscriber.this.closingSubscriptions.remove(this);
                                BufferingSubscriber.this.endBuffer(chunk);
                            }
                        };
                        this.closingSubscriptions.add(closeSubscriber);
                        cobs.unsafeSubscribe(closeSubscriber);
                    } catch (Throwable t) {
                        Exceptions.throwOrReport(t, this);
                    }
                }
            }
        }

        void endBuffer(List<T> toEnd) {
            boolean canEnd = false;
            synchronized (this) {
                if (!this.done) {
                    Iterator<List<T>> it = this.chunks.iterator();
                    while (true) {
                        if (!it.hasNext()) {
                            break;
                        }
                        List<T> chunk = it.next();
                        if (chunk == toEnd) {
                            canEnd = true;
                            it.remove();
                            break;
                        }
                    }
                    if (canEnd) {
                        this.child.onNext(toEnd);
                    }
                }
            }
        }
    }
}
