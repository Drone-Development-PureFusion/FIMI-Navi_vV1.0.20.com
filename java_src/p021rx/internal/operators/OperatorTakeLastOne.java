package p021rx.internal.operators;

import java.util.concurrent.atomic.AtomicInteger;
import p021rx.Observable;
import p021rx.Producer;
import p021rx.Subscriber;
import p021rx.exceptions.Exceptions;
/* renamed from: rx.internal.operators.OperatorTakeLastOne */
/* loaded from: classes2.dex */
public class OperatorTakeLastOne<T> implements Observable.Operator<T, T> {
    @Override // p021rx.functions.Func1
    /* renamed from: call */
    public /* bridge */ /* synthetic */ Object mo1999call(Object x0) {
        return call((Subscriber) ((Subscriber) x0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: rx.internal.operators.OperatorTakeLastOne$Holder */
    /* loaded from: classes2.dex */
    public static class Holder {
        static final OperatorTakeLastOne<Object> INSTANCE = new OperatorTakeLastOne<>();

        private Holder() {
        }
    }

    public static <T> OperatorTakeLastOne<T> instance() {
        return (OperatorTakeLastOne<T>) Holder.INSTANCE;
    }

    OperatorTakeLastOne() {
    }

    public Subscriber<? super T> call(Subscriber<? super T> child) {
        final ParentSubscriber<T> parent = new ParentSubscriber<>(child);
        child.setProducer(new Producer() { // from class: rx.internal.operators.OperatorTakeLastOne.1
            @Override // p021rx.Producer
            public void request(long n) {
                parent.requestMore(n);
            }
        });
        child.add(parent);
        return parent;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: rx.internal.operators.OperatorTakeLastOne$ParentSubscriber */
    /* loaded from: classes2.dex */
    public static class ParentSubscriber<T> extends Subscriber<T> {
        private static final Object ABSENT = new Object();
        private static final int NOT_REQUESTED_COMPLETED = 1;
        private static final int NOT_REQUESTED_NOT_COMPLETED = 0;
        private static final int REQUESTED_COMPLETED = 3;
        private static final int REQUESTED_NOT_COMPLETED = 2;
        private final Subscriber<? super T> child;
        private T last = (T) ABSENT;
        private final AtomicInteger state = new AtomicInteger(0);

        ParentSubscriber(Subscriber<? super T> child) {
            this.child = child;
        }

        void requestMore(long n) {
            if (n > 0) {
                while (true) {
                    int s = this.state.get();
                    if (s == 0) {
                        if (this.state.compareAndSet(0, 2)) {
                            return;
                        }
                    } else if (s == 1) {
                        if (this.state.compareAndSet(1, 3)) {
                            emit();
                            return;
                        }
                    } else {
                        return;
                    }
                }
            }
        }

        @Override // p021rx.Observer
        public void onCompleted() {
            if (this.last == ABSENT) {
                this.child.onCompleted();
                return;
            }
            while (true) {
                int s = this.state.get();
                if (s == 0) {
                    if (this.state.compareAndSet(0, 1)) {
                        return;
                    }
                } else if (s == 2) {
                    if (this.state.compareAndSet(2, 3)) {
                        emit();
                        return;
                    }
                } else {
                    return;
                }
            }
        }

        private void emit() {
            if (isUnsubscribed()) {
                this.last = null;
                return;
            }
            T t = this.last;
            this.last = null;
            if (t != ABSENT) {
                try {
                    this.child.onNext(t);
                } catch (Throwable e) {
                    Exceptions.throwOrReport(e, this.child);
                    return;
                }
            }
            if (!isUnsubscribed()) {
                this.child.onCompleted();
            }
        }

        @Override // p021rx.Observer
        public void onError(Throwable e) {
            this.child.onError(e);
        }

        @Override // p021rx.Observer
        public void onNext(T t) {
            this.last = t;
        }
    }
}
