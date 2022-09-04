package p021rx.internal.util;

import p021rx.plugins.RxJavaPlugins;
/* renamed from: rx.internal.util.RxJavaPluginUtils */
/* loaded from: classes2.dex */
public final class RxJavaPluginUtils {
    public static void handleException(Throwable e) {
        try {
            RxJavaPlugins.getInstance().getErrorHandler().handleError(e);
        } catch (Throwable pluginException) {
            handlePluginException(pluginException);
        }
    }

    private static void handlePluginException(Throwable pluginException) {
        System.err.println("RxJavaErrorHandler threw an Exception. It shouldn't. => " + pluginException.getMessage());
        pluginException.printStackTrace();
    }
}
