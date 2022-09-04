package com.fimi.kernel.store.sqlite.helper;

import com.fimi.app.x8s.entity.X11CmdConstants;
import com.fimi.kernel.store.sqlite.dao.DataStaticInfoDao;
import com.fimi.kernel.store.sqlite.entity.DataStaticInfo;
import com.fimi.kernel.store.sqlite.helper.core.DbCore;
import com.fimi.kernel.utils.LogUtil;
import java.util.List;
import org.greenrobot.greendao.query.QueryBuilder;
import org.greenrobot.greendao.query.WhereCondition;
/* loaded from: classes.dex */
public class DataStasicInfoHelper {
    private static DataStasicInfoHelper sDataStasicInfoHelper = new DataStasicInfoHelper();
    private DataStaticInfoDao dao = DbCore.getDaoSession().getDataStaticInfoDao();

    public static DataStasicInfoHelper getInstance() {
        return sDataStasicInfoHelper;
    }

    public void addRecord(DataStaticInfo dataStaticInfo) {
        DataStaticInfo unique = this.dao.queryBuilder().where(DataStaticInfoDao.Properties.CurrentTime.m16eq(dataStaticInfo.getCurrentTime()), new WhereCondition[0]).where(DataStaticInfoDao.Properties.Type.m16eq(Byte.valueOf(dataStaticInfo.getType())), new WhereCondition[0]).where(DataStaticInfoDao.Properties.DeviceType.m16eq(Byte.valueOf(dataStaticInfo.getDeviceType())), new WhereCondition[0]).build().unique();
        if (unique != null) {
            LogUtil.m1326i(X11CmdConstants.OPTION_APPSTATUS_RECORD, "addRecord: 1");
            unique.setUseTime(dataStaticInfo.getUseTime());
            unique.setFlyTime(dataStaticInfo.getFlyTime());
            this.dao.update(unique);
            return;
        }
        LogUtil.m1326i(X11CmdConstants.OPTION_APPSTATUS_RECORD, "addRecord: 2");
        this.dao.insert(dataStaticInfo);
    }

    public List<DataStaticInfo> queryX9FlyTime() {
        QueryBuilder<DataStaticInfo> qb = this.dao.queryBuilder();
        qb.where(DataStaticInfoDao.Properties.Type.m16eq(1), new WhereCondition[0]).where(DataStaticInfoDao.Properties.DeviceType.m16eq(0), new WhereCondition[0]);
        List<DataStaticInfo> list = qb.list();
        return list;
    }

    public List<DataStaticInfo> queryX9UseTime() {
        QueryBuilder<DataStaticInfo> qb = this.dao.queryBuilder();
        qb.where(DataStaticInfoDao.Properties.Type.m16eq(0), new WhereCondition[0]).where(DataStaticInfoDao.Properties.DeviceType.m16eq(0), new WhereCondition[0]);
        List<DataStaticInfo> list = qb.list();
        return list;
    }

    public void deleteList(List<DataStaticInfo> notes) {
        this.dao.deleteInTx(notes);
    }
}
