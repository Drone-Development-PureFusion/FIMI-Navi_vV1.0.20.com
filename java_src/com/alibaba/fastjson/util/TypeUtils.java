package com.alibaba.fastjson.util;

import ch.qos.logback.core.pattern.color.ANSIConstants;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.JSONObject;
import com.alibaba.fastjson.PropertyNamingStrategy;
import com.alibaba.fastjson.annotation.JSONField;
import com.alibaba.fastjson.annotation.JSONType;
import com.alibaba.fastjson.parser.JSONLexer;
import com.alibaba.fastjson.parser.JavaBeanDeserializer;
import com.alibaba.fastjson.parser.ParserConfig;
import com.alibaba.fastjson.parser.deserializer.ObjectDeserializer;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.facebook.internal.ServerProtocol;
import com.fimi.host.HostConstants;
import com.twitter.sdk.android.core.internal.scribe.EventsFilesManager;
import com.umeng.commonsdk.proguard.C2354g;
import java.lang.reflect.AccessibleObject;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.Member;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Proxy;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
import java.lang.reflect.WildcardType;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.security.AccessControlException;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.Collection;
import java.util.Collections;
import java.util.Currency;
import java.util.Date;
import java.util.HashMap;
import java.util.HashSet;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import java.util.Set;
import java.util.TreeSet;
import java.util.concurrent.ConcurrentHashMap;
import java.util.concurrent.ConcurrentMap;
/* loaded from: classes.dex */
public class TypeUtils {
    public static boolean compatibleWithJavaBean = false;
    private static boolean setAccessibleEnable = true;
    private static ConcurrentMap<String, Class<?>> mappings = new ConcurrentHashMap();

    static {
        mappings.put("byte", Byte.TYPE);
        mappings.put("short", Short.TYPE);
        mappings.put("int", Integer.TYPE);
        mappings.put("long", Long.TYPE);
        mappings.put("float", Float.TYPE);
        mappings.put("double", Double.TYPE);
        mappings.put("boolean", Boolean.TYPE);
        mappings.put("char", Character.TYPE);
        mappings.put("[byte", byte[].class);
        mappings.put("[short", short[].class);
        mappings.put("[int", int[].class);
        mappings.put("[long", long[].class);
        mappings.put("[float", float[].class);
        mappings.put("[double", double[].class);
        mappings.put("[boolean", boolean[].class);
        mappings.put("[char", char[].class);
        mappings.put("[B", byte[].class);
        mappings.put("[S", short[].class);
        mappings.put("[I", int[].class);
        mappings.put("[J", long[].class);
        mappings.put("[F", float[].class);
        mappings.put("[D", double[].class);
        mappings.put("[C", char[].class);
        mappings.put("[Z", boolean[].class);
        mappings.put(HashMap.class.getName(), HashMap.class);
    }

    public static final String castToString(Object value) {
        if (value == null) {
            return null;
        }
        return value.toString();
    }

    public static final Byte castToByte(Object value) {
        if (value == null) {
            return null;
        }
        if (value instanceof Number) {
            return Byte.valueOf(((Number) value).byteValue());
        }
        if (value instanceof String) {
            String strVal = (String) value;
            if (strVal.length() != 0 && !"null".equals(strVal)) {
                return Byte.valueOf(Byte.parseByte(strVal));
            }
            return null;
        }
        throw new JSONException("can not cast to byte, value : " + value);
    }

    public static final Character castToChar(Object value) {
        if (value == null) {
            return null;
        }
        if (value instanceof Character) {
            return (Character) value;
        }
        if (value instanceof String) {
            String strVal = (String) value;
            if (strVal.length() == 0) {
                return null;
            }
            if (strVal.length() != 1) {
                throw new JSONException("can not cast to byte, value : " + value);
            }
            return Character.valueOf(strVal.charAt(0));
        }
        throw new JSONException("can not cast to byte, value : " + value);
    }

    public static final Short castToShort(Object value) {
        if (value == null) {
            return null;
        }
        if (value instanceof Number) {
            return Short.valueOf(((Number) value).shortValue());
        }
        if (value instanceof String) {
            String strVal = (String) value;
            if (strVal.length() != 0 && !"null".equals(strVal)) {
                return Short.valueOf(Short.parseShort(strVal));
            }
            return null;
        }
        throw new JSONException("can not cast to short, value : " + value);
    }

    public static final BigDecimal castToBigDecimal(Object value) {
        if (value == null) {
            return null;
        }
        if (value instanceof BigDecimal) {
            return (BigDecimal) value;
        }
        if (value instanceof BigInteger) {
            return new BigDecimal((BigInteger) value);
        }
        String strVal = value.toString();
        if (strVal.length() != 0 && !"null".equals(strVal)) {
            return new BigDecimal(strVal);
        }
        return null;
    }

    public static final BigInteger castToBigInteger(Object value) {
        if (value == null) {
            return null;
        }
        if (value instanceof BigInteger) {
            return (BigInteger) value;
        }
        if ((value instanceof Float) || (value instanceof Double)) {
            return BigInteger.valueOf(((Number) value).longValue());
        }
        String strVal = value.toString();
        if (strVal.length() != 0 && !"null".equals(strVal)) {
            return new BigInteger(strVal);
        }
        return null;
    }

    public static final Float castToFloat(Object value) {
        if (value == null) {
            return null;
        }
        if (value instanceof Number) {
            return Float.valueOf(((Number) value).floatValue());
        }
        if (value instanceof String) {
            String strVal = value.toString();
            if (strVal.length() != 0 && !"null".equals(strVal)) {
                return Float.valueOf(Float.parseFloat(strVal));
            }
            return null;
        }
        throw new JSONException("can not cast to float, value : " + value);
    }

    public static final Double castToDouble(Object value) {
        if (value == null) {
            return null;
        }
        if (value instanceof Number) {
            return Double.valueOf(((Number) value).doubleValue());
        }
        if (value instanceof String) {
            String strVal = value.toString();
            if (strVal.length() != 0 && !"null".equals(strVal)) {
                return Double.valueOf(Double.parseDouble(strVal));
            }
            return null;
        }
        throw new JSONException("can not cast to double, value : " + value);
    }

    public static final Date castToDate(Object value) {
        String format;
        if (value == null) {
            return null;
        }
        if (value instanceof Calendar) {
            return ((Calendar) value).getTime();
        }
        if (value instanceof Date) {
            return (Date) value;
        }
        long longValue = -1;
        if (value instanceof Number) {
            longValue = ((Number) value).longValue();
        }
        if (value instanceof String) {
            String strVal = (String) value;
            if (strVal.indexOf(45) != -1) {
                if (strVal.length() == JSON.DEFFAULT_DATE_FORMAT.length()) {
                    format = JSON.DEFFAULT_DATE_FORMAT;
                } else if (strVal.length() == 10) {
                    format = "yyyy-MM-dd";
                } else if (strVal.length() == HostConstants.FORMATDATE.length()) {
                    format = HostConstants.FORMATDATE;
                } else {
                    format = "yyyy-MM-dd HH:mm:ss.SSS";
                }
                SimpleDateFormat dateFormat = new SimpleDateFormat(format, JSON.defaultLocale);
                dateFormat.setTimeZone(JSON.defaultTimeZone);
                try {
                    return dateFormat.parse(strVal);
                } catch (ParseException e) {
                    throw new JSONException("can not cast to Date, value : " + strVal);
                }
            } else if (strVal.length() == 0 || "null".equals(strVal)) {
                return null;
            } else {
                longValue = Long.parseLong(strVal);
            }
        }
        if (longValue < 0) {
            throw new JSONException("can not cast to Date, value : " + value);
        }
        return new Date(longValue);
    }

    public static final Long castToLong(Object value) {
        if (value == null) {
            return null;
        }
        if (value instanceof Number) {
            return Long.valueOf(((Number) value).longValue());
        }
        if (value instanceof String) {
            String strVal = (String) value;
            if (strVal.length() == 0 || "null".equals(strVal)) {
                return null;
            }
            try {
                return Long.valueOf(Long.parseLong(strVal));
            } catch (NumberFormatException e) {
                JSONLexer dateParser = new JSONLexer(strVal);
                Calendar calendar = null;
                if (dateParser.scanISO8601DateIfMatch(false)) {
                    calendar = dateParser.calendar;
                }
                dateParser.close();
                if (calendar != null) {
                    return Long.valueOf(calendar.getTimeInMillis());
                }
            }
        }
        throw new JSONException("can not cast to long, value : " + value);
    }

    public static final Integer castToInt(Object value) {
        if (value == null) {
            return null;
        }
        if (value instanceof Integer) {
            return (Integer) value;
        }
        if (value instanceof Number) {
            return Integer.valueOf(((Number) value).intValue());
        }
        if (value instanceof String) {
            String strVal = (String) value;
            if (strVal.length() != 0 && !"null".equals(strVal)) {
                return Integer.valueOf(Integer.parseInt(strVal));
            }
            return null;
        }
        throw new JSONException("can not cast to int, value : " + value);
    }

    public static final byte[] castToBytes(Object value) {
        if (value instanceof byte[]) {
            return (byte[]) value;
        }
        if (value instanceof String) {
            String string = (String) value;
            return JSONLexer.decodeFast(string, 0, string.length());
        }
        throw new JSONException("can not cast to int, value : " + value);
    }

    public static final Boolean castToBoolean(Object value) {
        boolean z = true;
        if (value == null) {
            return null;
        }
        if (value instanceof Boolean) {
            return (Boolean) value;
        }
        if (value instanceof Number) {
            if (((Number) value).intValue() != 1) {
                z = false;
            }
            return Boolean.valueOf(z);
        }
        if (value instanceof String) {
            String strVal = (String) value;
            if (strVal.length() == 0 || "null".equals(strVal)) {
                return null;
            }
            if (ServerProtocol.DIALOG_RETURN_SCOPES_TRUE.equalsIgnoreCase(strVal) || "1".equals(strVal)) {
                return Boolean.TRUE;
            }
            if ("false".equalsIgnoreCase(strVal) || "0".equals(strVal)) {
                return Boolean.FALSE;
            }
        }
        throw new JSONException("can not cast to int, value : " + value);
    }

    public static final <T> T castToJavaBean(Object obj, Class<T> clazz) {
        return (T) cast(obj, (Class<Object>) clazz, ParserConfig.global);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> T cast(Object obj, Class<T> clazz, ParserConfig mapping) {
        Calendar calendar;
        if (obj == 0) {
            return null;
        }
        if (clazz == null) {
            throw new IllegalArgumentException("clazz is null");
        }
        if (clazz != obj.getClass()) {
            if (obj instanceof Map) {
                if (clazz != Map.class) {
                    Map map = (Map) obj;
                    if (clazz != Object.class || map.containsKey(JSON.DEFAULT_TYPE_KEY)) {
                        return (T) castToJavaBean((Map) obj, clazz, mapping);
                    }
                    return obj;
                }
                return obj;
            }
            if (clazz.isArray()) {
                if (obj instanceof Collection) {
                    Collection collection = (Collection) obj;
                    int index = 0;
                    T t = (T) Array.newInstance(clazz.getComponentType(), collection.size());
                    for (Object item : collection) {
                        Object value = cast(item, (Class<Object>) clazz.getComponentType(), mapping);
                        Array.set(t, index, value);
                        index++;
                    }
                    return t;
                } else if (clazz == byte[].class) {
                    return (T) castToBytes(obj);
                }
            }
            if (!clazz.isAssignableFrom(obj.getClass())) {
                if (clazz == Boolean.TYPE || clazz == Boolean.class) {
                    return (T) castToBoolean(obj);
                }
                if (clazz == Byte.TYPE || clazz == Byte.class) {
                    return (T) castToByte(obj);
                }
                if (clazz == Short.TYPE || clazz == Short.class) {
                    return (T) castToShort(obj);
                }
                if (clazz == Integer.TYPE || clazz == Integer.class) {
                    return (T) castToInt(obj);
                }
                if (clazz == Long.TYPE || clazz == Long.class) {
                    return (T) castToLong(obj);
                }
                if (clazz == Float.TYPE || clazz == Float.class) {
                    return (T) castToFloat(obj);
                }
                if (clazz == Double.TYPE || clazz == Double.class) {
                    return (T) castToDouble(obj);
                }
                if (clazz == String.class) {
                    return (T) castToString(obj);
                }
                if (clazz == BigDecimal.class) {
                    return (T) castToBigDecimal(obj);
                }
                if (clazz == BigInteger.class) {
                    return (T) castToBigInteger(obj);
                }
                if (clazz == Date.class) {
                    return (T) castToDate(obj);
                }
                if (clazz.isEnum()) {
                    return (T) castToEnum(obj, clazz, mapping);
                }
                if (Calendar.class.isAssignableFrom(clazz)) {
                    Date date = castToDate(obj);
                    if (clazz == Calendar.class) {
                        calendar = Calendar.getInstance(JSON.defaultTimeZone, JSON.defaultLocale);
                    } else {
                        try {
                            calendar = (Calendar) clazz.newInstance();
                        } catch (Exception e) {
                            throw new JSONException("can not cast to : " + clazz.getName(), e);
                        }
                    }
                    calendar.setTime(date);
                    return (T) calendar;
                }
                if (obj instanceof String) {
                    String strVal = (String) obj;
                    if (strVal.length() == 0 || "null".equals(strVal)) {
                        return null;
                    }
                    if (clazz == Currency.class) {
                        return (T) Currency.getInstance(strVal);
                    }
                }
                throw new JSONException("can not cast to : " + clazz.getName());
            }
            return obj;
        }
        return obj;
    }

    public static final <T> T castToEnum(Object obj, Class<T> clazz, ParserConfig mapping) {
        try {
            if (obj instanceof String) {
                String name = (String) obj;
                if (name.length() == 0) {
                    return null;
                }
                return (T) Enum.valueOf(clazz, name);
            }
            if (obj instanceof Number) {
                int ordinal = ((Number) obj).intValue();
                T[] enumConstants = clazz.getEnumConstants();
                if (ordinal < enumConstants.length) {
                    return enumConstants[ordinal];
                }
            }
            throw new JSONException("can not cast to : " + clazz.getName());
        } catch (Exception ex) {
            throw new JSONException("can not cast to : " + clazz.getName(), ex);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <T> T cast(Object obj, Type type, ParserConfig mapping) {
        if (obj == 0) {
            return null;
        }
        if (type instanceof Class) {
            return (T) cast(obj, (Class<Object>) type, mapping);
        }
        if (type instanceof ParameterizedType) {
            return (T) cast(obj, (ParameterizedType) type, mapping);
        }
        if (obj instanceof String) {
            String strVal = (String) obj;
            if (strVal.length() == 0 || "null".equals(strVal)) {
                return null;
            }
        }
        if (type instanceof TypeVariable) {
            return obj;
        }
        throw new JSONException("can not cast to : " + type);
    }

    /* JADX WARN: Type inference failed for: r10v0, types: [T, java.util.Map, java.util.HashMap] */
    public static final <T> T cast(Object obj, ParameterizedType type, ParserConfig mapping) {
        T t;
        Type rawTye = type.getRawType();
        if (rawTye == Set.class || rawTye == HashSet.class || rawTye == TreeSet.class || rawTye == List.class || rawTye == ArrayList.class) {
            Type itemType = type.getActualTypeArguments()[0];
            if (obj instanceof Iterable) {
                if (rawTye == Set.class || rawTye == HashSet.class) {
                    t = (T) new HashSet();
                } else if (rawTye == TreeSet.class) {
                    t = (T) new TreeSet();
                } else {
                    t = (T) new ArrayList();
                }
                for (Object item : (Iterable) obj) {
                    Collection collection = (Collection) t;
                    collection.add(cast(item, itemType, mapping));
                }
                return t;
            }
        }
        if (rawTye == Map.class || rawTye == HashMap.class) {
            Type keyType = type.getActualTypeArguments()[0];
            Type valueType = type.getActualTypeArguments()[1];
            if (obj instanceof Map) {
                ?? r10 = (T) new HashMap();
                for (Map.Entry entry : ((Map) obj).entrySet()) {
                    Object key = cast(entry.getKey(), keyType, mapping);
                    Object value = cast(entry.getValue(), valueType, mapping);
                    r10.put(key, value);
                }
                return r10;
            }
        }
        if (obj instanceof String) {
            String strVal = (String) obj;
            if (strVal.length() == 0 || "null".equals(strVal)) {
                return null;
            }
        }
        if (type.getActualTypeArguments().length == 1) {
            Type argType = type.getActualTypeArguments()[0];
            if (argType instanceof WildcardType) {
                return (T) cast(obj, rawTye, mapping);
            }
        }
        throw new JSONException("can not cast to : " + type);
    }

    public static final <T> T castToJavaBean(Map<String, Object> map, Class<T> clazz, ParserConfig config) {
        JSONObject object;
        int lineNumber;
        try {
            if (clazz == StackTraceElement.class) {
                String declaringClass = (String) map.get("className");
                String methodName = (String) map.get("methodName");
                String fileName = (String) map.get("fileName");
                Number value = (Number) map.get("lineNumber");
                if (value == null) {
                    lineNumber = 0;
                } else {
                    lineNumber = value.intValue();
                }
                return (T) new StackTraceElement(declaringClass, methodName, fileName, lineNumber);
            }
            Object iClassObject = map.get(JSON.DEFAULT_TYPE_KEY);
            if (iClassObject instanceof String) {
                String className = (String) iClassObject;
                Class<?> loadClazz = loadClass(className, null);
                if (loadClazz == null) {
                    throw new ClassNotFoundException(className + " not found");
                }
                if (!loadClazz.equals(clazz)) {
                    return (T) castToJavaBean(map, loadClazz, config);
                }
            }
            if (clazz.isInterface()) {
                if (map instanceof JSONObject) {
                    object = (JSONObject) map;
                } else {
                    object = new JSONObject(map);
                }
                return (T) Proxy.newProxyInstance(Thread.currentThread().getContextClassLoader(), new Class[]{clazz}, object);
            }
            if (config == null) {
                config = ParserConfig.global;
            }
            JavaBeanDeserializer javaBeanDeser = null;
            ObjectDeserializer deserizer = config.getDeserializer(clazz);
            if (deserizer instanceof JavaBeanDeserializer) {
                javaBeanDeser = (JavaBeanDeserializer) deserizer;
            }
            if (javaBeanDeser == null) {
                throw new JSONException("can not get javaBeanDeserializer");
            }
            return (T) javaBeanDeser.createInstance(map, config);
        } catch (Exception e) {
            throw new JSONException(e.getMessage(), e);
        }
    }

    public static Class<?> loadClass(String className, ClassLoader classLoader) {
        if (className == null || className.length() == 0) {
            return null;
        }
        Class<?> clazz = mappings.get(className);
        if (clazz == null) {
            if (className.charAt(0) == '[') {
                Class<?> componentType = loadClass(className.substring(1), classLoader);
                return Array.newInstance(componentType, 0).getClass();
            } else if (className.startsWith("L") && className.endsWith(";")) {
                String newClassName = className.substring(1, className.length() - 1);
                return loadClass(newClassName, classLoader);
            } else {
                if (classLoader != null) {
                    try {
                        clazz = classLoader.loadClass(className);
                        mappings.put(className, clazz);
                        return clazz;
                    } catch (Exception e) {
                        e.printStackTrace();
                    }
                }
                try {
                    ClassLoader contextClassLoader = Thread.currentThread().getContextClassLoader();
                    if (contextClassLoader != null) {
                        clazz = contextClassLoader.loadClass(className);
                        mappings.put(className, clazz);
                        return clazz;
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                }
                try {
                    clazz = Class.forName(className);
                    mappings.put(className, clazz);
                    return clazz;
                } catch (Exception e3) {
                    e3.printStackTrace();
                    return clazz;
                }
            }
        }
        return clazz;
    }

    public static List<FieldInfo> computeGetters(Class<?> clazz, int modifiers, boolean fieldOnly, JSONType jsonType, Map<String, String> aliasMap, boolean sorted, boolean jsonFieldSupport, boolean fieldGenericSupport, PropertyNamingStrategy propertyNamingStrategy) {
        Field[] declaredFields;
        String propertyName;
        String propertyName2;
        Map<String, FieldInfo> fieldInfoMap = new LinkedHashMap<>();
        Field[] declaredFields2 = clazz.getDeclaredFields();
        if (!fieldOnly) {
            Method[] methods = clazz.getMethods();
            int length = methods.length;
            int i = 0;
            while (true) {
                int i2 = i;
                if (i2 >= length) {
                    break;
                }
                Method method = methods[i2];
                String methodName = method.getName();
                int ordinal = 0;
                int serialzeFeatures = 0;
                if ((method.getModifiers() & 8) == 0 && !method.getReturnType().equals(Void.TYPE) && method.getParameterTypes().length == 0 && method.getReturnType() != ClassLoader.class && method.getDeclaringClass() != Object.class && (!methodName.equals("getMetaClass") || !method.getReturnType().getName().equals("groovy.lang.MetaClass"))) {
                    JSONField annotation = jsonFieldSupport ? (JSONField) method.getAnnotation(JSONField.class) : null;
                    if (annotation == null && jsonFieldSupport) {
                        annotation = getSupperMethodAnnotation(clazz, method);
                    }
                    if (annotation != null) {
                        if (annotation.serialize()) {
                            ordinal = annotation.ordinal();
                            serialzeFeatures = SerializerFeature.m1426of(annotation.serialzeFeatures());
                            if (annotation.name().length() != 0) {
                                String propertyName3 = annotation.name();
                                if (aliasMap == null || (propertyName3 = aliasMap.get(propertyName3)) != null) {
                                    setAccessible(clazz, method, modifiers);
                                    fieldInfoMap.put(propertyName3, new FieldInfo(propertyName3, method, null, clazz, null, ordinal, serialzeFeatures, annotation, null, true));
                                }
                            }
                        }
                    }
                    if (methodName.startsWith("get")) {
                        if (methodName.length() >= 4 && !methodName.equals("getClass")) {
                            char c3 = methodName.charAt(3);
                            if (Character.isUpperCase(c3)) {
                                if (compatibleWithJavaBean) {
                                    propertyName2 = decapitalize(methodName.substring(3));
                                } else {
                                    propertyName2 = Character.toLowerCase(methodName.charAt(3)) + methodName.substring(4);
                                }
                            } else if (c3 == '_') {
                                propertyName2 = methodName.substring(4);
                            } else if (c3 == 'f') {
                                propertyName2 = methodName.substring(3);
                            } else if (methodName.length() >= 5 && Character.isUpperCase(methodName.charAt(4))) {
                                propertyName2 = decapitalize(methodName.substring(3));
                            }
                            if (!isJSONTypeIgnore(clazz, jsonType, propertyName2)) {
                                Field field = getField(clazz, propertyName2, declaredFields2);
                                JSONField fieldAnnotation = null;
                                if (field != null) {
                                    fieldAnnotation = jsonFieldSupport ? (JSONField) field.getAnnotation(JSONField.class) : null;
                                    if (fieldAnnotation != null) {
                                        if (fieldAnnotation.serialize()) {
                                            ordinal = fieldAnnotation.ordinal();
                                            serialzeFeatures = SerializerFeature.m1426of(fieldAnnotation.serialzeFeatures());
                                            if (fieldAnnotation.name().length() != 0) {
                                                propertyName2 = fieldAnnotation.name();
                                                if (aliasMap != null && (propertyName2 = aliasMap.get(propertyName2)) == null) {
                                                }
                                            }
                                        }
                                    }
                                }
                                if (propertyNamingStrategy != null) {
                                    propertyName2 = propertyNamingStrategy.translate(propertyName2);
                                }
                                if (aliasMap == null || (propertyName2 = aliasMap.get(propertyName2)) != null) {
                                    setAccessible(clazz, method, modifiers);
                                    fieldInfoMap.put(propertyName2, new FieldInfo(propertyName2, method, field, clazz, null, ordinal, serialzeFeatures, annotation, fieldAnnotation, fieldGenericSupport));
                                }
                            }
                        }
                    }
                    if (methodName.startsWith(C2354g.f992ac) && methodName.length() >= 3) {
                        char c2 = methodName.charAt(2);
                        if (Character.isUpperCase(c2)) {
                            if (compatibleWithJavaBean) {
                                propertyName = decapitalize(methodName.substring(2));
                            } else {
                                propertyName = Character.toLowerCase(methodName.charAt(2)) + methodName.substring(3);
                            }
                        } else if (c2 == '_') {
                            propertyName = methodName.substring(3);
                        } else if (c2 == 'f') {
                            propertyName = methodName.substring(2);
                        }
                        Field field2 = getField(clazz, propertyName, declaredFields2);
                        if (field2 == null) {
                            field2 = getField(clazz, methodName, declaredFields2);
                        }
                        JSONField fieldAnnotation2 = null;
                        if (field2 != null) {
                            fieldAnnotation2 = jsonFieldSupport ? (JSONField) field2.getAnnotation(JSONField.class) : null;
                            if (fieldAnnotation2 != null) {
                                if (fieldAnnotation2.serialize()) {
                                    ordinal = fieldAnnotation2.ordinal();
                                    serialzeFeatures = SerializerFeature.m1426of(fieldAnnotation2.serialzeFeatures());
                                    if (fieldAnnotation2.name().length() != 0) {
                                        propertyName = fieldAnnotation2.name();
                                        if (aliasMap != null && (propertyName = aliasMap.get(propertyName)) == null) {
                                        }
                                    }
                                }
                            }
                        }
                        if (propertyNamingStrategy != null) {
                            propertyName = propertyNamingStrategy.translate(propertyName);
                        }
                        if (aliasMap == null || (propertyName = aliasMap.get(propertyName)) != null) {
                            setAccessible(clazz, field2, modifiers);
                            setAccessible(clazz, method, modifiers);
                            fieldInfoMap.put(propertyName, new FieldInfo(propertyName, method, field2, clazz, null, ordinal, serialzeFeatures, annotation, fieldAnnotation2, fieldGenericSupport));
                        }
                    }
                }
                i = i2 + 1;
            }
        }
        List<Field> classfields = new ArrayList<>(declaredFields2.length);
        for (Field f : declaredFields2) {
            if ((f.getModifiers() & 8) == 0 && !f.getName().equals("this$0") && (f.getModifiers() & 1) != 0) {
                classfields.add(f);
            }
        }
        for (Class<?> c = clazz.getSuperclass(); c != null && c != Object.class; c = c.getSuperclass()) {
            for (Field f2 : c.getDeclaredFields()) {
                if ((f2.getModifiers() & 8) == 0 && (f2.getModifiers() & 1) != 0) {
                    classfields.add(f2);
                }
            }
        }
        for (Field field3 : classfields) {
            JSONField fieldAnnotation3 = jsonFieldSupport ? (JSONField) field3.getAnnotation(JSONField.class) : null;
            int ordinal2 = 0;
            int serialzeFeatures2 = 0;
            String propertyName4 = field3.getName();
            if (fieldAnnotation3 != null) {
                if (fieldAnnotation3.serialize()) {
                    ordinal2 = fieldAnnotation3.ordinal();
                    serialzeFeatures2 = SerializerFeature.m1426of(fieldAnnotation3.serialzeFeatures());
                    if (fieldAnnotation3.name().length() != 0) {
                        propertyName4 = fieldAnnotation3.name();
                    }
                }
            }
            if (aliasMap == null || (propertyName4 = aliasMap.get(propertyName4)) != null) {
                if (propertyNamingStrategy != null) {
                    propertyName4 = propertyNamingStrategy.translate(propertyName4);
                }
                if (!fieldInfoMap.containsKey(propertyName4)) {
                    setAccessible(clazz, field3, modifiers);
                    fieldInfoMap.put(propertyName4, new FieldInfo(propertyName4, null, field3, clazz, null, ordinal2, serialzeFeatures2, null, fieldAnnotation3, fieldGenericSupport));
                }
            }
        }
        List<FieldInfo> fieldInfoList = new ArrayList<>();
        boolean containsAll = false;
        String[] orders = null;
        if (jsonType != null) {
            orders = jsonType.orders();
            if (orders != null && orders.length == fieldInfoMap.size()) {
                containsAll = true;
                int length2 = orders.length;
                int i3 = 0;
                while (true) {
                    if (i3 >= length2) {
                        break;
                    }
                    String item = orders[i3];
                    if (fieldInfoMap.containsKey(item)) {
                        i3++;
                    } else {
                        containsAll = false;
                        break;
                    }
                }
            } else {
                containsAll = false;
            }
        }
        if (containsAll) {
            for (String item2 : orders) {
                FieldInfo fieldInfo = fieldInfoMap.get(item2);
                fieldInfoList.add(fieldInfo);
            }
        } else {
            for (FieldInfo fieldInfo2 : fieldInfoMap.values()) {
                fieldInfoList.add(fieldInfo2);
            }
            if (sorted) {
                Collections.sort(fieldInfoList);
            }
        }
        return fieldInfoList;
    }

    public static JSONField getSupperMethodAnnotation(Class<?> clazz, Method method) {
        Class<?>[] interfaces;
        Method[] methods;
        JSONField annotation;
        Method[] methods2;
        JSONField annotation2;
        for (Class<?> interfaceClass : clazz.getInterfaces()) {
            for (Method interfaceMethod : interfaceClass.getMethods()) {
                if (interfaceMethod.getName().equals(method.getName())) {
                    Class<?>[] interfaceParameterTypes = interfaceMethod.getParameterTypes();
                    Class<?>[] parameterTypes = method.getParameterTypes();
                    if (interfaceParameterTypes.length == parameterTypes.length) {
                        boolean match = true;
                        int i = 0;
                        while (true) {
                            if (i < interfaceParameterTypes.length) {
                                if (interfaceParameterTypes[i].equals(parameterTypes[i])) {
                                    i++;
                                } else {
                                    match = false;
                                    break;
                                }
                            } else {
                                break;
                            }
                        }
                        if (match && (annotation2 = (JSONField) interfaceMethod.getAnnotation(JSONField.class)) != null) {
                            return annotation2;
                        }
                    } else {
                        continue;
                    }
                }
            }
        }
        Class<?> superClass = clazz.getSuperclass();
        if (superClass != null && Modifier.isAbstract(superClass.getModifiers())) {
            Class<?>[] types = method.getParameterTypes();
            for (Method interfaceMethod2 : superClass.getMethods()) {
                Class<?>[] interfaceTypes = interfaceMethod2.getParameterTypes();
                if (interfaceTypes.length == types.length && interfaceMethod2.getName().equals(method.getName())) {
                    boolean match2 = true;
                    int i2 = 0;
                    while (true) {
                        if (i2 < types.length) {
                            if (interfaceTypes[i2].equals(types[i2])) {
                                i2++;
                            } else {
                                match2 = false;
                                break;
                            }
                        } else {
                            break;
                        }
                    }
                    if (match2 && (annotation = (JSONField) interfaceMethod2.getAnnotation(JSONField.class)) != null) {
                        return annotation;
                    }
                }
            }
        }
        return null;
    }

    private static boolean isJSONTypeIgnore(Class<?> clazz, JSONType jsonType, String propertyName) {
        String[] ignores;
        if (jsonType != null && jsonType.ignores() != null) {
            for (String item : jsonType.ignores()) {
                if (propertyName.equalsIgnoreCase(item)) {
                    return true;
                }
            }
        }
        Class<?> superClass = clazz.getSuperclass();
        return (superClass == Object.class || superClass == null || !isJSONTypeIgnore(superClass, (JSONType) superClass.getAnnotation(JSONType.class), propertyName)) ? false : true;
    }

    public static boolean isGenericParamType(Type type) {
        if (type instanceof ParameterizedType) {
            return true;
        }
        if (!(type instanceof Class)) {
            return false;
        }
        Type superType = ((Class) type).getGenericSuperclass();
        return superType != Object.class && isGenericParamType(superType);
    }

    public static Type getGenericParamType(Type type) {
        if (!(type instanceof Class)) {
            return type;
        }
        return getGenericParamType(((Class) type).getGenericSuperclass());
    }

    public static Class<?> getClass(Type type) {
        if (type.getClass() == Class.class) {
            return (Class) type;
        }
        if (type instanceof ParameterizedType) {
            return getClass(((ParameterizedType) type).getRawType());
        }
        if (type instanceof TypeVariable) {
            return (Class) ((TypeVariable) type).getBounds()[0];
        }
        return Object.class;
    }

    public static String decapitalize(String name) {
        if (name != null && name.length() != 0) {
            if (name.length() <= 1 || !Character.isUpperCase(name.charAt(1)) || !Character.isUpperCase(name.charAt(0))) {
                char[] chars = name.toCharArray();
                chars[0] = Character.toLowerCase(chars[0]);
                return new String(chars);
            }
            return name;
        }
        return name;
    }

    public static boolean setAccessible(Class<?> clazz, Member member, int classMofifiers) {
        if (member == null || !setAccessibleEnable) {
            return false;
        }
        Class<?> supperClass = clazz.getSuperclass();
        if ((supperClass == null || supperClass == Object.class) && (member.getModifiers() & 1) != 0 && (classMofifiers & 1) != 0) {
            return false;
        }
        AccessibleObject obj = (AccessibleObject) member;
        try {
            obj.setAccessible(true);
            return true;
        } catch (AccessControlException e) {
            setAccessibleEnable = false;
            return false;
        }
    }

    public static Field getField(Class<?> clazz, String fieldName, Field[] declaredFields) {
        Field field = getField0(clazz, fieldName, declaredFields);
        if (field == null) {
            field = getField0(clazz, EventsFilesManager.ROLL_OVER_FILE_NAME_SEPARATOR + fieldName, declaredFields);
        }
        if (field == null) {
            field = getField0(clazz, "m_" + fieldName, declaredFields);
        }
        if (field == null) {
            String mName = ANSIConstants.ESC_END + fieldName.substring(0, 1).toUpperCase() + fieldName.substring(1);
            return getField0(clazz, mName, declaredFields);
        }
        return field;
    }

    private static Field getField0(Class<?> clazz, String fieldName, Field[] declaredFields) {
        for (Field item : declaredFields) {
            if (fieldName.equals(item.getName())) {
                return item;
            }
        }
        Class<?> superClass = clazz.getSuperclass();
        return (superClass == null || superClass == Object.class) ? null : getField(superClass, fieldName, superClass.getDeclaredFields());
    }
}
