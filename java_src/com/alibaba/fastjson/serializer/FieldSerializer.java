package com.alibaba.fastjson.serializer;

import ch.qos.logback.core.CoreConstants;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.annotation.JSONField;
import com.alibaba.fastjson.util.FieldInfo;
import java.io.IOException;
import java.lang.reflect.Member;
import java.util.Collection;
/* loaded from: classes.dex */
public final class FieldSerializer implements Comparable<FieldSerializer> {
    protected final int features;
    public final FieldInfo fieldInfo;
    protected final String format;
    protected char[] name_chars;
    private RuntimeSerializerInfo runtimeInfo;
    protected final boolean writeNull;

    public FieldSerializer(FieldInfo fieldInfo) {
        SerializerFeature[] serialzeFeatures;
        this.fieldInfo = fieldInfo;
        boolean writeNull = false;
        JSONField annotation = fieldInfo.getAnnotation();
        String format = null;
        if (annotation != null) {
            for (SerializerFeature feature : annotation.serialzeFeatures()) {
                if (feature == SerializerFeature.WriteMapNullValue) {
                    writeNull = true;
                }
            }
            String format2 = annotation.format();
            format = format2.trim();
            format = format.length() == 0 ? null : format;
            this.features = SerializerFeature.m1426of(annotation.serialzeFeatures());
        } else {
            this.features = 0;
        }
        this.writeNull = writeNull;
        this.format = format;
        String name = fieldInfo.name;
        int nameLen = name.length();
        this.name_chars = new char[nameLen + 3];
        name.getChars(0, name.length(), this.name_chars, 1);
        this.name_chars[0] = CoreConstants.DOUBLE_QUOTE_CHAR;
        this.name_chars[nameLen + 1] = CoreConstants.DOUBLE_QUOTE_CHAR;
        this.name_chars[nameLen + 2] = CoreConstants.COLON_CHAR;
    }

    public void writePrefix(JSONSerializer serializer) throws IOException {
        SerializeWriter out = serializer.out;
        int featurs = out.features;
        if ((SerializerFeature.QuoteFieldNames.mask & featurs) != 0) {
            if ((SerializerFeature.UseSingleQuotes.mask & featurs) != 0) {
                out.writeFieldName(this.fieldInfo.name, true);
                return;
            } else {
                out.write(this.name_chars, 0, this.name_chars.length);
                return;
            }
        }
        out.writeFieldName(this.fieldInfo.name, true);
    }

    public Object getPropertyValue(Object object) throws Exception {
        try {
            return this.fieldInfo.get(object);
        } catch (Exception ex) {
            Member member = this.fieldInfo.method != null ? this.fieldInfo.method : this.fieldInfo.field;
            String qualifiedName = member.getDeclaringClass().getName() + "." + member.getName();
            throw new JSONException("get property error。 " + qualifiedName, ex);
        }
    }

    public void writeValue(JSONSerializer serializer, Object propertyValue) throws Exception {
        Class<?> runtimeFieldClass;
        if (this.format != null) {
            serializer.writeWithFormat(propertyValue, this.format);
            return;
        }
        if (this.runtimeInfo == null) {
            if (propertyValue == null) {
                runtimeFieldClass = this.fieldInfo.fieldClass;
            } else {
                runtimeFieldClass = propertyValue.getClass();
            }
            ObjectSerializer fieldSerializer = serializer.config.get(runtimeFieldClass);
            this.runtimeInfo = new RuntimeSerializerInfo(fieldSerializer, runtimeFieldClass);
        }
        RuntimeSerializerInfo runtimeInfo = this.runtimeInfo;
        if (propertyValue == null) {
            if ((this.features & SerializerFeature.WriteNullNumberAsZero.mask) != 0 && Number.class.isAssignableFrom(runtimeInfo.runtimeFieldClass)) {
                serializer.out.write(48);
                return;
            } else if ((this.features & SerializerFeature.WriteNullBooleanAsFalse.mask) != 0 && Boolean.class == runtimeInfo.runtimeFieldClass) {
                serializer.out.write("false");
                return;
            } else if ((this.features & SerializerFeature.WriteNullListAsEmpty.mask) != 0 && Collection.class.isAssignableFrom(runtimeInfo.runtimeFieldClass)) {
                serializer.out.write("[]");
                return;
            } else {
                runtimeInfo.fieldSerializer.write(serializer, null, this.fieldInfo.name, runtimeInfo.runtimeFieldClass);
                return;
            }
        }
        Class<?> valueClass = propertyValue.getClass();
        if (valueClass == runtimeInfo.runtimeFieldClass) {
            runtimeInfo.fieldSerializer.write(serializer, propertyValue, this.fieldInfo.name, this.fieldInfo.fieldType);
            return;
        }
        ObjectSerializer valueSerializer = serializer.config.get(valueClass);
        valueSerializer.write(serializer, propertyValue, this.fieldInfo.name, this.fieldInfo.fieldType);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes.dex */
    public static class RuntimeSerializerInfo {
        ObjectSerializer fieldSerializer;
        Class<?> runtimeFieldClass;

        public RuntimeSerializerInfo(ObjectSerializer fieldSerializer, Class<?> runtimeFieldClass) {
            this.fieldSerializer = fieldSerializer;
            this.runtimeFieldClass = runtimeFieldClass;
        }
    }

    @Override // java.lang.Comparable
    public int compareTo(FieldSerializer o) {
        return this.fieldInfo.compareTo(o.fieldInfo);
    }
}
