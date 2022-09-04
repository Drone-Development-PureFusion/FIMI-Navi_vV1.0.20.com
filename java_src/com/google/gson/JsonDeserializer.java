package com.google.gson;

import java.lang.reflect.Type;
/* loaded from: classes2.dex */
public interface JsonDeserializer<T> {
    /* renamed from: deserialize */
    T mo1871deserialize(JsonElement jsonElement, Type type, JsonDeserializationContext jsonDeserializationContext) throws JsonParseException;
}
