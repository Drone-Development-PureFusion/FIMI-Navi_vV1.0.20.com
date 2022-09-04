package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.JSONArray;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.deserializer.ObjectDeserializer;
import java.io.IOException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Collection;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.TreeSet;
/* loaded from: classes.dex */
public class CollectionCodec implements ObjectSerializer, ObjectDeserializer {
    public static final CollectionCodec instance = new CollectionCodec();

    private CollectionCodec() {
    }

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(JSONSerializer serializer, Object object, Object fieldName, Type fieldType) throws IOException {
        SerializeWriter out = serializer.out;
        if (object == null) {
            if ((out.features & SerializerFeature.WriteNullListAsEmpty.mask) != 0) {
                out.write("[]");
                return;
            } else {
                out.writeNull();
                return;
            }
        }
        Type elementType = null;
        if ((out.features & SerializerFeature.WriteClassName.mask) != 0 && (fieldType instanceof ParameterizedType)) {
            ParameterizedType param = (ParameterizedType) fieldType;
            elementType = param.getActualTypeArguments()[0];
        }
        Collection<?> collection = (Collection) object;
        SerialContext context = serializer.context;
        serializer.setContext(context, object, fieldName, 0);
        if ((out.features & SerializerFeature.WriteClassName.mask) != 0) {
            if (HashSet.class == collection.getClass()) {
                out.mo1630append((CharSequence) "Set");
            } else if (TreeSet.class == collection.getClass()) {
                out.mo1630append((CharSequence) "TreeSet");
            }
        }
        try {
            out.write(91);
            int i = 0;
            for (Object item : collection) {
                try {
                    int i2 = i + 1;
                    if (i != 0) {
                        out.write(44);
                    }
                    if (item == null) {
                        out.writeNull();
                        i = i2;
                    } else {
                        Class<?> clazz = item.getClass();
                        if (clazz == Integer.class) {
                            out.writeInt(((Integer) item).intValue());
                            i = i2;
                        } else if (clazz == Long.class) {
                            out.writeLong(((Long) item).longValue());
                            if ((out.features & SerializerFeature.WriteClassName.mask) != 0) {
                                out.write(76);
                                i = i2;
                            } else {
                                i = i2;
                            }
                        } else {
                            ObjectSerializer itemSerializer = serializer.config.get(clazz);
                            itemSerializer.write(serializer, item, Integer.valueOf(i2 - 1), elementType);
                            i = i2;
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    serializer.context = context;
                    throw th;
                }
            }
            out.write(93);
            serializer.context = context;
        } catch (Throwable th2) {
            th = th2;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [com.alibaba.fastjson.JSONArray, T, java.util.Collection] */
    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(DefaultJSONParser parser, Type type, Object fieldName) {
        Collection list;
        Type itemType;
        if (parser.lexer.token() == 8) {
            parser.lexer.nextToken(16);
            return null;
        } else if (type == JSONArray.class) {
            ?? r0 = (T) new JSONArray();
            parser.parseArray((Collection) r0);
            return r0;
        } else {
            Type t = type;
            while (!(t instanceof Class)) {
                if (t instanceof ParameterizedType) {
                    t = ((ParameterizedType) t).getRawType();
                } else {
                    throw new JSONException("TODO");
                }
            }
            Class<?> rawClass = (Class) t;
            if (rawClass == AbstractCollection.class || rawClass == Collection.class) {
                list = new ArrayList();
            } else if (rawClass.isAssignableFrom(HashSet.class)) {
                list = new HashSet();
            } else if (rawClass.isAssignableFrom(LinkedHashSet.class)) {
                list = new LinkedHashSet();
            } else if (rawClass.isAssignableFrom(TreeSet.class)) {
                list = new TreeSet();
            } else if (rawClass.isAssignableFrom(ArrayList.class)) {
                list = new ArrayList();
            } else if (rawClass.isAssignableFrom(EnumSet.class)) {
                if (type instanceof ParameterizedType) {
                    itemType = ((ParameterizedType) type).getActualTypeArguments()[0];
                } else {
                    itemType = Object.class;
                }
                list = EnumSet.noneOf((Class) itemType);
            } else {
                try {
                    list = (Collection) rawClass.newInstance();
                } catch (Exception e) {
                    throw new JSONException("create instane error, class " + rawClass.getName());
                }
            }
            Type itemType2 = null;
            if (type instanceof ParameterizedType) {
                itemType2 = ((ParameterizedType) type).getActualTypeArguments()[0];
            } else {
                if (type instanceof Class) {
                    Class<?> clazz = (Class) type;
                    if (!clazz.getName().startsWith("java.")) {
                        Type superClass = clazz.getGenericSuperclass();
                        if (superClass instanceof ParameterizedType) {
                            itemType2 = ((ParameterizedType) superClass).getActualTypeArguments()[0];
                        }
                    }
                }
                if (itemType2 == null) {
                    itemType2 = Object.class;
                }
            }
            parser.parseArray(itemType2, list, fieldName);
            return (T) list;
        }
    }
}
