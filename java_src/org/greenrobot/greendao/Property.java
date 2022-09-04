package org.greenrobot.greendao;

import ch.qos.logback.core.CoreConstants;
import java.util.Collection;
import org.greenrobot.greendao.internal.SqlUtils;
import org.greenrobot.greendao.query.WhereCondition;
/* loaded from: classes2.dex */
public class Property {
    public final String columnName;
    public final String name;
    public final int ordinal;
    public final boolean primaryKey;
    public final Class<?> type;

    public Property(int ordinal, Class<?> type, String name, boolean primaryKey, String columnName) {
        this.ordinal = ordinal;
        this.type = type;
        this.name = name;
        this.primaryKey = primaryKey;
        this.columnName = columnName;
    }

    /* renamed from: eq */
    public WhereCondition m16eq(Object value) {
        return new WhereCondition.PropertyCondition(this, "=?", value);
    }

    public WhereCondition notEq(Object value) {
        return new WhereCondition.PropertyCondition(this, "<>?", value);
    }

    public WhereCondition like(String value) {
        return new WhereCondition.PropertyCondition(this, " LIKE ?", value);
    }

    public WhereCondition between(Object value1, Object value2) {
        Object[] values = {value1, value2};
        return new WhereCondition.PropertyCondition(this, " BETWEEN ? AND ?", values);
    }

    /* renamed from: in */
    public WhereCondition m12in(Object... inValues) {
        StringBuilder condition = new StringBuilder(" IN (");
        SqlUtils.appendPlaceholders(condition, inValues.length).append(CoreConstants.RIGHT_PARENTHESIS_CHAR);
        return new WhereCondition.PropertyCondition(this, condition.toString(), inValues);
    }

    /* renamed from: in */
    public WhereCondition m13in(Collection<?> inValues) {
        return m12in(inValues.toArray());
    }

    public WhereCondition notIn(Object... notInValues) {
        StringBuilder condition = new StringBuilder(" NOT IN (");
        SqlUtils.appendPlaceholders(condition, notInValues.length).append(CoreConstants.RIGHT_PARENTHESIS_CHAR);
        return new WhereCondition.PropertyCondition(this, condition.toString(), notInValues);
    }

    public WhereCondition notIn(Collection<?> notInValues) {
        return notIn(notInValues.toArray());
    }

    /* renamed from: gt */
    public WhereCondition m14gt(Object value) {
        return new WhereCondition.PropertyCondition(this, ">?", value);
    }

    /* renamed from: lt */
    public WhereCondition m10lt(Object value) {
        return new WhereCondition.PropertyCondition(this, "<?", value);
    }

    /* renamed from: ge */
    public WhereCondition m15ge(Object value) {
        return new WhereCondition.PropertyCondition(this, ">=?", value);
    }

    /* renamed from: le */
    public WhereCondition m11le(Object value) {
        return new WhereCondition.PropertyCondition(this, "<=?", value);
    }

    public WhereCondition isNull() {
        return new WhereCondition.PropertyCondition(this, " IS NULL");
    }

    public WhereCondition isNotNull() {
        return new WhereCondition.PropertyCondition(this, " IS NOT NULL");
    }
}
