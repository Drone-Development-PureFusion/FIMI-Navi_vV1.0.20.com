package com.alibaba.fastjson.serializer;

import ch.qos.logback.core.CoreConstants;
import java.io.IOException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.IdentityHashMap;
import java.util.List;
/* loaded from: classes.dex */
public final class ListSerializer implements ObjectSerializer {
    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public final void write(JSONSerializer serializer, Object object, Object fieldName, Type fieldType) throws IOException {
        SerializeWriter out = serializer.out;
        boolean writeClassName = (out.features & SerializerFeature.WriteClassName.mask) != 0;
        Type elementType = null;
        if (writeClassName && (fieldType instanceof ParameterizedType)) {
            ParameterizedType param = (ParameterizedType) fieldType;
            elementType = param.getActualTypeArguments()[0];
        }
        if (object == null) {
            if ((out.features & SerializerFeature.WriteNullListAsEmpty.mask) != 0) {
                out.write("[]");
                return;
            } else {
                out.writeNull();
                return;
            }
        }
        List<?> list = (List) object;
        int size = list.size();
        if (size == 0) {
            out.mo1630append((CharSequence) "[]");
            return;
        }
        SerialContext context = serializer.context;
        if ((out.features & SerializerFeature.DisableCircularReferenceDetect.mask) == 0) {
            serializer.context = new SerialContext(context, object, fieldName, 0);
            if (serializer.references == null) {
                serializer.references = new IdentityHashMap<>();
            }
            serializer.references.put(object, context);
        }
        try {
            if ((out.features & SerializerFeature.PrettyFormat.mask) != 0) {
                out.write(91);
                serializer.incrementIndent();
                for (int i = 0; i < size; i++) {
                    Object item = list.get(i);
                    if (i != 0) {
                        out.write(44);
                    }
                    serializer.println();
                    if (item != null) {
                        if (serializer.references != null && serializer.references.containsKey(item)) {
                            serializer.writeReference(item);
                        } else {
                            ObjectSerializer itemSerializer = serializer.config.get(item.getClass());
                            SerialContext itemContext = new SerialContext(context, object, fieldName, 0);
                            serializer.context = itemContext;
                            itemSerializer.write(serializer, item, Integer.valueOf(i), elementType);
                        }
                    } else {
                        serializer.out.writeNull();
                    }
                }
                serializer.decrementIdent();
                serializer.println();
                out.write(93);
                return;
            }
            int newcount = out.count + 1;
            if (newcount > out.buf.length) {
                if (out.writer == null) {
                    out.expandCapacity(newcount);
                } else {
                    out.flush();
                    newcount = 1;
                }
            }
            out.buf[out.count] = '[';
            out.count = newcount;
            for (int i2 = 0; i2 < list.size(); i2++) {
                Object item2 = list.get(i2);
                if (i2 != 0) {
                    int newcount2 = out.count + 1;
                    if (newcount2 > out.buf.length) {
                        if (out.writer == null) {
                            out.expandCapacity(newcount2);
                        } else {
                            out.flush();
                            newcount2 = 1;
                        }
                    }
                    out.buf[out.count] = CoreConstants.COMMA_CHAR;
                    out.count = newcount2;
                }
                if (item2 == null) {
                    out.mo1630append((CharSequence) "null");
                } else {
                    Class<?> clazz = item2.getClass();
                    if (clazz == Integer.class) {
                        out.writeInt(((Integer) item2).intValue());
                    } else if (clazz == Long.class) {
                        long val = ((Long) item2).longValue();
                        if (writeClassName) {
                            out.writeLong(val);
                            out.write(76);
                        } else {
                            out.writeLong(val);
                        }
                    } else if (clazz == String.class) {
                        String itemStr = (String) item2;
                        if ((out.features & SerializerFeature.UseSingleQuotes.mask) != 0) {
                            out.writeStringWithSingleQuote(itemStr);
                        } else {
                            out.writeStringWithDoubleQuote(itemStr, (char) 0, true);
                        }
                    } else {
                        if ((out.features & SerializerFeature.DisableCircularReferenceDetect.mask) == 0) {
                            SerialContext itemContext2 = new SerialContext(context, object, fieldName, 0);
                            serializer.context = itemContext2;
                        }
                        if (serializer.references != null && serializer.references.containsKey(item2)) {
                            serializer.writeReference(item2);
                        } else {
                            ObjectSerializer itemSerializer2 = serializer.config.get(item2.getClass());
                            itemSerializer2.write(serializer, item2, Integer.valueOf(i2), elementType);
                        }
                    }
                }
            }
            int newcount3 = out.count + 1;
            if (newcount3 > out.buf.length) {
                if (out.writer == null) {
                    out.expandCapacity(newcount3);
                } else {
                    out.flush();
                    newcount3 = 1;
                }
            }
            out.buf[out.count] = ']';
            out.count = newcount3;
        } finally {
            serializer.context = context;
        }
    }
}
