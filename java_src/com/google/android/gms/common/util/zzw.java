package com.google.android.gms.common.util;

import android.support.annotation.Nullable;
import java.util.regex.Pattern;
/* loaded from: classes2.dex */
public final class zzw {
    private static final Pattern zzglh = Pattern.compile("\\$\\{(.*?)\\}");

    public static boolean zzhb(@Nullable String str) {
        return str == null || str.trim().isEmpty();
    }
}
