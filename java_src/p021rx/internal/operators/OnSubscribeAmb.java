package p021rx.internal.operators;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;
import java.util.concurrent.ConcurrentLinkedQueue;
import java.util.concurrent.atomic.AtomicReference;
import p021rx.Observable;
import p021rx.Producer;
import p021rx.Subscriber;
import p021rx.functions.Action0;
import p021rx.subscriptions.Subscriptions;
/* renamed from: rx.internal.operators.OnSubscribeAmb */
/* loaded from: classes2.dex */
public final class OnSubscribeAmb<T> implements Observable.OnSubscribe<T> {
    final Iterable<? extends Observable<? extends T>> sources;

    @Override // p021rx.functions.Action1
    public /* bridge */ /* synthetic */ void call(Object x0) {
        call((Subscriber) ((Subscriber) x0));
    }

    public static <T> Observable.OnSubscribe<T> amb(Observable<? extends T> o1, Observable<? extends T> o2) {
        List<Observable<? extends T>> sources = new ArrayList<>();
        sources.add(o1);
        sources.add(o2);
        return amb(sources);
    }

    public static <T> Observable.OnSubscribe<T> amb(Observable<? extends T> o1, Observable<? extends T> o2, Observable<? extends T> o3) {
        List<Observable<? extends T>> sources = new ArrayList<>();
        sources.add(o1);
        sources.add(o2);
        sources.add(o3);
        return amb(sources);
    }

    public static <T> Observable.OnSubscribe<T> amb(Observable<? extends T> o1, Observable<? extends T> o2, Observable<? extends T> o3, Observable<? extends T> o4) {
        List<Observable<? extends T>> sources = new ArrayList<>();
        sources.add(o1);
        sources.add(o2);
        sources.add(o3);
        sources.add(o4);
        return amb(sources);
    }

    public static <T> Observable.OnSubscribe<T> amb(Observable<? extends T> o1, Observable<? extends T> o2, Observable<? extends T> o3, Observable<? extends T> o4, Observable<? extends T> o5) {
        List<Observable<? extends T>> sources = new ArrayList<>();
        sources.add(o1);
        sources.add(o2);
        sources.add(o3);
        sources.add(o4);
        sources.add(o5);
        return amb(sources);
    }

    public static <T> Observable.OnSubscribe<T> amb(Observable<? extends T> o1, Observable<? extends T> o2, Observable<? extends T> o3, Observable<? extends T> o4, Observable<? extends T> o5, Observable<? extends T> o6) {
        List<Observable<? extends T>> sources = new ArrayList<>();
        sources.add(o1);
        sources.add(o2);
        sources.add(o3);
        sources.add(o4);
        sources.add(o5);
        sources.add(o6);
        return amb(sources);
    }

    public static <T> Observable.OnSubscribe<T> amb(Observable<? extends T> o1, Observable<? extends T> o2, Observable<? extends T> o3, Observable<? extends T> o4, Observable<? extends T> o5, Observable<? extends T> o6, Observable<? extends T> o7) {
        List<Observable<? extends T>> sources = new ArrayList<>();
        sources.add(o1);
        sources.add(o2);
        sources.add(o3);
        sources.add(o4);
        sources.add(o5);
        sources.add(o6);
        sources.add(o7);
        return amb(sources);
    }

    public static <T> Observable.OnSubscribe<T> amb(Observable<? extends T> o1, Observable<? extends T> o2, Observable<? extends T> o3, Observable<? extends T> o4, Observable<? extends T> o5, Observable<? extends T> o6, Observable<? extends T> o7, Observable<? extends T> o8) {
        List<Observable<? extends T>> sources = new ArrayList<>();
        sources.add(o1);
        sources.add(o2);
        sources.add(o3);
        sources.add(o4);
        sources.add(o5);
        sources.add(o6);
        sources.add(o7);
        sources.add(o8);
        return amb(sources);
    }

    public static <T> Observable.OnSubscribe<T> amb(Observable<? extends T> o1, Observable<? extends T> o2, Observable<? extends T> o3, Observable<? extends T> o4, Observable<? extends T> o5, Observable<? extends T> o6, Observable<? extends T> o7, Observable<? extends T> o8, Observable<? extends T> o9) {
        List<Observable<? extends T>> sources = new ArrayList<>();
        sources.add(o1);
        sources.add(o2);
        sources.add(o3);
        sources.add(o4);
        sources.add(o5);
        sources.add(o6);
        sources.add(o7);
        sources.add(o8);
        sources.add(o9);
        return amb(sources);
    }

    public static <T> Observable.OnSubscribe<T> amb(Iterable<? extends Observable<? extends T>> sources) {
        return new OnSubscribeAmb(sources);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: rx.internal.operators.OnSubscribeAmb$AmbSubscriber */
    /* loaded from: classes2.dex */
    public static final class AmbSubscriber<T> extends Subscriber<T> {
        private boolean chosen;
        private final Selection<T> selection;
        private final Subscriber<? super T> subscriber;

        AmbSubscriber(long requested, Subscriber<? super T> subscriber, Selection<T> selection) {
            this.subscriber = subscriber;
            this.selection = selection;
            request(requested);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public void requestMore(long n) {
            request(n);
        }

        @Override // p021rx.Observer
        public void onNext(T t) {
            if (isSelected()) {
                this.subscriber.onNext(t);
            }
        }

        @Override // p021rx.Observer
        public void onCompleted() {
            if (isSelected()) {
                this.subscriber.onCompleted();
            }
        }

        @Override // p021rx.Observer
        public void onError(Throwable e) {
            if (isSelected()) {
                this.subscriber.onError(e);
            }
        }

        private boolean isSelected() {
            if (this.chosen) {
                return true;
            }
            if (this.selection.choice.get() == this) {
                this.chosen = true;
                return true;
            } else if (this.selection.choice.compareAndSet(null, this)) {
                this.selection.unsubscribeOthers(this);
                this.chosen = true;
                return true;
            } else {
                this.selection.unsubscribeLosers();
                return false;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: rx.internal.operators.OnSubscribeAmb$Selection */
    /* loaded from: classes2.dex */
    public static class Selection<T> {
        final Collection<AmbSubscriber<T>> ambSubscribers;
        final AtomicReference<AmbSubscriber<T>> choice;

        private Selection() {
            this.choice = new AtomicReference<>();
            this.ambSubscribers = new ConcurrentLinkedQueue();
        }

        public void unsubscribeLosers() {
            AmbSubscriber<T> winner = this.choice.get();
            if (winner != null) {
                unsubscribeOthers(winner);
            }
        }

        public void unsubscribeOthers(AmbSubscriber<T> notThis) {
            for (AmbSubscriber<T> other : this.ambSubscribers) {
                if (other != notThis) {
                    other.unsubscribe();
                }
            }
            this.ambSubscribers.clear();
        }
    }

    private OnSubscribeAmb(Iterable<? extends Observable<? extends T>> sources) {
        this.sources = sources;
    }

    public void call(Subscriber<? super T> subscriber) {
        final Selection<T> selection = new Selection<>();
        final AtomicReference<AmbSubscriber<T>> choice = selection.choice;
        subscriber.add(Subscriptions.create(new Action0() { // from class: rx.internal.operators.OnSubscribeAmb.1
            @Override // p021rx.functions.Action0
            public void call() {
                AmbSubscriber<T> c = (AmbSubscriber) choice.get();
                if (c != null) {
                    c.unsubscribe();
                }
                OnSubscribeAmb.unsubscribeAmbSubscribers(selection.ambSubscribers);
            }
        }));
        for (Observable<? extends T> source : this.sources) {
            if (subscriber.isUnsubscribed()) {
                break;
            }
            AmbSubscriber<T> ambSubscriber = new AmbSubscriber<>(0L, subscriber, selection);
            selection.ambSubscribers.add(ambSubscriber);
            AmbSubscriber<T> c = choice.get();
            if (c != null) {
                selection.unsubscribeOthers(c);
                return;
            }
            source.unsafeSubscribe(ambSubscriber);
        }
        if (subscriber.isUnsubscribed()) {
            unsubscribeAmbSubscribers(selection.ambSubscribers);
        }
        subscriber.setProducer(new Producer() { // from class: rx.internal.operators.OnSubscribeAmb.2
            @Override // p021rx.Producer
            public void request(long n) {
                AmbSubscriber<T> c2 = (AmbSubscriber) choice.get();
                if (c2 != null) {
                    c2.requestMore(n);
                    return;
                }
                for (AmbSubscriber<T> ambSubscriber2 : selection.ambSubscribers) {
                    if (!ambSubscriber2.isUnsubscribed()) {
                        if (choice.get() == ambSubscriber2) {
                            ambSubscriber2.requestMore(n);
                            return;
                        }
                        ambSubscriber2.requestMore(n);
                    }
                }
            }
        });
    }

    static <T> void unsubscribeAmbSubscribers(Collection<AmbSubscriber<T>> ambSubscribers) {
        if (!ambSubscribers.isEmpty()) {
            for (AmbSubscriber<T> other : ambSubscribers) {
                other.unsubscribe();
            }
            ambSubscribers.clear();
        }
    }
}
