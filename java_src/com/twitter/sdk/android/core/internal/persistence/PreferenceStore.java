package com.twitter.sdk.android.core.internal.persistence;

import android.content.SharedPreferences;
/* loaded from: classes2.dex */
public interface PreferenceStore {
    SharedPreferences.Editor edit();

    SharedPreferences get();

    boolean save(SharedPreferences.Editor editor);
}
