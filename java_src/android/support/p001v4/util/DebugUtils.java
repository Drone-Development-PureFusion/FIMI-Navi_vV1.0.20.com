package android.support.p001v4.util;

import android.support.annotation.RestrictTo;
import ch.qos.logback.core.CoreConstants;
@RestrictTo({RestrictTo.Scope.LIBRARY_GROUP})
/* renamed from: android.support.v4.util.DebugUtils */
/* loaded from: classes.dex */
public class DebugUtils {
    public static void buildShortClassTag(Object cls, StringBuilder out) {
        int end;
        if (cls == null) {
            out.append("null");
            return;
        }
        String simpleName = cls.getClass().getSimpleName();
        if ((simpleName == null || simpleName.length() <= 0) && (end = (simpleName = cls.getClass().getName()).lastIndexOf(46)) > 0) {
            simpleName = simpleName.substring(end + 1);
        }
        out.append(simpleName);
        out.append(CoreConstants.CURLY_LEFT);
        out.append(Integer.toHexString(System.identityHashCode(cls)));
    }
}
