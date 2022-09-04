package org.greenrobot.greendao.p020rx;

import java.util.List;
import java.util.concurrent.Callable;
import org.greenrobot.greendao.AbstractDao;
import org.greenrobot.greendao.annotation.apihint.Experimental;
import p021rx.Observable;
import p021rx.Scheduler;
@Experimental
/* renamed from: org.greenrobot.greendao.rx.RxDao */
/* loaded from: classes2.dex */
public class RxDao<T, K> extends RxBase {
    private final AbstractDao<T, K> dao;

    @Override // org.greenrobot.greendao.p020rx.RxBase
    @Experimental
    public /* bridge */ /* synthetic */ Scheduler getScheduler() {
        return super.getScheduler();
    }

    @Experimental
    public RxDao(AbstractDao<T, K> dao) {
        this(dao, null);
    }

    @Experimental
    public RxDao(AbstractDao<T, K> dao, Scheduler scheduler) {
        super(scheduler);
        this.dao = dao;
    }

    @Experimental
    public Observable<List<T>> loadAll() {
        return (Observable<List<T>>) wrap((Callable<List<T>>) new Callable<List<T>>() { // from class: org.greenrobot.greendao.rx.RxDao.1
            @Override // java.util.concurrent.Callable
            public List<T> call() throws Exception {
                return RxDao.this.dao.loadAll();
            }
        });
    }

    @Experimental
    public Observable<T> load(final K key) {
        return (Observable<T>) wrap((Callable<T>) new Callable<T>() { // from class: org.greenrobot.greendao.rx.RxDao.2
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.concurrent.Callable
            public T call() throws Exception {
                return (T) RxDao.this.dao.load(key);
            }
        });
    }

    @Experimental
    public Observable<T> refresh(final T entity) {
        return (Observable<T>) wrap((Callable<T>) new Callable<T>() { // from class: org.greenrobot.greendao.rx.RxDao.3
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.concurrent.Callable
            public T call() throws Exception {
                RxDao.this.dao.refresh(entity);
                return (T) entity;
            }
        });
    }

    @Experimental
    public Observable<T> insert(final T entity) {
        return (Observable<T>) wrap((Callable<T>) new Callable<T>() { // from class: org.greenrobot.greendao.rx.RxDao.4
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.concurrent.Callable
            public T call() throws Exception {
                RxDao.this.dao.insert(entity);
                return (T) entity;
            }
        });
    }

    @Experimental
    public Observable<Iterable<T>> insertInTx(final Iterable<T> entities) {
        return (Observable<Iterable<T>>) wrap((Callable<Iterable<T>>) new Callable<Iterable<T>>() { // from class: org.greenrobot.greendao.rx.RxDao.5
            @Override // java.util.concurrent.Callable
            /* renamed from: call */
            public Iterable<T> mo1971call() throws Exception {
                RxDao.this.dao.insertInTx(entities);
                return entities;
            }
        });
    }

    @Experimental
    public Observable<Object[]> insertInTx(final T... entities) {
        return wrap(new Callable<Object[]>() { // from class: org.greenrobot.greendao.rx.RxDao.6
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.concurrent.Callable
            public Object[] call() throws Exception {
                RxDao.this.dao.insertInTx(entities);
                return entities;
            }
        });
    }

    @Experimental
    public Observable<T> insertOrReplace(final T entity) {
        return (Observable<T>) wrap((Callable<T>) new Callable<T>() { // from class: org.greenrobot.greendao.rx.RxDao.7
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.concurrent.Callable
            public T call() throws Exception {
                RxDao.this.dao.insertOrReplace(entity);
                return (T) entity;
            }
        });
    }

    @Experimental
    public Observable<Iterable<T>> insertOrReplaceInTx(final Iterable<T> entities) {
        return (Observable<Iterable<T>>) wrap((Callable<Iterable<T>>) new Callable<Iterable<T>>() { // from class: org.greenrobot.greendao.rx.RxDao.8
            @Override // java.util.concurrent.Callable
            /* renamed from: call */
            public Iterable<T> mo1972call() throws Exception {
                RxDao.this.dao.insertOrReplaceInTx(entities);
                return entities;
            }
        });
    }

    @Experimental
    public Observable<Object[]> insertOrReplaceInTx(final T... entities) {
        return wrap(new Callable<Object[]>() { // from class: org.greenrobot.greendao.rx.RxDao.9
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.concurrent.Callable
            public Object[] call() throws Exception {
                RxDao.this.dao.insertOrReplaceInTx(entities);
                return entities;
            }
        });
    }

    @Experimental
    public Observable<T> save(final T entity) {
        return (Observable<T>) wrap((Callable<T>) new Callable<T>() { // from class: org.greenrobot.greendao.rx.RxDao.10
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.concurrent.Callable
            public T call() throws Exception {
                RxDao.this.dao.save(entity);
                return (T) entity;
            }
        });
    }

    @Experimental
    public Observable<Iterable<T>> saveInTx(final Iterable<T> entities) {
        return (Observable<Iterable<T>>) wrap((Callable<Iterable<T>>) new Callable<Iterable<T>>() { // from class: org.greenrobot.greendao.rx.RxDao.11
            @Override // java.util.concurrent.Callable
            /* renamed from: call */
            public Iterable<T> mo1968call() throws Exception {
                RxDao.this.dao.saveInTx(entities);
                return entities;
            }
        });
    }

    @Experimental
    public Observable<Object[]> saveInTx(final T... entities) {
        return wrap(new Callable<Object[]>() { // from class: org.greenrobot.greendao.rx.RxDao.12
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.concurrent.Callable
            public Object[] call() throws Exception {
                RxDao.this.dao.saveInTx(entities);
                return entities;
            }
        });
    }

    @Experimental
    public Observable<T> update(final T entity) {
        return (Observable<T>) wrap((Callable<T>) new Callable<T>() { // from class: org.greenrobot.greendao.rx.RxDao.13
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.concurrent.Callable
            public T call() throws Exception {
                RxDao.this.dao.update(entity);
                return (T) entity;
            }
        });
    }

    @Experimental
    public Observable<Iterable<T>> updateInTx(final Iterable<T> entities) {
        return (Observable<Iterable<T>>) wrap((Callable<Iterable<T>>) new Callable<Iterable<T>>() { // from class: org.greenrobot.greendao.rx.RxDao.14
            @Override // java.util.concurrent.Callable
            /* renamed from: call */
            public Iterable<T> mo1969call() throws Exception {
                RxDao.this.dao.updateInTx(entities);
                return entities;
            }
        });
    }

    @Experimental
    public Observable<Object[]> updateInTx(final T... entities) {
        return wrap(new Callable<Object[]>() { // from class: org.greenrobot.greendao.rx.RxDao.15
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.concurrent.Callable
            public Object[] call() throws Exception {
                RxDao.this.dao.updateInTx(entities);
                return entities;
            }
        });
    }

    @Experimental
    public Observable<Void> delete(final T entity) {
        return wrap(new Callable<Void>() { // from class: org.greenrobot.greendao.rx.RxDao.16
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                RxDao.this.dao.delete(entity);
                return null;
            }
        });
    }

    @Experimental
    public Observable<Void> deleteByKey(final K key) {
        return wrap(new Callable<Void>() { // from class: org.greenrobot.greendao.rx.RxDao.17
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                RxDao.this.dao.deleteByKey(key);
                return null;
            }
        });
    }

    @Experimental
    public Observable<Void> deleteAll() {
        return wrap(new Callable<Void>() { // from class: org.greenrobot.greendao.rx.RxDao.18
            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                RxDao.this.dao.deleteAll();
                return null;
            }
        });
    }

    @Experimental
    public Observable<Void> deleteInTx(final Iterable<T> entities) {
        return wrap(new Callable<Void>() { // from class: org.greenrobot.greendao.rx.RxDao.19
            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                RxDao.this.dao.deleteInTx(entities);
                return null;
            }
        });
    }

    @Experimental
    public Observable<Void> deleteInTx(final T... entities) {
        return wrap(new Callable<Void>() { // from class: org.greenrobot.greendao.rx.RxDao.20
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                RxDao.this.dao.deleteInTx(entities);
                return null;
            }
        });
    }

    @Experimental
    public Observable<Void> deleteByKeyInTx(final Iterable<K> keys) {
        return wrap(new Callable<Void>() { // from class: org.greenrobot.greendao.rx.RxDao.21
            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                RxDao.this.dao.deleteByKeyInTx(keys);
                return null;
            }
        });
    }

    @Experimental
    public Observable<Void> deleteByKeyInTx(final K... keys) {
        return wrap(new Callable<Void>() { // from class: org.greenrobot.greendao.rx.RxDao.22
            /* JADX WARN: Multi-variable type inference failed */
            @Override // java.util.concurrent.Callable
            public Void call() throws Exception {
                RxDao.this.dao.deleteByKeyInTx(keys);
                return null;
            }
        });
    }

    @Experimental
    public Observable<Long> count() {
        return wrap(new Callable<Long>() { // from class: org.greenrobot.greendao.rx.RxDao.23
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // java.util.concurrent.Callable
            /* renamed from: call */
            public Long mo1970call() throws Exception {
                return Long.valueOf(RxDao.this.dao.count());
            }
        });
    }

    @Experimental
    public AbstractDao<T, K> getDao() {
        return this.dao;
    }
}
