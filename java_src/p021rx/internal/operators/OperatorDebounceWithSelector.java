package p021rx.internal.operators;

import com.facebook.common.time.Clock;
import p021rx.Observable;
import p021rx.Subscriber;
import p021rx.exceptions.Exceptions;
import p021rx.functions.Func1;
import p021rx.internal.operators.OperatorDebounceWithTime;
import p021rx.observers.SerializedSubscriber;
import p021rx.subscriptions.SerialSubscription;
/* renamed from: rx.internal.operators.OperatorDebounceWithSelector */
/* loaded from: classes2.dex */
public final class OperatorDebounceWithSelector<T, U> implements Observable.Operator<T, T> {
    final Func1<? super T, ? extends Observable<U>> selector;

    @Override // p021rx.functions.Func1
    /* renamed from: call */
    public /* bridge */ /* synthetic */ Object mo1999call(Object x0) {
        return call((Subscriber) ((Subscriber) x0));
    }

    public OperatorDebounceWithSelector(Func1<? super T, ? extends Observable<U>> selector) {
        this.selector = selector;
    }

    public Subscriber<? super T> call(Subscriber<? super T> child) {
        SerializedSubscriber<T> s = new SerializedSubscriber<>(child);
        SerialSubscription ssub = new SerialSubscription();
        child.add(ssub);
        return new C29251(child, s, ssub);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: rx.internal.operators.OperatorDebounceWithSelector$1 */
    /* loaded from: classes2.dex */
    public class C29251 extends Subscriber<T> {
        final /* synthetic */ SerializedSubscriber val$s;
        final /* synthetic */ SerialSubscription val$ssub;
        final OperatorDebounceWithTime.DebounceState<T> state = new OperatorDebounceWithTime.DebounceState<>();
        final Subscriber<?> self = this;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C29251(Subscriber subscriber, SerializedSubscriber serializedSubscriber, SerialSubscription serialSubscription) {
            super(subscriber);
            this.val$s = serializedSubscriber;
            this.val$ssub = serialSubscription;
        }

        @Override // p021rx.Subscriber
        public void onStart() {
            request(Clock.MAX_TIME);
        }

        @Override // p021rx.Observer
        public void onNext(T t) {
            try {
                Observable<U> debouncer = OperatorDebounceWithSelector.this.selector.mo1999call(t);
                final int index = this.state.next(t);
                Subscriber<U> debounceSubscriber = new Subscriber<U>() { // from class: rx.internal.operators.OperatorDebounceWithSelector.1.1
                    @Override // p021rx.Observer
                    public void onNext(U t2) {
                        onCompleted();
                    }

                    @Override // p021rx.Observer
                    public void onError(Throwable e) {
                        C29251.this.self.onError(e);
                    }

                    @Override // p021rx.Observer
                    public void onCompleted() {
                        C29251.this.state.emit(index, C29251.this.val$s, C29251.this.self);
                        unsubscribe();
                    }
                };
                this.val$ssub.set(debounceSubscriber);
                debouncer.unsafeSubscribe(debounceSubscriber);
            } catch (Throwable e) {
                Exceptions.throwOrReport(e, this);
            }
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
}
