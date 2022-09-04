package ch.qos.logback.core.joran.spi;
/* loaded from: classes.dex */
public class HostClassAndPropertyDouble {
    final Class<?> hostClass;
    final String propertyName;

    public HostClassAndPropertyDouble(Class<?> cls, String str) {
        this.hostClass = cls;
        this.propertyName = str;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            HostClassAndPropertyDouble hostClassAndPropertyDouble = (HostClassAndPropertyDouble) obj;
            if (this.hostClass == null) {
                if (hostClassAndPropertyDouble.hostClass != null) {
                    return false;
                }
            } else if (!this.hostClass.equals(hostClassAndPropertyDouble.hostClass)) {
                return false;
            }
            return this.propertyName == null ? hostClassAndPropertyDouble.propertyName == null : this.propertyName.equals(hostClassAndPropertyDouble.propertyName);
        }
        return false;
    }

    public Class<?> getHostClass() {
        return this.hostClass;
    }

    public String getPropertyName() {
        return this.propertyName;
    }

    public int hashCode() {
        int i = 0;
        int hashCode = ((this.hostClass == null ? 0 : this.hostClass.hashCode()) + 31) * 31;
        if (this.propertyName != null) {
            i = this.propertyName.hashCode();
        }
        return hashCode + i;
    }
}
