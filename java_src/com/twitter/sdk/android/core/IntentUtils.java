package com.twitter.sdk.android.core;

import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import java.util.List;
/* loaded from: classes2.dex */
public class IntentUtils {
    public static boolean isActivityAvailable(Context context, Intent intent) {
        PackageManager packageManager = context.getPackageManager();
        List<ResolveInfo> activities = packageManager.queryIntentActivities(intent, 0);
        return !activities.isEmpty();
    }

    public static boolean safeStartActivity(Context context, Intent intent) {
        if (isActivityAvailable(context, intent)) {
            context.startActivity(intent);
            return true;
        }
        return false;
    }
}
