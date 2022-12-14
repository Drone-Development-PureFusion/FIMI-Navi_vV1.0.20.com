package com.fimi.kernel.store.sqlite.helper;

import com.fimi.kernel.store.sqlite.dao.X8AiLinePointInfoDao;
import com.fimi.kernel.store.sqlite.dao.X8AiLinePointLatlngInfoDao;
import com.fimi.kernel.store.sqlite.entity.X8AiLinePointInfo;
import com.fimi.kernel.store.sqlite.entity.X8AiLinePointLatlngInfo;
import com.fimi.kernel.store.sqlite.helper.core.DbCore;
import java.util.List;
import org.greenrobot.greendao.database.Database;
import org.greenrobot.greendao.query.QueryBuilder;
import org.greenrobot.greendao.query.WhereCondition;
/* loaded from: classes.dex */
public class X8AiLinePointInfoHelper {
    private static X8AiLinePointInfoHelper instance = new X8AiLinePointInfoHelper();
    private X8AiLinePointInfoDao lineDao = DbCore.getDaoSession().getX8AiLinePointInfoDao();
    private X8AiLinePointLatlngInfoDao pointDao = DbCore.getDaoSession().getX8AiLinePointLatlngInfoDao();

    public static X8AiLinePointInfoHelper getIntance() {
        return instance;
    }

    public boolean addLineDatas(X8AiLinePointInfo line, List<X8AiLinePointLatlngInfo> list) {
        Database db = this.lineDao.getSession().getDatabase();
        db.beginTransaction();
        try {
            long lineId = this.lineDao.insert(line);
            for (int i = 0; i < list.size(); i++) {
                X8AiLinePointLatlngInfo latlng = list.get(i);
                latlng.setLineId(lineId);
                this.pointDao.insert(latlng);
            }
            db.setTransactionSuccessful();
            return true;
        } finally {
            db.endTransaction();
        }
    }

    public List<X8AiLinePointInfo> getLastItem(int count, int mapType, boolean isFavorites) {
        QueryBuilder<X8AiLinePointInfo> qb = this.lineDao.queryBuilder();
        if (isFavorites) {
            WhereCondition where = X8AiLinePointInfoDao.Properties.MapType.m16eq(Integer.valueOf(mapType));
            WhereCondition where1 = X8AiLinePointInfoDao.Properties.SaveFlag.m16eq(1);
            qb.where(where, where1).build();
        } else {
            WhereCondition where2 = X8AiLinePointInfoDao.Properties.MapType.m16eq(Integer.valueOf(mapType));
            qb.where(where2, new WhereCondition[0]);
        }
        qb.orderDesc(X8AiLinePointInfoDao.Properties.f197Id);
        qb.limit(count);
        List<X8AiLinePointInfo> list = qb.list();
        return list;
    }

    public List<X8AiLinePointInfo> getLastItem(int mapType) {
        return getLastItem(5, mapType, false);
    }

    public List<X8AiLinePointInfo> getLastItem(int mapType, boolean isFavorites, int count) {
        return getLastItem(count, mapType, isFavorites);
    }

    public X8AiLinePointInfo getLineInfoById(long lineId) {
        QueryBuilder<X8AiLinePointInfo> qb = this.lineDao.queryBuilder();
        WhereCondition where = X8AiLinePointInfoDao.Properties.f197Id.m16eq(Long.valueOf(lineId));
        qb.where(where, new WhereCondition[0]);
        qb.orderDesc(X8AiLinePointInfoDao.Properties.f197Id);
        List<X8AiLinePointInfo> list = qb.list();
        return list.get(0);
    }

    public List<X8AiLinePointInfo> getAll() {
        QueryBuilder<X8AiLinePointInfo> qb = this.lineDao.queryBuilder();
        List<X8AiLinePointInfo> list = qb.list();
        return list;
    }

    public List<X8AiLinePointLatlngInfo> getLatlngByLineId(int mapType, long lineId) {
        QueryBuilder<X8AiLinePointLatlngInfo> qb = this.pointDao.queryBuilder();
        WhereCondition where = X8AiLinePointLatlngInfoDao.Properties.LineId.m16eq(Long.valueOf(lineId));
        qb.where(where, new WhereCondition[0]);
        List<X8AiLinePointLatlngInfo> list = qb.list();
        return list;
    }

    public void updatelineSaveFlag(int saveFlag, long lineId) {
        X8AiLinePointInfo find = this.lineDao.queryBuilder().where(X8AiLinePointInfoDao.Properties.f197Id.m16eq(Long.valueOf(lineId)), new WhereCondition[0]).build().unique();
        if (find != null) {
            find.setSaveFlag(saveFlag);
            this.lineDao.update(find);
        }
    }

    public void updateLineName(String name, long lineId) {
        X8AiLinePointInfo find = this.lineDao.queryBuilder().where(X8AiLinePointInfoDao.Properties.f197Id.m16eq(Long.valueOf(lineId)), new WhereCondition[0]).build().unique();
        if (find != null) {
            find.setName(name);
            this.lineDao.update(find);
        }
    }
}
