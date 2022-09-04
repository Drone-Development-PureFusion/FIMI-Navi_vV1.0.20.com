package p021rx.internal.operators;

import p021rx.Observable;
import p021rx.Producer;
import p021rx.Scheduler;
import p021rx.Subscriber;
import p021rx.functions.Action0;
/* renamed from: rx.internal.operators.OperatorSubscribeOn */
/* loaded from: classes2.dex */
public final class OperatorSubscribeOn<T> implements Observable.OnSubscribe<T> {
    final Scheduler scheduler;
    final Observable<T> source;

    @Override // p021rx.functions.Action1
    public /* bridge */ /* synthetic */ void call(Object x0) {
        call((Subscriber) ((Subscriber) x0));
    }

    public OperatorSubscribeOn(Observable<T> source, Scheduler scheduler) {
        this.scheduler = scheduler;
        this.source = source;
    }

    public void call(Subscriber<? super T> subscriber) {
        Scheduler.Worker inner = this.scheduler.createWorker();
        subscriber.add(inner);
        inner.schedule(new C29971(subscriber, inner));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: rx.internal.operators.OperatorSubscribeOn$1 */
    /* loaded from: classes2.dex */
    public class C29971 implements Action0 {
        final /* synthetic */ Scheduler.Worker val$inner;
        final /* synthetic */ Subscriber val$subscriber;

        C29971(Subscriber subscriber, Scheduler.Worker worker) {
            this.val$subscriber = subscriber;
            this.val$inner = worker;
        }

        @Override // p021rx.functions.Action0
        public void call() {
            final Thread t = Thread.currentThread();
            Subscriber<T> s = new Subscriber<T>(this.val$subscriber) { // from class: rx.internal.operators.OperatorSubscribeOn.1.1
                @Override // p021rx.Observer
                public void onNext(T t2) {
                    C29971.this.val$subscriber.onNext(t2);
                }

                @Override // p021rx.Observer
                public void onError(Throwable e) {
                    try {
                        C29971.this.val$subscriber.onError(e);
                    } finally {
                        C29971.this.val$inner.unsubscribe();
                    }
                }

                @Override // p021rx.Observer
                public void onCompleted() {
                    try {
                        C29971.this.val$subscriber.onCompleted();
                    } finally {
                        C29971.this.val$inner.unsubscribe();
                    }
                }

                @Override // p021rx.Subscriber
                public void setProducer(final Producer p) {
                    C29971.this.val$subscriber.setProducer(new Producer() { // from class: rx.internal.operators.OperatorSubscribeOn.1.1.1
                        @Override // p021rx.Producer
                        public void request(final long n) {
                            if (t == Thread.currentThread()) {
                                p.request(n);
                            } else {
                                C29971.this.val$inner.schedule(new Action0() { // from class: rx.internal.operators.OperatorSubscribeOn.1.1.1.1
                                    @Override // p021rx.functions.Action0
                                    public void call() {
                                        p.request(n);
                                    }
                                });
                            }
                        }
                    });
                }
            };
            OperatorSubscribeOn.this.source.unsafeSubscribe(s);
        }
    }
}
