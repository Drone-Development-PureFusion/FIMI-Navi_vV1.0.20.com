package com.alibaba.fastjson.serializer;

import ch.qos.logback.core.CoreConstants;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONAware;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONStreamAware;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.JSONLexer;
import com.alibaba.fastjson.parser.JSONToken;
import com.alibaba.fastjson.parser.deserializer.ObjectDeserializer;
import com.alibaba.fastjson.util.TypeUtils;
import com.twitter.sdk.android.core.internal.scribe.EventsFilesManager;
import java.io.IOException;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.net.MalformedURLException;
import java.net.URI;
import java.net.URL;
import java.nio.charset.Charset;
import java.text.SimpleDateFormat;
import java.util.Currency;
import java.util.Enumeration;
import java.util.Locale;
import java.util.TimeZone;
import java.util.UUID;
import java.util.regex.Pattern;
/* loaded from: classes.dex */
public final class MiscCodec implements ObjectSerializer, ObjectDeserializer {
    public static final MiscCodec instance = new MiscCodec();

    private MiscCodec() {
    }

    @Override // com.alibaba.fastjson.serializer.ObjectSerializer
    public void write(JSONSerializer serializer, Object object, Object fieldName, Type fieldType) throws IOException {
        SerializeWriter out = serializer.out;
        if (object == null) {
            if (fieldType == Character.TYPE || fieldType == Character.class) {
                serializer.write("");
                return;
            }
            if ((out.features & SerializerFeature.WriteNullListAsEmpty.mask) != 0) {
                Class<?> fieldClass = TypeUtils.getClass(fieldType);
                if (Enumeration.class.isAssignableFrom(fieldClass)) {
                    out.write("[]");
                    return;
                }
            }
            out.writeNull();
        } else if (object instanceof Pattern) {
            Pattern p = (Pattern) object;
            serializer.write(p.pattern());
        } else if (object instanceof TimeZone) {
            TimeZone timeZone = (TimeZone) object;
            serializer.write(timeZone.getID());
        } else if (object instanceof Currency) {
            Currency currency = (Currency) object;
            serializer.write(currency.getCurrencyCode());
        } else if (object instanceof Class) {
            Class<?> clazz = (Class) object;
            serializer.write(clazz.getName());
        } else if (object instanceof Character) {
            Character value = (Character) object;
            char c = value.charValue();
            if (c == 0) {
                serializer.write("\u0000");
            } else {
                serializer.write(value.toString());
            }
        } else if (object instanceof SimpleDateFormat) {
            String pattern = ((SimpleDateFormat) object).toPattern();
            if ((out.features & SerializerFeature.WriteClassName.mask) != 0 && object.getClass() != fieldType) {
                out.write(123);
                out.writeFieldName(JSON.DEFAULT_TYPE_KEY, false);
                serializer.write(object.getClass().getName());
                out.write(44);
                out.writeFieldName("val", false);
                out.writeString(pattern);
                out.write(125);
                return;
            }
            out.writeString(pattern);
        } else if (object instanceof JSONStreamAware) {
            JSONStreamAware aware = (JSONStreamAware) object;
            aware.writeJSONString(serializer.out);
        } else if (object instanceof JSONAware) {
            JSONAware aware2 = (JSONAware) object;
            out.write(aware2.toJSONString());
        } else if (object instanceof JSONSerializable) {
            JSONSerializable jsonSerializable = (JSONSerializable) object;
            jsonSerializable.write(serializer, fieldName, fieldType);
        } else if (object instanceof Enumeration) {
            Type elementType = null;
            if ((out.features & SerializerFeature.WriteClassName.mask) != 0 && (fieldType instanceof ParameterizedType)) {
                ParameterizedType param = (ParameterizedType) fieldType;
                elementType = param.getActualTypeArguments()[0];
            }
            Enumeration<?> e = (Enumeration) object;
            SerialContext context = serializer.context;
            serializer.setContext(context, object, fieldName, 0);
            try {
                out.write(91);
                int i = 0;
                while (e.hasMoreElements()) {
                    try {
                        Object item = e.nextElement();
                        int i2 = i + 1;
                        if (i != 0) {
                            out.write(44);
                        }
                        if (item == null) {
                            out.writeNull();
                            i = i2;
                        } else {
                            Class<?> clazz2 = item.getClass();
                            ObjectSerializer itemSerializer = serializer.config.get(clazz2);
                            itemSerializer.write(serializer, item, Integer.valueOf(i2 - 1), elementType);
                            i = i2;
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
        } else {
            serializer.write(object.toString());
        }
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [T, java.text.SimpleDateFormat] */
    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(DefaultJSONParser parser, Type clazz, Object fieldName) {
        Object objVal;
        if (clazz == StackTraceElement.class) {
            return (T) parseStackTraceElement(parser);
        }
        JSONLexer lexer = parser.lexer;
        if (parser.resolveStatus == 2) {
            parser.resolveStatus = 0;
            parser.accept(16);
            if (lexer.token() == 4) {
                if (!"val".equals(lexer.stringVal())) {
                    throw new JSONException("syntax error");
                }
                lexer.nextToken();
                parser.accept(17);
                objVal = parser.parse();
                parser.accept(13);
            } else {
                throw new JSONException("syntax error");
            }
        } else {
            objVal = parser.parse();
        }
        if (objVal == null) {
            return null;
        }
        if (objVal instanceof String) {
            String strVal = (String) objVal;
            if (strVal.length() == 0) {
                return null;
            }
            if (clazz == UUID.class) {
                return (T) UUID.fromString(strVal);
            }
            if (clazz == Class.class) {
                return (T) TypeUtils.loadClass(strVal, parser.config.defaultClassLoader);
            }
            if (clazz == Locale.class) {
                String[] items = strVal.split(EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR);
                if (items.length == 1) {
                    return (T) new Locale(items[0]);
                }
                if (items.length == 2) {
                    return (T) new Locale(items[0], items[1]);
                }
                return (T) new Locale(items[0], items[1], items[2]);
            } else if (clazz == URI.class) {
                return (T) URI.create(strVal);
            } else {
                if (clazz == URL.class) {
                    try {
                        return (T) new URL(strVal);
                    } catch (MalformedURLException e) {
                        throw new JSONException("create url error", e);
                    }
                } else if (clazz == Pattern.class) {
                    return (T) Pattern.compile(strVal);
                } else {
                    if (clazz == Charset.class) {
                        return (T) Charset.forName(strVal);
                    }
                    if (clazz == Currency.class) {
                        return (T) Currency.getInstance(strVal);
                    }
                    if (clazz == SimpleDateFormat.class) {
                        ?? r0 = (T) new SimpleDateFormat(strVal, parser.lexer.locale);
                        r0.setTimeZone(parser.lexer.timeZone);
                        return r0;
                    } else if (clazz == Character.TYPE || clazz == Character.class) {
                        return (T) TypeUtils.castToChar(strVal);
                    } else {
                        return (T) TimeZone.getTimeZone(strVal);
                    }
                }
            }
        }
        throw new JSONException("except string value");
    }

    protected <T> T parseStackTraceElement(DefaultJSONParser parser) {
        JSONLexer lexer = parser.lexer;
        if (lexer.token() == 8) {
            lexer.nextToken();
            return null;
        } else if (lexer.token() != 12 && lexer.token() != 16) {
            throw new JSONException("syntax error: " + JSONToken.name(lexer.token()));
        } else {
            String declaringClass = null;
            String methodName = null;
            String fileName = null;
            int lineNumber = 0;
            while (true) {
                String key = lexer.scanSymbol(parser.symbolTable);
                if (key == null) {
                    if (lexer.token() == 13) {
                        lexer.nextToken(16);
                        break;
                    } else if (lexer.token() == 16) {
                        continue;
                    }
                }
                lexer.nextTokenWithChar(CoreConstants.COLON_CHAR);
                if ("className".equals(key)) {
                    if (lexer.token() == 8) {
                        declaringClass = null;
                    } else if (lexer.token() == 4) {
                        declaringClass = lexer.stringVal();
                    } else {
                        throw new JSONException("syntax error");
                    }
                } else if ("methodName".equals(key)) {
                    if (lexer.token() == 8) {
                        methodName = null;
                    } else if (lexer.token() == 4) {
                        methodName = lexer.stringVal();
                    } else {
                        throw new JSONException("syntax error");
                    }
                } else if ("fileName".equals(key)) {
                    if (lexer.token() == 8) {
                        fileName = null;
                    } else if (lexer.token() == 4) {
                        fileName = lexer.stringVal();
                    } else {
                        throw new JSONException("syntax error");
                    }
                } else if ("lineNumber".equals(key)) {
                    if (lexer.token() == 8) {
                        lineNumber = 0;
                    } else if (lexer.token() == 2) {
                        lineNumber = lexer.intValue();
                    } else {
                        throw new JSONException("syntax error");
                    }
                } else if ("nativeMethod".equals(key)) {
                    if (lexer.token() == 8) {
                        lexer.nextToken(16);
                    } else if (lexer.token() == 6) {
                        lexer.nextToken(16);
                    } else if (lexer.token() == 7) {
                        lexer.nextToken(16);
                    } else {
                        throw new JSONException("syntax error");
                    }
                } else if (key == JSON.DEFAULT_TYPE_KEY) {
                    if (lexer.token() == 4) {
                        String elementType = lexer.stringVal();
                        if (!elementType.equals("java.lang.StackTraceElement")) {
                            throw new JSONException("syntax error : " + elementType);
                        }
                    } else if (lexer.token() != 8) {
                        throw new JSONException("syntax error");
                    }
                } else {
                    throw new JSONException("syntax error : " + key);
                }
                if (lexer.token() == 13) {
                    lexer.nextToken(16);
                    break;
                }
            }
            return (T) new StackTraceElement(declaringClass, methodName, fileName, lineNumber);
        }
    }
}
