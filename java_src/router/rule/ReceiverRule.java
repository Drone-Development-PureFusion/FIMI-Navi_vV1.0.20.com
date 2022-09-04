package router.rule;

import android.content.BroadcastReceiver;
import router.exception.ReceiverNotRouteException;
/* loaded from: classes2.dex */
public class ReceiverRule extends BaseIntentRule<BroadcastReceiver> {
    public static final String RECEIVER_SCHEME = "receiver://";

    @Override // router.rule.BaseIntentRule
    public void throwException(String pattern) {
        throw new ReceiverNotRouteException(pattern);
    }
}
