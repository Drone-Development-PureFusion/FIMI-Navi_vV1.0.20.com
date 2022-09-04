package com.twitter.sdk.android.core.internal.persistence;

import android.annotation.SuppressLint;
import android.content.SharedPreferences;
/* loaded from: classes2.dex */
public class PreferenceStoreStrategy<T> implements PersistenceStrategy<T> {
    private final String key;
    private final SerializationStrategy<T> serializer;
    private final PreferenceStore store;

    public PreferenceStoreStrategy(PreferenceStore store, SerializationStrategy<T> serializer, String preferenceKey) {
        this.store = store;
        this.serializer = serializer;
        this.key = preferenceKey;
    }

    @Override // com.twitter.sdk.android.core.internal.persistence.PersistenceStrategy
    @SuppressLint({"CommitPrefEdits"})
    public void save(T object) {
        this.store.save(this.store.edit().putString(this.key, this.serializer.serialize(object)));
    }

    @Override // com.twitter.sdk.android.core.internal.persistence.PersistenceStrategy
    public T restore() {
        SharedPreferences store = this.store.get();
        return this.serializer.mo1866deserialize(store.getString(this.key, null));
    }

    @Override // com.twitter.sdk.android.core.internal.persistence.PersistenceStrategy
    @SuppressLint({"CommitPrefEdits"})
    public void clear() {
        this.store.edit().remove(this.key).commit();
    }
}
