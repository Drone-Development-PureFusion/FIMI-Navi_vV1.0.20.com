package p021rx.internal.operators;

import java.util.Iterator;
import java.util.concurrent.atomic.AtomicBoolean;
import java.util.concurrent.atomic.AtomicInteger;
import p021rx.Completable;
import p021rx.Subscription;
import p021rx.plugins.RxJavaPlugins;
import p021rx.subscriptions.CompositeSubscription;
/* renamed from: rx.internal.operators.CompletableOnSubscribeMergeIterable */
/* loaded from: classes2.dex */
public final class CompletableOnSubscribeMergeIterable implements Completable.CompletableOnSubscribe {
    final Iterable<? extends Completable> sources;

    public CompletableOnSubscribeMergeIterable(Iterable<? extends Completable> sources) {
        this.sources = sources;
    }

    @Override // p021rx.functions.Action1
    public void call(final Completable.CompletableSubscriber s) {
        final CompositeSubscription set = new CompositeSubscription();
        final AtomicInteger wip = new AtomicInteger(1);
        final AtomicBoolean once = new AtomicBoolean();
        s.onSubscribe(set);
        try {
            Iterator<? extends Completable> iterator = this.sources.iterator();
            if (iterator == null) {
                s.onError(new NullPointerException("The source iterator returned is null"));
                return;
            }
            while (!set.isUnsubscribed()) {
                try {
                    boolean b = iterator.hasNext();
                    if (b) {
                        if (!set.isUnsubscribed()) {
                            try {
                                Completable c = iterator.next();
                                if (!set.isUnsubscribed()) {
                                    if (c == null) {
                                        set.unsubscribe();
                                        NullPointerException npe = new NullPointerException("A completable source is null");
                                        if (once.compareAndSet(false, true)) {
                                            s.onError(npe);
                                            return;
                                        } else {
                                            RxJavaPlugins.getInstance().getErrorHandler().handleError(npe);
                                            return;
                                        }
                                    }
                                    wip.getAndIncrement();
                                    c.subscribe(new Completable.CompletableSubscriber() { // from class: rx.internal.operators.CompletableOnSubscribeMergeIterable.1
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
                            } catch (Throwable e) {
                                set.unsubscribe();
                                if (once.compareAndSet(false, true)) {
                                    s.onError(e);
                                    return;
                                } else {
                                    RxJavaPlugins.getInstance().getErrorHandler().handleError(e);
                                    return;
                                }
                            }
                        } else {
                            return;
                        }
                    } else if (wip.decrementAndGet() == 0 && once.compareAndSet(false, true)) {
                        s.onCompleted();
                        return;
                    } else {
                        return;
                    }
                } catch (Throwable e2) {
                    set.unsubscribe();
                    if (once.compareAndSet(false, true)) {
                        s.onError(e2);
                        return;
                    } else {
                        RxJavaPlugins.getInstance().getErrorHandler().handleError(e2);
                        return;
                    }
                }
            }
        } catch (Throwable e3) {
            s.onError(e3);
        }
    }
}
