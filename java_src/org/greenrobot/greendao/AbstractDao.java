package org.greenrobot.greendao;

import android.database.CrossProcessCursor;
import android.database.Cursor;
import android.database.CursorWindow;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import org.greenrobot.greendao.annotation.apihint.Experimental;
import org.greenrobot.greendao.database.Database;
import org.greenrobot.greendao.database.DatabaseStatement;
import org.greenrobot.greendao.identityscope.IdentityScope;
import org.greenrobot.greendao.identityscope.IdentityScopeLong;
import org.greenrobot.greendao.internal.DaoConfig;
import org.greenrobot.greendao.internal.FastCursor;
import org.greenrobot.greendao.internal.TableStatements;
import org.greenrobot.greendao.p020rx.RxDao;
import org.greenrobot.greendao.query.Query;
import org.greenrobot.greendao.query.QueryBuilder;
import p021rx.schedulers.Schedulers;
/* loaded from: classes2.dex */
public abstract class AbstractDao<T, K> {
    protected final DaoConfig config;

    /* renamed from: db */
    protected final Database f1482db;
    protected final IdentityScope<K, T> identityScope;
    protected final IdentityScopeLong<T> identityScopeLong;
    protected final boolean isStandardSQLite;
    protected final int pkOrdinal;
    private volatile RxDao<T, K> rxDao;
    private volatile RxDao<T, K> rxDaoPlain;
    protected final AbstractDaoSession session;
    protected final TableStatements statements;

    protected abstract void bindValues(SQLiteStatement sQLiteStatement, T t);

    protected abstract void bindValues(DatabaseStatement databaseStatement, T t);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract K getKey(T t);

    protected abstract boolean hasKey(T t);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract boolean isEntityUpdateable();

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: readEntity */
    public abstract T mo1794readEntity(Cursor cursor, int i);

    protected abstract void readEntity(Cursor cursor, T t, int i);

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: readKey */
    public abstract K mo1795readKey(Cursor cursor, int i);

    protected abstract K updateKeyAfterInsert(T t, long j);

    public AbstractDao(DaoConfig config) {
        this(config, null);
    }

    public AbstractDao(DaoConfig config, AbstractDaoSession daoSession) {
        this.config = config;
        this.session = daoSession;
        this.f1482db = config.f1486db;
        this.isStandardSQLite = this.f1482db.getRawDatabase() instanceof SQLiteDatabase;
        this.identityScope = (IdentityScope<K, T>) config.getIdentityScope();
        if (this.identityScope instanceof IdentityScopeLong) {
            this.identityScopeLong = (IdentityScopeLong) this.identityScope;
        } else {
            this.identityScopeLong = null;
        }
        this.statements = config.statements;
        this.pkOrdinal = config.pkProperty != null ? config.pkProperty.ordinal : -1;
    }

    public AbstractDaoSession getSession() {
        return this.session;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public TableStatements getStatements() {
        return this.config.statements;
    }

    public String getTablename() {
        return this.config.tablename;
    }

    public Property[] getProperties() {
        return this.config.properties;
    }

    public Property getPkProperty() {
        return this.config.pkProperty;
    }

    public String[] getAllColumns() {
        return this.config.allColumns;
    }

    public String[] getPkColumns() {
        return this.config.pkColumns;
    }

    public String[] getNonPkColumns() {
        return this.config.nonPkColumns;
    }

    public T load(K key) {
        T entity;
        assertSinglePk();
        if (key == null) {
            return null;
        }
        if (this.identityScope == null || (entity = this.identityScope.get(key)) == null) {
            String sql = this.statements.getSelectByKey();
            String[] keyArray = {key.toString()};
            Cursor cursor = this.f1482db.rawQuery(sql, keyArray);
            return loadUniqueAndCloseCursor(cursor);
        }
        return entity;
    }

    public T loadByRowId(long rowId) {
        String[] idArray = {Long.toString(rowId)};
        Cursor cursor = this.f1482db.rawQuery(this.statements.getSelectByRowId(), idArray);
        return loadUniqueAndCloseCursor(cursor);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public T loadUniqueAndCloseCursor(Cursor cursor) {
        try {
            return loadUnique(cursor);
        } finally {
            cursor.close();
        }
    }

    protected T loadUnique(Cursor cursor) {
        boolean available = cursor.moveToFirst();
        if (!available) {
            return null;
        }
        if (!cursor.isLast()) {
            throw new DaoException("Expected unique result, but count was " + cursor.getCount());
        }
        return loadCurrent(cursor, 0, true);
    }

    public List<T> loadAll() {
        Cursor cursor = this.f1482db.rawQuery(this.statements.getSelectAll(), null);
        return loadAllAndCloseCursor(cursor);
    }

    public boolean detach(T entity) {
        if (this.identityScope != null) {
            K key = getKeyVerified(entity);
            return this.identityScope.detach(key, entity);
        }
        return false;
    }

    public void detachAll() {
        if (this.identityScope != null) {
            this.identityScope.clear();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public List<T> loadAllAndCloseCursor(Cursor cursor) {
        try {
            return loadAllFromCursor(cursor);
        } finally {
            cursor.close();
        }
    }

    public void insertInTx(Iterable<T> entities) {
        insertInTx(entities, isEntityUpdateable());
    }

    public void insertInTx(T... entities) {
        insertInTx(Arrays.asList(entities), isEntityUpdateable());
    }

    public void insertInTx(Iterable<T> entities, boolean setPrimaryKey) {
        DatabaseStatement stmt = this.statements.getInsertStatement();
        executeInsertInTx(stmt, entities, setPrimaryKey);
    }

    public void insertOrReplaceInTx(Iterable<T> entities, boolean setPrimaryKey) {
        DatabaseStatement stmt = this.statements.getInsertOrReplaceStatement();
        executeInsertInTx(stmt, entities, setPrimaryKey);
    }

    public void insertOrReplaceInTx(Iterable<T> entities) {
        insertOrReplaceInTx(entities, isEntityUpdateable());
    }

    public void insertOrReplaceInTx(T... entities) {
        insertOrReplaceInTx(Arrays.asList(entities), isEntityUpdateable());
    }

    private void executeInsertInTx(DatabaseStatement stmt, Iterable<T> entities, boolean setPrimaryKey) {
        this.f1482db.beginTransaction();
        try {
            synchronized (stmt) {
                if (this.identityScope != null) {
                    this.identityScope.lock();
                }
                if (this.isStandardSQLite) {
                    SQLiteStatement rawStmt = (SQLiteStatement) stmt.getRawStatement();
                    for (T entity : entities) {
                        bindValues(rawStmt, (SQLiteStatement) entity);
                        if (setPrimaryKey) {
                            long rowId = rawStmt.executeInsert();
                            updateKeyAfterInsertAndAttach(entity, rowId, false);
                        } else {
                            rawStmt.execute();
                        }
                    }
                } else {
                    for (T entity2 : entities) {
                        bindValues(stmt, (DatabaseStatement) entity2);
                        if (setPrimaryKey) {
                            long rowId2 = stmt.executeInsert();
                            updateKeyAfterInsertAndAttach(entity2, rowId2, false);
                        } else {
                            stmt.execute();
                        }
                    }
                }
                if (this.identityScope != null) {
                    this.identityScope.unlock();
                }
            }
            this.f1482db.setTransactionSuccessful();
        } finally {
            this.f1482db.endTransaction();
        }
    }

    public long insert(T entity) {
        return executeInsert(entity, this.statements.getInsertStatement(), true);
    }

    public long insertWithoutSettingPk(T entity) {
        return executeInsert(entity, this.statements.getInsertOrReplaceStatement(), false);
    }

    public long insertOrReplace(T entity) {
        return executeInsert(entity, this.statements.getInsertOrReplaceStatement(), true);
    }

    private long executeInsert(T entity, DatabaseStatement stmt, boolean setKeyAndAttach) {
        long rowId;
        if (this.f1482db.isDbLockedByCurrentThread()) {
            rowId = insertInsideTx(entity, stmt);
        } else {
            this.f1482db.beginTransaction();
            try {
                rowId = insertInsideTx(entity, stmt);
                this.f1482db.setTransactionSuccessful();
            } finally {
                this.f1482db.endTransaction();
            }
        }
        if (setKeyAndAttach) {
            updateKeyAfterInsertAndAttach(entity, rowId, true);
        }
        return rowId;
    }

    private long insertInsideTx(T entity, DatabaseStatement stmt) {
        long executeInsert;
        synchronized (stmt) {
            if (this.isStandardSQLite) {
                SQLiteStatement rawStmt = (SQLiteStatement) stmt.getRawStatement();
                bindValues(rawStmt, (SQLiteStatement) entity);
                executeInsert = rawStmt.executeInsert();
            } else {
                bindValues(stmt, (DatabaseStatement) entity);
                executeInsert = stmt.executeInsert();
            }
        }
        return executeInsert;
    }

    protected void updateKeyAfterInsertAndAttach(T entity, long rowId, boolean lock) {
        if (rowId != -1) {
            K key = updateKeyAfterInsert(entity, rowId);
            attachEntity(key, entity, lock);
            return;
        }
        DaoLog.m19w("Could not insert row (executeInsert returned -1)");
    }

    public void save(T entity) {
        if (hasKey(entity)) {
            update(entity);
        } else {
            insert(entity);
        }
    }

    public void saveInTx(T... entities) {
        saveInTx(Arrays.asList(entities));
    }

    public void saveInTx(Iterable<T> entities) {
        int updateCount = 0;
        int insertCount = 0;
        for (T entity : entities) {
            if (hasKey(entity)) {
                updateCount++;
            } else {
                insertCount++;
            }
        }
        if (updateCount > 0 && insertCount > 0) {
            List<T> toUpdate = new ArrayList<>(updateCount);
            List<T> toInsert = new ArrayList<>(insertCount);
            for (T entity2 : entities) {
                if (hasKey(entity2)) {
                    toUpdate.add(entity2);
                } else {
                    toInsert.add(entity2);
                }
            }
            this.f1482db.beginTransaction();
            try {
                updateInTx(toUpdate);
                insertInTx(toInsert);
                this.f1482db.setTransactionSuccessful();
            } finally {
                this.f1482db.endTransaction();
            }
        } else if (insertCount > 0) {
            insertInTx(entities);
        } else if (updateCount > 0) {
            updateInTx(entities);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:27:0x004f  */
    /* JADX WARN: Removed duplicated region for block: B:29:? A[RETURN, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    protected List<T> loadAllFromCursor(Cursor cursor) {
        int count = cursor.getCount();
        if (count == 0) {
            return new ArrayList();
        }
        List<T> list = new ArrayList<>(count);
        CursorWindow window = null;
        boolean useFastCursor = false;
        if ((cursor instanceof CrossProcessCursor) && (window = ((CrossProcessCursor) cursor).getWindow()) != null) {
            if (window.getNumRows() == count) {
                cursor = new FastCursor(window);
                useFastCursor = true;
            } else {
                DaoLog.m27d("Window vs. result size: " + window.getNumRows() + "/" + count);
            }
        }
        if (cursor.moveToFirst()) {
            if (this.identityScope != null) {
                this.identityScope.lock();
                this.identityScope.reserveRoom(count);
            }
            if (!useFastCursor && window != null) {
                try {
                    if (this.identityScope != null) {
                        loadAllUnlockOnWindowBounds(cursor, window, list);
                        if (this.identityScope == null) {
                            this.identityScope.unlock();
                            return list;
                        }
                        return list;
                    }
                } finally {
                    if (this.identityScope != null) {
                        this.identityScope.unlock();
                    }
                }
            }
            do {
                list.add(loadCurrent(cursor, 0, false));
            } while (cursor.moveToNext());
            if (this.identityScope == null) {
            }
        } else {
            return list;
        }
    }

    private void loadAllUnlockOnWindowBounds(Cursor cursor, CursorWindow window, List<T> list) {
        int windowEnd = window.getStartPosition() + window.getNumRows();
        int row = 0;
        while (true) {
            list.add(loadCurrent(cursor, 0, false));
            int row2 = row + 1;
            if (row2 >= windowEnd) {
                CursorWindow window2 = moveToNextUnlocked(cursor);
                if (window2 != null) {
                    windowEnd = window2.getStartPosition() + window2.getNumRows();
                } else {
                    return;
                }
            } else if (!cursor.moveToNext()) {
                return;
            }
            row = row2 + 1;
        }
    }

    private CursorWindow moveToNextUnlocked(Cursor cursor) {
        this.identityScope.unlock();
        try {
            if (cursor.moveToNext()) {
                return ((CrossProcessCursor) cursor).getWindow();
            }
            return null;
        } finally {
            this.identityScope.lock();
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final T loadCurrent(Cursor cursor, int offset, boolean lock) {
        if (this.identityScopeLong != null) {
            if (offset != 0 && cursor.isNull(this.pkOrdinal + offset)) {
                return null;
            }
            long key = cursor.getLong(this.pkOrdinal + offset);
            T entity = lock ? this.identityScopeLong.get2(key) : this.identityScopeLong.get2NoLock(key);
            if (entity == null) {
                T entity2 = mo1794readEntity(cursor, offset);
                attachEntity(entity2);
                if (lock) {
                    this.identityScopeLong.put2(key, entity2);
                    return entity2;
                }
                this.identityScopeLong.put2NoLock(key, entity2);
                return entity2;
            }
            return entity;
        } else if (this.identityScope != null) {
            K key2 = mo1795readKey(cursor, offset);
            if (offset != 0 && key2 == null) {
                return null;
            }
            T entity3 = lock ? this.identityScope.get(key2) : this.identityScope.getNoLock(key2);
            if (entity3 == null) {
                T entity4 = mo1794readEntity(cursor, offset);
                attachEntity(key2, entity4, lock);
                return entity4;
            }
            return entity3;
        } else if (offset != 0 && mo1795readKey(cursor, offset) == null) {
            return null;
        } else {
            T entity5 = mo1794readEntity(cursor, offset);
            attachEntity(entity5);
            return entity5;
        }
    }

    protected final <O> O loadCurrentOther(AbstractDao<O, ?> dao, Cursor cursor, int offset) {
        return dao.loadCurrent(cursor, offset, true);
    }

    public List<T> queryRaw(String where, String... selectionArg) {
        Cursor cursor = this.f1482db.rawQuery(this.statements.getSelectAll() + where, selectionArg);
        return loadAllAndCloseCursor(cursor);
    }

    public Query<T> queryRawCreate(String where, Object... selectionArg) {
        List<Object> argList = Arrays.asList(selectionArg);
        return queryRawCreateListArgs(where, argList);
    }

    public Query<T> queryRawCreateListArgs(String where, Collection<Object> selectionArg) {
        return Query.internalCreate(this, this.statements.getSelectAll() + where, selectionArg.toArray());
    }

    public void deleteAll() {
        this.f1482db.execSQL("DELETE FROM '" + this.config.tablename + "'");
        if (this.identityScope != null) {
            this.identityScope.clear();
        }
    }

    public void delete(T entity) {
        assertSinglePk();
        K key = getKeyVerified(entity);
        deleteByKey(key);
    }

    public void deleteByKey(K key) {
        assertSinglePk();
        DatabaseStatement stmt = this.statements.getDeleteStatement();
        if (this.f1482db.isDbLockedByCurrentThread()) {
            synchronized (stmt) {
                deleteByKeyInsideSynchronized(key, stmt);
            }
        } else {
            this.f1482db.beginTransaction();
            try {
                synchronized (stmt) {
                    deleteByKeyInsideSynchronized(key, stmt);
                }
                this.f1482db.setTransactionSuccessful();
            } finally {
                this.f1482db.endTransaction();
            }
        }
        if (this.identityScope != null) {
            this.identityScope.remove((IdentityScope<K, T>) key);
        }
    }

    private void deleteByKeyInsideSynchronized(K key, DatabaseStatement stmt) {
        if (key instanceof Long) {
            stmt.bindLong(1, ((Long) key).longValue());
        } else if (key == null) {
            throw new DaoException("Cannot delete entity, key is null");
        } else {
            stmt.bindString(1, key.toString());
        }
        stmt.execute();
    }

    private void deleteInTxInternal(Iterable<T> entities, Iterable<K> keys) {
        assertSinglePk();
        DatabaseStatement stmt = this.statements.getDeleteStatement();
        List<K> keysToRemoveFromIdentityScope = null;
        this.f1482db.beginTransaction();
        try {
            synchronized (stmt) {
                if (this.identityScope != null) {
                    this.identityScope.lock();
                    List<K> keysToRemoveFromIdentityScope2 = new ArrayList<>();
                    keysToRemoveFromIdentityScope = keysToRemoveFromIdentityScope2;
                }
                if (entities != null) {
                    for (T entity : entities) {
                        K key = getKeyVerified(entity);
                        deleteByKeyInsideSynchronized(key, stmt);
                        if (keysToRemoveFromIdentityScope != null) {
                            keysToRemoveFromIdentityScope.add(key);
                        }
                    }
                }
                if (keys != null) {
                    for (K key2 : keys) {
                        deleteByKeyInsideSynchronized(key2, stmt);
                        if (keysToRemoveFromIdentityScope != null) {
                            keysToRemoveFromIdentityScope.add(key2);
                        }
                    }
                }
                if (this.identityScope != null) {
                    this.identityScope.unlock();
                }
            }
            this.f1482db.setTransactionSuccessful();
            if (keysToRemoveFromIdentityScope != null && this.identityScope != null) {
                this.identityScope.remove((Iterable) keysToRemoveFromIdentityScope);
            }
        } finally {
            this.f1482db.endTransaction();
        }
    }

    public void deleteInTx(Iterable<T> entities) {
        deleteInTxInternal(entities, null);
    }

    public void deleteInTx(T... entities) {
        deleteInTxInternal(Arrays.asList(entities), null);
    }

    public void deleteByKeyInTx(Iterable<K> keys) {
        deleteInTxInternal(null, keys);
    }

    public void deleteByKeyInTx(K... keys) {
        deleteInTxInternal(null, Arrays.asList(keys));
    }

    public void refresh(T entity) {
        assertSinglePk();
        K key = getKeyVerified(entity);
        String sql = this.statements.getSelectByKey();
        String[] keyArray = {key.toString()};
        Cursor cursor = this.f1482db.rawQuery(sql, keyArray);
        try {
            boolean available = cursor.moveToFirst();
            if (!available) {
                throw new DaoException("Entity does not exist in the database anymore: " + entity.getClass() + " with key " + key);
            }
            if (!cursor.isLast()) {
                throw new DaoException("Expected unique result, but count was " + cursor.getCount());
            }
            readEntity(cursor, entity, 0);
            attachEntity(key, entity, true);
        } finally {
            cursor.close();
        }
    }

    public void update(T entity) {
        assertSinglePk();
        DatabaseStatement stmt = this.statements.getUpdateStatement();
        if (this.f1482db.isDbLockedByCurrentThread()) {
            synchronized (stmt) {
                if (this.isStandardSQLite) {
                    updateInsideSynchronized((AbstractDao<T, K>) entity, (SQLiteStatement) stmt.getRawStatement(), true);
                } else {
                    updateInsideSynchronized((AbstractDao<T, K>) entity, stmt, true);
                }
            }
            return;
        }
        this.f1482db.beginTransaction();
        try {
            synchronized (stmt) {
                updateInsideSynchronized((AbstractDao<T, K>) entity, stmt, true);
            }
            this.f1482db.setTransactionSuccessful();
        } finally {
            this.f1482db.endTransaction();
        }
    }

    public QueryBuilder<T> queryBuilder() {
        return QueryBuilder.internalCreate(this);
    }

    protected void updateInsideSynchronized(T entity, DatabaseStatement stmt, boolean lock) {
        bindValues(stmt, (DatabaseStatement) entity);
        int index = this.config.allColumns.length + 1;
        K key = getKey(entity);
        if (key instanceof Long) {
            stmt.bindLong(index, ((Long) key).longValue());
        } else if (key == null) {
            throw new DaoException("Cannot update entity without key - was it inserted before?");
        } else {
            stmt.bindString(index, key.toString());
        }
        stmt.execute();
        attachEntity(key, entity, lock);
    }

    protected void updateInsideSynchronized(T entity, SQLiteStatement stmt, boolean lock) {
        bindValues(stmt, (SQLiteStatement) entity);
        int index = this.config.allColumns.length + 1;
        K key = getKey(entity);
        if (key instanceof Long) {
            stmt.bindLong(index, ((Long) key).longValue());
        } else if (key == null) {
            throw new DaoException("Cannot update entity without key - was it inserted before?");
        } else {
            stmt.bindString(index, key.toString());
        }
        stmt.execute();
        attachEntity(key, entity, lock);
    }

    protected final void attachEntity(K key, T entity, boolean lock) {
        attachEntity(entity);
        if (this.identityScope != null && key != null) {
            if (lock) {
                this.identityScope.put(key, entity);
            } else {
                this.identityScope.putNoLock(key, entity);
            }
        }
    }

    protected void attachEntity(T entity) {
    }

    public void updateInTx(Iterable<T> entities) {
        DatabaseStatement stmt = this.statements.getUpdateStatement();
        this.f1482db.beginTransaction();
        try {
            synchronized (stmt) {
                if (this.identityScope != null) {
                    this.identityScope.lock();
                }
                if (this.isStandardSQLite) {
                    SQLiteStatement rawStmt = (SQLiteStatement) stmt.getRawStatement();
                    for (T entity : entities) {
                        updateInsideSynchronized((AbstractDao<T, K>) entity, rawStmt, false);
                    }
                } else {
                    for (T entity2 : entities) {
                        updateInsideSynchronized((AbstractDao<T, K>) entity2, stmt, false);
                    }
                }
                if (this.identityScope != null) {
                    this.identityScope.unlock();
                }
            }
            this.f1482db.setTransactionSuccessful();
            try {
                this.f1482db.endTransaction();
            } catch (RuntimeException e) {
                if (0 == 0) {
                    throw e;
                }
                DaoLog.m18w("Could not end transaction (rethrowing initial exception)", e);
                throw null;
            }
        } catch (RuntimeException e2) {
            try {
                this.f1482db.endTransaction();
            } catch (RuntimeException e3) {
                if (e2 == null) {
                    throw e3;
                }
                DaoLog.m18w("Could not end transaction (rethrowing initial exception)", e3);
                throw e2;
            }
        } catch (Throwable th) {
            try {
                this.f1482db.endTransaction();
                throw th;
            } catch (RuntimeException e4) {
                if (0 == 0) {
                    throw e4;
                }
                DaoLog.m18w("Could not end transaction (rethrowing initial exception)", e4);
                throw null;
            }
        }
    }

    public void updateInTx(T... entities) {
        updateInTx(Arrays.asList(entities));
    }

    protected void assertSinglePk() {
        if (this.config.pkColumns.length != 1) {
            throw new DaoException(this + " (" + this.config.tablename + ") does not have a single-column primary key");
        }
    }

    public long count() {
        return this.statements.getCountStatement().simpleQueryForLong();
    }

    protected K getKeyVerified(T entity) {
        K key = getKey(entity);
        if (key == null) {
            if (entity == null) {
                throw new NullPointerException("Entity may not be null");
            }
            throw new DaoException("Entity has no key");
        }
        return key;
    }

    @Experimental
    public RxDao<T, K> rxPlain() {
        if (this.rxDaoPlain == null) {
            this.rxDaoPlain = new RxDao<>(this);
        }
        return this.rxDaoPlain;
    }

    @Experimental
    /* renamed from: rx */
    public RxDao<T, K> m28rx() {
        if (this.rxDao == null) {
            this.rxDao = new RxDao<>(this, Schedulers.m0io());
        }
        return this.rxDao;
    }

    public Database getDatabase() {
        return this.f1482db;
    }
}
