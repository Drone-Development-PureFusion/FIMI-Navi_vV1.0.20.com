package p021rx;

import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import java.util.concurrent.Future;
import java.util.concurrent.TimeUnit;
import p021rx.annotations.Beta;
import p021rx.annotations.Experimental;
import p021rx.exceptions.Exceptions;
import p021rx.exceptions.OnErrorNotImplementedException;
import p021rx.functions.Action0;
import p021rx.functions.Action1;
import p021rx.functions.Action2;
import p021rx.functions.Func0;
import p021rx.functions.Func1;
import p021rx.functions.Func2;
import p021rx.functions.Func3;
import p021rx.functions.Func4;
import p021rx.functions.Func5;
import p021rx.functions.Func6;
import p021rx.functions.Func7;
import p021rx.functions.Func8;
import p021rx.functions.Func9;
import p021rx.functions.FuncN;
import p021rx.functions.Functions;
import p021rx.internal.operators.CachedObservable;
import p021rx.internal.operators.OnSubscribeAmb;
import p021rx.internal.operators.OnSubscribeCombineLatest;
import p021rx.internal.operators.OnSubscribeDefer;
import p021rx.internal.operators.OnSubscribeDelaySubscription;
import p021rx.internal.operators.OnSubscribeDelaySubscriptionOther;
import p021rx.internal.operators.OnSubscribeDelaySubscriptionWithSelector;
import p021rx.internal.operators.OnSubscribeFromArray;
import p021rx.internal.operators.OnSubscribeFromCallable;
import p021rx.internal.operators.OnSubscribeFromIterable;
import p021rx.internal.operators.OnSubscribeGroupJoin;
import p021rx.internal.operators.OnSubscribeJoin;
import p021rx.internal.operators.OnSubscribeRange;
import p021rx.internal.operators.OnSubscribeRedo;
import p021rx.internal.operators.OnSubscribeSingle;
import p021rx.internal.operators.OnSubscribeTimerOnce;
import p021rx.internal.operators.OnSubscribeTimerPeriodically;
import p021rx.internal.operators.OnSubscribeToObservableFuture;
import p021rx.internal.operators.OnSubscribeUsing;
import p021rx.internal.operators.OperatorAll;
import p021rx.internal.operators.OperatorAny;
import p021rx.internal.operators.OperatorAsObservable;
import p021rx.internal.operators.OperatorBufferWithSingleObservable;
import p021rx.internal.operators.OperatorBufferWithSize;
import p021rx.internal.operators.OperatorBufferWithStartEndObservable;
import p021rx.internal.operators.OperatorBufferWithTime;
import p021rx.internal.operators.OperatorCast;
import p021rx.internal.operators.OperatorConcat;
import p021rx.internal.operators.OperatorDebounceWithSelector;
import p021rx.internal.operators.OperatorDebounceWithTime;
import p021rx.internal.operators.OperatorDelay;
import p021rx.internal.operators.OperatorDelayWithSelector;
import p021rx.internal.operators.OperatorDematerialize;
import p021rx.internal.operators.OperatorDistinct;
import p021rx.internal.operators.OperatorDistinctUntilChanged;
import p021rx.internal.operators.OperatorDoAfterTerminate;
import p021rx.internal.operators.OperatorDoOnEach;
import p021rx.internal.operators.OperatorDoOnRequest;
import p021rx.internal.operators.OperatorDoOnSubscribe;
import p021rx.internal.operators.OperatorDoOnUnsubscribe;
import p021rx.internal.operators.OperatorEagerConcatMap;
import p021rx.internal.operators.OperatorElementAt;
import p021rx.internal.operators.OperatorFilter;
import p021rx.internal.operators.OperatorGroupBy;
import p021rx.internal.operators.OperatorIgnoreElements;
import p021rx.internal.operators.OperatorMap;
import p021rx.internal.operators.OperatorMapNotification;
import p021rx.internal.operators.OperatorMapPair;
import p021rx.internal.operators.OperatorMaterialize;
import p021rx.internal.operators.OperatorMerge;
import p021rx.internal.operators.OperatorObserveOn;
import p021rx.internal.operators.OperatorOnBackpressureBuffer;
import p021rx.internal.operators.OperatorOnBackpressureDrop;
import p021rx.internal.operators.OperatorOnBackpressureLatest;
import p021rx.internal.operators.OperatorOnErrorResumeNextViaFunction;
import p021rx.internal.operators.OperatorPublish;
import p021rx.internal.operators.OperatorReplay;
import p021rx.internal.operators.OperatorRetryWithPredicate;
import p021rx.internal.operators.OperatorSampleWithObservable;
import p021rx.internal.operators.OperatorSampleWithTime;
import p021rx.internal.operators.OperatorScan;
import p021rx.internal.operators.OperatorSequenceEqual;
import p021rx.internal.operators.OperatorSerialize;
import p021rx.internal.operators.OperatorSingle;
import p021rx.internal.operators.OperatorSkip;
import p021rx.internal.operators.OperatorSkipLast;
import p021rx.internal.operators.OperatorSkipLastTimed;
import p021rx.internal.operators.OperatorSkipTimed;
import p021rx.internal.operators.OperatorSkipUntil;
import p021rx.internal.operators.OperatorSkipWhile;
import p021rx.internal.operators.OperatorSubscribeOn;
import p021rx.internal.operators.OperatorSwitch;
import p021rx.internal.operators.OperatorSwitchIfEmpty;
import p021rx.internal.operators.OperatorTake;
import p021rx.internal.operators.OperatorTakeLast;
import p021rx.internal.operators.OperatorTakeLastOne;
import p021rx.internal.operators.OperatorTakeLastTimed;
import p021rx.internal.operators.OperatorTakeTimed;
import p021rx.internal.operators.OperatorTakeUntil;
import p021rx.internal.operators.OperatorTakeUntilPredicate;
import p021rx.internal.operators.OperatorTakeWhile;
import p021rx.internal.operators.OperatorThrottleFirst;
import p021rx.internal.operators.OperatorTimeInterval;
import p021rx.internal.operators.OperatorTimeout;
import p021rx.internal.operators.OperatorTimeoutWithSelector;
import p021rx.internal.operators.OperatorTimestamp;
import p021rx.internal.operators.OperatorToMap;
import p021rx.internal.operators.OperatorToMultimap;
import p021rx.internal.operators.OperatorToObservableList;
import p021rx.internal.operators.OperatorToObservableSortedList;
import p021rx.internal.operators.OperatorUnsubscribeOn;
import p021rx.internal.operators.OperatorWindowWithObservable;
import p021rx.internal.operators.OperatorWindowWithObservableFactory;
import p021rx.internal.operators.OperatorWindowWithSize;
import p021rx.internal.operators.OperatorWindowWithStartEndObservable;
import p021rx.internal.operators.OperatorWindowWithTime;
import p021rx.internal.operators.OperatorWithLatestFrom;
import p021rx.internal.operators.OperatorZip;
import p021rx.internal.operators.OperatorZipIterable;
import p021rx.internal.producers.SingleProducer;
import p021rx.internal.util.RxRingBuffer;
import p021rx.internal.util.ScalarSynchronousObservable;
import p021rx.internal.util.UtilityFunctions;
import p021rx.observables.BlockingObservable;
import p021rx.observables.ConnectableObservable;
import p021rx.observables.GroupedObservable;
import p021rx.observers.SafeSubscriber;
import p021rx.plugins.RxJavaObservableExecutionHook;
import p021rx.plugins.RxJavaPlugins;
import p021rx.schedulers.Schedulers;
import p021rx.schedulers.TimeInterval;
import p021rx.schedulers.Timestamped;
import p021rx.subscriptions.Subscriptions;
/* renamed from: rx.Observable */
/* loaded from: classes.dex */
public class Observable<T> {
    static final RxJavaObservableExecutionHook hook = RxJavaPlugins.getInstance().getObservableExecutionHook();
    final OnSubscribe<T> onSubscribe;

    /* renamed from: rx.Observable$OnSubscribe */
    /* loaded from: classes2.dex */
    public interface OnSubscribe<T> extends Action1<Subscriber<? super T>> {
    }

    /* renamed from: rx.Observable$Operator */
    /* loaded from: classes2.dex */
    public interface Operator<R, T> extends Func1<Subscriber<? super R>, Subscriber<? super T>> {
    }

    /* renamed from: rx.Observable$Transformer */
    /* loaded from: classes2.dex */
    public interface Transformer<T, R> extends Func1<Observable<T>, Observable<R>> {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Observable(OnSubscribe<T> f) {
        this.onSubscribe = f;
    }

    public static <T> Observable<T> create(OnSubscribe<T> f) {
        return new Observable<>(hook.onCreate(f));
    }

    @Experimental
    public <R> R extend(Func1<? super OnSubscribe<T>, ? extends R> conversion) {
        return conversion.mo1999call(new OnSubscribe<T>() { // from class: rx.Observable.1
            @Override // p021rx.functions.Action1
            public /* bridge */ /* synthetic */ void call(Object x0) {
                call((Subscriber) ((Subscriber) x0));
            }

            public void call(Subscriber<? super T> subscriber) {
                subscriber.add(Observable.subscribe(subscriber, Observable.this));
            }
        });
    }

    public final <R> Observable<R> lift(final Operator<? extends R, ? super T> operator) {
        return new Observable<>(new OnSubscribe<R>() { // from class: rx.Observable.2
            @Override // p021rx.functions.Action1
            public void call(Subscriber<? super R> o) {
                try {
                    Subscriber<? super T> st = Observable.hook.onLift(operator).call(o);
                    st.onStart();
                    Observable.this.onSubscribe.call(st);
                } catch (Throwable e) {
                    Exceptions.throwIfFatal(e);
                    o.onError(e);
                }
            }
        });
    }

    public <R> Observable<R> compose(Transformer<? super T, ? extends R> transformer) {
        return (Observable) transformer.call(this);
    }

    @Beta
    public Single<T> toSingle() {
        return new Single<>(OnSubscribeSingle.create(this));
    }

    @Experimental
    public Completable toCompletable() {
        return Completable.fromObservable(this);
    }

    public static <T> Observable<T> amb(Iterable<? extends Observable<? extends T>> sources) {
        return create(OnSubscribeAmb.amb(sources));
    }

    public static <T> Observable<T> amb(Observable<? extends T> o1, Observable<? extends T> o2) {
        return create(OnSubscribeAmb.amb(o1, o2));
    }

    public static <T> Observable<T> amb(Observable<? extends T> o1, Observable<? extends T> o2, Observable<? extends T> o3) {
        return create(OnSubscribeAmb.amb(o1, o2, o3));
    }

    public static <T> Observable<T> amb(Observable<? extends T> o1, Observable<? extends T> o2, Observable<? extends T> o3, Observable<? extends T> o4) {
        return create(OnSubscribeAmb.amb(o1, o2, o3, o4));
    }

    public static <T> Observable<T> amb(Observable<? extends T> o1, Observable<? extends T> o2, Observable<? extends T> o3, Observable<? extends T> o4, Observable<? extends T> o5) {
        return create(OnSubscribeAmb.amb(o1, o2, o3, o4, o5));
    }

    public static <T> Observable<T> amb(Observable<? extends T> o1, Observable<? extends T> o2, Observable<? extends T> o3, Observable<? extends T> o4, Observable<? extends T> o5, Observable<? extends T> o6) {
        return create(OnSubscribeAmb.amb(o1, o2, o3, o4, o5, o6));
    }

    public static <T> Observable<T> amb(Observable<? extends T> o1, Observable<? extends T> o2, Observable<? extends T> o3, Observable<? extends T> o4, Observable<? extends T> o5, Observable<? extends T> o6, Observable<? extends T> o7) {
        return create(OnSubscribeAmb.amb(o1, o2, o3, o4, o5, o6, o7));
    }

    public static <T> Observable<T> amb(Observable<? extends T> o1, Observable<? extends T> o2, Observable<? extends T> o3, Observable<? extends T> o4, Observable<? extends T> o5, Observable<? extends T> o6, Observable<? extends T> o7, Observable<? extends T> o8) {
        return create(OnSubscribeAmb.amb(o1, o2, o3, o4, o5, o6, o7, o8));
    }

    public static <T> Observable<T> amb(Observable<? extends T> o1, Observable<? extends T> o2, Observable<? extends T> o3, Observable<? extends T> o4, Observable<? extends T> o5, Observable<? extends T> o6, Observable<? extends T> o7, Observable<? extends T> o8, Observable<? extends T> o9) {
        return create(OnSubscribeAmb.amb(o1, o2, o3, o4, o5, o6, o7, o8, o9));
    }

    public static <T1, T2, R> Observable<R> combineLatest(Observable<? extends T1> o1, Observable<? extends T2> o2, Func2<? super T1, ? super T2, ? extends R> combineFunction) {
        return combineLatest(Arrays.asList(o1, o2), Functions.fromFunc(combineFunction));
    }

    public static <T1, T2, T3, R> Observable<R> combineLatest(Observable<? extends T1> o1, Observable<? extends T2> o2, Observable<? extends T3> o3, Func3<? super T1, ? super T2, ? super T3, ? extends R> combineFunction) {
        return combineLatest(Arrays.asList(o1, o2, o3), Functions.fromFunc(combineFunction));
    }

    public static <T1, T2, T3, T4, R> Observable<R> combineLatest(Observable<? extends T1> o1, Observable<? extends T2> o2, Observable<? extends T3> o3, Observable<? extends T4> o4, Func4<? super T1, ? super T2, ? super T3, ? super T4, ? extends R> combineFunction) {
        return combineLatest(Arrays.asList(o1, o2, o3, o4), Functions.fromFunc(combineFunction));
    }

    public static <T1, T2, T3, T4, T5, R> Observable<R> combineLatest(Observable<? extends T1> o1, Observable<? extends T2> o2, Observable<? extends T3> o3, Observable<? extends T4> o4, Observable<? extends T5> o5, Func5<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? extends R> combineFunction) {
        return combineLatest(Arrays.asList(o1, o2, o3, o4, o5), Functions.fromFunc(combineFunction));
    }

    public static <T1, T2, T3, T4, T5, T6, R> Observable<R> combineLatest(Observable<? extends T1> o1, Observable<? extends T2> o2, Observable<? extends T3> o3, Observable<? extends T4> o4, Observable<? extends T5> o5, Observable<? extends T6> o6, Func6<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? extends R> combineFunction) {
        return combineLatest(Arrays.asList(o1, o2, o3, o4, o5, o6), Functions.fromFunc(combineFunction));
    }

    public static <T1, T2, T3, T4, T5, T6, T7, R> Observable<R> combineLatest(Observable<? extends T1> o1, Observable<? extends T2> o2, Observable<? extends T3> o3, Observable<? extends T4> o4, Observable<? extends T5> o5, Observable<? extends T6> o6, Observable<? extends T7> o7, Func7<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? extends R> combineFunction) {
        return combineLatest(Arrays.asList(o1, o2, o3, o4, o5, o6, o7), Functions.fromFunc(combineFunction));
    }

    public static <T1, T2, T3, T4, T5, T6, T7, T8, R> Observable<R> combineLatest(Observable<? extends T1> o1, Observable<? extends T2> o2, Observable<? extends T3> o3, Observable<? extends T4> o4, Observable<? extends T5> o5, Observable<? extends T6> o6, Observable<? extends T7> o7, Observable<? extends T8> o8, Func8<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? extends R> combineFunction) {
        return combineLatest(Arrays.asList(o1, o2, o3, o4, o5, o6, o7, o8), Functions.fromFunc(combineFunction));
    }

    public static <T1, T2, T3, T4, T5, T6, T7, T8, T9, R> Observable<R> combineLatest(Observable<? extends T1> o1, Observable<? extends T2> o2, Observable<? extends T3> o3, Observable<? extends T4> o4, Observable<? extends T5> o5, Observable<? extends T6> o6, Observable<? extends T7> o7, Observable<? extends T8> o8, Observable<? extends T9> o9, Func9<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? extends R> combineFunction) {
        return combineLatest(Arrays.asList(o1, o2, o3, o4, o5, o6, o7, o8, o9), Functions.fromFunc(combineFunction));
    }

    public static <T, R> Observable<R> combineLatest(List<? extends Observable<? extends T>> sources, FuncN<? extends R> combineFunction) {
        return create(new OnSubscribeCombineLatest(sources, combineFunction));
    }

    public static <T, R> Observable<R> combineLatest(Iterable<? extends Observable<? extends T>> sources, FuncN<? extends R> combineFunction) {
        return create(new OnSubscribeCombineLatest(sources, combineFunction));
    }

    public static <T> Observable<T> concat(Observable<? extends Observable<? extends T>> observables) {
        return (Observable<T>) observables.lift(OperatorConcat.instance());
    }

    public static <T> Observable<T> concat(Observable<? extends T> t1, Observable<? extends T> t2) {
        return concat(just(t1, t2));
    }

    public static <T> Observable<T> concat(Observable<? extends T> t1, Observable<? extends T> t2, Observable<? extends T> t3) {
        return concat(just(t1, t2, t3));
    }

    public static <T> Observable<T> concat(Observable<? extends T> t1, Observable<? extends T> t2, Observable<? extends T> t3, Observable<? extends T> t4) {
        return concat(just(t1, t2, t3, t4));
    }

    public static <T> Observable<T> concat(Observable<? extends T> t1, Observable<? extends T> t2, Observable<? extends T> t3, Observable<? extends T> t4, Observable<? extends T> t5) {
        return concat(just(t1, t2, t3, t4, t5));
    }

    public static <T> Observable<T> concat(Observable<? extends T> t1, Observable<? extends T> t2, Observable<? extends T> t3, Observable<? extends T> t4, Observable<? extends T> t5, Observable<? extends T> t6) {
        return concat(just(t1, t2, t3, t4, t5, t6));
    }

    public static <T> Observable<T> concat(Observable<? extends T> t1, Observable<? extends T> t2, Observable<? extends T> t3, Observable<? extends T> t4, Observable<? extends T> t5, Observable<? extends T> t6, Observable<? extends T> t7) {
        return concat(just(t1, t2, t3, t4, t5, t6, t7));
    }

    public static <T> Observable<T> concat(Observable<? extends T> t1, Observable<? extends T> t2, Observable<? extends T> t3, Observable<? extends T> t4, Observable<? extends T> t5, Observable<? extends T> t6, Observable<? extends T> t7, Observable<? extends T> t8) {
        return concat(just(t1, t2, t3, t4, t5, t6, t7, t8));
    }

    public static <T> Observable<T> concat(Observable<? extends T> t1, Observable<? extends T> t2, Observable<? extends T> t3, Observable<? extends T> t4, Observable<? extends T> t5, Observable<? extends T> t6, Observable<? extends T> t7, Observable<? extends T> t8, Observable<? extends T> t9) {
        return concat(just(t1, t2, t3, t4, t5, t6, t7, t8, t9));
    }

    public static <T> Observable<T> defer(Func0<Observable<T>> observableFactory) {
        return create(new OnSubscribeDefer(observableFactory));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: rx.Observable$EmptyHolder */
    /* loaded from: classes2.dex */
    public static final class EmptyHolder {
        static final Observable<Object> INSTANCE = Observable.create(new OnSubscribe<Object>() { // from class: rx.Observable.EmptyHolder.1
            @Override // p021rx.functions.Action1
            public void call(Subscriber<? super Object> subscriber) {
                subscriber.onCompleted();
            }
        });

        private EmptyHolder() {
        }
    }

    public static <T> Observable<T> empty() {
        return (Observable<T>) EmptyHolder.INSTANCE;
    }

    public static <T> Observable<T> error(Throwable exception) {
        return new ThrowObservable(exception);
    }

    public static <T> Observable<T> from(Future<? extends T> future) {
        return create(OnSubscribeToObservableFuture.toObservableFuture(future));
    }

    public static <T> Observable<T> from(Future<? extends T> future, long timeout, TimeUnit unit) {
        return create(OnSubscribeToObservableFuture.toObservableFuture(future, timeout, unit));
    }

    public static <T> Observable<T> from(Future<? extends T> future, Scheduler scheduler) {
        return create(OnSubscribeToObservableFuture.toObservableFuture(future)).subscribeOn(scheduler);
    }

    public static <T> Observable<T> from(Iterable<? extends T> iterable) {
        return create(new OnSubscribeFromIterable(iterable));
    }

    public static <T> Observable<T> from(T[] array) {
        int n = array.length;
        if (n == 0) {
            return empty();
        }
        if (n == 1) {
            return just(array[0]);
        }
        return create(new OnSubscribeFromArray(array));
    }

    @Experimental
    public static <T> Observable<T> fromCallable(Callable<? extends T> func) {
        return create(new OnSubscribeFromCallable(func));
    }

    public static Observable<Long> interval(long interval, TimeUnit unit) {
        return interval(interval, interval, unit, Schedulers.computation());
    }

    public static Observable<Long> interval(long interval, TimeUnit unit, Scheduler scheduler) {
        return interval(interval, interval, unit, scheduler);
    }

    public static Observable<Long> interval(long initialDelay, long period, TimeUnit unit) {
        return interval(initialDelay, period, unit, Schedulers.computation());
    }

    public static Observable<Long> interval(long initialDelay, long period, TimeUnit unit, Scheduler scheduler) {
        return create(new OnSubscribeTimerPeriodically(initialDelay, period, unit, scheduler));
    }

    public static <T> Observable<T> just(T value) {
        return ScalarSynchronousObservable.create(value);
    }

    public static <T> Observable<T> just(T t1, T t2) {
        return from(new Object[]{t1, t2});
    }

    public static <T> Observable<T> just(T t1, T t2, T t3) {
        return from(new Object[]{t1, t2, t3});
    }

    public static <T> Observable<T> just(T t1, T t2, T t3, T t4) {
        return from(new Object[]{t1, t2, t3, t4});
    }

    public static <T> Observable<T> just(T t1, T t2, T t3, T t4, T t5) {
        return from(new Object[]{t1, t2, t3, t4, t5});
    }

    public static <T> Observable<T> just(T t1, T t2, T t3, T t4, T t5, T t6) {
        return from(new Object[]{t1, t2, t3, t4, t5, t6});
    }

    public static <T> Observable<T> just(T t1, T t2, T t3, T t4, T t5, T t6, T t7) {
        return from(new Object[]{t1, t2, t3, t4, t5, t6, t7});
    }

    public static <T> Observable<T> just(T t1, T t2, T t3, T t4, T t5, T t6, T t7, T t8) {
        return from(new Object[]{t1, t2, t3, t4, t5, t6, t7, t8});
    }

    public static <T> Observable<T> just(T t1, T t2, T t3, T t4, T t5, T t6, T t7, T t8, T t9) {
        return from(new Object[]{t1, t2, t3, t4, t5, t6, t7, t8, t9});
    }

    public static <T> Observable<T> just(T t1, T t2, T t3, T t4, T t5, T t6, T t7, T t8, T t9, T t10) {
        return from(new Object[]{t1, t2, t3, t4, t5, t6, t7, t8, t9, t10});
    }

    public static <T> Observable<T> merge(Iterable<? extends Observable<? extends T>> sequences) {
        return merge(from(sequences));
    }

    public static <T> Observable<T> merge(Iterable<? extends Observable<? extends T>> sequences, int maxConcurrent) {
        return merge(from(sequences), maxConcurrent);
    }

    public static <T> Observable<T> merge(Observable<? extends Observable<? extends T>> source) {
        return source.getClass() == ScalarSynchronousObservable.class ? ((ScalarSynchronousObservable) source).scalarFlatMap(UtilityFunctions.identity()) : (Observable<T>) source.lift(OperatorMerge.instance(false));
    }

    public static <T> Observable<T> merge(Observable<? extends Observable<? extends T>> source, int maxConcurrent) {
        return source.getClass() == ScalarSynchronousObservable.class ? ((ScalarSynchronousObservable) source).scalarFlatMap(UtilityFunctions.identity()) : (Observable<T>) source.lift(OperatorMerge.instance(false, maxConcurrent));
    }

    public static <T> Observable<T> merge(Observable<? extends T> t1, Observable<? extends T> t2) {
        return merge(new Observable[]{t1, t2});
    }

    public static <T> Observable<T> merge(Observable<? extends T> t1, Observable<? extends T> t2, Observable<? extends T> t3) {
        return merge(new Observable[]{t1, t2, t3});
    }

    public static <T> Observable<T> merge(Observable<? extends T> t1, Observable<? extends T> t2, Observable<? extends T> t3, Observable<? extends T> t4) {
        return merge(new Observable[]{t1, t2, t3, t4});
    }

    public static <T> Observable<T> merge(Observable<? extends T> t1, Observable<? extends T> t2, Observable<? extends T> t3, Observable<? extends T> t4, Observable<? extends T> t5) {
        return merge(new Observable[]{t1, t2, t3, t4, t5});
    }

    public static <T> Observable<T> merge(Observable<? extends T> t1, Observable<? extends T> t2, Observable<? extends T> t3, Observable<? extends T> t4, Observable<? extends T> t5, Observable<? extends T> t6) {
        return merge(new Observable[]{t1, t2, t3, t4, t5, t6});
    }

    public static <T> Observable<T> merge(Observable<? extends T> t1, Observable<? extends T> t2, Observable<? extends T> t3, Observable<? extends T> t4, Observable<? extends T> t5, Observable<? extends T> t6, Observable<? extends T> t7) {
        return merge(new Observable[]{t1, t2, t3, t4, t5, t6, t7});
    }

    public static <T> Observable<T> merge(Observable<? extends T> t1, Observable<? extends T> t2, Observable<? extends T> t3, Observable<? extends T> t4, Observable<? extends T> t5, Observable<? extends T> t6, Observable<? extends T> t7, Observable<? extends T> t8) {
        return merge(new Observable[]{t1, t2, t3, t4, t5, t6, t7, t8});
    }

    public static <T> Observable<T> merge(Observable<? extends T> t1, Observable<? extends T> t2, Observable<? extends T> t3, Observable<? extends T> t4, Observable<? extends T> t5, Observable<? extends T> t6, Observable<? extends T> t7, Observable<? extends T> t8, Observable<? extends T> t9) {
        return merge(new Observable[]{t1, t2, t3, t4, t5, t6, t7, t8, t9});
    }

    public static <T> Observable<T> merge(Observable<? extends T>[] sequences) {
        return merge(from(sequences));
    }

    public static <T> Observable<T> merge(Observable<? extends T>[] sequences, int maxConcurrent) {
        return merge(from(sequences), maxConcurrent);
    }

    public static <T> Observable<T> mergeDelayError(Observable<? extends Observable<? extends T>> source) {
        return (Observable<T>) source.lift(OperatorMerge.instance(true));
    }

    @Experimental
    public static <T> Observable<T> mergeDelayError(Observable<? extends Observable<? extends T>> source, int maxConcurrent) {
        return (Observable<T>) source.lift(OperatorMerge.instance(true, maxConcurrent));
    }

    public static <T> Observable<T> mergeDelayError(Iterable<? extends Observable<? extends T>> sequences) {
        return mergeDelayError(from(sequences));
    }

    public static <T> Observable<T> mergeDelayError(Iterable<? extends Observable<? extends T>> sequences, int maxConcurrent) {
        return mergeDelayError(from(sequences), maxConcurrent);
    }

    public static <T> Observable<T> mergeDelayError(Observable<? extends T> t1, Observable<? extends T> t2) {
        return mergeDelayError(just(t1, t2));
    }

    public static <T> Observable<T> mergeDelayError(Observable<? extends T> t1, Observable<? extends T> t2, Observable<? extends T> t3) {
        return mergeDelayError(just(t1, t2, t3));
    }

    public static <T> Observable<T> mergeDelayError(Observable<? extends T> t1, Observable<? extends T> t2, Observable<? extends T> t3, Observable<? extends T> t4) {
        return mergeDelayError(just(t1, t2, t3, t4));
    }

    public static <T> Observable<T> mergeDelayError(Observable<? extends T> t1, Observable<? extends T> t2, Observable<? extends T> t3, Observable<? extends T> t4, Observable<? extends T> t5) {
        return mergeDelayError(just(t1, t2, t3, t4, t5));
    }

    public static <T> Observable<T> mergeDelayError(Observable<? extends T> t1, Observable<? extends T> t2, Observable<? extends T> t3, Observable<? extends T> t4, Observable<? extends T> t5, Observable<? extends T> t6) {
        return mergeDelayError(just(t1, t2, t3, t4, t5, t6));
    }

    public static <T> Observable<T> mergeDelayError(Observable<? extends T> t1, Observable<? extends T> t2, Observable<? extends T> t3, Observable<? extends T> t4, Observable<? extends T> t5, Observable<? extends T> t6, Observable<? extends T> t7) {
        return mergeDelayError(just(t1, t2, t3, t4, t5, t6, t7));
    }

    public static <T> Observable<T> mergeDelayError(Observable<? extends T> t1, Observable<? extends T> t2, Observable<? extends T> t3, Observable<? extends T> t4, Observable<? extends T> t5, Observable<? extends T> t6, Observable<? extends T> t7, Observable<? extends T> t8) {
        return mergeDelayError(just(t1, t2, t3, t4, t5, t6, t7, t8));
    }

    public static <T> Observable<T> mergeDelayError(Observable<? extends T> t1, Observable<? extends T> t2, Observable<? extends T> t3, Observable<? extends T> t4, Observable<? extends T> t5, Observable<? extends T> t6, Observable<? extends T> t7, Observable<? extends T> t8, Observable<? extends T> t9) {
        return mergeDelayError(just(t1, t2, t3, t4, t5, t6, t7, t8, t9));
    }

    public final Observable<Observable<T>> nest() {
        return just(this);
    }

    public static <T> Observable<T> never() {
        return NeverObservable.instance();
    }

    public static Observable<Integer> range(int start, int count) {
        if (count < 0) {
            throw new IllegalArgumentException("Count can not be negative");
        }
        if (count == 0) {
            return empty();
        }
        if (start > (Integer.MAX_VALUE - count) + 1) {
            throw new IllegalArgumentException("start + count can not exceed Integer.MAX_VALUE");
        }
        if (count == 1) {
            return just(Integer.valueOf(start));
        }
        return create(new OnSubscribeRange(start, (count - 1) + start));
    }

    public static Observable<Integer> range(int start, int count, Scheduler scheduler) {
        return range(start, count).subscribeOn(scheduler);
    }

    public static <T> Observable<Boolean> sequenceEqual(Observable<? extends T> first, Observable<? extends T> second) {
        return sequenceEqual(first, second, new Func2<T, T, Boolean>() { // from class: rx.Observable.3
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // p021rx.functions.Func2
            /* renamed from: call */
            public final Boolean mo1993call(T first2, T second2) {
                if (first2 == null) {
                    return Boolean.valueOf(second2 == null);
                }
                return Boolean.valueOf(first2.equals(second2));
            }
        });
    }

    public static <T> Observable<Boolean> sequenceEqual(Observable<? extends T> first, Observable<? extends T> second, Func2<? super T, ? super T, Boolean> equality) {
        return OperatorSequenceEqual.sequenceEqual(first, second, equality);
    }

    public static <T> Observable<T> switchOnNext(Observable<? extends Observable<? extends T>> sequenceOfSequences) {
        return (Observable<T>) sequenceOfSequences.lift(OperatorSwitch.instance());
    }

    @Deprecated
    public static Observable<Long> timer(long initialDelay, long period, TimeUnit unit) {
        return interval(initialDelay, period, unit, Schedulers.computation());
    }

    @Deprecated
    public static Observable<Long> timer(long initialDelay, long period, TimeUnit unit, Scheduler scheduler) {
        return interval(initialDelay, period, unit, scheduler);
    }

    public static Observable<Long> timer(long delay, TimeUnit unit) {
        return timer(delay, unit, Schedulers.computation());
    }

    public static Observable<Long> timer(long delay, TimeUnit unit, Scheduler scheduler) {
        return create(new OnSubscribeTimerOnce(delay, unit, scheduler));
    }

    public static <T, Resource> Observable<T> using(Func0<Resource> resourceFactory, Func1<? super Resource, ? extends Observable<? extends T>> observableFactory, Action1<? super Resource> disposeAction) {
        return using(resourceFactory, observableFactory, disposeAction, false);
    }

    @Experimental
    public static <T, Resource> Observable<T> using(Func0<Resource> resourceFactory, Func1<? super Resource, ? extends Observable<? extends T>> observableFactory, Action1<? super Resource> disposeAction, boolean disposeEagerly) {
        return create(new OnSubscribeUsing(resourceFactory, observableFactory, disposeAction, disposeEagerly));
    }

    public static <R> Observable<R> zip(Iterable<? extends Observable<?>> ws, FuncN<? extends R> zipFunction) {
        List<Observable<?>> os = new ArrayList<>();
        for (Observable<?> o : ws) {
            os.add(o);
        }
        return just(os.toArray(new Observable[os.size()])).lift(new OperatorZip(zipFunction));
    }

    public static <R> Observable<R> zip(Observable<? extends Observable<?>> ws, FuncN<? extends R> zipFunction) {
        return ws.toList().map(new Func1<List<? extends Observable<?>>, Observable<?>[]>() { // from class: rx.Observable.4
            @Override // p021rx.functions.Func1
            /* renamed from: call  reason: avoid collision after fix types in other method */
            public Observable<?>[] mo1999call(List<? extends Observable<?>> o) {
                return (Observable[]) o.toArray(new Observable[o.size()]);
            }
        }).lift(new OperatorZip(zipFunction));
    }

    public static <T1, T2, R> Observable<R> zip(Observable<? extends T1> o1, Observable<? extends T2> o2, Func2<? super T1, ? super T2, ? extends R> zipFunction) {
        return just(new Observable[]{o1, o2}).lift(new OperatorZip(zipFunction));
    }

    public static <T1, T2, T3, R> Observable<R> zip(Observable<? extends T1> o1, Observable<? extends T2> o2, Observable<? extends T3> o3, Func3<? super T1, ? super T2, ? super T3, ? extends R> zipFunction) {
        return just(new Observable[]{o1, o2, o3}).lift(new OperatorZip(zipFunction));
    }

    public static <T1, T2, T3, T4, R> Observable<R> zip(Observable<? extends T1> o1, Observable<? extends T2> o2, Observable<? extends T3> o3, Observable<? extends T4> o4, Func4<? super T1, ? super T2, ? super T3, ? super T4, ? extends R> zipFunction) {
        return just(new Observable[]{o1, o2, o3, o4}).lift(new OperatorZip(zipFunction));
    }

    public static <T1, T2, T3, T4, T5, R> Observable<R> zip(Observable<? extends T1> o1, Observable<? extends T2> o2, Observable<? extends T3> o3, Observable<? extends T4> o4, Observable<? extends T5> o5, Func5<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? extends R> zipFunction) {
        return just(new Observable[]{o1, o2, o3, o4, o5}).lift(new OperatorZip(zipFunction));
    }

    public static <T1, T2, T3, T4, T5, T6, R> Observable<R> zip(Observable<? extends T1> o1, Observable<? extends T2> o2, Observable<? extends T3> o3, Observable<? extends T4> o4, Observable<? extends T5> o5, Observable<? extends T6> o6, Func6<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? extends R> zipFunction) {
        return just(new Observable[]{o1, o2, o3, o4, o5, o6}).lift(new OperatorZip(zipFunction));
    }

    public static <T1, T2, T3, T4, T5, T6, T7, R> Observable<R> zip(Observable<? extends T1> o1, Observable<? extends T2> o2, Observable<? extends T3> o3, Observable<? extends T4> o4, Observable<? extends T5> o5, Observable<? extends T6> o6, Observable<? extends T7> o7, Func7<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? extends R> zipFunction) {
        return just(new Observable[]{o1, o2, o3, o4, o5, o6, o7}).lift(new OperatorZip(zipFunction));
    }

    public static <T1, T2, T3, T4, T5, T6, T7, T8, R> Observable<R> zip(Observable<? extends T1> o1, Observable<? extends T2> o2, Observable<? extends T3> o3, Observable<? extends T4> o4, Observable<? extends T5> o5, Observable<? extends T6> o6, Observable<? extends T7> o7, Observable<? extends T8> o8, Func8<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? extends R> zipFunction) {
        return just(new Observable[]{o1, o2, o3, o4, o5, o6, o7, o8}).lift(new OperatorZip(zipFunction));
    }

    public static <T1, T2, T3, T4, T5, T6, T7, T8, T9, R> Observable<R> zip(Observable<? extends T1> o1, Observable<? extends T2> o2, Observable<? extends T3> o3, Observable<? extends T4> o4, Observable<? extends T5> o5, Observable<? extends T6> o6, Observable<? extends T7> o7, Observable<? extends T8> o8, Observable<? extends T9> o9, Func9<? super T1, ? super T2, ? super T3, ? super T4, ? super T5, ? super T6, ? super T7, ? super T8, ? super T9, ? extends R> zipFunction) {
        return just(new Observable[]{o1, o2, o3, o4, o5, o6, o7, o8, o9}).lift(new OperatorZip(zipFunction));
    }

    public final Observable<Boolean> all(Func1<? super T, Boolean> predicate) {
        return lift(new OperatorAll(predicate));
    }

    public final Observable<T> ambWith(Observable<? extends T> t1) {
        return amb(this, t1);
    }

    public final Observable<T> asObservable() {
        return (Observable<T>) lift(OperatorAsObservable.instance());
    }

    public final <TClosing> Observable<List<T>> buffer(Func0<? extends Observable<? extends TClosing>> bufferClosingSelector) {
        return (Observable<List<T>>) lift(new OperatorBufferWithSingleObservable(bufferClosingSelector, 16));
    }

    public final Observable<List<T>> buffer(int count) {
        return buffer(count, count);
    }

    public final Observable<List<T>> buffer(int count, int skip) {
        return (Observable<List<T>>) lift(new OperatorBufferWithSize(count, skip));
    }

    public final Observable<List<T>> buffer(long timespan, long timeshift, TimeUnit unit) {
        return buffer(timespan, timeshift, unit, Schedulers.computation());
    }

    public final Observable<List<T>> buffer(long timespan, long timeshift, TimeUnit unit, Scheduler scheduler) {
        return (Observable<List<T>>) lift(new OperatorBufferWithTime(timespan, timeshift, unit, Integer.MAX_VALUE, scheduler));
    }

    public final Observable<List<T>> buffer(long timespan, TimeUnit unit) {
        return buffer(timespan, unit, Integer.MAX_VALUE, Schedulers.computation());
    }

    public final Observable<List<T>> buffer(long timespan, TimeUnit unit, int count) {
        return (Observable<List<T>>) lift(new OperatorBufferWithTime(timespan, timespan, unit, count, Schedulers.computation()));
    }

    public final Observable<List<T>> buffer(long timespan, TimeUnit unit, int count, Scheduler scheduler) {
        return (Observable<List<T>>) lift(new OperatorBufferWithTime(timespan, timespan, unit, count, scheduler));
    }

    public final Observable<List<T>> buffer(long timespan, TimeUnit unit, Scheduler scheduler) {
        return buffer(timespan, timespan, unit, scheduler);
    }

    public final <TOpening, TClosing> Observable<List<T>> buffer(Observable<? extends TOpening> bufferOpenings, Func1<? super TOpening, ? extends Observable<? extends TClosing>> bufferClosingSelector) {
        return (Observable<List<T>>) lift(new OperatorBufferWithStartEndObservable(bufferOpenings, bufferClosingSelector));
    }

    public final <B> Observable<List<T>> buffer(Observable<B> boundary) {
        return buffer(boundary, 16);
    }

    public final <B> Observable<List<T>> buffer(Observable<B> boundary, int initialCapacity) {
        return (Observable<List<T>>) lift(new OperatorBufferWithSingleObservable(boundary, initialCapacity));
    }

    public final Observable<T> cache() {
        return CachedObservable.from(this);
    }

    @Deprecated
    public final Observable<T> cache(int initialCapacity) {
        return cacheWithInitialCapacity(initialCapacity);
    }

    public final Observable<T> cacheWithInitialCapacity(int initialCapacity) {
        return CachedObservable.from(this, initialCapacity);
    }

    public final <R> Observable<R> cast(Class<R> klass) {
        return lift(new OperatorCast(klass));
    }

    public final <R> Observable<R> collect(Func0<R> stateFactory, final Action2<R, ? super T> collector) {
        Func2<R, T, R> accumulator = new Func2<R, T, R>() { // from class: rx.Observable.5
            @Override // p021rx.functions.Func2
            /* renamed from: call */
            public final R mo1993call(R state, T value) {
                collector.call(state, value);
                return state;
            }
        };
        return lift(new OperatorScan((Func0) stateFactory, (Func2) accumulator)).last();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <R> Observable<R> concatMap(Func1<? super T, ? extends Observable<? extends R>> func) {
        return concat(map(func));
    }

    public final Observable<T> concatWith(Observable<? extends T> t1) {
        return concat(this, t1);
    }

    public final Observable<Boolean> contains(final Object element) {
        return exists(new Func1<T, Boolean>() { // from class: rx.Observable.6
            @Override // p021rx.functions.Func1
            /* renamed from: call  reason: collision with other method in class */
            public /* bridge */ /* synthetic */ Boolean mo1999call(Object x0) {
                return mo1999call((C28046) x0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // p021rx.functions.Func1
            /* renamed from: call */
            public final Boolean mo1999call(T t1) {
                return Boolean.valueOf(element == null ? t1 == null : element.equals(t1));
            }
        });
    }

    public final Observable<Integer> count() {
        return reduce(0, CountHolder.INSTANCE);
    }

    /* renamed from: rx.Observable$CountHolder */
    /* loaded from: classes2.dex */
    private static final class CountHolder {
        static final Func2<Integer, Object, Integer> INSTANCE = new Func2<Integer, Object, Integer>() { // from class: rx.Observable.CountHolder.1
            @Override // p021rx.functions.Func2
            /* renamed from: call  reason: avoid collision after fix types in other method */
            public final Integer mo1993call(Integer count, Object o) {
                return Integer.valueOf(count.intValue() + 1);
            }
        };

        private CountHolder() {
        }
    }

    public final Observable<Long> countLong() {
        return reduce(0L, CountLongHolder.INSTANCE);
    }

    /* renamed from: rx.Observable$CountLongHolder */
    /* loaded from: classes2.dex */
    private static final class CountLongHolder {
        static final Func2<Long, Object, Long> INSTANCE = new Func2<Long, Object, Long>() { // from class: rx.Observable.CountLongHolder.1
            @Override // p021rx.functions.Func2
            /* renamed from: call  reason: avoid collision after fix types in other method */
            public final Long mo1993call(Long count, Object o) {
                return Long.valueOf(count.longValue() + 1);
            }
        };

        private CountLongHolder() {
        }
    }

    public final <U> Observable<T> debounce(Func1<? super T, ? extends Observable<U>> debounceSelector) {
        return (Observable<T>) lift(new OperatorDebounceWithSelector(debounceSelector));
    }

    public final Observable<T> debounce(long timeout, TimeUnit unit) {
        return debounce(timeout, unit, Schedulers.computation());
    }

    public final Observable<T> debounce(long timeout, TimeUnit unit, Scheduler scheduler) {
        return (Observable<T>) lift(new OperatorDebounceWithTime(timeout, unit, scheduler));
    }

    public final Observable<T> defaultIfEmpty(final T defaultValue) {
        return switchIfEmpty(create(new OnSubscribe<T>() { // from class: rx.Observable.7
            @Override // p021rx.functions.Action1
            public /* bridge */ /* synthetic */ void call(Object x0) {
                call((Subscriber) ((Subscriber) x0));
            }

            public void call(Subscriber<? super T> subscriber) {
                subscriber.setProducer(new SingleProducer(subscriber, defaultValue));
            }
        }));
    }

    public final Observable<T> switchIfEmpty(Observable<? extends T> alternate) {
        return (Observable<T>) lift(new OperatorSwitchIfEmpty(alternate));
    }

    public final <U, V> Observable<T> delay(Func0<? extends Observable<U>> subscriptionDelay, Func1<? super T, ? extends Observable<V>> itemDelay) {
        return (Observable<T>) delaySubscription(subscriptionDelay).lift(new OperatorDelayWithSelector(this, itemDelay));
    }

    public final <U> Observable<T> delay(Func1<? super T, ? extends Observable<U>> itemDelay) {
        return (Observable<T>) lift(new OperatorDelayWithSelector(this, itemDelay));
    }

    public final Observable<T> delay(long delay, TimeUnit unit) {
        return delay(delay, unit, Schedulers.computation());
    }

    public final Observable<T> delay(long delay, TimeUnit unit, Scheduler scheduler) {
        return (Observable<T>) lift(new OperatorDelay(delay, unit, scheduler));
    }

    public final Observable<T> delaySubscription(long delay, TimeUnit unit) {
        return delaySubscription(delay, unit, Schedulers.computation());
    }

    public final Observable<T> delaySubscription(long delay, TimeUnit unit, Scheduler scheduler) {
        return create(new OnSubscribeDelaySubscription(this, delay, unit, scheduler));
    }

    public final <U> Observable<T> delaySubscription(Func0<? extends Observable<U>> subscriptionDelay) {
        return create(new OnSubscribeDelaySubscriptionWithSelector(this, subscriptionDelay));
    }

    @Experimental
    public final <U> Observable<T> delaySubscription(Observable<U> other) {
        if (other == null) {
            throw new NullPointerException();
        }
        return create(new OnSubscribeDelaySubscriptionOther(this, other));
    }

    public final <T2> Observable<T2> dematerialize() {
        return (Observable<T2>) lift(OperatorDematerialize.instance());
    }

    public final Observable<T> distinct() {
        return (Observable<T>) lift(OperatorDistinct.instance());
    }

    public final <U> Observable<T> distinct(Func1<? super T, ? extends U> keySelector) {
        return (Observable<T>) lift(new OperatorDistinct(keySelector));
    }

    public final Observable<T> distinctUntilChanged() {
        return (Observable<T>) lift(OperatorDistinctUntilChanged.instance());
    }

    public final <U> Observable<T> distinctUntilChanged(Func1<? super T, ? extends U> keySelector) {
        return (Observable<T>) lift(new OperatorDistinctUntilChanged(keySelector));
    }

    public final Observable<T> doOnCompleted(final Action0 onCompleted) {
        Observer<T> observer = new Observer<T>() { // from class: rx.Observable.8
            @Override // p021rx.Observer
            public final void onCompleted() {
                onCompleted.call();
            }

            @Override // p021rx.Observer
            public final void onError(Throwable e) {
            }

            @Override // p021rx.Observer
            public final void onNext(T args) {
            }
        };
        return (Observable<T>) lift(new OperatorDoOnEach(observer));
    }

    public final Observable<T> doOnEach(final Action1<Notification<? super T>> onNotification) {
        Observer<T> observer = new Observer<T>() { // from class: rx.Observable.9
            @Override // p021rx.Observer
            public final void onCompleted() {
                onNotification.call(Notification.createOnCompleted());
            }

            @Override // p021rx.Observer
            public final void onError(Throwable e) {
                onNotification.call(Notification.createOnError(e));
            }

            @Override // p021rx.Observer
            public final void onNext(T v) {
                onNotification.call(Notification.createOnNext(v));
            }
        };
        return (Observable<T>) lift(new OperatorDoOnEach(observer));
    }

    public final Observable<T> doOnEach(Observer<? super T> observer) {
        return (Observable<T>) lift(new OperatorDoOnEach(observer));
    }

    public final Observable<T> doOnError(final Action1<Throwable> onError) {
        Observer<T> observer = new Observer<T>() { // from class: rx.Observable.10
            @Override // p021rx.Observer
            public final void onCompleted() {
            }

            @Override // p021rx.Observer
            public final void onError(Throwable e) {
                onError.call(e);
            }

            @Override // p021rx.Observer
            public final void onNext(T args) {
            }
        };
        return (Observable<T>) lift(new OperatorDoOnEach(observer));
    }

    public final Observable<T> doOnNext(final Action1<? super T> onNext) {
        Observer<T> observer = new Observer<T>() { // from class: rx.Observable.11
            @Override // p021rx.Observer
            public final void onCompleted() {
            }

            @Override // p021rx.Observer
            public final void onError(Throwable e) {
            }

            @Override // p021rx.Observer
            public final void onNext(T args) {
                onNext.call(args);
            }
        };
        return (Observable<T>) lift(new OperatorDoOnEach(observer));
    }

    @Beta
    public final Observable<T> doOnRequest(Action1<Long> onRequest) {
        return (Observable<T>) lift(new OperatorDoOnRequest(onRequest));
    }

    public final Observable<T> doOnSubscribe(Action0 subscribe) {
        return (Observable<T>) lift(new OperatorDoOnSubscribe(subscribe));
    }

    public final Observable<T> doOnTerminate(final Action0 onTerminate) {
        Observer<T> observer = new Observer<T>() { // from class: rx.Observable.12
            @Override // p021rx.Observer
            public final void onCompleted() {
                onTerminate.call();
            }

            @Override // p021rx.Observer
            public final void onError(Throwable e) {
                onTerminate.call();
            }

            @Override // p021rx.Observer
            public final void onNext(T args) {
            }
        };
        return (Observable<T>) lift(new OperatorDoOnEach(observer));
    }

    public final Observable<T> doOnUnsubscribe(Action0 unsubscribe) {
        return (Observable<T>) lift(new OperatorDoOnUnsubscribe(unsubscribe));
    }

    @Experimental
    public static <T> Observable<T> concatEager(Observable<? extends T> o1, Observable<? extends T> o2) {
        return concatEager(Arrays.asList(o1, o2));
    }

    @Experimental
    public static <T> Observable<T> concatEager(Observable<? extends T> o1, Observable<? extends T> o2, Observable<? extends T> o3) {
        return concatEager(Arrays.asList(o1, o2, o3));
    }

    @Experimental
    public static <T> Observable<T> concatEager(Observable<? extends T> o1, Observable<? extends T> o2, Observable<? extends T> o3, Observable<? extends T> o4) {
        return concatEager(Arrays.asList(o1, o2, o3, o4));
    }

    @Experimental
    public static <T> Observable<T> concatEager(Observable<? extends T> o1, Observable<? extends T> o2, Observable<? extends T> o3, Observable<? extends T> o4, Observable<? extends T> o5) {
        return concatEager(Arrays.asList(o1, o2, o3, o4, o5));
    }

    @Experimental
    public static <T> Observable<T> concatEager(Observable<? extends T> o1, Observable<? extends T> o2, Observable<? extends T> o3, Observable<? extends T> o4, Observable<? extends T> o5, Observable<? extends T> o6) {
        return concatEager(Arrays.asList(o1, o2, o3, o4, o5, o6));
    }

    @Experimental
    public static <T> Observable<T> concatEager(Observable<? extends T> o1, Observable<? extends T> o2, Observable<? extends T> o3, Observable<? extends T> o4, Observable<? extends T> o5, Observable<? extends T> o6, Observable<? extends T> o7) {
        return concatEager(Arrays.asList(o1, o2, o3, o4, o5, o6, o7));
    }

    @Experimental
    public static <T> Observable<T> concatEager(Observable<? extends T> o1, Observable<? extends T> o2, Observable<? extends T> o3, Observable<? extends T> o4, Observable<? extends T> o5, Observable<? extends T> o6, Observable<? extends T> o7, Observable<? extends T> o8) {
        return concatEager(Arrays.asList(o1, o2, o3, o4, o5, o6, o7, o8));
    }

    @Experimental
    public static <T> Observable<T> concatEager(Observable<? extends T> o1, Observable<? extends T> o2, Observable<? extends T> o3, Observable<? extends T> o4, Observable<? extends T> o5, Observable<? extends T> o6, Observable<? extends T> o7, Observable<? extends T> o8, Observable<? extends T> o9) {
        return concatEager(Arrays.asList(o1, o2, o3, o4, o5, o6, o7, o8, o9));
    }

    @Experimental
    public static <T> Observable<T> concatEager(Iterable<? extends Observable<? extends T>> sources) {
        return from(sources).concatMapEager(UtilityFunctions.identity());
    }

    @Experimental
    public static <T> Observable<T> concatEager(Iterable<? extends Observable<? extends T>> sources, int capacityHint) {
        return from(sources).concatMapEager(UtilityFunctions.identity(), capacityHint);
    }

    @Experimental
    public static <T> Observable<T> concatEager(Observable<? extends Observable<? extends T>> sources) {
        return (Observable<T>) sources.concatMapEager(UtilityFunctions.identity());
    }

    @Experimental
    public static <T> Observable<T> concatEager(Observable<? extends Observable<? extends T>> sources, int capacityHint) {
        return (Observable<T>) sources.concatMapEager(UtilityFunctions.identity(), capacityHint);
    }

    @Experimental
    public final <R> Observable<R> concatMapEager(Func1<? super T, ? extends Observable<? extends R>> mapper) {
        return concatMapEager(mapper, RxRingBuffer.SIZE);
    }

    @Experimental
    public final <R> Observable<R> concatMapEager(Func1<? super T, ? extends Observable<? extends R>> mapper, int capacityHint) {
        if (capacityHint < 1) {
            throw new IllegalArgumentException("capacityHint > 0 required but it was " + capacityHint);
        }
        return lift(new OperatorEagerConcatMap(mapper, capacityHint));
    }

    public final Observable<T> elementAt(int index) {
        return (Observable<T>) lift(new OperatorElementAt(index));
    }

    public final Observable<T> elementAtOrDefault(int index, T defaultValue) {
        return (Observable<T>) lift(new OperatorElementAt(index, defaultValue));
    }

    public final Observable<Boolean> exists(Func1<? super T, Boolean> predicate) {
        return lift(new OperatorAny(predicate, false));
    }

    public final Observable<T> filter(Func1<? super T, Boolean> predicate) {
        return (Observable<T>) lift(new OperatorFilter(predicate));
    }

    @Deprecated
    public final Observable<T> finallyDo(Action0 action) {
        return (Observable<T>) lift(new OperatorDoAfterTerminate(action));
    }

    public final Observable<T> doAfterTerminate(Action0 action) {
        return (Observable<T>) lift(new OperatorDoAfterTerminate(action));
    }

    public final Observable<T> first() {
        return take(1).single();
    }

    public final Observable<T> first(Func1<? super T, Boolean> predicate) {
        return takeFirst(predicate).single();
    }

    public final Observable<T> firstOrDefault(T defaultValue) {
        return take(1).singleOrDefault(defaultValue);
    }

    public final Observable<T> firstOrDefault(T defaultValue, Func1<? super T, Boolean> predicate) {
        return takeFirst(predicate).singleOrDefault(defaultValue);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <R> Observable<R> flatMap(Func1<? super T, ? extends Observable<? extends R>> func) {
        return getClass() == ScalarSynchronousObservable.class ? ((ScalarSynchronousObservable) this).scalarFlatMap(func) : merge(map(func));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Beta
    public final <R> Observable<R> flatMap(Func1<? super T, ? extends Observable<? extends R>> func, int maxConcurrent) {
        return getClass() == ScalarSynchronousObservable.class ? ((ScalarSynchronousObservable) this).scalarFlatMap(func) : merge(map(func), maxConcurrent);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <R> Observable<R> flatMap(Func1<? super T, ? extends Observable<? extends R>> onNext, Func1<? super Throwable, ? extends Observable<? extends R>> onError, Func0<? extends Observable<? extends R>> onCompleted) {
        return merge(mapNotification(onNext, onError, onCompleted));
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Beta
    public final <R> Observable<R> flatMap(Func1<? super T, ? extends Observable<? extends R>> onNext, Func1<? super Throwable, ? extends Observable<? extends R>> onError, Func0<? extends Observable<? extends R>> onCompleted, int maxConcurrent) {
        return merge(mapNotification(onNext, onError, onCompleted), maxConcurrent);
    }

    public final <U, R> Observable<R> flatMap(Func1<? super T, ? extends Observable<? extends U>> collectionSelector, Func2<? super T, ? super U, ? extends R> resultSelector) {
        return merge(lift(new OperatorMapPair(collectionSelector, resultSelector)));
    }

    @Beta
    public final <U, R> Observable<R> flatMap(Func1<? super T, ? extends Observable<? extends U>> collectionSelector, Func2<? super T, ? super U, ? extends R> resultSelector, int maxConcurrent) {
        return merge(lift(new OperatorMapPair(collectionSelector, resultSelector)), maxConcurrent);
    }

    public final <R> Observable<R> flatMapIterable(Func1<? super T, ? extends Iterable<? extends R>> collectionSelector) {
        return merge(map(OperatorMapPair.convertSelector(collectionSelector)));
    }

    public final <U, R> Observable<R> flatMapIterable(Func1<? super T, ? extends Iterable<? extends U>> collectionSelector, Func2<? super T, ? super U, ? extends R> resultSelector) {
        return flatMap(OperatorMapPair.convertSelector(collectionSelector), resultSelector);
    }

    public final void forEach(Action1<? super T> onNext) {
        subscribe(onNext);
    }

    public final void forEach(Action1<? super T> onNext, Action1<Throwable> onError) {
        subscribe(onNext, onError);
    }

    public final void forEach(Action1<? super T> onNext, Action1<Throwable> onError, Action0 onComplete) {
        subscribe(onNext, onError, onComplete);
    }

    public final <K, R> Observable<GroupedObservable<K, R>> groupBy(Func1<? super T, ? extends K> keySelector, Func1<? super T, ? extends R> elementSelector) {
        return (Observable<R>) lift(new OperatorGroupBy(keySelector, elementSelector));
    }

    public final <K> Observable<GroupedObservable<K, T>> groupBy(Func1<? super T, ? extends K> keySelector) {
        return (Observable<GroupedObservable<K, T>>) lift(new OperatorGroupBy(keySelector));
    }

    public final <T2, D1, D2, R> Observable<R> groupJoin(Observable<T2> right, Func1<? super T, ? extends Observable<D1>> leftDuration, Func1<? super T2, ? extends Observable<D2>> rightDuration, Func2<? super T, ? super Observable<T2>, ? extends R> resultSelector) {
        return create(new OnSubscribeGroupJoin(this, right, leftDuration, rightDuration, resultSelector));
    }

    public final Observable<T> ignoreElements() {
        return (Observable<T>) lift(OperatorIgnoreElements.instance());
    }

    public final Observable<Boolean> isEmpty() {
        return lift(HolderAnyForEmpty.INSTANCE);
    }

    /* renamed from: rx.Observable$HolderAnyForEmpty */
    /* loaded from: classes2.dex */
    private static class HolderAnyForEmpty {
        static final OperatorAny<?> INSTANCE = new OperatorAny<>(UtilityFunctions.alwaysTrue(), true);

        private HolderAnyForEmpty() {
        }
    }

    public final <TRight, TLeftDuration, TRightDuration, R> Observable<R> join(Observable<TRight> right, Func1<T, Observable<TLeftDuration>> leftDurationSelector, Func1<TRight, Observable<TRightDuration>> rightDurationSelector, Func2<T, TRight, R> resultSelector) {
        return create(new OnSubscribeJoin(this, right, leftDurationSelector, rightDurationSelector, resultSelector));
    }

    public final Observable<T> last() {
        return takeLast(1).single();
    }

    public final Observable<T> last(Func1<? super T, Boolean> predicate) {
        return filter(predicate).takeLast(1).single();
    }

    public final Observable<T> lastOrDefault(T defaultValue) {
        return takeLast(1).singleOrDefault(defaultValue);
    }

    public final Observable<T> lastOrDefault(T defaultValue, Func1<? super T, Boolean> predicate) {
        return filter(predicate).takeLast(1).singleOrDefault(defaultValue);
    }

    public final Observable<T> limit(int count) {
        return take(count);
    }

    public final <R> Observable<R> map(Func1<? super T, ? extends R> func) {
        return lift(new OperatorMap(func));
    }

    private <R> Observable<R> mapNotification(Func1<? super T, ? extends R> onNext, Func1<? super Throwable, ? extends R> onError, Func0<? extends R> onCompleted) {
        return lift(new OperatorMapNotification(onNext, onError, onCompleted));
    }

    public final Observable<Notification<T>> materialize() {
        return (Observable<Notification<T>>) lift(OperatorMaterialize.instance());
    }

    public final Observable<T> mergeWith(Observable<? extends T> t1) {
        return merge(this, t1);
    }

    public final Observable<T> observeOn(Scheduler scheduler) {
        return this instanceof ScalarSynchronousObservable ? ((ScalarSynchronousObservable) this).scalarScheduleOn(scheduler) : (Observable<T>) lift(new OperatorObserveOn(scheduler, false));
    }

    public final Observable<T> observeOn(Scheduler scheduler, boolean delayError) {
        return this instanceof ScalarSynchronousObservable ? ((ScalarSynchronousObservable) this).scalarScheduleOn(scheduler) : (Observable<T>) lift(new OperatorObserveOn(scheduler, delayError));
    }

    public final <R> Observable<R> ofType(final Class<R> klass) {
        return filter(new Func1<T, Boolean>() { // from class: rx.Observable.13
            @Override // p021rx.functions.Func1
            /* renamed from: call  reason: collision with other method in class */
            public /* bridge */ /* synthetic */ Boolean mo1999call(Object x0) {
                return mo1999call((C277813) x0);
            }

            /* JADX WARN: Can't rename method to resolve collision */
            @Override // p021rx.functions.Func1
            /* renamed from: call */
            public final Boolean mo1999call(T t) {
                return Boolean.valueOf(klass.isInstance(t));
            }
        }).cast(klass);
    }

    public final Observable<T> onBackpressureBuffer() {
        return (Observable<T>) lift(OperatorOnBackpressureBuffer.instance());
    }

    public final Observable<T> onBackpressureBuffer(long capacity) {
        return (Observable<T>) lift(new OperatorOnBackpressureBuffer(capacity));
    }

    public final Observable<T> onBackpressureBuffer(long capacity, Action0 onOverflow) {
        return (Observable<T>) lift(new OperatorOnBackpressureBuffer(capacity, onOverflow));
    }

    public final Observable<T> onBackpressureDrop(Action1<? super T> onDrop) {
        return (Observable<T>) lift(new OperatorOnBackpressureDrop(onDrop));
    }

    public final Observable<T> onBackpressureDrop() {
        return (Observable<T>) lift(OperatorOnBackpressureDrop.instance());
    }

    public final Observable<T> onBackpressureLatest() {
        return (Observable<T>) lift(OperatorOnBackpressureLatest.instance());
    }

    public final Observable<T> onErrorResumeNext(Func1<Throwable, ? extends Observable<? extends T>> resumeFunction) {
        return (Observable<T>) lift(new OperatorOnErrorResumeNextViaFunction(resumeFunction));
    }

    public final Observable<T> onErrorResumeNext(Observable<? extends T> resumeSequence) {
        return (Observable<T>) lift(OperatorOnErrorResumeNextViaFunction.withOther(resumeSequence));
    }

    public final Observable<T> onErrorReturn(Func1<Throwable, ? extends T> resumeFunction) {
        return (Observable<T>) lift(OperatorOnErrorResumeNextViaFunction.withSingle(resumeFunction));
    }

    public final Observable<T> onExceptionResumeNext(Observable<? extends T> resumeSequence) {
        return (Observable<T>) lift(OperatorOnErrorResumeNextViaFunction.withException(resumeSequence));
    }

    public final ConnectableObservable<T> publish() {
        return OperatorPublish.create(this);
    }

    public final <R> Observable<R> publish(Func1<? super Observable<T>, ? extends Observable<R>> selector) {
        return OperatorPublish.create(this, selector);
    }

    public final Observable<T> reduce(Func2<T, T, T> accumulator) {
        return scan(accumulator).last();
    }

    public final <R> Observable<R> reduce(R initialValue, Func2<R, ? super T, R> accumulator) {
        return scan(initialValue, accumulator).takeLast(1);
    }

    public final Observable<T> repeat() {
        return OnSubscribeRedo.repeat(this);
    }

    public final Observable<T> repeat(Scheduler scheduler) {
        return OnSubscribeRedo.repeat(this, scheduler);
    }

    public final Observable<T> repeat(long count) {
        return OnSubscribeRedo.repeat(this, count);
    }

    public final Observable<T> repeat(long count, Scheduler scheduler) {
        return OnSubscribeRedo.repeat(this, count, scheduler);
    }

    public final Observable<T> repeatWhen(final Func1<? super Observable<? extends Void>, ? extends Observable<?>> notificationHandler, Scheduler scheduler) {
        Func1<? super Observable<? extends Notification<?>>, ? extends Observable<?>> dematerializedNotificationHandler = new Func1<Observable<? extends Notification<?>>, Observable<?>>() { // from class: rx.Observable.14
            /* JADX WARN: Multi-variable type inference failed */
            @Override // p021rx.functions.Func1
            /* renamed from: call  reason: avoid collision after fix types in other method */
            public Observable<?> mo1999call(Observable<? extends Notification<?>> notifications) {
                return (Observable) notificationHandler.mo1999call(notifications.map(new Func1<Notification<?>, Void>() { // from class: rx.Observable.14.1
                    @Override // p021rx.functions.Func1
                    /* renamed from: call  reason: avoid collision after fix types in other method */
                    public Void mo1999call(Notification<?> notification) {
                        return null;
                    }
                }));
            }
        };
        return OnSubscribeRedo.repeat(this, dematerializedNotificationHandler, scheduler);
    }

    public final Observable<T> repeatWhen(final Func1<? super Observable<? extends Void>, ? extends Observable<?>> notificationHandler) {
        Func1<? super Observable<? extends Notification<?>>, ? extends Observable<?>> dematerializedNotificationHandler = new Func1<Observable<? extends Notification<?>>, Observable<?>>() { // from class: rx.Observable.15
            /* JADX WARN: Multi-variable type inference failed */
            @Override // p021rx.functions.Func1
            /* renamed from: call  reason: avoid collision after fix types in other method */
            public Observable<?> mo1999call(Observable<? extends Notification<?>> notifications) {
                return (Observable) notificationHandler.mo1999call(notifications.map(new Func1<Notification<?>, Void>() { // from class: rx.Observable.15.1
                    @Override // p021rx.functions.Func1
                    /* renamed from: call  reason: avoid collision after fix types in other method */
                    public Void mo1999call(Notification<?> notification) {
                        return null;
                    }
                }));
            }
        };
        return OnSubscribeRedo.repeat(this, dematerializedNotificationHandler);
    }

    public final ConnectableObservable<T> replay() {
        return OperatorReplay.create(this);
    }

    public final <R> Observable<R> replay(Func1<? super Observable<T>, ? extends Observable<R>> selector) {
        return OperatorReplay.multicastSelector(new Func0<ConnectableObservable<T>>() { // from class: rx.Observable.16
            @Override // p021rx.functions.Func0, java.util.concurrent.Callable
            /* renamed from: call  reason: collision with other method in class */
            public ConnectableObservable<T> mo1996call() {
                return Observable.this.replay();
            }
        }, selector);
    }

    public final <R> Observable<R> replay(Func1<? super Observable<T>, ? extends Observable<R>> selector, final int bufferSize) {
        return OperatorReplay.multicastSelector(new Func0<ConnectableObservable<T>>() { // from class: rx.Observable.17
            @Override // p021rx.functions.Func0, java.util.concurrent.Callable
            /* renamed from: call  reason: collision with other method in class */
            public ConnectableObservable<T> mo1996call() {
                return Observable.this.replay(bufferSize);
            }
        }, selector);
    }

    public final <R> Observable<R> replay(Func1<? super Observable<T>, ? extends Observable<R>> selector, int bufferSize, long time, TimeUnit unit) {
        return replay(selector, bufferSize, time, unit, Schedulers.computation());
    }

    public final <R> Observable<R> replay(Func1<? super Observable<T>, ? extends Observable<R>> selector, final int bufferSize, final long time, final TimeUnit unit, final Scheduler scheduler) {
        if (bufferSize < 0) {
            throw new IllegalArgumentException("bufferSize < 0");
        }
        return OperatorReplay.multicastSelector(new Func0<ConnectableObservable<T>>() { // from class: rx.Observable.18
            @Override // p021rx.functions.Func0, java.util.concurrent.Callable
            /* renamed from: call  reason: collision with other method in class */
            public ConnectableObservable<T> mo1996call() {
                return Observable.this.replay(bufferSize, time, unit, scheduler);
            }
        }, selector);
    }

    public final <R> Observable<R> replay(final Func1<? super Observable<T>, ? extends Observable<R>> selector, final int bufferSize, final Scheduler scheduler) {
        return OperatorReplay.multicastSelector(new Func0<ConnectableObservable<T>>() { // from class: rx.Observable.19
            @Override // p021rx.functions.Func0, java.util.concurrent.Callable
            /* renamed from: call  reason: collision with other method in class */
            public ConnectableObservable<T> mo1996call() {
                return Observable.this.replay(bufferSize);
            }
        }, new Func1<Observable<T>, Observable<R>>() { // from class: rx.Observable.20
            @Override // p021rx.functions.Func1
            /* renamed from: call */
            public /* bridge */ /* synthetic */ Object mo1999call(Object x0) {
                return call((Observable) ((Observable) x0));
            }

            public Observable<R> call(Observable<T> t) {
                return ((Observable) selector.mo1999call(t)).observeOn(scheduler);
            }
        });
    }

    public final <R> Observable<R> replay(Func1<? super Observable<T>, ? extends Observable<R>> selector, long time, TimeUnit unit) {
        return replay(selector, time, unit, Schedulers.computation());
    }

    public final <R> Observable<R> replay(Func1<? super Observable<T>, ? extends Observable<R>> selector, final long time, final TimeUnit unit, final Scheduler scheduler) {
        return OperatorReplay.multicastSelector(new Func0<ConnectableObservable<T>>() { // from class: rx.Observable.21
            @Override // p021rx.functions.Func0, java.util.concurrent.Callable
            /* renamed from: call  reason: collision with other method in class */
            public ConnectableObservable<T> mo1996call() {
                return Observable.this.replay(time, unit, scheduler);
            }
        }, selector);
    }

    public final <R> Observable<R> replay(final Func1<? super Observable<T>, ? extends Observable<R>> selector, final Scheduler scheduler) {
        return OperatorReplay.multicastSelector(new Func0<ConnectableObservable<T>>() { // from class: rx.Observable.22
            @Override // p021rx.functions.Func0, java.util.concurrent.Callable
            /* renamed from: call  reason: collision with other method in class */
            public ConnectableObservable<T> mo1996call() {
                return Observable.this.replay();
            }
        }, new Func1<Observable<T>, Observable<R>>() { // from class: rx.Observable.23
            @Override // p021rx.functions.Func1
            /* renamed from: call */
            public /* bridge */ /* synthetic */ Object mo1999call(Object x0) {
                return call((Observable) ((Observable) x0));
            }

            public Observable<R> call(Observable<T> t) {
                return ((Observable) selector.mo1999call(t)).observeOn(scheduler);
            }
        });
    }

    public final ConnectableObservable<T> replay(int bufferSize) {
        return OperatorReplay.create(this, bufferSize);
    }

    public final ConnectableObservable<T> replay(int bufferSize, long time, TimeUnit unit) {
        return replay(bufferSize, time, unit, Schedulers.computation());
    }

    public final ConnectableObservable<T> replay(int bufferSize, long time, TimeUnit unit, Scheduler scheduler) {
        if (bufferSize < 0) {
            throw new IllegalArgumentException("bufferSize < 0");
        }
        return OperatorReplay.create(this, time, unit, scheduler, bufferSize);
    }

    public final ConnectableObservable<T> replay(int bufferSize, Scheduler scheduler) {
        return OperatorReplay.observeOn(replay(bufferSize), scheduler);
    }

    public final ConnectableObservable<T> replay(long time, TimeUnit unit) {
        return replay(time, unit, Schedulers.computation());
    }

    public final ConnectableObservable<T> replay(long time, TimeUnit unit, Scheduler scheduler) {
        return OperatorReplay.create(this, time, unit, scheduler);
    }

    public final ConnectableObservable<T> replay(Scheduler scheduler) {
        return OperatorReplay.observeOn(replay(), scheduler);
    }

    public final Observable<T> retry() {
        return OnSubscribeRedo.retry(this);
    }

    public final Observable<T> retry(long count) {
        return OnSubscribeRedo.retry(this, count);
    }

    public final Observable<T> retry(Func2<Integer, Throwable, Boolean> predicate) {
        return (Observable<T>) nest().lift(new OperatorRetryWithPredicate(predicate));
    }

    public final Observable<T> retryWhen(final Func1<? super Observable<? extends Throwable>, ? extends Observable<?>> notificationHandler) {
        Func1<? super Observable<? extends Notification<?>>, ? extends Observable<?>> dematerializedNotificationHandler = new Func1<Observable<? extends Notification<?>>, Observable<?>>() { // from class: rx.Observable.24
            /* JADX WARN: Multi-variable type inference failed */
            @Override // p021rx.functions.Func1
            /* renamed from: call  reason: avoid collision after fix types in other method */
            public Observable<?> mo1999call(Observable<? extends Notification<?>> notifications) {
                return (Observable) notificationHandler.mo1999call(notifications.map(new Func1<Notification<?>, Throwable>() { // from class: rx.Observable.24.1
                    @Override // p021rx.functions.Func1
                    /* renamed from: call  reason: avoid collision after fix types in other method */
                    public Throwable mo1999call(Notification<?> notification) {
                        return notification.getThrowable();
                    }
                }));
            }
        };
        return OnSubscribeRedo.retry(this, dematerializedNotificationHandler);
    }

    public final Observable<T> retryWhen(final Func1<? super Observable<? extends Throwable>, ? extends Observable<?>> notificationHandler, Scheduler scheduler) {
        Func1<? super Observable<? extends Notification<?>>, ? extends Observable<?>> dematerializedNotificationHandler = new Func1<Observable<? extends Notification<?>>, Observable<?>>() { // from class: rx.Observable.25
            /* JADX WARN: Multi-variable type inference failed */
            @Override // p021rx.functions.Func1
            /* renamed from: call  reason: avoid collision after fix types in other method */
            public Observable<?> mo1999call(Observable<? extends Notification<?>> notifications) {
                return (Observable) notificationHandler.mo1999call(notifications.map(new Func1<Notification<?>, Throwable>() { // from class: rx.Observable.25.1
                    @Override // p021rx.functions.Func1
                    /* renamed from: call  reason: avoid collision after fix types in other method */
                    public Throwable mo1999call(Notification<?> notification) {
                        return notification.getThrowable();
                    }
                }));
            }
        };
        return OnSubscribeRedo.retry(this, dematerializedNotificationHandler, scheduler);
    }

    public final Observable<T> sample(long period, TimeUnit unit) {
        return sample(period, unit, Schedulers.computation());
    }

    public final Observable<T> sample(long period, TimeUnit unit, Scheduler scheduler) {
        return (Observable<T>) lift(new OperatorSampleWithTime(period, unit, scheduler));
    }

    public final <U> Observable<T> sample(Observable<U> sampler) {
        return (Observable<T>) lift(new OperatorSampleWithObservable(sampler));
    }

    public final Observable<T> scan(Func2<T, T, T> accumulator) {
        return (Observable<T>) lift(new OperatorScan(accumulator));
    }

    public final <R> Observable<R> scan(R initialValue, Func2<R, ? super T, R> accumulator) {
        return lift(new OperatorScan(initialValue, accumulator));
    }

    public final Observable<T> serialize() {
        return (Observable<T>) lift(OperatorSerialize.instance());
    }

    public final Observable<T> share() {
        return publish().refCount();
    }

    public final Observable<T> single() {
        return (Observable<T>) lift(OperatorSingle.instance());
    }

    public final Observable<T> single(Func1<? super T, Boolean> predicate) {
        return filter(predicate).single();
    }

    public final Observable<T> singleOrDefault(T defaultValue) {
        return (Observable<T>) lift(new OperatorSingle(defaultValue));
    }

    public final Observable<T> singleOrDefault(T defaultValue, Func1<? super T, Boolean> predicate) {
        return filter(predicate).singleOrDefault(defaultValue);
    }

    public final Observable<T> skip(int count) {
        return (Observable<T>) lift(new OperatorSkip(count));
    }

    public final Observable<T> skip(long time, TimeUnit unit) {
        return skip(time, unit, Schedulers.computation());
    }

    public final Observable<T> skip(long time, TimeUnit unit, Scheduler scheduler) {
        return (Observable<T>) lift(new OperatorSkipTimed(time, unit, scheduler));
    }

    public final Observable<T> skipLast(int count) {
        return (Observable<T>) lift(new OperatorSkipLast(count));
    }

    public final Observable<T> skipLast(long time, TimeUnit unit) {
        return skipLast(time, unit, Schedulers.computation());
    }

    public final Observable<T> skipLast(long time, TimeUnit unit, Scheduler scheduler) {
        return (Observable<T>) lift(new OperatorSkipLastTimed(time, unit, scheduler));
    }

    public final <U> Observable<T> skipUntil(Observable<U> other) {
        return (Observable<T>) lift(new OperatorSkipUntil(other));
    }

    public final Observable<T> skipWhile(Func1<? super T, Boolean> predicate) {
        return (Observable<T>) lift(new OperatorSkipWhile(OperatorSkipWhile.toPredicate2(predicate)));
    }

    public final Observable<T> startWith(Observable<T> values) {
        return concat(values, this);
    }

    public final Observable<T> startWith(Iterable<T> values) {
        return concat(from(values), this);
    }

    public final Observable<T> startWith(T t1) {
        return concat(just(t1), this);
    }

    public final Observable<T> startWith(T t1, T t2) {
        return concat(just(t1, t2), this);
    }

    public final Observable<T> startWith(T t1, T t2, T t3) {
        return concat(just(t1, t2, t3), this);
    }

    public final Observable<T> startWith(T t1, T t2, T t3, T t4) {
        return concat(just(t1, t2, t3, t4), this);
    }

    public final Observable<T> startWith(T t1, T t2, T t3, T t4, T t5) {
        return concat(just(t1, t2, t3, t4, t5), this);
    }

    public final Observable<T> startWith(T t1, T t2, T t3, T t4, T t5, T t6) {
        return concat(just(t1, t2, t3, t4, t5, t6), this);
    }

    public final Observable<T> startWith(T t1, T t2, T t3, T t4, T t5, T t6, T t7) {
        return concat(just(t1, t2, t3, t4, t5, t6, t7), this);
    }

    public final Observable<T> startWith(T t1, T t2, T t3, T t4, T t5, T t6, T t7, T t8) {
        return concat(just(t1, t2, t3, t4, t5, t6, t7, t8), this);
    }

    public final Observable<T> startWith(T t1, T t2, T t3, T t4, T t5, T t6, T t7, T t8, T t9) {
        return concat(just(t1, t2, t3, t4, t5, t6, t7, t8, t9), this);
    }

    public final Subscription subscribe() {
        return subscribe((Subscriber) new Subscriber<T>() { // from class: rx.Observable.26
            @Override // p021rx.Observer
            public final void onCompleted() {
            }

            @Override // p021rx.Observer
            public final void onError(Throwable e) {
                throw new OnErrorNotImplementedException(e);
            }

            @Override // p021rx.Observer
            public final void onNext(T args) {
            }
        });
    }

    public final Subscription subscribe(final Action1<? super T> onNext) {
        if (onNext == null) {
            throw new IllegalArgumentException("onNext can not be null");
        }
        return subscribe((Subscriber) new Subscriber<T>() { // from class: rx.Observable.27
            @Override // p021rx.Observer
            public final void onCompleted() {
            }

            @Override // p021rx.Observer
            public final void onError(Throwable e) {
                throw new OnErrorNotImplementedException(e);
            }

            @Override // p021rx.Observer
            public final void onNext(T args) {
                onNext.call(args);
            }
        });
    }

    public final Subscription subscribe(final Action1<? super T> onNext, final Action1<Throwable> onError) {
        if (onNext == null) {
            throw new IllegalArgumentException("onNext can not be null");
        }
        if (onError == null) {
            throw new IllegalArgumentException("onError can not be null");
        }
        return subscribe((Subscriber) new Subscriber<T>() { // from class: rx.Observable.28
            @Override // p021rx.Observer
            public final void onCompleted() {
            }

            @Override // p021rx.Observer
            public final void onError(Throwable e) {
                onError.call(e);
            }

            @Override // p021rx.Observer
            public final void onNext(T args) {
                onNext.call(args);
            }
        });
    }

    public final Subscription subscribe(final Action1<? super T> onNext, final Action1<Throwable> onError, final Action0 onComplete) {
        if (onNext == null) {
            throw new IllegalArgumentException("onNext can not be null");
        }
        if (onError == null) {
            throw new IllegalArgumentException("onError can not be null");
        }
        if (onComplete == null) {
            throw new IllegalArgumentException("onComplete can not be null");
        }
        return subscribe((Subscriber) new Subscriber<T>() { // from class: rx.Observable.29
            @Override // p021rx.Observer
            public final void onCompleted() {
                onComplete.call();
            }

            @Override // p021rx.Observer
            public final void onError(Throwable e) {
                onError.call(e);
            }

            @Override // p021rx.Observer
            public final void onNext(T args) {
                onNext.call(args);
            }
        });
    }

    public final Subscription subscribe(final Observer<? super T> observer) {
        return observer instanceof Subscriber ? subscribe((Subscriber) ((Subscriber) observer)) : subscribe((Subscriber) new Subscriber<T>() { // from class: rx.Observable.30
            @Override // p021rx.Observer
            public void onCompleted() {
                observer.onCompleted();
            }

            @Override // p021rx.Observer
            public void onError(Throwable e) {
                observer.onError(e);
            }

            @Override // p021rx.Observer
            public void onNext(T t) {
                observer.onNext(t);
            }
        });
    }

    public final Subscription unsafeSubscribe(Subscriber<? super T> subscriber) {
        try {
            subscriber.onStart();
            hook.onSubscribeStart(this, this.onSubscribe).call(subscriber);
            return hook.onSubscribeReturn(subscriber);
        } catch (Throwable e) {
            Exceptions.throwIfFatal(e);
            try {
                subscriber.onError(hook.onSubscribeError(e));
                return Subscriptions.unsubscribed();
            } catch (Throwable e2) {
                Exceptions.throwIfFatal(e2);
                RuntimeException r = new RuntimeException("Error occurred attempting to subscribe [" + e.getMessage() + "] and then again while trying to pass to onError.", e2);
                hook.onSubscribeError(r);
                throw r;
            }
        }
    }

    public final Subscription subscribe(Subscriber<? super T> subscriber) {
        return subscribe(subscriber, this);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static <T> Subscription subscribe(Subscriber<? super T> subscriber, Observable<T> observable) {
        if (subscriber == null) {
            throw new IllegalArgumentException("observer can not be null");
        }
        if (observable.onSubscribe == null) {
            throw new IllegalStateException("onSubscribe function can not be null.");
        }
        subscriber.onStart();
        if (!(subscriber instanceof SafeSubscriber)) {
            subscriber = new SafeSubscriber<>(subscriber);
        }
        try {
            hook.onSubscribeStart(observable, observable.onSubscribe).call(subscriber);
            return hook.onSubscribeReturn(subscriber);
        } catch (Throwable e) {
            Exceptions.throwIfFatal(e);
            try {
                subscriber.onError(hook.onSubscribeError(e));
                return Subscriptions.unsubscribed();
            } catch (Throwable e2) {
                Exceptions.throwIfFatal(e2);
                RuntimeException r = new RuntimeException("Error occurred attempting to subscribe [" + e.getMessage() + "] and then again while trying to pass to onError.", e2);
                hook.onSubscribeError(r);
                throw r;
            }
        }
    }

    public final Observable<T> subscribeOn(Scheduler scheduler) {
        return this instanceof ScalarSynchronousObservable ? ((ScalarSynchronousObservable) this).scalarScheduleOn(scheduler) : create(new OperatorSubscribeOn(this, scheduler));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final <R> Observable<R> switchMap(Func1<? super T, ? extends Observable<? extends R>> func) {
        return switchOnNext(map(func));
    }

    public final Observable<T> take(int count) {
        return (Observable<T>) lift(new OperatorTake(count));
    }

    public final Observable<T> take(long time, TimeUnit unit) {
        return take(time, unit, Schedulers.computation());
    }

    public final Observable<T> take(long time, TimeUnit unit, Scheduler scheduler) {
        return (Observable<T>) lift(new OperatorTakeTimed(time, unit, scheduler));
    }

    public final Observable<T> takeFirst(Func1<? super T, Boolean> predicate) {
        return filter(predicate).take(1);
    }

    public final Observable<T> takeLast(int count) {
        if (count == 0) {
            return ignoreElements();
        }
        if (count == 1) {
            return (Observable<T>) lift(OperatorTakeLastOne.instance());
        }
        return (Observable<T>) lift(new OperatorTakeLast(count));
    }

    public final Observable<T> takeLast(int count, long time, TimeUnit unit) {
        return takeLast(count, time, unit, Schedulers.computation());
    }

    public final Observable<T> takeLast(int count, long time, TimeUnit unit, Scheduler scheduler) {
        return (Observable<T>) lift(new OperatorTakeLastTimed(count, time, unit, scheduler));
    }

    public final Observable<T> takeLast(long time, TimeUnit unit) {
        return takeLast(time, unit, Schedulers.computation());
    }

    public final Observable<T> takeLast(long time, TimeUnit unit, Scheduler scheduler) {
        return (Observable<T>) lift(new OperatorTakeLastTimed(time, unit, scheduler));
    }

    public final Observable<List<T>> takeLastBuffer(int count) {
        return takeLast(count).toList();
    }

    public final Observable<List<T>> takeLastBuffer(int count, long time, TimeUnit unit) {
        return takeLast(count, time, unit).toList();
    }

    public final Observable<List<T>> takeLastBuffer(int count, long time, TimeUnit unit, Scheduler scheduler) {
        return takeLast(count, time, unit, scheduler).toList();
    }

    public final Observable<List<T>> takeLastBuffer(long time, TimeUnit unit) {
        return takeLast(time, unit).toList();
    }

    public final Observable<List<T>> takeLastBuffer(long time, TimeUnit unit, Scheduler scheduler) {
        return takeLast(time, unit, scheduler).toList();
    }

    public final <E> Observable<T> takeUntil(Observable<? extends E> other) {
        return (Observable<T>) lift(new OperatorTakeUntil(other));
    }

    public final Observable<T> takeWhile(Func1<? super T, Boolean> predicate) {
        return (Observable<T>) lift(new OperatorTakeWhile(predicate));
    }

    public final Observable<T> takeUntil(Func1<? super T, Boolean> stopPredicate) {
        return (Observable<T>) lift(new OperatorTakeUntilPredicate(stopPredicate));
    }

    public final Observable<T> throttleFirst(long windowDuration, TimeUnit unit) {
        return throttleFirst(windowDuration, unit, Schedulers.computation());
    }

    public final Observable<T> throttleFirst(long skipDuration, TimeUnit unit, Scheduler scheduler) {
        return (Observable<T>) lift(new OperatorThrottleFirst(skipDuration, unit, scheduler));
    }

    public final Observable<T> throttleLast(long intervalDuration, TimeUnit unit) {
        return sample(intervalDuration, unit);
    }

    public final Observable<T> throttleLast(long intervalDuration, TimeUnit unit, Scheduler scheduler) {
        return sample(intervalDuration, unit, scheduler);
    }

    public final Observable<T> throttleWithTimeout(long timeout, TimeUnit unit) {
        return debounce(timeout, unit);
    }

    public final Observable<T> throttleWithTimeout(long timeout, TimeUnit unit, Scheduler scheduler) {
        return debounce(timeout, unit, scheduler);
    }

    public final Observable<TimeInterval<T>> timeInterval() {
        return timeInterval(Schedulers.immediate());
    }

    public final Observable<TimeInterval<T>> timeInterval(Scheduler scheduler) {
        return (Observable<TimeInterval<T>>) lift(new OperatorTimeInterval(scheduler));
    }

    public final <U, V> Observable<T> timeout(Func0<? extends Observable<U>> firstTimeoutSelector, Func1<? super T, ? extends Observable<V>> timeoutSelector) {
        return timeout(firstTimeoutSelector, timeoutSelector, (Observable) null);
    }

    public final <U, V> Observable<T> timeout(Func0<? extends Observable<U>> firstTimeoutSelector, Func1<? super T, ? extends Observable<V>> timeoutSelector, Observable<? extends T> other) {
        if (timeoutSelector == null) {
            throw new NullPointerException("timeoutSelector is null");
        }
        return (Observable<T>) lift(new OperatorTimeoutWithSelector(firstTimeoutSelector, timeoutSelector, other));
    }

    public final <V> Observable<T> timeout(Func1<? super T, ? extends Observable<V>> timeoutSelector) {
        return timeout((Func0) null, timeoutSelector, (Observable) null);
    }

    public final <V> Observable<T> timeout(Func1<? super T, ? extends Observable<V>> timeoutSelector, Observable<? extends T> other) {
        return timeout((Func0) null, timeoutSelector, other);
    }

    public final Observable<T> timeout(long timeout, TimeUnit timeUnit) {
        return timeout(timeout, timeUnit, null, Schedulers.computation());
    }

    public final Observable<T> timeout(long timeout, TimeUnit timeUnit, Observable<? extends T> other) {
        return timeout(timeout, timeUnit, other, Schedulers.computation());
    }

    public final Observable<T> timeout(long timeout, TimeUnit timeUnit, Observable<? extends T> other, Scheduler scheduler) {
        return (Observable<T>) lift(new OperatorTimeout(timeout, timeUnit, other, scheduler));
    }

    public final Observable<T> timeout(long timeout, TimeUnit timeUnit, Scheduler scheduler) {
        return timeout(timeout, timeUnit, null, scheduler);
    }

    public final Observable<Timestamped<T>> timestamp() {
        return timestamp(Schedulers.immediate());
    }

    public final Observable<Timestamped<T>> timestamp(Scheduler scheduler) {
        return (Observable<Timestamped<T>>) lift(new OperatorTimestamp(scheduler));
    }

    public final BlockingObservable<T> toBlocking() {
        return BlockingObservable.from(this);
    }

    public final Observable<List<T>> toList() {
        return (Observable<List<T>>) lift(OperatorToObservableList.instance());
    }

    public final <K> Observable<Map<K, T>> toMap(Func1<? super T, ? extends K> keySelector) {
        return (Observable<Map<K, T>>) lift(new OperatorToMap(keySelector, UtilityFunctions.identity()));
    }

    public final <K, V> Observable<Map<K, V>> toMap(Func1<? super T, ? extends K> keySelector, Func1<? super T, ? extends V> valueSelector) {
        return (Observable<Map<K, V>>) lift(new OperatorToMap(keySelector, valueSelector));
    }

    public final <K, V> Observable<Map<K, V>> toMap(Func1<? super T, ? extends K> keySelector, Func1<? super T, ? extends V> valueSelector, Func0<? extends Map<K, V>> mapFactory) {
        return (Observable<Map<K, V>>) lift(new OperatorToMap(keySelector, valueSelector, mapFactory));
    }

    public final <K> Observable<Map<K, Collection<T>>> toMultimap(Func1<? super T, ? extends K> keySelector) {
        return (Observable<Map<K, Collection<T>>>) lift(new OperatorToMultimap(keySelector, UtilityFunctions.identity()));
    }

    public final <K, V> Observable<Map<K, Collection<V>>> toMultimap(Func1<? super T, ? extends K> keySelector, Func1<? super T, ? extends V> valueSelector) {
        return (Observable<Map<K, Collection<V>>>) lift(new OperatorToMultimap(keySelector, valueSelector));
    }

    public final <K, V> Observable<Map<K, Collection<V>>> toMultimap(Func1<? super T, ? extends K> keySelector, Func1<? super T, ? extends V> valueSelector, Func0<? extends Map<K, Collection<V>>> mapFactory) {
        return (Observable<Map<K, Collection<V>>>) lift(new OperatorToMultimap(keySelector, valueSelector, mapFactory));
    }

    public final <K, V> Observable<Map<K, Collection<V>>> toMultimap(Func1<? super T, ? extends K> keySelector, Func1<? super T, ? extends V> valueSelector, Func0<? extends Map<K, Collection<V>>> mapFactory, Func1<? super K, ? extends Collection<V>> collectionFactory) {
        return (Observable<Map<K, Collection<V>>>) lift(new OperatorToMultimap(keySelector, valueSelector, mapFactory, collectionFactory));
    }

    public final Observable<List<T>> toSortedList() {
        return (Observable<List<T>>) lift(new OperatorToObservableSortedList(10));
    }

    public final Observable<List<T>> toSortedList(Func2<? super T, ? super T, Integer> sortFunction) {
        return (Observable<List<T>>) lift(new OperatorToObservableSortedList(sortFunction, 10));
    }

    @Experimental
    public final Observable<List<T>> toSortedList(int initialCapacity) {
        return (Observable<List<T>>) lift(new OperatorToObservableSortedList(initialCapacity));
    }

    @Experimental
    public final Observable<List<T>> toSortedList(Func2<? super T, ? super T, Integer> sortFunction, int initialCapacity) {
        return (Observable<List<T>>) lift(new OperatorToObservableSortedList(sortFunction, initialCapacity));
    }

    public final Observable<T> unsubscribeOn(Scheduler scheduler) {
        return (Observable<T>) lift(new OperatorUnsubscribeOn(scheduler));
    }

    @Experimental
    public final <U, R> Observable<R> withLatestFrom(Observable<? extends U> other, Func2<? super T, ? super U, ? extends R> resultSelector) {
        return lift(new OperatorWithLatestFrom(other, resultSelector));
    }

    public final <TClosing> Observable<Observable<T>> window(Func0<? extends Observable<? extends TClosing>> closingSelector) {
        return (Observable<Observable<T>>) lift(new OperatorWindowWithObservableFactory(closingSelector));
    }

    public final Observable<Observable<T>> window(int count) {
        return window(count, count);
    }

    public final Observable<Observable<T>> window(int count, int skip) {
        return (Observable<Observable<T>>) lift(new OperatorWindowWithSize(count, skip));
    }

    public final Observable<Observable<T>> window(long timespan, long timeshift, TimeUnit unit) {
        return window(timespan, timeshift, unit, Integer.MAX_VALUE, Schedulers.computation());
    }

    public final Observable<Observable<T>> window(long timespan, long timeshift, TimeUnit unit, Scheduler scheduler) {
        return window(timespan, timeshift, unit, Integer.MAX_VALUE, scheduler);
    }

    public final Observable<Observable<T>> window(long timespan, long timeshift, TimeUnit unit, int count, Scheduler scheduler) {
        return (Observable<Observable<T>>) lift(new OperatorWindowWithTime(timespan, timeshift, unit, count, scheduler));
    }

    public final Observable<Observable<T>> window(long timespan, TimeUnit unit) {
        return window(timespan, timespan, unit, Schedulers.computation());
    }

    public final Observable<Observable<T>> window(long timespan, TimeUnit unit, int count) {
        return window(timespan, unit, count, Schedulers.computation());
    }

    public final Observable<Observable<T>> window(long timespan, TimeUnit unit, int count, Scheduler scheduler) {
        return window(timespan, timespan, unit, count, scheduler);
    }

    public final Observable<Observable<T>> window(long timespan, TimeUnit unit, Scheduler scheduler) {
        return window(timespan, unit, Integer.MAX_VALUE, scheduler);
    }

    public final <TOpening, TClosing> Observable<Observable<T>> window(Observable<? extends TOpening> windowOpenings, Func1<? super TOpening, ? extends Observable<? extends TClosing>> closingSelector) {
        return (Observable<Observable<T>>) lift(new OperatorWindowWithStartEndObservable(windowOpenings, closingSelector));
    }

    public final <U> Observable<Observable<T>> window(Observable<U> boundary) {
        return (Observable<Observable<T>>) lift(new OperatorWindowWithObservable(boundary));
    }

    public final <T2, R> Observable<R> zipWith(Iterable<? extends T2> other, Func2<? super T, ? super T2, ? extends R> zipFunction) {
        return lift(new OperatorZipIterable(other, zipFunction));
    }

    public final <T2, R> Observable<R> zipWith(Observable<? extends T2> other, Func2<? super T, ? super T2, ? extends R> zipFunction) {
        return zip(this, other, zipFunction);
    }

    /* renamed from: rx.Observable$NeverObservable */
    /* loaded from: classes2.dex */
    private static class NeverObservable<T> extends Observable<T> {

        /* JADX INFO: Access modifiers changed from: private */
        /* renamed from: rx.Observable$NeverObservable$Holder */
        /* loaded from: classes2.dex */
        public static class Holder {
            static final NeverObservable<?> INSTANCE = new NeverObservable<>();

            private Holder() {
            }
        }

        static <T> NeverObservable<T> instance() {
            return (NeverObservable<T>) Holder.INSTANCE;
        }

        NeverObservable() {
            super(new OnSubscribe<T>() { // from class: rx.Observable.NeverObservable.1
                @Override // p021rx.functions.Action1
                public /* bridge */ /* synthetic */ void call(Object x0) {
                    call((Subscriber) ((Subscriber) x0));
                }

                public void call(Subscriber<? super T> observer) {
                }
            });
        }
    }

    /* renamed from: rx.Observable$ThrowObservable */
    /* loaded from: classes2.dex */
    private static class ThrowObservable<T> extends Observable<T> {
        public ThrowObservable(final Throwable exception) {
            super(new OnSubscribe<T>() { // from class: rx.Observable.ThrowObservable.1
                @Override // p021rx.functions.Action1
                public /* bridge */ /* synthetic */ void call(Object x0) {
                    call((Subscriber) ((Subscriber) x0));
                }

                public void call(Subscriber<? super T> observer) {
                    observer.onError(exception);
                }
            });
        }
    }
}
