package p021rx.internal.operators;

import com.facebook.common.time.Clock;
import java.util.concurrent.TimeUnit;
import p021rx.Observable;
import p021rx.Scheduler;
import p021rx.Subscriber;
import p021rx.exceptions.Exceptions;
import p021rx.functions.Action0;
import p021rx.observers.SerializedSubscriber;
import p021rx.subscriptions.SerialSubscription;
/* renamed from: rx.internal.operators.OperatorDebounceWithTime */
/* loaded from: classes2.dex */
public final class OperatorDebounceWithTime<T> implements Observable.Operator<T, T> {
    final Scheduler scheduler;
    final long timeout;
    final TimeUnit unit;

    @Override // p021rx.functions.Func1
    /* renamed from: call */
    public /* bridge */ /* synthetic */ Object mo1999call(Object x0) {
        return call((Subscriber) ((Subscriber) x0));
    }

    public OperatorDebounceWithTime(long timeout, TimeUnit unit, Scheduler scheduler) {
        this.timeout = timeout;
        this.unit = unit;
        this.scheduler = scheduler;
    }

    public Subscriber<? super T> call(Subscriber<? super T> child) {
        Scheduler.Worker worker = this.scheduler.createWorker();
        SerializedSubscriber<T> s = new SerializedSubscriber<>(child);
        SerialSubscription ssub = new SerialSubscription();
        s.add(worker);
        s.add(ssub);
        return new C29271(child, ssub, worker, s);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: rx.internal.operators.OperatorDebounceWithTime$1 */
    /* loaded from: classes2.dex */
    public class C29271 extends Subscriber<T> {
        final /* synthetic */ SerializedSubscriber val$s;
        final /* synthetic */ SerialSubscription val$ssub;
        final /* synthetic */ Scheduler.Worker val$worker;
        final DebounceState<T> state = new DebounceState<>();
        final Subscriber<?> self = this;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C29271(Subscriber subscriber, SerialSubscription serialSubscription, Scheduler.Worker worker, SerializedSubscriber serializedSubscriber) {
            super(subscriber);
            this.val$ssub = serialSubscription;
            this.val$worker = worker;
            this.val$s = serializedSubscriber;
        }

        @Override // p021rx.Subscriber
        public void onStart() {
            request(Clock.MAX_TIME);
        }

        @Override // p021rx.Observer
        public void onNext(T t) {
            final int index = this.state.next(t);
            this.val$ssub.set(this.val$worker.schedule(new Action0() { // from class: rx.internal.operators.OperatorDebounceWithTime.1.1
                @Override // p021rx.functions.Action0
                public void call() {
                    C29271.this.state.emit(index, C29271.this.val$s, C29271.this.self);
                }
            }, OperatorDebounceWithTime.this.timeout, OperatorDebounceWithTime.this.unit));
        }

        @Override // p021rx.Observer
        public void onError(Throwable e) {
            this.val$s.onError(e);
            unsubscribe();
            this.state.clear();
        }

        @Override // p021rx.Observer
        public void onCompleted() {
            this.state.emitAndComplete(this.val$s, this);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: rx.internal.operators.OperatorDebounceWithTime$DebounceState */
    /* loaded from: classes2.dex */
    public static final class DebounceState<T> {
        boolean emitting;
        boolean hasValue;
        int index;
        boolean terminate;
        T value;

        public synchronized int next(T value) {
            int i;
            this.value = value;
            this.hasValue = true;
            i = this.index + 1;
            this.index = i;
            return i;
        }

        public void emit(int index, Subscriber<T> onNextAndComplete, Subscriber<?> onError) {
            synchronized (this) {
                if (!this.emitting && this.hasValue && index == this.index) {
                    T localValue = this.value;
                    this.value = null;
                    this.hasValue = false;
                    this.emitting = true;
                    try {
                        onNextAndComplete.onNext(localValue);
                        synchronized (this) {
                            if (!this.terminate) {
                                this.emitting = false;
                            } else {
                                onNextAndComplete.onCompleted();
                            }
                        }
                    } catch (Throwable e) {
                        Exceptions.throwOrReport(e, onError, localValue);
                    }
                }
            }
        }

        public void emitAndComplete(Subscriber<T> onNextAndComplete, Subscriber<?> onError) {
            synchronized (this) {
                if (this.emitting) {
                    this.terminate = true;
                    return;
                }
                T localValue = this.value;
                boolean localHasValue = this.hasValue;
                this.value = null;
                this.hasValue = false;
                this.emitting = true;
                if (localHasValue) {
                    try {
                        onNextAndComplete.onNext(localValue);
                    } catch (Throwable e) {
                        Exceptions.throwOrReport(e, onError, localValue);
                        return;
                    }
                }
                onNextAndComplete.onCompleted();
            }
        }

        public synchronized void clear() {
            this.index++;
            this.value = null;
            this.hasValue = false;
        }
    }
}
