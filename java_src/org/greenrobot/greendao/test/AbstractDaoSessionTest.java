package org.greenrobot.greendao.test;

import java.lang.reflect.Constructor;
import java.lang.reflect.Method;
import org.greenrobot.greendao.AbstractDaoMaster;
import org.greenrobot.greendao.AbstractDaoSession;
import org.greenrobot.greendao.database.Database;
/* loaded from: classes2.dex */
public abstract class AbstractDaoSessionTest<T extends AbstractDaoMaster, S extends AbstractDaoSession> extends DbTest {
    protected T daoMaster;
    private final Class<T> daoMasterClass;
    protected S daoSession;

    public AbstractDaoSessionTest(Class<T> daoMasterClass) {
        this(daoMasterClass, true);
    }

    public AbstractDaoSessionTest(Class<T> daoMasterClass, boolean inMemory) {
        super(inMemory);
        this.daoMasterClass = daoMasterClass;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.greenrobot.greendao.test.DbTest
    public void setUp() throws Exception {
        super.setUp();
        try {
            Constructor<T> constructor = this.daoMasterClass.getConstructor(Database.class);
            this.daoMaster = constructor.newInstance(this.f1489db);
            Method createTableMethod = this.daoMasterClass.getMethod("createAllTables", Database.class, Boolean.TYPE);
            createTableMethod.invoke(null, this.f1489db, false);
            this.daoSession = (S) this.daoMaster.mo1782newSession();
        } catch (Exception e) {
            throw new RuntimeException("Could not prepare DAO session test", e);
        }
    }
}
