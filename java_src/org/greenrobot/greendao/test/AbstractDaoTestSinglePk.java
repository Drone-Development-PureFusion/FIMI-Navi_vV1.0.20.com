package org.greenrobot.greendao.test;

import android.database.Cursor;
import android.database.DatabaseUtils;
import android.database.SQLException;
import ch.qos.logback.core.CoreConstants;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;
import java.util.Set;
import org.greenrobot.greendao.AbstractDao;
import org.greenrobot.greendao.DaoLog;
import org.greenrobot.greendao.Property;
import org.greenrobot.greendao.internal.SqlUtils;
/* loaded from: classes2.dex */
public abstract class AbstractDaoTestSinglePk<D extends AbstractDao<T, K>, T, K> extends AbstractDaoTest<D, T, K> {
    private Property pkColumn;
    protected Set<K> usedPks = new HashSet();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract T createEntity(K k);

    /* renamed from: createRandomPk */
    protected abstract K mo1976createRandomPk();

    public AbstractDaoTestSinglePk(Class<D> daoClass) {
        super(daoClass);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.greenrobot.greendao.test.AbstractDaoTest, org.greenrobot.greendao.test.DbTest
    public void setUp() throws Exception {
        super.setUp();
        Property[] columns = this.daoAccess.getProperties();
        for (Property column : columns) {
            if (column.primaryKey) {
                if (this.pkColumn != null) {
                    throw new RuntimeException("Test does not work with multiple PK columns");
                }
                this.pkColumn = column;
            }
        }
        if (this.pkColumn == null) {
            throw new RuntimeException("Test does not work without a PK column");
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void testInsertAndLoad() {
        K pk = nextPk();
        T entity = createEntity(pk);
        this.dao.insert(entity);
        assertEquals(pk, this.daoAccess.getKey(entity));
        Object load = this.dao.load(pk);
        assertNotNull(load);
        assertEquals(this.daoAccess.getKey(entity), this.daoAccess.getKey(load));
    }

    public void testInsertInTx() {
        this.dao.deleteAll();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < 20; i++) {
            arrayList.add(createEntityWithRandomPk());
        }
        this.dao.insertInTx(arrayList);
        assertEquals(arrayList.size(), this.dao.count());
    }

    public void testCount() {
        this.dao.deleteAll();
        assertEquals(0L, this.dao.count());
        this.dao.insert(createEntityWithRandomPk());
        assertEquals(1L, this.dao.count());
        this.dao.insert(createEntityWithRandomPk());
        assertEquals(2L, this.dao.count());
    }

    public void testInsertTwice() {
        K pk = nextPk();
        T entity = createEntity(pk);
        this.dao.insert(entity);
        try {
            this.dao.insert(entity);
            fail("Inserting twice should not work");
        } catch (SQLException e) {
        }
    }

    public void testInsertOrReplaceTwice() {
        T entity = createEntityWithRandomPk();
        long rowId1 = this.dao.insert(entity);
        long rowId2 = this.dao.insertOrReplace(entity);
        if (this.dao.getPkProperty().type == Long.class) {
            assertEquals(rowId1, rowId2);
        }
    }

    public void testInsertOrReplaceInTx() {
        this.dao.deleteAll();
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        for (int i = 0; i < 20; i++) {
            T entity = createEntityWithRandomPk();
            if (i % 2 == 0) {
                arrayList.add(entity);
            }
            arrayList2.add(entity);
        }
        this.dao.insertOrReplaceInTx(arrayList);
        this.dao.insertOrReplaceInTx(arrayList2);
        assertEquals(arrayList2.size(), this.dao.count());
    }

    public void testDelete() {
        K pk = nextPk();
        this.dao.deleteByKey(pk);
        T entity = createEntity(pk);
        this.dao.insert(entity);
        assertNotNull(this.dao.load(pk));
        this.dao.deleteByKey(pk);
        assertNull(this.dao.load(pk));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void testDeleteAll() {
        ArrayList<Object> arrayList = new ArrayList();
        for (int i = 0; i < 10; i++) {
            T entity = createEntityWithRandomPk();
            arrayList.add(entity);
        }
        this.dao.insertInTx(arrayList);
        this.dao.deleteAll();
        assertEquals(0L, this.dao.count());
        for (Object obj : arrayList) {
            K key = this.daoAccess.getKey(obj);
            assertNotNull(key);
            assertNull(this.dao.load(key));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void testDeleteInTx() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < 10; i++) {
            T entity = createEntityWithRandomPk();
            arrayList.add(entity);
        }
        this.dao.insertInTx(arrayList);
        ArrayList<Object> arrayList2 = new ArrayList();
        arrayList2.add(arrayList.get(0));
        arrayList2.add(arrayList.get(3));
        arrayList2.add(arrayList.get(4));
        arrayList2.add(arrayList.get(8));
        this.dao.deleteInTx(arrayList2);
        assertEquals(arrayList.size() - arrayList2.size(), this.dao.count());
        for (Object obj : arrayList2) {
            K key = this.daoAccess.getKey(obj);
            assertNotNull(key);
            assertNull(this.dao.load(key));
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void testDeleteByKeyInTx() {
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < 10; i++) {
            T entity = createEntityWithRandomPk();
            arrayList.add(entity);
        }
        this.dao.insertInTx(arrayList);
        ArrayList arrayList2 = new ArrayList();
        arrayList2.add(this.daoAccess.getKey(arrayList.get(0)));
        arrayList2.add(this.daoAccess.getKey(arrayList.get(3)));
        arrayList2.add(this.daoAccess.getKey(arrayList.get(4)));
        arrayList2.add(this.daoAccess.getKey(arrayList.get(8)));
        this.dao.deleteByKeyInTx(arrayList2);
        assertEquals(arrayList.size() - arrayList2.size(), this.dao.count());
        for (Object obj : arrayList2) {
            assertNotNull(obj);
            assertNull(this.dao.load(obj));
        }
    }

    public void testRowId() {
        T entity1 = createEntityWithRandomPk();
        T entity2 = createEntityWithRandomPk();
        long rowId1 = this.dao.insert(entity1);
        long rowId2 = this.dao.insert(entity2);
        assertTrue(rowId1 != rowId2);
    }

    public void testLoadAll() {
        this.dao.deleteAll();
        ArrayList arrayList = new ArrayList();
        for (int i = 0; i < 15; i++) {
            T entity = createEntity(nextPk());
            arrayList.add(entity);
        }
        this.dao.insertInTx(arrayList);
        List<T> loaded = this.dao.loadAll();
        assertEquals(arrayList.size(), loaded.size());
    }

    public void testQuery() {
        this.dao.insert(createEntityWithRandomPk());
        K pkForQuery = nextPk();
        this.dao.insert(createEntity(pkForQuery));
        this.dao.insert(createEntityWithRandomPk());
        String where = "WHERE " + this.dao.getPkColumns()[0] + "=?";
        List<T> list = this.dao.queryRaw(where, pkForQuery.toString());
        assertEquals(1, list.size());
        assertEquals(pkForQuery, this.daoAccess.getKey(list.get(0)));
    }

    public void testUpdate() {
        this.dao.deleteAll();
        T entity = createEntityWithRandomPk();
        this.dao.insert(entity);
        this.dao.update(entity);
        assertEquals(1L, this.dao.count());
    }

    public void testReadWithOffset() {
        K pk = nextPk();
        T entity = createEntity(pk);
        this.dao.insert(entity);
        Cursor cursor = queryWithDummyColumnsInFront(5, "42", pk);
        try {
            T entity2 = this.daoAccess.readEntity(cursor, 5);
            assertEquals(pk, this.daoAccess.getKey(entity2));
        } finally {
            cursor.close();
        }
    }

    public void testLoadPkWithOffset() {
        runLoadPkTest(10);
    }

    public void testLoadPk() {
        runLoadPkTest(0);
    }

    public void testSave() {
        if (checkKeyIsNullable()) {
            this.dao.deleteAll();
            T entity = createEntity(null);
            if (entity != null) {
                this.dao.save(entity);
                this.dao.save(entity);
                assertEquals(1L, this.dao.count());
            }
        }
    }

    public void testSaveInTx() {
        if (checkKeyIsNullable()) {
            this.dao.deleteAll();
            ArrayList arrayList = new ArrayList();
            ArrayList arrayList2 = new ArrayList();
            for (int i = 0; i < 20; i++) {
                T entity = createEntity(null);
                if (i % 2 == 0) {
                    arrayList.add(entity);
                }
                arrayList2.add(entity);
            }
            this.dao.saveInTx(arrayList);
            this.dao.saveInTx(arrayList2);
            assertEquals(arrayList2.size(), this.dao.count());
        }
    }

    protected void runLoadPkTest(int offset) {
        K pk = nextPk();
        T entity = createEntity(pk);
        this.dao.insert(entity);
        Cursor cursor = queryWithDummyColumnsInFront(offset, "42", pk);
        try {
            K pk2 = this.daoAccess.readKey(cursor, offset);
            assertEquals(pk, pk2);
        } finally {
            cursor.close();
        }
    }

    protected Cursor queryWithDummyColumnsInFront(int dummyCount, String valueForColumn, K pk) {
        StringBuilder builder = new StringBuilder("SELECT ");
        for (int i = 0; i < dummyCount; i++) {
            builder.append(valueForColumn).append(",");
        }
        SqlUtils.appendColumns(builder, "T", this.dao.getAllColumns()).append(" FROM ");
        builder.append(CoreConstants.DOUBLE_QUOTE_CHAR).append(this.dao.getTablename()).append(CoreConstants.DOUBLE_QUOTE_CHAR).append(" T");
        if (pk != null) {
            builder.append(" WHERE ");
            assertEquals(1, this.dao.getPkColumns().length);
            builder.append(this.dao.getPkColumns()[0]).append("=");
            DatabaseUtils.appendValueToSql(builder, pk);
        }
        String select = builder.toString();
        Cursor cursor = this.f1489db.rawQuery(select, null);
        assertTrue(cursor.moveToFirst());
        for (int i2 = 0; i2 < dummyCount; i2++) {
            try {
                assertEquals(valueForColumn, cursor.getString(i2));
            } catch (RuntimeException ex) {
                cursor.close();
                throw ex;
            }
        }
        if (pk != null) {
            assertEquals(1, cursor.getCount());
        }
        return cursor;
    }

    protected boolean checkKeyIsNullable() {
        if (createEntity(null) == null) {
            DaoLog.m27d("Test is not available for entities with non-null keys");
            return false;
        }
        return true;
    }

    protected K nextPk() {
        for (int i = 0; i < 100000; i++) {
            K pk = mo1976createRandomPk();
            if (this.usedPks.add(pk)) {
                return pk;
            }
        }
        throw new IllegalStateException("Could not find a new PK");
    }

    protected T createEntityWithRandomPk() {
        return createEntity(nextPk());
    }
}
