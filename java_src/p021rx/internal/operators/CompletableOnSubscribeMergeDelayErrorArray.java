package p021rx.internal.operators;

import java.util.Queue;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicInteger;
import p021rx.Completable;
import p021rx.Subscription;
import p021rx.subscriptions.CompositeSubscription;
/* renamed from: rx.internal.operators.CompletableOnSubscribeMergeDelayErrorArray */
/* loaded from: classes2.dex */
public final class CompletableOnSubscribeMergeDelayErrorArray implements Completable.CompletableOnSubscribe {
    final Completable[] sources;

    public CompletableOnSubscribeMergeDelayErrorArray(Completable[] sources) {
        this.sources = sources;
    }

    @Override // p021rx.functions.Action1
    public void call(final Completable.CompletableSubscriber s) {
        final CompositeSubscription set = new CompositeSubscription();
        final AtomicInteger wip = new AtomicInteger(this.sources.length + 1);
        final Queue<Throwable> q = new ConcurrentLinkedQueue<>();
        s.onSubscribe(set);
        Completable[] arr$ = this.sources;
        for (Completable c : arr$) {
            if (!set.isUnsubscribed()) {
                if (c == null) {
                    q.offer(new NullPointerException("A completable source is null"));
                    wip.decrementAndGet();
                } else {
                    c.subscribe(new Completable.CompletableSubscriber() { // from class: rx.internal.operators.CompletableOnSubscribeMergeDelayErrorArray.1
                        @Override // p021rx.Completable.CompletableSubscriber
                        public void onSubscribe(Subscription d) {
                            set.add(d);
                        }

                        @Override // p021rx.Completable.CompletableSubscriber
                        public void onError(Throwable e) {
                            q.offer(e);
                            tryTerminate();
                        }

                        @Override // p021rx.Completable.CompletableSubscriber
                        public void onCompleted() {
                            tryTerminate();
                        }

                        void tryTerminate() {
                            if (wip.decrementAndGet() == 0) {
                                if (q.isEmpty()) {
                                    s.onCompleted();
                                } else {
                                    s.onError(CompletableOnSubscribeMerge.collectErrors(q));
                                }
                            }
                        }
                    });
                }
            } else {
                return;
            }
        }
        if (wip.decrementAndGet() == 0) {
            if (q.isEmpty()) {
                s.onCompleted();
            } else {
                s.onError(CompletableOnSubscribeMerge.collectErrors(q));
            }
        }
    }
}
