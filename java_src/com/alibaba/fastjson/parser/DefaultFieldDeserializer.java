package com.alibaba.fastjson.parser;

import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.deserializer.FieldDeserializer;
import com.alibaba.fastjson.parser.deserializer.ObjectDeserializer;
import com.alibaba.fastjson.serializer.DateCodec;
import com.alibaba.fastjson.util.FieldInfo;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.Map;
/* loaded from: classes.dex */
public class DefaultFieldDeserializer extends FieldDeserializer {
    protected ObjectDeserializer fieldValueDeserilizer;

    public DefaultFieldDeserializer(ParserConfig mapping, Class<?> clazz, FieldInfo fieldInfo) {
        super(clazz, fieldInfo, 2);
    }

    public ObjectDeserializer getFieldValueDeserilizer(ParserConfig config) {
        if (this.fieldValueDeserilizer == null) {
            this.fieldValueDeserilizer = config.getDeserializer(this.fieldInfo.fieldClass, this.fieldInfo.fieldType);
        }
        return this.fieldValueDeserilizer;
    }

    @Override // com.alibaba.fastjson.parser.deserializer.FieldDeserializer
    public void parseField(DefaultJSONParser parser, Object object, Type objectType, Map<String, Object> fieldValues) {
        Object value;
        Class<?> fieldClass;
        if (this.fieldValueDeserilizer == null) {
            this.fieldValueDeserilizer = parser.config.getDeserializer(this.fieldInfo.fieldClass, this.fieldInfo.fieldType);
        }
        if (objectType instanceof ParameterizedType) {
            ParseContext objContext = parser.contex;
            objContext.type = objectType;
        }
        String format = this.fieldInfo.format;
        if (format != null && (this.fieldValueDeserilizer instanceof DateCodec)) {
            value = ((DateCodec) this.fieldValueDeserilizer).deserialze(parser, this.fieldInfo.fieldType, this.fieldInfo.name, format);
        } else {
            value = this.fieldValueDeserilizer.deserialze(parser, this.fieldInfo.fieldType, this.fieldInfo.name);
        }
        if (parser.resolveStatus == 1) {
            DefaultJSONParser.ResolveTask task = parser.getLastResolveTask();
            task.fieldDeserializer = this;
            task.ownerContext = parser.contex;
            parser.resolveStatus = 0;
        } else if (object == null) {
            fieldValues.put(this.fieldInfo.name, value);
        } else if (value != null || ((fieldClass = this.fieldInfo.fieldClass) != Byte.TYPE && fieldClass != Short.TYPE && fieldClass != Float.TYPE && fieldClass != Double.TYPE)) {
            setValue(object, value);
        }
    }
}
