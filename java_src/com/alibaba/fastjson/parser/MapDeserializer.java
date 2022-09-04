package com.alibaba.fastjson.parser;

import ch.qos.logback.core.CoreConstants;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.parser.DefaultJSONParser;
import com.alibaba.fastjson.parser.deserializer.ObjectDeserializer;
import com.alibaba.fastjson.util.TypeUtils;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.util.EnumMap;
import java.util.HashMap;
import java.util.Hashtable;
import java.util.IdentityHashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Properties;
import java.util.SortedMap;
import java.util.TreeMap;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class MapDeserializer implements ObjectDeserializer {
    public static MapDeserializer instance = new MapDeserializer();

    MapDeserializer() {
    }

    @Override // com.alibaba.fastjson.parser.deserializer.ObjectDeserializer
    public <T> T deserialze(DefaultJSONParser parser, Type type, Object fieldName) {
        T t;
        if (type == JSONObject.class && parser.fieldTypeResolver == null) {
            return (T) parser.parseObject();
        }
        JSONLexer lexer = parser.lexer;
        if (lexer.token == 8) {
            lexer.nextToken(16);
            return null;
        }
        Map<?, ?> map = createMap(type);
        ParseContext context = parser.contex;
        try {
            parser.setContext(context, map, fieldName);
            if (type instanceof ParameterizedType) {
                ParameterizedType parameterizedType = (ParameterizedType) type;
                Type keyType = parameterizedType.getActualTypeArguments()[0];
                Type valueType = parameterizedType.getActualTypeArguments()[1];
                if (String.class == keyType) {
                    t = (T) parseMap(parser, map, valueType, fieldName);
                } else {
                    t = (T) parseMap(parser, map, keyType, valueType, fieldName);
                    parser.setContext(context);
                }
            } else {
                t = (T) parser.parseObject(map, fieldName);
                parser.setContext(context);
            }
            return t;
        } finally {
            parser.setContext(context);
        }
    }

    public static Map parseMap(DefaultJSONParser parser, Map<String, Object> map, Type valueType, Object fieldName) {
        String key;
        Object value;
        JSONLexer lexer = parser.lexer;
        if (lexer.token != 12) {
            throw new JSONException("syntax error, expect {, actual " + lexer.token);
        }
        ParseContext context = parser.contex;
        while (true) {
            try {
                lexer.skipWhitespace();
                char ch2 = lexer.f57ch;
                while (ch2 == ',') {
                    lexer.next();
                    lexer.skipWhitespace();
                    ch2 = lexer.f57ch;
                }
                if (ch2 == '\"') {
                    key = lexer.scanSymbol(parser.symbolTable, CoreConstants.DOUBLE_QUOTE_CHAR);
                    lexer.skipWhitespace();
                    char ch3 = lexer.f57ch;
                    if (ch3 != ':') {
                        throw new JSONException("syntax error, " + lexer.info());
                    }
                } else if (ch2 == '}') {
                    lexer.next();
                    lexer.f59sp = 0;
                    lexer.nextToken(16);
                    return map;
                } else if (ch2 == '\'') {
                    key = lexer.scanSymbol(parser.symbolTable, CoreConstants.SINGLE_QUOTE_CHAR);
                    lexer.skipWhitespace();
                    char ch4 = lexer.f57ch;
                    if (ch4 != ':') {
                        throw new JSONException("syntax error, " + lexer.info());
                    }
                } else {
                    key = lexer.scanSymbolUnQuoted(parser.symbolTable);
                    lexer.skipWhitespace();
                    char ch5 = lexer.f57ch;
                    if (ch5 != ':') {
                        throw new JSONException("expect ':' at " + lexer.pos + ", actual " + ch5);
                    }
                }
                lexer.next();
                lexer.skipWhitespace();
                char ch6 = lexer.f57ch;
                lexer.f59sp = 0;
                if (key != JSON.DEFAULT_TYPE_KEY || lexer.isEnabled(Feature.DisableSpecialKeyDetect)) {
                    lexer.nextToken();
                    parser.setContext(context);
                    if (lexer.token == 8) {
                        value = null;
                        lexer.nextToken();
                    } else {
                        value = parser.parseObject(valueType, key);
                    }
                    map.put(key, value);
                    if (parser.resolveStatus == 1) {
                        parser.checkMapResolve(map, key);
                    }
                    parser.setContext(context, value, key);
                    int tok = lexer.token;
                    if (tok == 20 || tok == 15) {
                        break;
                    } else if (tok == 13) {
                        lexer.nextToken();
                        return map;
                    }
                } else {
                    String typeName = lexer.scanSymbol(parser.symbolTable, CoreConstants.DOUBLE_QUOTE_CHAR);
                    Class<?> clazz = TypeUtils.loadClass(typeName, parser.config.defaultClassLoader);
                    if (clazz != map.getClass()) {
                        ObjectDeserializer deserializer = parser.config.getDeserializer(clazz);
                        lexer.nextToken(16);
                        parser.resolveStatus = 2;
                        if (context != null && !(fieldName instanceof Integer)) {
                            parser.popContext();
                        }
                        return (Map) deserializer.deserialze(parser, clazz, fieldName);
                    }
                    lexer.nextToken(16);
                    if (lexer.token == 13) {
                        lexer.nextToken(16);
                        return map;
                    }
                }
            } finally {
                parser.setContext(context);
            }
        }
        return map;
    }

    public static Object parseMap(DefaultJSONParser parser, Map<Object, Object> map, Type keyType, Type valueType, Object fieldName) {
        JSONLexer lexer = parser.lexer;
        int token = lexer.token;
        if (token == 12 || token == 16) {
            ObjectDeserializer keyDeserializer = parser.config.getDeserializer(keyType);
            ObjectDeserializer valueDeserializer = parser.config.getDeserializer(valueType);
            lexer.nextToken();
            ParseContext context = parser.contex;
            while (true) {
                try {
                    int token2 = lexer.token;
                    if (token2 == 13) {
                        lexer.nextToken(16);
                        return map;
                    } else if (token2 == 4 && lexer.f59sp == 4 && lexer.text.startsWith("$ref", lexer.f58np + 1) && !lexer.isEnabled(Feature.DisableSpecialKeyDetect)) {
                        Object object = null;
                        lexer.nextTokenWithChar(CoreConstants.COLON_CHAR);
                        if (lexer.token != 4) {
                            throw new JSONException("illegal ref, " + JSONToken.name(token2));
                        }
                        String ref = lexer.stringVal();
                        if ("..".equals(ref)) {
                            ParseContext parentContext = context.parent;
                            object = parentContext.object;
                        } else if ("$".equals(ref)) {
                            ParseContext rootContext = context;
                            while (rootContext.parent != null) {
                                rootContext = rootContext.parent;
                            }
                            object = rootContext.object;
                        } else {
                            parser.addResolveTask(new DefaultJSONParser.ResolveTask(context, ref));
                            parser.resolveStatus = 1;
                        }
                        lexer.nextToken(13);
                        if (lexer.token != 13) {
                            throw new JSONException("illegal ref");
                        }
                        lexer.nextToken(16);
                        parser.setContext(context);
                        return object;
                    } else {
                        if (map.size() == 0 && token2 == 4 && JSON.DEFAULT_TYPE_KEY.equals(lexer.stringVal()) && !lexer.isEnabled(Feature.DisableSpecialKeyDetect)) {
                            lexer.nextTokenWithChar(CoreConstants.COLON_CHAR);
                            lexer.nextToken(16);
                            if (lexer.token == 13) {
                                lexer.nextToken();
                                return map;
                            }
                            lexer.nextToken();
                        }
                        Object key = keyDeserializer.deserialze(parser, keyType, null);
                        if (lexer.token != 17) {
                            throw new JSONException("syntax error, expect :, actual " + lexer.token);
                        }
                        lexer.nextToken();
                        Object value = valueDeserializer.deserialze(parser, valueType, key);
                        if (parser.resolveStatus == 1) {
                            parser.checkMapResolve(map, key);
                        }
                        map.put(key, value);
                        if (lexer.token == 16) {
                            lexer.nextToken();
                        }
                    }
                } finally {
                    parser.setContext(context);
                }
            }
        } else {
            throw new JSONException("syntax error, expect {, actual " + JSONToken.name(token));
        }
    }

    protected Map<?, ?> createMap(Type type) {
        if (type == Properties.class) {
            return new Properties();
        }
        if (type == Hashtable.class) {
            return new Hashtable();
        }
        if (type == IdentityHashMap.class) {
            return new IdentityHashMap();
        }
        if (type == SortedMap.class || type == TreeMap.class) {
            return new TreeMap();
        }
        if (type == ConcurrentMap.class || type == ConcurrentHashMap.class) {
            return new ConcurrentHashMap();
        }
        if (type == Map.class || type == HashMap.class) {
            return new HashMap();
        }
        if (type == LinkedHashMap.class) {
            return new LinkedHashMap();
        }
        if (type == JSONObject.class) {
            return new JSONObject();
        }
        if (type instanceof ParameterizedType) {
            ParameterizedType parameterizedType = (ParameterizedType) type;
            Type rawType = parameterizedType.getRawType();
            if (EnumMap.class.equals(rawType)) {
                Type[] actualArgs = parameterizedType.getActualTypeArguments();
                return new EnumMap((Class) actualArgs[0]);
            }
            return createMap(rawType);
        }
        Class<?> clazz = (Class) type;
        if (clazz.isInterface()) {
            throw new JSONException("unsupport type " + type);
        }
        try {
            return (Map) clazz.newInstance();
        } catch (Exception e) {
            throw new JSONException("unsupport type " + type, e);
        }
    }
}
