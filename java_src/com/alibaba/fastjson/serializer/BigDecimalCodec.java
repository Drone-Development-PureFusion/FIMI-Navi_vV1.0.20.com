package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.JSONLexer;
import com.alibaba.fastjson.parser.deserializer.ObjectDeserializer;
import com.alibaba.fastjson.util.TypeUtils;
import java.io.IOException;
import java.lang.reflect.Type;
import java.math.BigDecimal;
import java.math.BigInteger;
/* loaded from: classes.dex */
public class BigDecimalCodec implements ObjectSerializer, ObjectDeserializer {
    public static final BigDecimalCodec instance = new BigDecimalCodec();

    private BigDecimalCodec() {
    }

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(JSONSerializer serializer, Object object, Object fieldName, Type fieldType) throws IOException {
        SerializeWriter out = serializer.out;
        if (object == null) {
            if ((out.features & SerializerFeature.WriteNullNumberAsZero.mask) != 0) {
                out.write(48);
            } else {
                out.writeNull();
            }
        } else if (object instanceof BigInteger) {
            out.write(((BigInteger) object).toString());
        } else {
            BigDecimal val = (BigDecimal) object;
            out.write(val.toString());
            if ((out.features & SerializerFeature.WriteClassName.mask) != 0 && fieldType != BigDecimal.class && val.scale() == 0) {
                out.write(46);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r3v0, types: [java.math.BigDecimal, T] */
    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(DefaultJSONParser parser, Type clazz, Object fieldName) {
        JSONLexer lexer = parser.lexer;
        int token = lexer.token();
        if (token == 2) {
            if (clazz == BigInteger.class) {
                String val = lexer.numberString();
                lexer.nextToken(16);
                return (T) new BigInteger(val, 10);
            }
            T t = (T) lexer.decimalValue();
            lexer.nextToken(16);
            return t;
        } else if (token == 3) {
            ?? r3 = (T) lexer.decimalValue();
            lexer.nextToken(16);
            return clazz == BigInteger.class ? (T) r3.toBigInteger() : r3;
        } else {
            Object value = parser.parse();
            if (value == null) {
                return null;
            }
            if (clazz == BigInteger.class) {
                return (T) TypeUtils.castToBigInteger(value);
            }
            return (T) TypeUtils.castToBigDecimal(value);
        }
    }
}
