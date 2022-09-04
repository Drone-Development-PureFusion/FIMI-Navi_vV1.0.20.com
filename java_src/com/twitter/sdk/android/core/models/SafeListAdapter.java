package com.twitter.sdk.android.core.models;

import com.google.gson.Gson;
import com.google.gson.TypeAdapter;
import com.google.gson.TypeAdapterFactory;
import com.google.gson.reflect.TypeToken;
import com.google.gson.stream.JsonReader;
import com.google.gson.stream.JsonWriter;
import java.io.IOException;
import java.util.Collections;
import java.util.List;
/* loaded from: classes2.dex */
public class SafeListAdapter implements TypeAdapterFactory {
    @Override // com.google.gson.TypeAdapterFactory
    public <T> TypeAdapter<T> create(Gson gson, final TypeToken<T> tokenType) {
        final TypeAdapter<T> delegate = gson.getDelegateAdapter(this, tokenType);
        return new TypeAdapter<T>() { // from class: com.twitter.sdk.android.core.models.SafeListAdapter.1
            @Override // com.google.gson.TypeAdapter
            public void write(JsonWriter out, T value) throws IOException {
                delegate.write(out, value);
            }

            /* JADX WARN: Type inference failed for: r1v0, types: [T, java.lang.Object] */
            /* JADX WARN: Type inference failed for: r1v1, types: [java.util.List, T] */
            /* JADX WARN: Type inference failed for: r1v2, types: [java.util.List, T] */
            @Override // com.google.gson.TypeAdapter
            /* renamed from: read */
            public T mo1847read(JsonReader arg0) throws IOException {
                ?? mo1847read = delegate.mo1847read(arg0);
                if (List.class.isAssignableFrom(tokenType.getRawType())) {
                    if (mo1847read == 0) {
                        return Collections.EMPTY_LIST;
                    }
                    List<?> list = (List) mo1847read;
                    return Collections.unmodifiableList(list);
                }
                return mo1847read;
            }
        };
    }
}
