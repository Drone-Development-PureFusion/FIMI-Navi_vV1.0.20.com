package router;

import android.content.Context;
import java.util.HashMap;
import java.util.Set;
import router.exception.NotRouteException;
import router.rule.ActivityRule;
import router.rule.ReceiverRule;
import router.rule.Rule;
import router.rule.ServiceRule;
/* loaded from: classes2.dex */
public class RouterInternal {
    private static RouterInternal sInstance;
    private HashMap<String, Rule> mRules = new HashMap<>();

    private RouterInternal() {
        initDefaultRouter();
    }

    private void initDefaultRouter() {
        addRule(ActivityRule.ACTIVITY_SCHEME, new ActivityRule());
        addRule(ServiceRule.SERVICE_SCHEME, new ServiceRule());
        addRule(ReceiverRule.RECEIVER_SCHEME, new ReceiverRule());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static RouterInternal get() {
        if (sInstance == null) {
            synchronized (RouterInternal.class) {
                if (sInstance == null) {
                    sInstance = new RouterInternal();
                }
            }
        }
        return sInstance;
    }

    public final RouterInternal addRule(String scheme, Rule rule) {
        this.mRules.put(scheme, rule);
        return this;
    }

    private <T, V> Rule<T, V> getRule(String pattern) {
        HashMap<String, Rule> rules = this.mRules;
        Set<String> keySet = rules.keySet();
        for (String scheme : keySet) {
            if (pattern.startsWith(scheme)) {
                Rule<T, V> rule = rules.get(scheme);
                return rule;
            }
        }
        return null;
    }

    public final <T> RouterInternal router(String pattern, Class<T> klass) {
        Rule<T, ?> rule = getRule(pattern);
        if (rule == null) {
            throw new NotRouteException("unknown", pattern);
        }
        rule.router(pattern, klass);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final <V> V invoke(Context ctx, String pattern) {
        Rule<?, V> rule = getRule(pattern);
        if (rule == null) {
            throw new NotRouteException("unknown", pattern);
        }
        return rule.mo1979invoke(ctx, pattern);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean resolveRouter(String pattern) {
        Rule<?, ?> rule = getRule(pattern);
        return rule != null && rule.resolveRule(pattern);
    }
}
