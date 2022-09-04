package ch.qos.logback.core.util;

import ch.qos.logback.core.Context;
import ch.qos.logback.core.CoreConstants;
import ch.qos.logback.core.helpers.ThrowableToStringArray;
import ch.qos.logback.core.status.Status;
import ch.qos.logback.core.status.StatusManager;
import ch.qos.logback.core.status.StatusUtil;
import java.io.PrintStream;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes.dex */
public class StatusPrinter {

    /* renamed from: ps */
    private static PrintStream f51ps = System.out;
    static CachingDateFormatter cachingDateFormat = new CachingDateFormatter("HH:mm:ss,SSS");

    private static void appendThrowable(StringBuilder sb, Throwable th) {
        String[] convert;
        for (String str : ThrowableToStringArray.convert(th)) {
            if (!str.startsWith(CoreConstants.CAUSED_BY)) {
                if (Character.isDigit(str.charAt(0))) {
                    sb.append("\t... ");
                } else {
                    sb.append("\tat ");
                }
            }
            sb.append(str).append(CoreConstants.LINE_SEPARATOR);
        }
    }

    public static void buildStr(StringBuilder sb, String str, Status status) {
        String str2 = status.hasChildren() ? str + "+ " : str + "|-";
        if (cachingDateFormat != null) {
            sb.append(cachingDateFormat.format(status.getDate().longValue())).append(" ");
        }
        sb.append(str2).append(status).append(CoreConstants.LINE_SEPARATOR);
        if (status.getThrowable() != null) {
            appendThrowable(sb, status.getThrowable());
        }
        if (status.hasChildren()) {
            Iterator<Status> it = status.iterator();
            while (it.hasNext()) {
                buildStr(sb, str + "  ", it.next());
            }
        }
    }

    private static void buildStrFromStatusList(StringBuilder sb, List<Status> list) {
        if (list == null) {
            return;
        }
        for (Status status : list) {
            buildStr(sb, "", status);
        }
    }

    public static void print(Context context) {
        print(context, 0L);
    }

    public static void print(Context context, long j) {
        if (context == null) {
            throw new IllegalArgumentException("Context argument cannot be null");
        }
        StatusManager statusManager = context.getStatusManager();
        if (statusManager == null) {
            f51ps.println("WARN: Context named \"" + context.getName() + "\" has no status manager");
        } else {
            print(statusManager, j);
        }
    }

    public static void print(StatusManager statusManager) {
        print(statusManager, 0L);
    }

    public static void print(StatusManager statusManager, long j) {
        StringBuilder sb = new StringBuilder();
        buildStrFromStatusList(sb, StatusUtil.filterStatusListByTimeThreshold(statusManager.getCopyOfStatusList(), j));
        f51ps.println(sb.toString());
    }

    public static void print(List<Status> list) {
        StringBuilder sb = new StringBuilder();
        buildStrFromStatusList(sb, list);
        f51ps.println(sb.toString());
    }

    public static void printIfErrorsOccured(Context context) {
        if (context == null) {
            throw new IllegalArgumentException("Context argument cannot be null");
        }
        StatusManager statusManager = context.getStatusManager();
        if (statusManager == null) {
            f51ps.println("WARN: Context named \"" + context.getName() + "\" has no status manager");
        } else if (new StatusUtil(context).getHighestLevel(0L) != 2) {
        } else {
            print(statusManager);
        }
    }

    public static void printInCaseOfErrorsOrWarnings(Context context) {
        printInCaseOfErrorsOrWarnings(context, 0L);
    }

    public static void printInCaseOfErrorsOrWarnings(Context context, long j) {
        if (context == null) {
            throw new IllegalArgumentException("Context argument cannot be null");
        }
        StatusManager statusManager = context.getStatusManager();
        if (statusManager == null) {
            f51ps.println("WARN: Context named \"" + context.getName() + "\" has no status manager");
        } else if (new StatusUtil(context).getHighestLevel(j) < 1) {
        } else {
            print(statusManager, j);
        }
    }

    public static void setPrintStream(PrintStream printStream) {
        f51ps = printStream;
    }
}
