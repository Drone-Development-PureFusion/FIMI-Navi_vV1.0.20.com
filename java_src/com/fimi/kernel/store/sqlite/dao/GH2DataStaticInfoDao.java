package com.fimi.kernel.store.sqlite.dao;

import android.database.Cursor;
import android.database.sqlite.SQLiteStatement;
import com.fimi.kernel.store.sqlite.entity.GH2DataStaticInfo;
import org.greenrobot.greendao.AbstractDao;
import org.greenrobot.greendao.Property;
import org.greenrobot.greendao.database.Database;
import org.greenrobot.greendao.database.DatabaseStatement;
import org.greenrobot.greendao.internal.DaoConfig;
/* loaded from: classes.dex */
public class GH2DataStaticInfoDao extends AbstractDao<GH2DataStaticInfo, Long> {
    public static final String TABLENAME = "GH2_DATA_STATIC_INFO";

    /* loaded from: classes.dex */
    public static class Properties {

        /* renamed from: Id */
        public static final Property f194Id = new Property(0, Long.class, "id", true, "_id");
        public static final Property ProductModel = new Property(1, String.class, "productModel", false, "PRODUCT_MODEL");
        public static final Property HandleVersion = new Property(2, Integer.TYPE, "handleVersion", false, "HANDLE_VERSION");
        public static final Property GimbalVersion = new Property(3, Integer.TYPE, "gimbalVersion", false, "GIMBAL_VERSION");
        public static final Property UseTime = new Property(4, Double.TYPE, "useTime", false, "USE_TIME");
        public static final Property Longitude = new Property(5, Double.TYPE, "longitude", false, "LONGITUDE");
        public static final Property Latitude = new Property(6, Double.TYPE, "latitude", false, "LATITUDE");
        public static final Property CreateTime = new Property(7, String.class, "createTime", false, "CREATE_TIME");
    }

    public GH2DataStaticInfoDao(DaoConfig config) {
        super(config);
    }

    public GH2DataStaticInfoDao(DaoConfig config, DaoSession daoSession) {
        super(config, daoSession);
    }

    public static void createTable(Database db, boolean ifNotExists) {
        String constraint = ifNotExists ? "IF NOT EXISTS " : "";
        db.execSQL("CREATE TABLE " + constraint + "\"GH2_DATA_STATIC_INFO\" (\"_id\" INTEGER PRIMARY KEY ,\"PRODUCT_MODEL\" TEXT,\"HANDLE_VERSION\" INTEGER NOT NULL ,\"GIMBAL_VERSION\" INTEGER NOT NULL ,\"USE_TIME\" REAL NOT NULL ,\"LONGITUDE\" REAL NOT NULL ,\"LATITUDE\" REAL NOT NULL ,\"CREATE_TIME\" TEXT);");
    }

    public static void dropTable(Database db, boolean ifExists) {
        String sql = "DROP TABLE " + (ifExists ? "IF EXISTS " : "") + "\"GH2_DATA_STATIC_INFO\"";
        db.execSQL(sql);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.greenrobot.greendao.AbstractDao
    public final void bindValues(DatabaseStatement stmt, GH2DataStaticInfo entity) {
        stmt.clearBindings();
        Long id = entity.getId();
        if (id != null) {
            stmt.bindLong(1, id.longValue());
        }
        String productModel = entity.getProductModel();
        if (productModel != null) {
            stmt.bindString(2, productModel);
        }
        stmt.bindLong(3, entity.getHandleVersion());
        stmt.bindLong(4, entity.getGimbalVersion());
        stmt.bindDouble(5, entity.getUseTime());
        stmt.bindDouble(6, entity.getLongitude());
        stmt.bindDouble(7, entity.getLatitude());
        String createTime = entity.getCreateTime();
        if (createTime != null) {
            stmt.bindString(8, createTime);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.greenrobot.greendao.AbstractDao
    public final void bindValues(SQLiteStatement stmt, GH2DataStaticInfo entity) {
        stmt.clearBindings();
        Long id = entity.getId();
        if (id != null) {
            stmt.bindLong(1, id.longValue());
        }
        String productModel = entity.getProductModel();
        if (productModel != null) {
            stmt.bindString(2, productModel);
        }
        stmt.bindLong(3, entity.getHandleVersion());
        stmt.bindLong(4, entity.getGimbalVersion());
        stmt.bindDouble(5, entity.getUseTime());
        stmt.bindDouble(6, entity.getLongitude());
        stmt.bindDouble(7, entity.getLatitude());
        String createTime = entity.getCreateTime();
        if (createTime != null) {
            stmt.bindString(8, createTime);
        }
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: readKey */
    public Long mo1795readKey(Cursor cursor, int offset) {
        if (cursor.isNull(offset + 0)) {
            return null;
        }
        return Long.valueOf(cursor.getLong(offset + 0));
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // org.greenrobot.greendao.AbstractDao
    /* renamed from: readEntity */
    public GH2DataStaticInfo mo1794readEntity(Cursor cursor, int offset) {
        GH2DataStaticInfo entity = new GH2DataStaticInfo(cursor.isNull(offset + 0) ? null : Long.valueOf(cursor.getLong(offset + 0)), cursor.isNull(offset + 1) ? null : cursor.getString(offset + 1), cursor.getInt(offset + 2), cursor.getInt(offset + 3), cursor.getDouble(offset + 4), cursor.getDouble(offset + 5), cursor.getDouble(offset + 6), cursor.isNull(offset + 7) ? null : cursor.getString(offset + 7));
        return entity;
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public void readEntity(Cursor cursor, GH2DataStaticInfo entity, int offset) {
        String str = null;
        entity.setId(cursor.isNull(offset + 0) ? null : Long.valueOf(cursor.getLong(offset + 0)));
        entity.setProductModel(cursor.isNull(offset + 1) ? null : cursor.getString(offset + 1));
        entity.setHandleVersion(cursor.getInt(offset + 2));
        entity.setGimbalVersion(cursor.getInt(offset + 3));
        entity.setUseTime(cursor.getDouble(offset + 4));
        entity.setLongitude(cursor.getDouble(offset + 5));
        entity.setLatitude(cursor.getDouble(offset + 6));
        if (!cursor.isNull(offset + 7)) {
            str = cursor.getString(offset + 7);
        }
        entity.setCreateTime(str);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.greenrobot.greendao.AbstractDao
    public final Long updateKeyAfterInsert(GH2DataStaticInfo entity, long rowId) {
        entity.setId(Long.valueOf(rowId));
        return Long.valueOf(rowId);
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public Long getKey(GH2DataStaticInfo entity) {
        if (entity != null) {
            return entity.getId();
        }
        return null;
    }

    @Override // org.greenrobot.greendao.AbstractDao
    public boolean hasKey(GH2DataStaticInfo entity) {
        return entity.getId() != null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.greenrobot.greendao.AbstractDao
    public final boolean isEntityUpdateable() {
        return true;
    }
}
