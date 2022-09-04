package p021rx.observables;

import java.util.Iterator;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.Future;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.atomic.AtomicReference;
import p021rx.Observable;
import p021rx.Observer;
import p021rx.Producer;
import p021rx.Subscriber;
import p021rx.Subscription;
import p021rx.annotations.Experimental;
import p021rx.exceptions.OnErrorNotImplementedException;
import p021rx.functions.Action0;
import p021rx.functions.Action1;
import p021rx.functions.Actions;
import p021rx.functions.Func1;
import p021rx.internal.operators.BlockingOperatorLatest;
import p021rx.internal.operators.BlockingOperatorMostRecent;
import p021rx.internal.operators.BlockingOperatorNext;
import p021rx.internal.operators.BlockingOperatorToFuture;
import p021rx.internal.operators.BlockingOperatorToIterator;
import p021rx.internal.operators.NotificationLite;
import p021rx.internal.util.BlockingUtils;
import p021rx.internal.util.UtilityFunctions;
import p021rx.subscriptions.Subscriptions;
/* renamed from: rx.observables.BlockingObservable */
/* loaded from: classes2.dex */
public final class BlockingObservable<T> {
    static final Object ON_START = new Object();
    static final Object SET_PRODUCER = new Object();
    static final Object UNSUBSCRIBE = new Object();

    /* renamed from: o */
    private final Observable<? extends T> f1564o;

    private BlockingObservable(Observable<? extends T> o) {
        this.f1564o = o;
    }

    public static <T> BlockingObservable<T> from(Observable<? extends T> o) {
        return new BlockingObservable<>(o);
    }

    public void forEach(final Action1<? super T> onNext) {
        final CountDownLatch latch = new CountDownLatch(1);
        final AtomicReference<Throwable> exceptionFromOnError = new AtomicReference<>();
        Subscription subscription = this.f1564o.subscribe((Subscriber<? super Object>) new Subscriber<T>() { // from class: rx.observables.BlockingObservable.1
            @Override // p021rx.Observer
            public void onCompleted() {
                latch.countDown();
            }

            @Override // p021rx.Observer
            public void onError(Throwable e) {
                exceptionFromOnError.set(e);
                latch.countDown();
            }

            @Override // p021rx.Observer
            public void onNext(T args) {
                onNext.call(args);
            }
        });
        BlockingUtils.awaitForComplete(latch, subscription);
        if (exceptionFromOnError.get() != null) {
            if (exceptionFromOnError.get() instanceof RuntimeException) {
                throw ((RuntimeException) exceptionFromOnError.get());
            }
            throw new RuntimeException(exceptionFromOnError.get());
        }
    }

    public Iterator<T> getIterator() {
        return BlockingOperatorToIterator.toIterator(this.f1564o);
    }

    public T first() {
        return blockForSingle(this.f1564o.first());
    }

    public T first(Func1<? super T, Boolean> predicate) {
        return blockForSingle(this.f1564o.first(predicate));
    }

    public T firstOrDefault(T defaultValue) {
        return blockForSingle(this.f1564o.map(UtilityFunctions.identity()).firstOrDefault(defaultValue));
    }

    public T firstOrDefault(T defaultValue, Func1<? super T, Boolean> predicate) {
        return blockForSingle(this.f1564o.filter(predicate).map(UtilityFunctions.identity()).firstOrDefault(defaultValue));
    }

    public T last() {
        return blockForSingle(this.f1564o.last());
    }

    public T last(Func1<? super T, Boolean> predicate) {
        return blockForSingle(this.f1564o.last(predicate));
    }

    public T lastOrDefault(T defaultValue) {
        return blockForSingle(this.f1564o.map(UtilityFunctions.identity()).lastOrDefault(defaultValue));
    }

    public T lastOrDefault(T defaultValue, Func1<? super T, Boolean> predicate) {
        return blockForSingle(this.f1564o.filter(predicate).map(UtilityFunctions.identity()).lastOrDefault(defaultValue));
    }

    public Iterable<T> mostRecent(T initialValue) {
        return BlockingOperatorMostRecent.mostRecent(this.f1564o, initialValue);
    }

    public Iterable<T> next() {
        return BlockingOperatorNext.next(this.f1564o);
    }

    public Iterable<T> latest() {
        return BlockingOperatorLatest.latest(this.f1564o);
    }

    public T single() {
        return blockForSingle(this.f1564o.single());
    }

    public T single(Func1<? super T, Boolean> predicate) {
        return blockForSingle(this.f1564o.single(predicate));
    }

    public T singleOrDefault(T defaultValue) {
        return blockForSingle(this.f1564o.map(UtilityFunctions.identity()).singleOrDefault(defaultValue));
    }

    public T singleOrDefault(T defaultValue, Func1<? super T, Boolean> predicate) {
        return blockForSingle(this.f1564o.filter(predicate).map(UtilityFunctions.identity()).singleOrDefault(defaultValue));
    }

    public Future<T> toFuture() {
        return BlockingOperatorToFuture.toFuture(this.f1564o);
    }

    public Iterable<T> toIterable() {
        return new Iterable<T>() { // from class: rx.observables.BlockingObservable.2
            @Override // java.lang.Iterable
            public Iterator<T> iterator() {
                return BlockingObservable.this.getIterator();
            }
        };
    }

    private T blockForSingle(Observable<? extends T> observable) {
        final AtomicReference<T> returnItem = new AtomicReference<>();
        final AtomicReference<Throwable> returnException = new AtomicReference<>();
        final CountDownLatch latch = new CountDownLatch(1);
        Subscription subscription = observable.subscribe((Subscriber<? super Object>) new Subscriber<T>() { // from class: rx.observables.BlockingObservable.3
            @Override // p021rx.Observer
            public void onCompleted() {
                latch.countDown();
            }

            @Override // p021rx.Observer
            public void onError(Throwable e) {
                returnException.set(e);
                latch.countDown();
            }

            @Override // p021rx.Observer
            public void onNext(T item) {
                returnItem.set(item);
            }
        });
        BlockingUtils.awaitForComplete(latch, subscription);
        if (returnException.get() != null) {
            if (returnException.get() instanceof RuntimeException) {
                throw ((RuntimeException) returnException.get());
            }
            throw new RuntimeException(returnException.get());
        }
        return returnItem.get();
    }

    @Experimental
    public void subscribe() {
        final CountDownLatch cdl = new CountDownLatch(1);
        final Throwable[] error = {null};
        Subscription s = this.f1564o.subscribe((Subscriber<? super Object>) new Subscriber<T>() { // from class: rx.observables.BlockingObservable.4
            @Override // p021rx.Observer
            public void onNext(T t) {
            }

            @Override // p021rx.Observer
            public void onError(Throwable e) {
                error[0] = e;
                cdl.countDown();
            }

            @Override // p021rx.Observer
            public void onCompleted() {
                cdl.countDown();
            }
        });
        BlockingUtils.awaitForComplete(cdl, s);
        Throwable e = error[0];
        if (e != null) {
            if (e instanceof RuntimeException) {
                throw ((RuntimeException) e);
            }
            throw new RuntimeException(e);
        }
    }

    @Experimental
    public void subscribe(Observer<? super T> observer) {
        Object o;
        final NotificationLite<T> nl = NotificationLite.instance();
        final BlockingQueue<Object> queue = new LinkedBlockingQueue<>();
        Subscription s = this.f1564o.subscribe((Subscriber<? super Object>) new Subscriber<T>() { // from class: rx.observables.BlockingObservable.5
            @Override // p021rx.Observer
            public void onNext(T t) {
                queue.offer(nl.next(t));
            }

            @Override // p021rx.Observer
            public void onError(Throwable e) {
                queue.offer(nl.error(e));
            }

            @Override // p021rx.Observer
            public void onCompleted() {
                queue.offer(nl.completed());
            }
        });
        do {
            try {
                o = queue.poll();
                if (o == null) {
                    o = queue.take();
                }
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                observer.onError(e);
                return;
            } finally {
                s.unsubscribe();
            }
        } while (!nl.accept(observer, o));
    }

    @Experimental
    public void subscribe(Subscriber<? super T> subscriber) {
        final NotificationLite<T> nl = NotificationLite.instance();
        final BlockingQueue<Object> queue = new LinkedBlockingQueue<>();
        final Producer[] theProducer = {null};
        Subscriber<T> s = new Subscriber<T>() { // from class: rx.observables.BlockingObservable.6
            @Override // p021rx.Observer
            public void onNext(T t) {
                queue.offer(nl.next(t));
            }

            @Override // p021rx.Observer
            public void onError(Throwable e) {
                queue.offer(nl.error(e));
            }

            @Override // p021rx.Observer
            public void onCompleted() {
                queue.offer(nl.completed());
            }

            @Override // p021rx.Subscriber
            public void setProducer(Producer p) {
                theProducer[0] = p;
                queue.offer(BlockingObservable.SET_PRODUCER);
            }

            @Override // p021rx.Subscriber
            public void onStart() {
                queue.offer(BlockingObservable.ON_START);
            }
        };
        subscriber.add(s);
        subscriber.add(Subscriptions.create(new Action0() { // from class: rx.observables.BlockingObservable.7
            @Override // p021rx.functions.Action0
            public void call() {
                queue.offer(BlockingObservable.UNSUBSCRIBE);
            }
        }));
        this.f1564o.subscribe((Subscriber<? super Object>) s);
        while (!subscriber.isUnsubscribed()) {
            try {
                Object o = queue.poll();
                if (o == null) {
                    o = queue.take();
                }
                if (subscriber.isUnsubscribed() || o == UNSUBSCRIBE) {
                    break;
                } else if (o == ON_START) {
                    subscriber.onStart();
                } else if (o == SET_PRODUCER) {
                    subscriber.setProducer(theProducer[0]);
                } else if (nl.accept(subscriber, o)) {
                    return;
                }
            } catch (InterruptedException e) {
                Thread.currentThread().interrupt();
                subscriber.onError(e);
                return;
            } finally {
                s.unsubscribe();
            }
        }
    }

    @Experimental
    public void subscribe(Action1<? super T> onNext) {
        subscribe(onNext, new Action1<Throwable>() { // from class: rx.observables.BlockingObservable.8
            @Override // p021rx.functions.Action1
            public void call(Throwable t) {
                throw new OnErrorNotImplementedException(t);
            }
        }, Actions.empty());
    }

    @Experimental
    public void subscribe(Action1<? super T> onNext, Action1<? super Throwable> onError) {
        subscribe(onNext, onError, Actions.empty());
    }

    @Experimental
    public void subscribe(final Action1<? super T> onNext, final Action1<? super Throwable> onError, final Action0 onCompleted) {
        subscribe(new Observer<T>() { // from class: rx.observables.BlockingObservable.9
            @Override // p021rx.Observer
            public void onNext(T t) {
                onNext.call(t);
            }

            @Override // p021rx.Observer
            public void onError(Throwable e) {
                onError.call(e);
            }

            @Override // p021rx.Observer
            public void onCompleted() {
                onCompleted.call();
            }
        });
    }
}
