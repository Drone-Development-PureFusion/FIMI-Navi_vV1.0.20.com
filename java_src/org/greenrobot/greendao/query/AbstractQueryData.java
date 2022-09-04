package org.greenrobot.greendao.query;

import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Map;
import org.greenrobot.greendao.AbstractDao;
import org.greenrobot.greendao.query.AbstractQuery;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class AbstractQueryData<T, Q extends AbstractQuery<T>> {
    final AbstractDao<T, ?> dao;
    final String[] initialValues;
    final Map<Long, WeakReference<Q>> queriesForThreads = new HashMap();
    final String sql;

    /* renamed from: createQuery */
    protected abstract Q mo1966createQuery();

    /* JADX INFO: Access modifiers changed from: package-private */
    public AbstractQueryData(AbstractDao<T, ?> dao, String sql, String[] initialValues) {
        this.dao = dao;
        this.sql = sql;
        this.initialValues = initialValues;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Q forCurrentThread(Q query) {
        if (Thread.currentThread() == query.ownerThread) {
            System.arraycopy(this.initialValues, 0, query.parameters, 0, this.initialValues.length);
            return query;
        }
        return forCurrentThread();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Q forCurrentThread() {
        Q query;
        long threadId = Thread.currentThread().getId();
        synchronized (this.queriesForThreads) {
            WeakReference<Q> queryRef = this.queriesForThreads.get(Long.valueOf(threadId));
            query = queryRef != null ? queryRef.get() : null;
            if (query == null) {
                m9gc();
                query = mo1966createQuery();
                this.queriesForThreads.put(Long.valueOf(threadId), new WeakReference<>(query));
            } else {
                System.arraycopy(this.initialValues, 0, query.parameters, 0, this.initialValues.length);
            }
        }
        return query;
    }

    /* renamed from: gc */
    void m9gc() {
        synchronized (this.queriesForThreads) {
            Iterator<Map.Entry<Long, WeakReference<Q>>> iterator = this.queriesForThreads.entrySet().iterator();
            while (iterator.hasNext()) {
                Map.Entry<Long, WeakReference<Q>> entry = iterator.next();
                if (entry.getValue().get() == null) {
                    iterator.remove();
                }
            }
        }
    }
}
