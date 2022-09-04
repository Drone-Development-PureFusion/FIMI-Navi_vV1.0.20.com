package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.JSONLexer;
import com.alibaba.fastjson.parser.deserializer.ObjectDeserializer;
import com.alibaba.fastjson.util.TypeUtils;
import java.io.IOException;
import java.lang.reflect.Array;
import java.lang.reflect.Type;
/* loaded from: classes.dex */
public final class ArrayCodec implements ObjectSerializer, ObjectDeserializer {
    public static final ArrayCodec instance = new ArrayCodec();

    private ArrayCodec() {
    }

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public final void write(JSONSerializer serializer, Object object, Object fieldName, Type fieldType) throws IOException {
        SerializeWriter out = serializer.out;
        Object[] array = (Object[]) object;
        if (object == null) {
            if ((out.features & SerializerFeature.WriteNullListAsEmpty.mask) != 0) {
                out.write("[]");
                return;
            } else {
                out.writeNull();
                return;
            }
        }
        int size = array.length;
        int end = size - 1;
        if (end == -1) {
            out.mo1630append((CharSequence) "[]");
            return;
        }
        SerialContext context = serializer.context;
        serializer.setContext(context, object, fieldName, 0);
        Class<?> preClazz = null;
        ObjectSerializer preWriter = null;
        try {
            out.write(91);
            if ((out.features & SerializerFeature.PrettyFormat.mask) != 0) {
                serializer.incrementIndent();
                serializer.println();
                for (int i = 0; i < size; i++) {
                    if (i != 0) {
                        out.write(44);
                        serializer.println();
                    }
                    serializer.write(array[i]);
                }
                serializer.decrementIdent();
                serializer.println();
                out.write(93);
                return;
            }
            for (int i2 = 0; i2 < end; i2++) {
                Object item = array[i2];
                if (item == null) {
                    out.mo1630append((CharSequence) "null,");
                } else {
                    if (serializer.references != null && serializer.references.containsKey(item)) {
                        serializer.writeReference(item);
                    } else {
                        Class<?> clazz = item.getClass();
                        if (clazz == preClazz) {
                            preWriter.write(serializer, item, null, null);
                        } else {
                            preClazz = clazz;
                            preWriter = serializer.config.get(clazz);
                            preWriter.write(serializer, item, null, null);
                        }
                    }
                    out.write(44);
                }
            }
            Object item2 = array[end];
            if (item2 == null) {
                out.mo1630append((CharSequence) "null]");
            } else {
                if (serializer.references != null && serializer.references.containsKey(item2)) {
                    serializer.writeReference(item2);
                } else {
                    serializer.writeWithFieldName(item2, Integer.valueOf(end));
                }
                out.write(93);
            }
        } finally {
            serializer.context = context;
        }
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(DefaultJSONParser parser, Type type, Object fieldName) {
        JSONLexer lexer = parser.lexer;
        int token = lexer.token();
        if (token == 8) {
            lexer.nextToken(16);
            return null;
        } else if (type == char[].class) {
            if (token == 4) {
                String val = lexer.stringVal();
                lexer.nextToken(16);
                return (T) val.toCharArray();
            } else if (token == 2) {
                Number val2 = lexer.integerValue();
                lexer.nextToken(16);
                return (T) val2.toString().toCharArray();
            } else {
                Object value = parser.parse();
                return (T) JSON.toJSONString(value).toCharArray();
            }
        } else if (token == 4) {
            T t = (T) lexer.bytesValue();
            lexer.nextToken(16);
            return t;
        } else {
            Class clazz = (Class) type;
            Class componentClass = clazz.getComponentType();
            JSONArray array = new JSONArray();
            parser.parseArray(componentClass, array, fieldName);
            return (T) toObjectArray(parser, componentClass, array);
        }
    }

    private <T> T toObjectArray(DefaultJSONParser parser, Class<?> componentType, JSONArray array) {
        Object element;
        if (array == null) {
            return null;
        }
        int size = array.size();
        T t = (T) Array.newInstance(componentType, size);
        for (int i = 0; i < size; i++) {
            Object value = array.get(i);
            if (value == array) {
                Array.set(t, i, t);
            } else {
                if (componentType.isArray()) {
                    if (componentType.isInstance(value)) {
                        element = value;
                    } else {
                        element = toObjectArray(parser, componentType, (JSONArray) value);
                    }
                } else {
                    element = TypeUtils.cast(value, (Class<Object>) componentType, parser.config);
                }
                Array.set(t, i, element);
            }
        }
        array.setRelatedArray(t);
        array.setComponentType(componentType);
        return t;
    }
}
