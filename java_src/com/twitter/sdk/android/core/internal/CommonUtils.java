package com.twitter.sdk.android.core.internal;

import android.content.Context;
import android.content.res.Resources;
import com.twitter.sdk.android.core.Twitter;
import java.io.Closeable;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.util.Scanner;
/* loaded from: classes2.dex */
public class CommonUtils {
    static final boolean TRACE_ENABLED_DEFAULT = false;
    static final String TRACE_ENABLED_RESOURCE_NAME = "com.twitter.sdk.android.TRACE_ENABLED";
    private static Boolean clsTrace;

    public static String streamToString(InputStream is) throws IOException {
        Scanner s = new Scanner(is).useDelimiter("\\A");
        return s.hasNext() ? s.next() : "";
    }

    public static void copyStream(InputStream is, OutputStream os, byte[] buffer) throws IOException {
        while (true) {
            int count = is.read(buffer);
            if (count != -1) {
                os.write(buffer, 0, count);
            } else {
                return;
            }
        }
    }

    public static void closeQuietly(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (RuntimeException rethrown) {
                throw rethrown;
            } catch (Exception e) {
            }
        }
    }

    public static void closeOrLog(Closeable c, String message) {
        if (c != null) {
            try {
                c.close();
            } catch (IOException e) {
                Twitter.getLogger().mo1290e("Twitter", message, e);
            }
        }
    }

    static String getResourcePackageName(Context context) {
        int iconId = context.getApplicationContext().getApplicationInfo().icon;
        return iconId > 0 ? context.getResources().getResourcePackageName(iconId) : context.getPackageName();
    }

    static int getResourcesIdentifier(Context context, String key, String resourceType) {
        Resources resources = context.getResources();
        return resources.getIdentifier(key, resourceType, getResourcePackageName(context));
    }

    public static boolean getBooleanResourceValue(Context context, String key, boolean defaultValue) {
        Resources resources;
        if (context != null && (resources = context.getResources()) != null) {
            int id = getResourcesIdentifier(context, key, "bool");
            if (id > 0) {
                return resources.getBoolean(id);
            }
            int id2 = getResourcesIdentifier(context, key, "string");
            if (id2 > 0) {
                return Boolean.parseBoolean(context.getString(id2));
            }
            return defaultValue;
        }
        return defaultValue;
    }

    public static String getStringResourceValue(Context context, String key, String defaultValue) {
        Resources resources;
        int id;
        if (context != null && (resources = context.getResources()) != null && (id = getResourcesIdentifier(context, key, "string")) > 0) {
            return resources.getString(id);
        }
        return defaultValue;
    }

    static boolean isClsTrace(Context context) {
        if (clsTrace == null) {
            clsTrace = Boolean.valueOf(getBooleanResourceValue(context, TRACE_ENABLED_RESOURCE_NAME, false));
        }
        return clsTrace.booleanValue();
    }

    public static void logControlled(Context context, String msg) {
        if (isClsTrace(context)) {
            Twitter.getLogger().mo1293d("Twitter", msg);
        }
    }

    public static void logControlledError(Context context, String msg, Throwable tr) {
        if (isClsTrace(context)) {
            Twitter.getLogger().mo1291e("Twitter", msg);
        }
    }

    public static void logControlled(Context context, int level, String tag, String msg) {
        if (isClsTrace(context)) {
            Twitter.getLogger().log(level, "Twitter", msg);
        }
    }

    public static void logOrThrowIllegalStateException(String logTag, String errorMsg) {
        if (Twitter.isDebug()) {
            throw new IllegalStateException(errorMsg);
        }
        Twitter.getLogger().mo1285w(logTag, errorMsg);
    }
}
