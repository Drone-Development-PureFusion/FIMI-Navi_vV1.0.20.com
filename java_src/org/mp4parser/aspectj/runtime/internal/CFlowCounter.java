package org.mp4parser.aspectj.runtime.internal;

import com.facebook.internal.ServerProtocol;
import org.mp4parser.aspectj.runtime.internal.cflowstack.ThreadCounter;
import org.mp4parser.aspectj.runtime.internal.cflowstack.ThreadStackFactory;
import org.mp4parser.aspectj.runtime.internal.cflowstack.ThreadStackFactoryImpl;
import org.mp4parser.aspectj.runtime.internal.cflowstack.ThreadStackFactoryImpl11;
/* loaded from: classes2.dex */
public class CFlowCounter {
    private static ThreadStackFactory tsFactory;
    private ThreadCounter flowHeightHandler = tsFactory.getNewThreadCounter();

    static {
        selectFactoryForVMVersion();
    }

    public void inc() {
        this.flowHeightHandler.inc();
    }

    public void dec() {
        this.flowHeightHandler.dec();
        if (!this.flowHeightHandler.isNotZero()) {
            this.flowHeightHandler.removeThreadCounter();
        }
    }

    public boolean isValid() {
        return this.flowHeightHandler.isNotZero();
    }

    private static ThreadStackFactory getThreadLocalStackFactory() {
        return new ThreadStackFactoryImpl();
    }

    private static ThreadStackFactory getThreadLocalStackFactoryFor11() {
        return new ThreadStackFactoryImpl11();
    }

    private static void selectFactoryForVMVersion() {
        boolean useThreadLocalImplementation;
        String override = getSystemPropertyWithoutSecurityException("aspectj.runtime.cflowstack.usethreadlocal", "unspecified");
        if (override.equals("unspecified")) {
            String v = System.getProperty("java.class.version", "0.0");
            useThreadLocalImplementation = v.compareTo("46.0") >= 0;
        } else {
            useThreadLocalImplementation = override.equals("yes") || override.equals(ServerProtocol.DIALOG_RETURN_SCOPES_TRUE);
        }
        if (useThreadLocalImplementation) {
            tsFactory = getThreadLocalStackFactory();
        } else {
            tsFactory = getThreadLocalStackFactoryFor11();
        }
    }

    private static String getSystemPropertyWithoutSecurityException(String aPropertyName, String aDefaultValue) {
        try {
            return System.getProperty(aPropertyName, aDefaultValue);
        } catch (SecurityException e) {
            return aDefaultValue;
        }
    }

    public static String getThreadStackFactoryClassName() {
        return tsFactory.getClass().getName();
    }
}
