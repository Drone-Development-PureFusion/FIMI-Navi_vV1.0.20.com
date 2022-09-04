package com.alibaba.fastjson.serializer;

import ch.qos.logback.core.CoreConstants;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.Feature;
import com.alibaba.fastjson.parser.JSONLexer;
import com.alibaba.fastjson.parser.JSONToken;
import com.alibaba.fastjson.parser.deserializer.ObjectDeserializer;
import com.alibaba.fastjson.util.TypeUtils;
import java.io.IOException;
import java.lang.reflect.Type;
import java.text.DateFormat;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;
/* loaded from: classes.dex */
public final class DateCodec implements ObjectSerializer, ObjectDeserializer {
    public static final DateCodec instance = new DateCodec();

    private DateCodec() {
    }

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(JSONSerializer serializer, Object object, Object fieldName, Type fieldType) throws IOException {
        Date date;
        char[] buf;
        SerializeWriter out = serializer.out;
        if (object == null) {
            out.writeNull();
        } else if ((out.features & SerializerFeature.WriteClassName.mask) != 0 && object.getClass() != fieldType) {
            if (object.getClass() == Date.class) {
                out.write("new Date(");
                out.writeLong(((Date) object).getTime());
                out.write(41);
                return;
            }
            out.write(123);
            out.writeFieldName(JSON.DEFAULT_TYPE_KEY, false);
            serializer.write(object.getClass().getName());
            out.write(44);
            out.writeFieldName("val", false);
            out.writeLong(((Date) object).getTime());
            out.write(125);
        } else {
            if (object instanceof Calendar) {
                date = ((Calendar) object).getTime();
            } else {
                date = (Date) object;
            }
            if ((out.features & SerializerFeature.WriteDateUseDateFormat.mask) != 0) {
                DateFormat format = serializer.getDateFormat();
                if (format == null) {
                    format = new SimpleDateFormat(JSON.DEFFAULT_DATE_FORMAT, serializer.locale);
                    format.setTimeZone(serializer.timeZone);
                }
                String text = format.format(date);
                out.writeString(text);
                return;
            }
            long time = date.getTime();
            if ((out.features & SerializerFeature.UseISO8601DateFormat.mask) != 0) {
                if ((out.features & SerializerFeature.UseSingleQuotes.mask) != 0) {
                    out.write(39);
                } else {
                    out.write(34);
                }
                Calendar calendar = Calendar.getInstance(serializer.timeZone, serializer.locale);
                calendar.setTimeInMillis(time);
                int year = calendar.get(1);
                int month = calendar.get(2) + 1;
                int day = calendar.get(5);
                int hour = calendar.get(11);
                int minute = calendar.get(12);
                int second = calendar.get(13);
                int millis = calendar.get(14);
                if (millis != 0) {
                    buf = "0000-00-00T00:00:00.000".toCharArray();
                    SerializeWriter.getChars(millis, 23, buf);
                    SerializeWriter.getChars(second, 19, buf);
                    SerializeWriter.getChars(minute, 16, buf);
                    SerializeWriter.getChars(hour, 13, buf);
                    SerializeWriter.getChars(day, 10, buf);
                    SerializeWriter.getChars(month, 7, buf);
                    SerializeWriter.getChars(year, 4, buf);
                } else if (second == 0 && minute == 0 && hour == 0) {
                    buf = "0000-00-00".toCharArray();
                    SerializeWriter.getChars(day, 10, buf);
                    SerializeWriter.getChars(month, 7, buf);
                    SerializeWriter.getChars(year, 4, buf);
                } else {
                    buf = "0000-00-00T00:00:00".toCharArray();
                    SerializeWriter.getChars(second, 19, buf);
                    SerializeWriter.getChars(minute, 16, buf);
                    SerializeWriter.getChars(hour, 13, buf);
                    SerializeWriter.getChars(day, 10, buf);
                    SerializeWriter.getChars(month, 7, buf);
                    SerializeWriter.getChars(year, 4, buf);
                }
                out.write(buf);
                if ((out.features & SerializerFeature.UseSingleQuotes.mask) != 0) {
                    out.write(39);
                    return;
                } else {
                    out.write(34);
                    return;
                }
            }
            out.writeLong(time);
        }
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(DefaultJSONParser parser, Type clazz, Object fieldName) {
        return (T) deserialze(parser, clazz, fieldName, null);
    }

    /* JADX WARN: Type inference failed for: r8v0, types: [java.util.Calendar, T] */
    /* JADX WARN: Type inference failed for: r8v2, types: [java.util.Calendar, T] */
    public <T> T deserialze(DefaultJSONParser parser, Type clazz, Object fieldName, String format) {
        Long l;
        int token;
        JSONLexer lexer = parser.lexer;
        int token2 = lexer.token();
        if (token2 == 2) {
            Long val = Long.valueOf(lexer.longValue());
            lexer.nextToken(16);
            l = val;
        } else if (token2 == 4) {
            String strVal = lexer.stringVal();
            Object obj = strVal;
            lexer.nextToken(16);
            if ((lexer.features & Feature.AllowISO8601DateFormat.mask) != 0) {
                JSONLexer iso8601Lexer = new JSONLexer(strVal);
                if (iso8601Lexer.scanISO8601DateIfMatch(true)) {
                    ?? r8 = (T) iso8601Lexer.calendar;
                    if (clazz == Calendar.class) {
                        iso8601Lexer.close();
                        return r8;
                    }
                    obj = r8.getTime();
                }
                iso8601Lexer.close();
            }
            l = obj;
        } else if (token2 == 8) {
            lexer.nextToken();
            l = null;
        } else if (token2 == 12) {
            lexer.nextToken();
            if (lexer.token() == 4) {
                String key = lexer.stringVal();
                if (JSON.DEFAULT_TYPE_KEY.equals(key)) {
                    lexer.nextToken();
                    parser.accept(17);
                    String typeName = lexer.stringVal();
                    Class<?> type = TypeUtils.loadClass(typeName, parser.config.defaultClassLoader);
                    if (type != null) {
                        clazz = type;
                    }
                    parser.accept(4);
                    parser.accept(16);
                }
                lexer.nextTokenWithChar(CoreConstants.COLON_CHAR);
                if (lexer.token() == 2) {
                    long timeMillis = lexer.longValue();
                    lexer.nextToken();
                    Long val2 = Long.valueOf(timeMillis);
                    parser.accept(13);
                    l = val2;
                } else {
                    throw new JSONException("syntax error : " + JSONToken.name(token));
                }
            } else {
                throw new JSONException("syntax error");
            }
        } else if (parser.resolveStatus == 2) {
            parser.resolveStatus = 0;
            parser.accept(16);
            if (lexer.token() == 4) {
                if (!"val".equals(lexer.stringVal())) {
                    throw new JSONException("syntax error");
                }
                lexer.nextToken();
                parser.accept(17);
                Object val3 = parser.parse();
                parser.accept(13);
                l = val3;
            } else {
                throw new JSONException("syntax error");
            }
        } else {
            Object val4 = parser.parse();
            l = val4;
        }
        T t = (T) cast(parser, clazz, fieldName, l, format);
        if (clazz == Calendar.class && !(t instanceof Calendar)) {
            Date date = (Date) t;
            if (date == null) {
                return null;
            }
            ?? r82 = (T) Calendar.getInstance(lexer.timeZone, lexer.locale);
            r82.setTime(date);
            return r82;
        }
        return t;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.util.Calendar, T] */
    protected <T> T cast(DefaultJSONParser parser, Type clazz, Object fieldName, Object val, String format) {
        DateFormat dateFormat;
        if (val == 0) {
            return null;
        }
        if (!(val instanceof Date)) {
            if (val instanceof Number) {
                return (T) new Date(((Number) val).longValue());
            }
            if (val instanceof String) {
                String strVal = (String) val;
                if (strVal.length() == 0) {
                    return null;
                }
                JSONLexer dateLexer = new JSONLexer(strVal);
                try {
                    if (dateLexer.scanISO8601DateIfMatch(false)) {
                        ?? r0 = (T) dateLexer.calendar;
                        return clazz == Calendar.class ? r0 : (T) r0.getTime();
                    }
                    if (format != null) {
                        dateFormat = new SimpleDateFormat(format);
                    } else {
                        dateFormat = parser.getDateFormat();
                    }
                    try {
                        return (T) dateFormat.parse(strVal);
                    } catch (ParseException e) {
                        long longVal = Long.parseLong(strVal);
                        return (T) new Date(longVal);
                    }
                } finally {
                    dateLexer.close();
                }
            }
            throw new JSONException("parse error");
        }
        return val;
    }
}
