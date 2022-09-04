package router.rule;

import android.app.Service;
import router.exception.ServiceNotRouteException;
/* loaded from: classes2.dex */
public class ServiceRule extends BaseIntentRule<Service> {
    public static final String SERVICE_SCHEME = "service://";

    @Override // router.rule.BaseIntentRule
    public void throwException(String pattern) {
        throw new ServiceNotRouteException(pattern);
    }
}
