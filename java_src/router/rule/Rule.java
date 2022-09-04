package router.rule;

import android.content.Context;
/* loaded from: classes2.dex */
public interface Rule<T, V> {
    /* renamed from: invoke */
    V mo1979invoke(Context context, String str);

    boolean resolveRule(String str);

    void router(String str, Class<T> cls);
}
