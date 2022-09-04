package p021rx.internal.operators;

import java.util.NoSuchElementException;
import java.util.concurrent.atomic.AtomicBoolean;
import p021rx.Observable;
import p021rx.Producer;
import p021rx.Subscriber;
/* renamed from: rx.internal.operators.OperatorSingle */
/* loaded from: classes2.dex */
public final class OperatorSingle<T> implements Observable.Operator<T, T> {
    private final T defaultValue;
    private final boolean hasDefaultValue;

    @Override // p021rx.functions.Func1
    /* renamed from: call */
    public /* bridge */ /* synthetic */ Object mo1999call(Object x0) {
        return call((Subscriber) ((Subscriber) x0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: rx.internal.operators.OperatorSingle$Holder */
    /* loaded from: classes2.dex */
    public static class Holder {
        static final OperatorSingle<?> INSTANCE = new OperatorSingle<>();

        private Holder() {
        }
    }

    public static <T> OperatorSingle<T> instance() {
        return (OperatorSingle<T>) Holder.INSTANCE;
    }

    OperatorSingle() {
        this(false, null);
    }

    public OperatorSingle(T defaultValue) {
        this(true, defaultValue);
    }

    private OperatorSingle(boolean hasDefaultValue, T defaultValue) {
        this.hasDefaultValue = hasDefaultValue;
        this.defaultValue = defaultValue;
    }

    public Subscriber<? super T> call(Subscriber<? super T> child) {
        final ParentSubscriber<T> parent = new ParentSubscriber<>(child, this.hasDefaultValue, this.defaultValue);
        child.setProducer(new Producer() { // from class: rx.internal.operators.OperatorSingle.1
            private final AtomicBoolean requestedTwo = new AtomicBoolean(false);

            @Override // p021rx.Producer
            public void request(long n) {
                if (n > 0 && this.requestedTwo.compareAndSet(false, true)) {
                    parent.requestMore(2L);
                }
            }
        });
        child.add(parent);
        return parent;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: rx.internal.operators.OperatorSingle$ParentSubscriber */
    /* loaded from: classes2.dex */
    public static final class ParentSubscriber<T> extends Subscriber<T> {
        private final Subscriber<? super T> child;
        private final T defaultValue;
        private final boolean hasDefaultValue;
        private T value;
        private boolean isNonEmpty = false;
        private boolean hasTooManyElements = false;

        ParentSubscriber(Subscriber<? super T> child, boolean hasDefaultValue, T defaultValue) {
            this.child = child;
            this.hasDefaultValue = hasDefaultValue;
            this.defaultValue = defaultValue;
        }

        void requestMore(long n) {
            request(n);
        }

        @Override // p021rx.Observer
        public void onNext(T value) {
            if (this.isNonEmpty) {
                this.hasTooManyElements = true;
                this.child.onError(new IllegalArgumentException("Sequence contains too many elements"));
                unsubscribe();
                return;
            }
            this.value = value;
            this.isNonEmpty = true;
        }

        @Override // p021rx.Observer
        public void onCompleted() {
            if (!this.hasTooManyElements) {
                if (this.isNonEmpty) {
                    this.child.onNext((T) this.value);
                    this.child.onCompleted();
                } else if (this.hasDefaultValue) {
                    this.child.onNext((T) this.defaultValue);
                    this.child.onCompleted();
                } else {
                    this.child.onError(new NoSuchElementException("Sequence contains no elements"));
                }
            }
        }

        @Override // p021rx.Observer
        public void onError(Throwable e) {
            this.child.onError(e);
        }
    }
}
