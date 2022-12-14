package router.rule;

import android.app.Activity;
import router.exception.ActivityNotRouteException;
/* loaded from: classes2.dex */
public class ActivityRule extends BaseIntentRule<Activity> {
    public static final String ACTIVITY_SCHEME = "activity://";

    @Override // router.rule.BaseIntentRule
    public void throwException(String pattern) {
        throw new ActivityNotRouteException(pattern);
    }
}
