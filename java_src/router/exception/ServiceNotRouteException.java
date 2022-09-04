package router.exception;

import android.support.p001v4.app.NotificationCompat;
/* loaded from: classes2.dex */
public class ServiceNotRouteException extends NotRouteException {
    public ServiceNotRouteException(String pattern) {
        super(NotificationCompat.CATEGORY_SERVICE, pattern);
    }
}
