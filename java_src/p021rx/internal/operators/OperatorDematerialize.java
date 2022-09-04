package p021rx.internal.operators;

import p021rx.Notification;
import p021rx.Observable;
import p021rx.Subscriber;
/* renamed from: rx.internal.operators.OperatorDematerialize */
/* loaded from: classes2.dex */
public final class OperatorDematerialize<T> implements Observable.Operator<T, Notification<T>> {
    @Override // p021rx.functions.Func1
    /* renamed from: call */
    public /* bridge */ /* synthetic */ Object mo1999call(Object x0) {
        return call((Subscriber) ((Subscriber) x0));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: rx.internal.operators.OperatorDematerialize$Holder */
    /* loaded from: classes2.dex */
    public static final class Holder {
        static final OperatorDematerialize<Object> INSTANCE = new OperatorDematerialize<>();

        private Holder() {
        }
    }

    public static OperatorDematerialize instance() {
        return Holder.INSTANCE;
    }

    OperatorDematerialize() {
    }

    public Subscriber<? super Notification<T>> call(final Subscriber<? super T> child) {
        return new Subscriber<Notification<T>>(child) { // from class: rx.internal.operators.OperatorDematerialize.1
            boolean terminated;

            @Override // p021rx.Observer
            public /* bridge */ /* synthetic */ void onNext(Object x0) {
                onNext((Notification) ((Notification) x0));
            }

            public void onNext(Notification<T> t) {
                switch (C29362.$SwitchMap$rx$Notification$Kind[t.getKind().ordinal()]) {
                    case 1:
                        if (!this.terminated) {
                            child.onNext(t.getValue());
                            return;
                        }
                        return;
                    case 2:
                        onError(t.getThrowable());
                        return;
                    case 3:
                        onCompleted();
                        return;
                    default:
                        return;
                }
            }

            @Override // p021rx.Observer
            public void onError(Throwable e) {
                if (!this.terminated) {
                    this.terminated = true;
                    child.onError(e);
                }
            }

            @Override // p021rx.Observer
            public void onCompleted() {
                if (!this.terminated) {
                    this.terminated = true;
                    child.onCompleted();
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: rx.internal.operators.OperatorDematerialize$2 */
    /* loaded from: classes2.dex */
    public static /* synthetic */ class C29362 {
        static final /* synthetic */ int[] $SwitchMap$rx$Notification$Kind = new int[Notification.Kind.values().length];

        static {
            try {
                $SwitchMap$rx$Notification$Kind[Notification.Kind.OnNext.ordinal()] = 1;
            } catch (NoSuchFieldError e) {
            }
            try {
                $SwitchMap$rx$Notification$Kind[Notification.Kind.OnError.ordinal()] = 2;
            } catch (NoSuchFieldError e2) {
            }
            try {
                $SwitchMap$rx$Notification$Kind[Notification.Kind.OnCompleted.ordinal()] = 3;
            } catch (NoSuchFieldError e3) {
            }
        }
    }
}
