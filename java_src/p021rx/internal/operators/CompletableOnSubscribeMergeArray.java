package p021rx.internal.operators;

import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import p021rx.Completable;
import p021rx.Subscription;
import p021rx.plugins.RxJavaPlugins;
import p021rx.subscriptions.CompositeSubscription;
/* renamed from: rx.internal.operators.CompletableOnSubscribeMergeArray */
/* loaded from: classes2.dex */
public final class CompletableOnSubscribeMergeArray implements Completable.CompletableOnSubscribe {
    final Completable[] sources;

    public CompletableOnSubscribeMergeArray(Completable[] sources) {
        this.sources = sources;
    }

    @Override // p021rx.functions.Action1
    public void call(final Completable.CompletableSubscriber s) {
        final CompositeSubscription set = new CompositeSubscription();
        final AtomicInteger wip = new AtomicInteger(this.sources.length + 1);
        final AtomicBoolean once = new AtomicBoolean();
        s.onSubscribe(set);
        Completable[] arr$ = this.sources;
        for (Completable c : arr$) {
            if (!set.isUnsubscribed()) {
                if (c == null) {
                    set.unsubscribe();
                    NullPointerException npe = new NullPointerException("A completable source is null");
                    if (once.compareAndSet(false, true)) {
                        s.onError(npe);
                        return;
                    }
                    RxJavaPlugins.getInstance().getErrorHandler().handleError(npe);
                }
                c.subscribe(new Completable.CompletableSubscriber() { // from class: rx.internal.operators.CompletableOnSubscribeMergeArray.1
                    @Override // p021rx.Completable.CompletableSubscriber
                    public void onSubscribe(Subscription d) {
                        set.add(d);
                    }

                    @Override // p021rx.Completable.CompletableSubscriber
                    public void onError(Throwable e) {
                        set.unsubscribe();
                        if (once.compareAndSet(false, true)) {
                            s.onError(e);
                        } else {
                            RxJavaPlugins.getInstance().getErrorHandler().handleError(e);
                        }
                    }

                    @Override // p021rx.Completable.CompletableSubscriber
                    public void onCompleted() {
                        if (wip.decrementAndGet() == 0 && once.compareAndSet(false, true)) {
                            s.onCompleted();
                        }
                    }
                });
            } else {
                return;
            }
        }
        if (wip.decrementAndGet() == 0 && once.compareAndSet(false, true)) {
            s.onCompleted();
        }
    }
}
