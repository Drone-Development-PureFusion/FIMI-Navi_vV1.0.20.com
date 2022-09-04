package p021rx.internal.operators;

import p021rx.Observable;
import p021rx.Producer;
import p021rx.Subscriber;
import p021rx.functions.Action1;
/* renamed from: rx.internal.operators.OperatorDoOnRequest */
/* loaded from: classes2.dex */
public class OperatorDoOnRequest<T> implements Observable.Operator<T, T> {
    final Action1<Long> request;

    @Override // p021rx.functions.Func1
    /* renamed from: call */
    public /* bridge */ /* synthetic */ Object mo1999call(Object x0) {
        return call((Subscriber) ((Subscriber) x0));
    }

    public OperatorDoOnRequest(Action1<Long> request) {
        this.request = request;
    }

    public Subscriber<? super T> call(Subscriber<? super T> child) {
        final ParentSubscriber<T> parent = new ParentSubscriber<>(child);
        child.setProducer(new Producer() { // from class: rx.internal.operators.OperatorDoOnRequest.1
            @Override // p021rx.Producer
            public void request(long n) {
                OperatorDoOnRequest.this.request.call(Long.valueOf(n));
                parent.requestMore(n);
            }
        });
        child.add(parent);
        return parent;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: rx.internal.operators.OperatorDoOnRequest$ParentSubscriber */
    /* loaded from: classes2.dex */
    public static final class ParentSubscriber<T> extends Subscriber<T> {
        private final Subscriber<? super T> child;

        ParentSubscriber(Subscriber<? super T> child) {
            this.child = child;
            request(0L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void requestMore(long n) {
            request(n);
        }

        @Override // p021rx.Observer
        public void onCompleted() {
            this.child.onCompleted();
        }

        @Override // p021rx.Observer
        public void onError(Throwable e) {
            this.child.onError(e);
        }

        @Override // p021rx.Observer
        public void onNext(T t) {
            this.child.onNext(t);
        }
    }
}
