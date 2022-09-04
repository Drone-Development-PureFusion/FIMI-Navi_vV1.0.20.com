package com.alibaba.fastjson.parser;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.parser.deserializer.ObjectDeserializer;
import java.lang.reflect.Type;
/* loaded from: classes.dex */
public class EnumDeserializer implements ObjectDeserializer {
    private final Class<?> enumClass;
    protected final Enum[] values;

    public EnumDeserializer(Class<?> enumClass) {
        this.enumClass = enumClass;
        this.values = (Enum[]) enumClass.getEnumConstants();
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(DefaultJSONParser parser, Type type, Object fieldName) {
        try {
            JSONLexer lexer = parser.lexer;
            int token = lexer.token;
            if (token == 2) {
                int intValue = lexer.intValue();
                lexer.nextToken(16);
                if (intValue < 0 || intValue > this.values.length) {
                    throw new JSONException("parse enum " + this.enumClass.getName() + " error, value : " + intValue);
                }
                return (T) this.values[intValue];
            } else if (token == 4) {
                String strVal = lexer.stringVal();
                lexer.nextToken(16);
                if (strVal.length() == 0) {
                    return null;
                }
                return (T) Enum.valueOf(this.enumClass, strVal);
            } else if (token == 8) {
                lexer.nextToken(16);
                return null;
            } else {
                Object value = parser.parse();
                throw new JSONException("parse enum " + this.enumClass.getName() + " error, value : " + value);
            }
        } catch (JSONException e) {
            throw e;
        } catch (Exception e2) {
            throw new JSONException(e2.getMessage(), e2);
        }
    }
}
