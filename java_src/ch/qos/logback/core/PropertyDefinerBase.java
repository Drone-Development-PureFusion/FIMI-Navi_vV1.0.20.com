package ch.qos.logback.core;

import ch.qos.logback.core.spi.ContextAwareBase;
import ch.qos.logback.core.spi.PropertyDefiner;
/* loaded from: classes.dex */
public abstract class PropertyDefinerBase extends ContextAwareBase implements PropertyDefiner {
    /* JADX INFO: Access modifiers changed from: protected */
    public static String booleanAsStr(boolean z) {
        return z ? Boolean.TRUE.toString() : Boolean.FALSE.toString();
    }
}
