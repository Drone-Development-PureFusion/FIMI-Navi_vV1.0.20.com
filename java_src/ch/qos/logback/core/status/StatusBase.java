package ch.qos.logback.core.status;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public abstract class StatusBase implements Status {
    private static final List<Status> EMPTY_LIST = new ArrayList(0);
    List<Status> childrenList;
    long date;
    int level;
    final String message;
    final Object origin;
    Throwable throwable;

    /* JADX INFO: Access modifiers changed from: package-private */
    public StatusBase(int i, String str, Object obj) {
        this(i, str, obj, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public StatusBase(int i, String str, Object obj, Throwable th) {
        this.level = i;
        this.message = str;
        this.origin = obj;
        this.throwable = th;
        this.date = System.currentTimeMillis();
    }

    @Override // ch.qos.logback.core.status.Status
    public synchronized void add(Status status) {
        if (status == null) {
            throw new NullPointerException("Null values are not valid Status.");
        }
        if (this.childrenList == null) {
            this.childrenList = new ArrayList();
        }
        this.childrenList.add(status);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            StatusBase statusBase = (StatusBase) obj;
            if (this.level != statusBase.level) {
                return false;
            }
            return this.message == null ? statusBase.message == null : this.message.equals(statusBase.message);
        }
        return false;
    }

    @Override // ch.qos.logback.core.status.Status
    public Long getDate() {
        return Long.valueOf(this.date);
    }

    @Override // ch.qos.logback.core.status.Status
    public synchronized int getEffectiveLevel() {
        int i;
        int i2 = this.level;
        Iterator<Status> it = iterator();
        i = i2;
        while (it.hasNext()) {
            int effectiveLevel = it.next().getEffectiveLevel();
            if (effectiveLevel > i) {
                i = effectiveLevel;
            }
        }
        return i;
    }

    @Override // ch.qos.logback.core.status.Status
    public int getLevel() {
        return this.level;
    }

    @Override // ch.qos.logback.core.status.Status
    public String getMessage() {
        return this.message;
    }

    @Override // ch.qos.logback.core.status.Status
    public Object getOrigin() {
        return this.origin;
    }

    @Override // ch.qos.logback.core.status.Status
    public Throwable getThrowable() {
        return this.throwable;
    }

    @Override // ch.qos.logback.core.status.Status
    public synchronized boolean hasChildren() {
        boolean z;
        if (this.childrenList != null) {
            if (this.childrenList.size() > 0) {
                z = true;
            }
        }
        z = false;
        return z;
    }

    public int hashCode() {
        return (this.message == null ? 0 : this.message.hashCode()) + ((this.level + 31) * 31);
    }

    @Override // ch.qos.logback.core.status.Status
    public synchronized Iterator<Status> iterator() {
        return this.childrenList != null ? this.childrenList.iterator() : EMPTY_LIST.iterator();
    }

    @Override // ch.qos.logback.core.status.Status
    public synchronized boolean remove(Status status) {
        return this.childrenList == null ? false : this.childrenList.remove(status);
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        switch (getEffectiveLevel()) {
            case 0:
                stringBuffer.append("INFO");
                break;
            case 1:
                stringBuffer.append("WARN");
                break;
            case 2:
                stringBuffer.append("ERROR");
                break;
        }
        if (this.origin != null) {
            stringBuffer.append(" in ");
            stringBuffer.append(this.origin);
            stringBuffer.append(" -");
        }
        stringBuffer.append(" ");
        stringBuffer.append(this.message);
        if (this.throwable != null) {
            stringBuffer.append(" ");
            stringBuffer.append(this.throwable);
        }
        return stringBuffer.toString();
    }
}
