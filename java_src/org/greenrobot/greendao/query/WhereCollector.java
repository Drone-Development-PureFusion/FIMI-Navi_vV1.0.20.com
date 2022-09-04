package org.greenrobot.greendao.query;

import ch.qos.logback.core.CoreConstants;
import java.util.ArrayList;
import java.util.List;
import java.util.ListIterator;
import org.greenrobot.greendao.AbstractDao;
import org.greenrobot.greendao.DaoException;
import org.greenrobot.greendao.Property;
import org.greenrobot.greendao.query.WhereCondition;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class WhereCollector<T> {
    private final AbstractDao<T, ?> dao;
    private final String tablePrefix;
    private final List<WhereCondition> whereConditions = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    public WhereCollector(AbstractDao<T, ?> dao, String tablePrefix) {
        this.dao = dao;
        this.tablePrefix = tablePrefix;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void add(WhereCondition cond, WhereCondition... condMore) {
        checkCondition(cond);
        this.whereConditions.add(cond);
        for (WhereCondition whereCondition : condMore) {
            checkCondition(whereCondition);
            this.whereConditions.add(whereCondition);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public WhereCondition combineWhereConditions(String combineOp, WhereCondition cond1, WhereCondition cond2, WhereCondition... condMore) {
        StringBuilder builder = new StringBuilder("(");
        List<Object> combinedValues = new ArrayList<>();
        addCondition(builder, combinedValues, cond1);
        builder.append(combineOp);
        addCondition(builder, combinedValues, cond2);
        for (WhereCondition cond : condMore) {
            builder.append(combineOp);
            addCondition(builder, combinedValues, cond);
        }
        builder.append(CoreConstants.RIGHT_PARENTHESIS_CHAR);
        return new WhereCondition.StringCondition(builder.toString(), combinedValues.toArray());
    }

    void addCondition(StringBuilder builder, List<Object> values, WhereCondition condition) {
        checkCondition(condition);
        condition.appendTo(builder, this.tablePrefix);
        condition.appendValuesTo(values);
    }

    void checkCondition(WhereCondition whereCondition) {
        if (whereCondition instanceof WhereCondition.PropertyCondition) {
            checkProperty(((WhereCondition.PropertyCondition) whereCondition).property);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void checkProperty(Property property) {
        if (this.dao != null) {
            Property[] properties = this.dao.getProperties();
            boolean found = false;
            int length = properties.length;
            int i = 0;
            while (true) {
                if (i >= length) {
                    break;
                }
                Property property2 = properties[i];
                if (property != property2) {
                    i++;
                } else {
                    found = true;
                    break;
                }
            }
            if (!found) {
                throw new DaoException("Property '" + property.name + "' is not part of " + this.dao);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void appendWhereClause(StringBuilder builder, String tablePrefixOrNull, List<Object> values) {
        ListIterator<WhereCondition> iter = this.whereConditions.listIterator();
        while (iter.hasNext()) {
            if (iter.hasPrevious()) {
                builder.append(" AND ");
            }
            WhereCondition condition = iter.next();
            condition.appendTo(builder, tablePrefixOrNull);
            condition.appendValuesTo(values);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean isEmpty() {
        return this.whereConditions.isEmpty();
    }
}
