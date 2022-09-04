package ch.qos.logback.classic.p005db.names;
/* renamed from: ch.qos.logback.classic.db.names.DefaultDBNameResolver */
/* loaded from: classes.dex */
public class DefaultDBNameResolver implements DBNameResolver {
    @Override // ch.qos.logback.classic.p005db.names.DBNameResolver
    public <N extends Enum<?>> String getColumnName(N n) {
        return n.toString().toLowerCase();
    }

    @Override // ch.qos.logback.classic.p005db.names.DBNameResolver
    public <N extends Enum<?>> String getTableName(N n) {
        return n.toString().toLowerCase();
    }
}
