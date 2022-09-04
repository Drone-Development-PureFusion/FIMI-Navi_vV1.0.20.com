package org.apache.mina.core.session;

import ch.qos.logback.core.CoreConstants;
import java.io.Serializable;
/* loaded from: classes2.dex */
public final class AttributeKey implements Serializable {
    private static final long serialVersionUID = -583377473376683096L;
    private final String name;

    public AttributeKey(Class<?> source, String name) {
        this.name = source.getName() + CoreConstants.DOT + name + '@' + Integer.toHexString(hashCode());
    }

    public String toString() {
        return this.name;
    }

    public int hashCode() {
        int h = (this.name == null ? 0 : this.name.hashCode()) + 629;
        return h;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof AttributeKey)) {
            return false;
        }
        AttributeKey other = (AttributeKey) obj;
        return this.name.equals(other.name);
    }
}
