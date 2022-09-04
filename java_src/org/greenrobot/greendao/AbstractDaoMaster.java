package org.greenrobot.greendao;

import java.util.HashMap;
import java.util.Map;
import org.greenrobot.greendao.database.Database;
import org.greenrobot.greendao.identityscope.IdentityScopeType;
import org.greenrobot.greendao.internal.DaoConfig;
/* loaded from: classes2.dex */
public abstract class AbstractDaoMaster {
    protected final Map<Class<? extends AbstractDao<?, ?>>, DaoConfig> daoConfigMap = new HashMap();

    /* renamed from: db */
    protected final Database f1483db;
    protected final int schemaVersion;

    /* renamed from: newSession */
    public abstract AbstractDaoSession mo1782newSession();

    /* renamed from: newSession */
    public abstract AbstractDaoSession mo1783newSession(IdentityScopeType identityScopeType);

    public AbstractDaoMaster(Database db, int schemaVersion) {
        this.f1483db = db;
        this.schemaVersion = schemaVersion;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void registerDaoClass(Class<? extends AbstractDao<?, ?>> daoClass) {
        DaoConfig daoConfig = new DaoConfig(this.f1483db, daoClass);
        this.daoConfigMap.put(daoClass, daoConfig);
    }

    public int getSchemaVersion() {
        return this.schemaVersion;
    }

    public Database getDatabase() {
        return this.f1483db;
    }
}
