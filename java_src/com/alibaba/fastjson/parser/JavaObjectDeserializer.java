package com.alibaba.fastjson.parser;

import com.alibaba.fastjson.parser.deserializer.ObjectDeserializer;
import java.lang.reflect.Array;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.util.ArrayList;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class JavaObjectDeserializer implements ObjectDeserializer {
    public static final JavaObjectDeserializer instance = new JavaObjectDeserializer();

    JavaObjectDeserializer() {
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(DefaultJSONParser parser, Type type, Object fieldName) {
        if (type instanceof GenericArrayType) {
            Type componentType = ((GenericArrayType) type).getGenericComponentType();
            if (componentType instanceof TypeVariable) {
                TypeVariable<?> componentVar = (TypeVariable) componentType;
                componentType = componentVar.getBounds()[0];
            }
            List<Object> list = new ArrayList<>();
            parser.parseArray(componentType, list);
            if (componentType instanceof Class) {
                Class<?> componentClass = (Class) componentType;
                T t = (T) ((Object[]) Array.newInstance(componentClass, list.size()));
                list.toArray(t);
                return t;
            }
            return (T) list.toArray();
        }
        return (T) parser.parse(fieldName);
    }
}
