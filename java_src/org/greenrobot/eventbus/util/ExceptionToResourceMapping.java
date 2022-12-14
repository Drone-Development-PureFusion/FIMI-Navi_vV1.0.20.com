package org.greenrobot.eventbus.util;

import android.util.Log;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
import org.greenrobot.eventbus.EventBus;
/* loaded from: classes2.dex */
public class ExceptionToResourceMapping {
    public final Map<Class<? extends Throwable>, Integer> throwableToMsgIdMap = new HashMap();

    public Integer mapThrowable(Throwable throwable) {
        Throwable throwableToCheck = throwable;
        int depthToGo = 20;
        do {
            Integer resId = mapThrowableFlat(throwableToCheck);
            if (resId == null) {
                throwableToCheck = throwableToCheck.getCause();
                depthToGo--;
                if (depthToGo <= 0 || throwableToCheck == throwable) {
                    break;
                }
            } else {
                return resId;
            }
        } while (throwableToCheck != null);
        Log.d(EventBus.TAG, "No specific message ressource ID found for " + throwable);
        return null;
    }

    protected Integer mapThrowableFlat(Throwable throwable) {
        Class<?> cls = throwable.getClass();
        Integer resId = this.throwableToMsgIdMap.get(cls);
        if (resId == null) {
            Class<? extends Throwable> closestClass = null;
            Set<Map.Entry<Class<? extends Throwable>, Integer>> mappings = this.throwableToMsgIdMap.entrySet();
            for (Map.Entry<Class<? extends Throwable>, Integer> mapping : mappings) {
                Class<? extends Throwable> candidate = mapping.getKey();
                if (candidate.isAssignableFrom(cls) && (closestClass == null || closestClass.isAssignableFrom(candidate))) {
                    closestClass = candidate;
                    resId = mapping.getValue();
                }
            }
        }
        return resId;
    }

    public ExceptionToResourceMapping addMapping(Class<? extends Throwable> clazz, int msgId) {
        this.throwableToMsgIdMap.put(clazz, Integer.valueOf(msgId));
        return this;
    }
}
