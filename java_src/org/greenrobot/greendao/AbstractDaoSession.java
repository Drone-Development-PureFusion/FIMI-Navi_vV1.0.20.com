package org.greenrobot.greendao;

import java.util.Collection;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Callable;
import org.greenrobot.greendao.annotation.apihint.Experimental;
import org.greenrobot.greendao.async.AsyncSession;
import org.greenrobot.greendao.database.Database;
import org.greenrobot.greendao.p020rx.RxTransaction;
import org.greenrobot.greendao.query.QueryBuilder;
import p021rx.schedulers.Schedulers;
/* loaded from: classes2.dex */
public class AbstractDaoSession {

    /* renamed from: db */
    private final Database f1484db;
    private final Map<Class<?>, AbstractDao<?, ?>> entityToDao = new HashMap();
    private volatile RxTransaction rxTxIo;
    private volatile RxTransaction rxTxPlain;

    public AbstractDaoSession(Database db) {
        this.f1484db = db;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public <T> void registerDao(Class<T> entityClass, AbstractDao<T, ?> dao) {
        this.entityToDao.put(entityClass, dao);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> long insert(T entity) {
        return getDao(entity.getClass()).insert(entity);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> long insertOrReplace(T entity) {
        return getDao(entity.getClass()).insertOrReplace(entity);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> void refresh(T entity) {
        getDao(entity.getClass()).refresh(entity);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> void update(T entity) {
        getDao(entity.getClass()).update(entity);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T> void delete(T entity) {
        getDao(entity.getClass()).delete(entity);
    }

    public <T> void deleteAll(Class<T> entityClass) {
        getDao(entityClass).deleteAll();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <T, K> T load(Class<T> entityClass, K key) {
        return (T) getDao(entityClass).load(key);
    }

    public <T, K> List<T> loadAll(Class<T> entityClass) {
        return (List<T>) getDao(entityClass).loadAll();
    }

    public <T, K> List<T> queryRaw(Class<T> entityClass, String where, String... selectionArgs) {
        return (List<T>) getDao(entityClass).queryRaw(where, selectionArgs);
    }

    public <T> QueryBuilder<T> queryBuilder(Class<T> entityClass) {
        return (QueryBuilder<T>) getDao(entityClass).queryBuilder();
    }

    public AbstractDao<?, ?> getDao(Class<? extends Object> entityClass) {
        AbstractDao<?, ?> dao = this.entityToDao.get(entityClass);
        if (dao == null) {
            throw new DaoException("No DAO registered for " + entityClass);
        }
        return dao;
    }

    public void runInTx(Runnable runnable) {
        this.f1484db.beginTransaction();
        try {
            runnable.run();
            this.f1484db.setTransactionSuccessful();
        } finally {
            this.f1484db.endTransaction();
        }
    }

    public <V> V callInTx(Callable<V> callable) throws Exception {
        this.f1484db.beginTransaction();
        try {
            V result = callable.call();
            this.f1484db.setTransactionSuccessful();
            return result;
        } finally {
            this.f1484db.endTransaction();
        }
    }

    public <V> V callInTxNoException(Callable<V> callable) {
        this.f1484db.beginTransaction();
        try {
            try {
                V result = callable.call();
                this.f1484db.setTransactionSuccessful();
                return result;
            } catch (Exception e) {
                throw new DaoException("Callable failed", e);
            }
        } finally {
            this.f1484db.endTransaction();
        }
    }

    public Database getDatabase() {
        return this.f1484db;
    }

    public Collection<AbstractDao<?, ?>> getAllDaos() {
        return Collections.unmodifiableCollection(this.entityToDao.values());
    }

    public AsyncSession startAsyncSession() {
        return new AsyncSession(this);
    }

    @Experimental
    public RxTransaction rxTxPlain() {
        if (this.rxTxPlain == null) {
            this.rxTxPlain = new RxTransaction(this);
        }
        return this.rxTxPlain;
    }

    @Experimental
    public RxTransaction rxTx() {
        if (this.rxTxIo == null) {
            this.rxTxIo = new RxTransaction(this, Schedulers.m0io());
        }
        return this.rxTxIo;
    }
}
