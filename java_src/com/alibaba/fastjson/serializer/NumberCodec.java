package com.alibaba.fastjson.serializer;

import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.JSONLexer;
import com.alibaba.fastjson.parser.deserializer.ObjectDeserializer;
import com.alibaba.fastjson.util.TypeUtils;
import java.io.IOException;
import java.lang.reflect.Type;
import java.text.DecimalFormat;
/* loaded from: classes.dex */
public class NumberCodec implements ObjectSerializer, ObjectDeserializer {
    public static final NumberCodec instance = new NumberCodec();
    private DecimalFormat decimalFormat;

    private NumberCodec() {
        this.decimalFormat = null;
    }

    public NumberCodec(DecimalFormat decimalFormat) {
        this.decimalFormat = null;
        this.decimalFormat = decimalFormat;
    }

    public NumberCodec(String decimalFormat) {
        this(new DecimalFormat(decimalFormat));
    }

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(JSONSerializer serializer, Object object, Object fieldName, Type fieldType) throws IOException {
        String doubleText;
        SerializeWriter out = serializer.out;
        if (object == null) {
            if ((out.features & SerializerFeature.WriteNullNumberAsZero.mask) != 0) {
                out.write(48);
            } else {
                out.writeNull();
            }
        } else if (object instanceof Float) {
            float floatValue = ((Float) object).floatValue();
            if (Float.isNaN(floatValue)) {
                out.writeNull();
            } else if (Float.isInfinite(floatValue)) {
                out.writeNull();
            } else {
                String floatText = Float.toString(floatValue);
                if (floatText.endsWith(".0")) {
                    floatText = floatText.substring(0, floatText.length() - 2);
                }
                out.write(floatText);
                if ((out.features & SerializerFeature.WriteClassName.mask) != 0) {
                    out.write(70);
                }
            }
        } else {
            double doubleValue = ((Double) object).doubleValue();
            if (Double.isNaN(doubleValue)) {
                out.writeNull();
            } else if (Double.isInfinite(doubleValue)) {
                out.writeNull();
            } else {
                if (this.decimalFormat == null) {
                    doubleText = Double.toString(doubleValue);
                    if (doubleText.endsWith(".0")) {
                        doubleText = doubleText.substring(0, doubleText.length() - 2);
                    }
                } else {
                    doubleText = this.decimalFormat.format(doubleValue);
                }
                out.mo1630append((CharSequence) doubleText);
                if ((out.features & SerializerFeature.WriteClassName.mask) != 0) {
                    out.write(68);
                }
            }
        }
    }

    /* JADX WARN: Type inference failed for: r2v10, types: [java.math.BigDecimal, T] */
    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(DefaultJSONParser parser, Type clazz, Object fieldName) {
        JSONLexer lexer = parser.lexer;
        int token = lexer.token();
        if (token == 2) {
            if (clazz == Double.TYPE || clazz == Double.class) {
                String val = lexer.numberString();
                lexer.nextToken(16);
                return (T) Double.valueOf(Double.parseDouble(val));
            } else if (clazz == Float.TYPE || clazz == Float.class) {
                String val2 = lexer.numberString();
                lexer.nextToken(16);
                return (T) Float.valueOf(Float.parseFloat(val2));
            } else {
                long val3 = lexer.longValue();
                lexer.nextToken(16);
                if (clazz == Short.TYPE || clazz == Short.class) {
                    return (T) Short.valueOf((short) val3);
                }
                if (clazz == Byte.TYPE || clazz == Byte.class) {
                    return (T) Byte.valueOf((byte) val3);
                }
                if (val3 >= -2147483648L && val3 <= 2147483647L) {
                    return (T) Integer.valueOf((int) val3);
                }
                return (T) Long.valueOf(val3);
            }
        } else if (token == 3) {
            if (clazz == Double.TYPE || clazz == Double.class) {
                String val4 = lexer.numberString();
                lexer.nextToken(16);
                return (T) Double.valueOf(Double.parseDouble(val4));
            } else if (clazz == Float.TYPE || clazz == Float.class) {
                String val5 = lexer.numberString();
                lexer.nextToken(16);
                return (T) Float.valueOf(Float.parseFloat(val5));
            } else {
                ?? r2 = (T) lexer.decimalValue();
                lexer.nextToken(16);
                if (clazz == Short.TYPE || clazz == Short.class) {
                    return (T) Short.valueOf(r2.shortValue());
                }
                if (clazz == Byte.TYPE || clazz == Byte.class) {
                    return (T) Byte.valueOf(r2.byteValue());
                }
                return r2;
            }
        } else {
            Object value = parser.parse();
            if (value == null) {
                return null;
            }
            if (clazz == Double.TYPE || clazz == Double.class) {
                return (T) TypeUtils.castToDouble(value);
            }
            if (clazz == Float.TYPE || clazz == Float.class) {
                return (T) TypeUtils.castToFloat(value);
            }
            if (clazz == Short.TYPE || clazz == Short.class) {
                return (T) TypeUtils.castToShort(value);
            }
            if (clazz == Byte.TYPE || clazz == Byte.class) {
                return (T) TypeUtils.castToByte(value);
            }
            return (T) TypeUtils.castToBigDecimal(value);
        }
    }
}
