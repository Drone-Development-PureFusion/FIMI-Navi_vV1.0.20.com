package org.greenrobot.greendao.p020rx;

import java.util.Iterator;
import java.util.List;
import java.util.concurrent.Callable;
import org.greenrobot.greendao.annotation.apihint.Experimental;
import org.greenrobot.greendao.query.LazyList;
import org.greenrobot.greendao.query.Query;
import p021rx.Observable;
import p021rx.Scheduler;
import p021rx.Subscriber;
import p021rx.exceptions.Exceptions;
@Experimental
/* renamed from: org.greenrobot.greendao.rx.RxQuery */
/* loaded from: classes2.dex */
public class RxQuery<T> extends RxBase {
    private final Query<T> query;

    @Override // org.greenrobot.greendao.p020rx.RxBase
    @Experimental
    public /* bridge */ /* synthetic */ Scheduler getScheduler() {
        return super.getScheduler();
    }

    public RxQuery(Query<T> query) {
        this.query = query;
    }

    public RxQuery(Query<T> query, Scheduler scheduler) {
        super(scheduler);
        this.query = query;
    }

    @Experimental
    public Observable<List<T>> list() {
        return (Observable<List<T>>) wrap((Callable<List<T>>) new Callable<List<T>>() { // from class: org.greenrobot.greendao.rx.RxQuery.1
            @Override // java.util.concurrent.Callable
            public List<T> call() throws Exception {
                return RxQuery.this.query.forCurrentThread().list();
            }
        });
    }

    @Experimental
    public Observable<T> unique() {
        return (Observable<T>) wrap((Callable<T>) new Callable<T>() { // from class: org.greenrobot.greendao.rx.RxQuery.2
            @Override // java.util.concurrent.Callable
            public T call() throws Exception {
                return RxQuery.this.query.forCurrentThread().unique();
            }
        });
    }

    public Observable<T> oneByOne() {
        return (Observable<T>) wrap(Observable.create(new Observable.OnSubscribe<T>() { // from class: org.greenrobot.greendao.rx.RxQuery.3
            @Override // p021rx.functions.Action1
            public /* bridge */ /* synthetic */ void call(Object obj) {
                call((Subscriber) ((Subscriber) obj));
            }

            public void call(Subscriber<? super T> subscriber) {
                try {
                    LazyList<T> lazyList = RxQuery.this.query.forCurrentThread().listLazyUncached();
                    Iterator<T> it = lazyList.iterator();
                    while (it.hasNext()) {
                        Object obj = (T) it.next();
                        if (subscriber.isUnsubscribed()) {
                            break;
                        }
                        subscriber.onNext(obj);
                    }
                    lazyList.close();
                    if (!subscriber.isUnsubscribed()) {
                        subscriber.onCompleted();
                    }
                } catch (Throwable e) {
                    Exceptions.throwIfFatal(e);
                    subscriber.onError(e);
                }
            }
        }));
    }
}
