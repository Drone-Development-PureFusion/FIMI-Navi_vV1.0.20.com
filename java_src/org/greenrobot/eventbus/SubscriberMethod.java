package org.greenrobot.eventbus;

import ch.qos.logback.core.CoreConstants;
import java.lang.reflect.Method;
/* loaded from: classes2.dex */
public class SubscriberMethod {
    final Class<?> eventType;
    final Method method;
    String methodString;
    final int priority;
    final boolean sticky;
    final ThreadMode threadMode;

    public SubscriberMethod(Method method, Class<?> eventType, ThreadMode threadMode, int priority, boolean sticky) {
        this.method = method;
        this.threadMode = threadMode;
        this.eventType = eventType;
        this.priority = priority;
        this.sticky = sticky;
    }

    public boolean equals(Object other) {
        if (other == this) {
            return true;
        }
        if (other instanceof SubscriberMethod) {
            checkMethodString();
            SubscriberMethod otherSubscriberMethod = (SubscriberMethod) other;
            otherSubscriberMethod.checkMethodString();
            return this.methodString.equals(otherSubscriberMethod.methodString);
        }
        return false;
    }

    private synchronized void checkMethodString() {
        if (this.methodString == null) {
            StringBuilder builder = new StringBuilder(64);
            builder.append(this.method.getDeclaringClass().getName());
            builder.append('#').append(this.method.getName());
            builder.append(CoreConstants.LEFT_PARENTHESIS_CHAR).append(this.eventType.getName());
            this.methodString = builder.toString();
        }
    }

    public int hashCode() {
        return this.method.hashCode();
    }
}
