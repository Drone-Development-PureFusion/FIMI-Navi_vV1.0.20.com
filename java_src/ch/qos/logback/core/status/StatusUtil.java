package ch.qos.logback.core.status;

import ch.qos.logback.core.Context;
import ch.qos.logback.core.CoreConstants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.regex.Pattern;
/* loaded from: classes.dex */
public class StatusUtil {

    /* renamed from: sm */
    StatusManager f49sm;

    public StatusUtil(Context context) {
        this.f49sm = context.getStatusManager();
    }

    public StatusUtil(StatusManager statusManager) {
        this.f49sm = statusManager;
    }

    public static boolean contextHasStatusListener(Context context) {
        List<StatusListener> copyOfStatusListenerList;
        StatusManager statusManager = context.getStatusManager();
        return (statusManager == null || (copyOfStatusListenerList = statusManager.getCopyOfStatusListenerList()) == null || copyOfStatusListenerList.size() == 0) ? false : true;
    }

    public static List<Status> filterStatusListByTimeThreshold(List<Status> list, long j) {
        ArrayList arrayList = new ArrayList();
        for (Status status : list) {
            if (status.getDate().longValue() >= j) {
                arrayList.add(status);
            }
        }
        return arrayList;
    }

    public void addError(Object obj, String str, Throwable th) {
        addStatus(new ErrorStatus(str, obj, th));
    }

    public void addInfo(Object obj, String str) {
        addStatus(new InfoStatus(str, obj));
    }

    public void addStatus(Status status) {
        if (this.f49sm != null) {
            this.f49sm.add(status);
        }
    }

    public void addWarn(Object obj, String str) {
        addStatus(new WarnStatus(str, obj));
    }

    public boolean containsException(Class<?> cls) {
        for (Status status : this.f49sm.getCopyOfStatusList()) {
            Throwable throwable = status.getThrowable();
            if (throwable != null && throwable.getClass().getName().equals(cls.getName())) {
                return true;
            }
        }
        return false;
    }

    public boolean containsMatch(int i, String str) {
        return containsMatch(0L, i, str);
    }

    public boolean containsMatch(long j, int i, String str) {
        List<Status> filterStatusListByTimeThreshold = filterStatusListByTimeThreshold(this.f49sm.getCopyOfStatusList(), j);
        Pattern compile = Pattern.compile(str);
        for (Status status : filterStatusListByTimeThreshold) {
            if (i == status.getLevel() && compile.matcher(status.getMessage()).lookingAt()) {
                return true;
            }
        }
        return false;
    }

    public boolean containsMatch(String str) {
        Pattern compile = Pattern.compile(str);
        for (Status status : this.f49sm.getCopyOfStatusList()) {
            if (compile.matcher(status.getMessage()).lookingAt()) {
                return true;
            }
        }
        return false;
    }

    public int getHighestLevel(long j) {
        int i = 0;
        Iterator<Status> it = filterStatusListByTimeThreshold(this.f49sm.getCopyOfStatusList(), j).iterator();
        while (true) {
            int i2 = i;
            if (it.hasNext()) {
                Status next = it.next();
                i = next.getLevel() > i2 ? next.getLevel() : i2;
            } else {
                return i2;
            }
        }
    }

    public boolean hasXMLParsingErrors(long j) {
        return containsMatch(j, 2, CoreConstants.XML_PARSING);
    }

    public boolean isErrorFree(long j) {
        return 2 > getHighestLevel(j);
    }

    public int matchCount(String str) {
        int i = 0;
        Pattern compile = Pattern.compile(str);
        Iterator<Status> it = this.f49sm.getCopyOfStatusList().iterator();
        while (true) {
            int i2 = i;
            if (it.hasNext()) {
                i = compile.matcher(it.next().getMessage()).lookingAt() ? i2 + 1 : i2;
            } else {
                return i2;
            }
        }
    }

    public boolean noXMLParsingErrorsOccurred(long j) {
        return !hasXMLParsingErrors(j);
    }

    public long timeOfLastReset() {
        List<Status> copyOfStatusList = this.f49sm.getCopyOfStatusList();
        if (copyOfStatusList == null) {
            return -1L;
        }
        for (int size = copyOfStatusList.size() - 1; size >= 0; size--) {
            Status status = copyOfStatusList.get(size);
            if (CoreConstants.RESET_MSG_PREFIX.equals(status.getMessage())) {
                return status.getDate().longValue();
            }
        }
        return -1L;
    }
}
