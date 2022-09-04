package com.twitter.sdk.android.core.models;

import java.util.Collections;
import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public final class ModelUtils {
    private ModelUtils() {
    }

    public static <T> List<T> getSafeList(List<T> entities) {
        return entities == null ? Collections.emptyList() : Collections.unmodifiableList(entities);
    }

    public static <K, V> Map<K, V> getSafeMap(Map<K, V> entities) {
        return entities == null ? Collections.emptyMap() : Collections.unmodifiableMap(entities);
    }
}
