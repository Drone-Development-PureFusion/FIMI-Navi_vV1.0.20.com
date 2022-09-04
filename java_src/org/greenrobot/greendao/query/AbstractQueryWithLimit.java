package org.greenrobot.greendao.query;

import java.util.Date;
import org.greenrobot.greendao.AbstractDao;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public abstract class AbstractQueryWithLimit<T> extends AbstractQuery<T> {
    protected final int limitPosition;
    protected final int offsetPosition;

    /* JADX INFO: Access modifiers changed from: protected */
    public AbstractQueryWithLimit(AbstractDao<T, ?> dao, String sql, String[] initialValues, int limitPosition, int offsetPosition) {
        super(dao, sql, initialValues);
        this.limitPosition = limitPosition;
        this.offsetPosition = offsetPosition;
    }

    @Override // org.greenrobot.greendao.query.AbstractQuery
    /* renamed from: setParameter  reason: collision with other method in class */
    public AbstractQueryWithLimit<T> mo1963setParameter(int index, Object parameter) {
        if (index >= 0 && (index == this.limitPosition || index == this.offsetPosition)) {
            throw new IllegalArgumentException("Illegal parameter index: " + index);
        }
        return (AbstractQueryWithLimit) super.mo1963setParameter(index, parameter);
    }

    /* renamed from: setParameter */
    public AbstractQueryWithLimit<T> mo1965setParameter(int index, Date parameter) {
        Long converted = parameter != null ? Long.valueOf(parameter.getTime()) : null;
        return mo1963setParameter(index, (Object) converted);
    }

    /* renamed from: setParameter */
    public AbstractQueryWithLimit<T> mo1964setParameter(int index, Boolean parameter) {
        Integer converted;
        if (parameter != null) {
            converted = Integer.valueOf(parameter.booleanValue() ? 1 : 0);
        } else {
            converted = null;
        }
        return mo1963setParameter(index, (Object) converted);
    }

    public void setLimit(int limit) {
        checkThread();
        if (this.limitPosition == -1) {
            throw new IllegalStateException("Limit must be set with QueryBuilder before it can be used here");
        }
        this.parameters[this.limitPosition] = Integer.toString(limit);
    }

    public void setOffset(int offset) {
        checkThread();
        if (this.offsetPosition == -1) {
            throw new IllegalStateException("Offset must be set with QueryBuilder before it can be used here");
        }
        this.parameters[this.offsetPosition] = Integer.toString(offset);
    }
}
