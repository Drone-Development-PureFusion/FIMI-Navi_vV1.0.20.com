package com.twitter.sdk.android.core.models;

import com.google.gson.JsonDeserializationContext;
import com.google.gson.JsonDeserializer;
import com.google.gson.JsonElement;
import com.google.gson.JsonObject;
import com.google.gson.JsonParseException;
import com.google.gson.JsonSerializationContext;
import com.google.gson.JsonSerializer;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes2.dex */
public class BindingValuesAdapter implements JsonSerializer<BindingValues>, JsonDeserializer<BindingValues> {
    private static final String BOOLEAN_MEMBER = "boolean_value";
    private static final String BOOLEAN_TYPE = "BOOLEAN";
    private static final String IMAGE_TYPE = "IMAGE";
    private static final String IMAGE_VALUE_MEMBER = "image_value";
    private static final String STRING_TYPE = "STRING";
    private static final String TYPE_MEMBER = "type";
    private static final String TYPE_VALUE_MEMBER = "string_value";
    private static final String USER_TYPE = "USER";
    private static final String USER_VALUE_MEMBER = "user_value";

    @Override // com.google.gson.JsonSerializer
    public JsonElement serialize(BindingValues src, Type typeOfSrc, JsonSerializationContext context) {
        return null;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // com.google.gson.JsonDeserializer
    /* renamed from: deserialize */
    public BindingValues mo1871deserialize(JsonElement json, Type typeOfT, JsonDeserializationContext context) throws JsonParseException {
        if (!json.isJsonObject()) {
            return new BindingValues();
        }
        JsonObject obj = json.getAsJsonObject();
        Set<Map.Entry<String, JsonElement>> members = obj.entrySet();
        Map<String, Object> bindingHash = new HashMap<>(32);
        for (Map.Entry<String, JsonElement> member : members) {
            String key = member.getKey();
            JsonObject memberObj = member.getValue().getAsJsonObject();
            Object value = getValue(memberObj, context);
            bindingHash.put(key, value);
        }
        return new BindingValues(bindingHash);
    }

    Object getValue(JsonObject obj, JsonDeserializationContext context) {
        JsonElement typeObj = obj.get("type");
        if (typeObj == null || !typeObj.isJsonPrimitive()) {
            return null;
        }
        String asString = typeObj.getAsString();
        char c = 65535;
        switch (asString.hashCode()) {
            case -1838656495:
                if (asString.equals(STRING_TYPE)) {
                    c = 0;
                    break;
                }
                break;
            case 2614219:
                if (asString.equals("USER")) {
                    c = 2;
                    break;
                }
                break;
            case 69775675:
                if (asString.equals("IMAGE")) {
                    c = 1;
                    break;
                }
                break;
            case 782694408:
                if (asString.equals(BOOLEAN_TYPE)) {
                    c = 3;
                    break;
                }
                break;
        }
        switch (c) {
            case 0:
                return context.deserialize(obj.get(TYPE_VALUE_MEMBER), String.class);
            case 1:
                return context.deserialize(obj.get(IMAGE_VALUE_MEMBER), ImageValue.class);
            case 2:
                return context.deserialize(obj.get(USER_VALUE_MEMBER), UserValue.class);
            case 3:
                return context.deserialize(obj.get(BOOLEAN_MEMBER), Boolean.class);
            default:
                return null;
        }
    }
}
