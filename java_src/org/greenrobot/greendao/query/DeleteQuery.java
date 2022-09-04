package org.greenrobot.greendao.query;

import org.greenrobot.greendao.AbstractDao;
import org.greenrobot.greendao.database.Database;
/* loaded from: classes2.dex */
public class DeleteQuery<T> extends AbstractQuery<T> {
    private final QueryData<T> queryData;

    @Override // org.greenrobot.greendao.query.AbstractQuery
    /* renamed from: setParameter */
    public /* bridge */ /* synthetic */ AbstractQuery mo1963setParameter(int i, Object obj) {
        return super.mo1963setParameter(i, obj);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static final class QueryData<T2> extends AbstractQueryData<T2, DeleteQuery<T2>> {
        private QueryData(AbstractDao<T2, ?> dao, String sql, String[] initialValues) {
            super(dao, sql, initialValues);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // org.greenrobot.greendao.query.AbstractQueryData
        /* renamed from: createQuery  reason: collision with other method in class */
        public DeleteQuery<T2> mo1966createQuery() {
            return new DeleteQuery<>(this, this.dao, this.sql, (String[]) this.initialValues.clone());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static <T2> DeleteQuery<T2> create(AbstractDao<T2, ?> dao, String sql, Object[] initialValues) {
        QueryData<T2> queryData = new QueryData<>(dao, sql, toStringArray(initialValues));
        return queryData.forCurrentThread();
    }

    private DeleteQuery(QueryData<T> queryData, AbstractDao<T, ?> dao, String sql, String[] initialValues) {
        super(dao, sql, initialValues);
        this.queryData = queryData;
    }

    public DeleteQuery<T> forCurrentThread() {
        return (DeleteQuery) this.queryData.forCurrentThread(this);
    }

    public void executeDeleteWithoutDetachingEntities() {
        checkThread();
        Database db = this.dao.getDatabase();
        if (db.isDbLockedByCurrentThread()) {
            this.dao.getDatabase().execSQL(this.sql, this.parameters);
            return;
        }
        db.beginTransaction();
        try {
            this.dao.getDatabase().execSQL(this.sql, this.parameters);
            db.setTransactionSuccessful();
        } finally {
            db.endTransaction();
        }
    }
}
