package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import java.io.IOException;
import java.lang.reflect.Type;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.SortedMap;
import java.util.TreeMap;
/* loaded from: classes.dex */
public final class MapSerializer implements ObjectSerializer {
    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(JSONSerializer serializer, Object object, Object fieldName, Type fieldType) throws IOException {
        Object entryKey;
        Object value;
        SerializeWriter out = serializer.out;
        if (object == null) {
            out.writeNull();
            return;
        }
        Map<?, ?> map = (Map) object;
        Class<?> mapClass = map.getClass();
        boolean containsKey = (mapClass == JSONObject.class || mapClass == HashMap.class || mapClass == LinkedHashMap.class) && map.containsKey(JSON.DEFAULT_TYPE_KEY);
        if ((out.features & SerializerFeature.SortField.mask) != 0 && !(map instanceof SortedMap) && !(map instanceof LinkedHashMap)) {
            try {
                map = new TreeMap<>((Map<? extends Object, ? extends Object>) map);
            } catch (Exception e) {
            }
        }
        if (serializer.references != null && serializer.references.containsKey(object)) {
            serializer.writeReference(object);
            return;
        }
        SerialContext parent = serializer.context;
        serializer.setContext(parent, object, fieldName, 0);
        try {
            out.write(123);
            serializer.incrementIndent();
            Class<?> preClazz = null;
            ObjectSerializer preWriter = null;
            boolean first = true;
            if ((out.features & SerializerFeature.WriteClassName.mask) != 0 && !containsKey) {
                out.writeFieldName(serializer.config.typeKey, false);
                out.writeString(object.getClass().getName());
                first = false;
            }
            for (Map.Entry entry : map.entrySet()) {
                Object value2 = entry.getValue();
                Object entryKey2 = entry.getKey();
                if (serializer.applyName(object, entryKey2) && serializer.apply(object, entryKey2, value2) && ((value = JSONSerializer.processValue(serializer, object, (entryKey = serializer.processKey(object, entryKey2, value2)), value2)) != null || (out.features & SerializerFeature.WriteMapNullValue.mask) != 0)) {
                    if (entryKey instanceof String) {
                        String key = (String) entryKey;
                        if (!first) {
                            out.write(44);
                        }
                        if ((out.features & SerializerFeature.PrettyFormat.mask) != 0) {
                            serializer.println();
                        }
                        out.writeFieldName(key, true);
                    } else {
                        if (!first) {
                            out.write(44);
                        }
                        if ((out.features & SerializerFeature.BrowserCompatible.mask) != 0 || (out.features & SerializerFeature.WriteNonStringKeyAsString.mask) != 0) {
                            String strEntryKey = JSON.toJSONString(entryKey);
                            serializer.write(strEntryKey);
                        } else {
                            serializer.write(entryKey);
                        }
                        out.write(58);
                    }
                    first = false;
                    if (value == null) {
                        out.writeNull();
                    } else {
                        Class<?> clazz = value.getClass();
                        if (clazz == preClazz) {
                            preWriter.write(serializer, value, entryKey, null);
                        } else {
                            preClazz = clazz;
                            preWriter = serializer.config.get(clazz);
                            preWriter.write(serializer, value, entryKey, null);
                        }
                    }
                }
            }
            serializer.context = parent;
            serializer.decrementIdent();
            if ((out.features & SerializerFeature.PrettyFormat.mask) != 0 && map.size() > 0) {
                serializer.println();
            }
            out.write(125);
        } catch (Throwable th) {
            serializer.context = parent;
            throw th;
        }
    }
}
