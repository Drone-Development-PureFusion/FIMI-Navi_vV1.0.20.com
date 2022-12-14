package com.fimi.kernel.store.sqlite.helper;

import com.fimi.app.x8s.entity.X11CmdConstants;
import com.fimi.kernel.store.sqlite.dao.GH2DataStaticInfoDao;
import com.fimi.kernel.store.sqlite.entity.GH2DataStaticInfo;
import com.fimi.kernel.store.sqlite.helper.core.DbCore;
import com.fimi.kernel.utils.LogUtil;
import java.util.List;
import org.greenrobot.greendao.query.QueryBuilder;
import org.greenrobot.greendao.query.WhereCondition;
/* loaded from: classes.dex */
public class GH2DataStasicInfoHelper {
    private static GH2DataStasicInfoHelper sDataStasicInfoHelper = new GH2DataStasicInfoHelper();
    private GH2DataStaticInfoDao gh2DataStaticInfoDao = DbCore.getDaoSession().getGH2DataStaticInfoDao();

    public static GH2DataStasicInfoHelper getInstance() {
        return sDataStasicInfoHelper;
    }

    public void addRecord(GH2DataStaticInfo gh2DataStaticInfo) {
        GH2DataStaticInfo unique = this.gh2DataStaticInfoDao.queryBuilder().where(GH2DataStaticInfoDao.Properties.CreateTime.m16eq(gh2DataStaticInfo.getCreateTime()), new WhereCondition[0]).build().unique();
        if (unique != null) {
            LogUtil.m1326i(X11CmdConstants.OPTION_APPSTATUS_RECORD, "addRecord: 1");
            unique.setUseTime(gh2DataStaticInfo.getUseTime());
            unique.setCreateTime(gh2DataStaticInfo.getCreateTime());
            this.gh2DataStaticInfoDao.update(unique);
            return;
        }
        LogUtil.m1326i(X11CmdConstants.OPTION_APPSTATUS_RECORD, "addRecord: 2");
        this.gh2DataStaticInfoDao.insert(gh2DataStaticInfo);
    }

    public List<GH2DataStaticInfo> queryGH2UseTime() {
        QueryBuilder<GH2DataStaticInfo> qb = this.gh2DataStaticInfoDao.queryBuilder();
        List<GH2DataStaticInfo> list = qb.list();
        return list;
    }

    public void deleteList(List<GH2DataStaticInfo> notes) {
        this.gh2DataStaticInfoDao.deleteInTx(notes);
    }
}
