package com.alibaba.fastjson;

import com.alibaba.fastjson.annotation.JSONField;
import com.alibaba.fastjson.parser.ParserConfig;
import com.alibaba.fastjson.util.TypeUtils;
import com.umeng.commonsdk.proguard.C2354g;
import java.io.Serializable;
import java.lang.reflect.InvocationHandler;
import java.lang.reflect.Method;
import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Collection;
import java.util.Date;
import java.util.HashMap;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.Set;
/* loaded from: classes.dex */
public class JSONObject extends JSON implements Map<String, Object>, Cloneable, Serializable, InvocationHandler {
    private final Map<String, Object> map;

    public JSONObject() {
        this(16, false);
    }

    public JSONObject(Map<String, Object> map) {
        this.map = map;
    }

    public JSONObject(boolean ordered) {
        this(16, ordered);
    }

    public JSONObject(int initialCapacity) {
        this(initialCapacity, false);
    }

    public JSONObject(int initialCapacity, boolean ordered) {
        if (ordered) {
            this.map = new LinkedHashMap(initialCapacity);
        } else {
            this.map = new HashMap(initialCapacity);
        }
    }

    @Override // java.util.Map
    public int size() {
        return this.map.size();
    }

    @Override // java.util.Map
    public boolean isEmpty() {
        return this.map.isEmpty();
    }

    @Override // java.util.Map
    public boolean containsKey(Object key) {
        return this.map.containsKey(key);
    }

    @Override // java.util.Map
    public boolean containsValue(Object value) {
        return this.map.containsValue(value);
    }

    @Override // java.util.Map
    public Object get(Object key) {
        return this.map.get(key);
    }

    public JSONObject getJSONObject(String key) {
        Object value = this.map.get(key);
        if (value instanceof JSONObject) {
            return (JSONObject) value;
        }
        if (value instanceof String) {
            return JSON.parseObject((String) value);
        }
        return (JSONObject) toJSON(value);
    }

    public JSONArray getJSONArray(String key) {
        Object value = this.map.get(key);
        if (value instanceof JSONArray) {
            return (JSONArray) value;
        }
        if (value instanceof String) {
            return (JSONArray) JSON.parse((String) value);
        }
        return (JSONArray) toJSON(value);
    }

    public <T> T getObject(String key, Class<T> clazz) {
        Object obj = this.map.get(key);
        return (T) TypeUtils.castToJavaBean(obj, clazz);
    }

    public Boolean getBoolean(String key) {
        Object value = get(key);
        if (value == null) {
            return null;
        }
        return TypeUtils.castToBoolean(value);
    }

    public byte[] getBytes(String key) {
        Object value = get(key);
        if (value == null) {
            return null;
        }
        return TypeUtils.castToBytes(value);
    }

    public boolean getBooleanValue(String key) {
        Object value = get(key);
        if (value == null) {
            return false;
        }
        return TypeUtils.castToBoolean(value).booleanValue();
    }

    public Byte getByte(String key) {
        Object value = get(key);
        return TypeUtils.castToByte(value);
    }

    public byte getByteValue(String key) {
        Object value = get(key);
        if (value == null) {
            return (byte) 0;
        }
        return TypeUtils.castToByte(value).byteValue();
    }

    public Short getShort(String key) {
        Object value = get(key);
        return TypeUtils.castToShort(value);
    }

    public short getShortValue(String key) {
        Object value = get(key);
        if (value == null) {
            return (short) 0;
        }
        return TypeUtils.castToShort(value).shortValue();
    }

    public Integer getInteger(String key) {
        Object value = get(key);
        return TypeUtils.castToInt(value);
    }

    public int getIntValue(String key) {
        Object value = get(key);
        if (value == null) {
            return 0;
        }
        return TypeUtils.castToInt(value).intValue();
    }

    public Long getLong(String key) {
        Object value = get(key);
        return TypeUtils.castToLong(value);
    }

    public long getLongValue(String key) {
        Object value = get(key);
        if (value == null) {
            return 0L;
        }
        return TypeUtils.castToLong(value).longValue();
    }

    public Float getFloat(String key) {
        Object value = get(key);
        return TypeUtils.castToFloat(value);
    }

    public float getFloatValue(String key) {
        Object value = get(key);
        if (value == null) {
            return 0.0f;
        }
        return TypeUtils.castToFloat(value).floatValue();
    }

    public Double getDouble(String key) {
        Object value = get(key);
        return TypeUtils.castToDouble(value);
    }

    public double getDoubleValue(String key) {
        Object value = get(key);
        if (value == null) {
            return 0.0d;
        }
        return TypeUtils.castToDouble(value).doubleValue();
    }

    public BigDecimal getBigDecimal(String key) {
        Object value = get(key);
        return TypeUtils.castToBigDecimal(value);
    }

    public BigInteger getBigInteger(String key) {
        Object value = get(key);
        return TypeUtils.castToBigInteger(value);
    }

    public String getString(String key) {
        Object value = get(key);
        if (value == null) {
            return null;
        }
        return value.toString();
    }

    public Date getDate(String key) {
        Object value = get(key);
        return TypeUtils.castToDate(value);
    }

    @Override // java.util.Map
    public Object put(String key, Object value) {
        return this.map.put(key, value);
    }

    @Override // java.util.Map
    public void putAll(Map<? extends String, ? extends Object> m) {
        this.map.putAll(m);
    }

    @Override // java.util.Map
    public void clear() {
        this.map.clear();
    }

    @Override // java.util.Map
    public Object remove(Object key) {
        return this.map.remove(key);
    }

    @Override // java.util.Map
    public Set<String> keySet() {
        return this.map.keySet();
    }

    @Override // java.util.Map
    public Collection<Object> values() {
        return this.map.values();
    }

    @Override // java.util.Map
    public Set<Map.Entry<String, Object>> entrySet() {
        return this.map.entrySet();
    }

    public Object clone() {
        return new JSONObject(new LinkedHashMap(this.map));
    }

    @Override // java.util.Map
    public boolean equals(Object obj) {
        return this.map.equals(obj);
    }

    @Override // java.util.Map
    public int hashCode() {
        return this.map.hashCode();
    }

    @Override // java.lang.reflect.InvocationHandler
    public Object invoke(Object proxy, Method method, Object[] args) throws Throwable {
        String name;
        String name2;
        String name3;
        Class<?>[] parameterTypes = method.getParameterTypes();
        if (parameterTypes.length == 1) {
            if (method.getName().equals("equals")) {
                return Boolean.valueOf(equals(args[0]));
            }
            Class<?> returnType = method.getReturnType();
            if (returnType != Void.TYPE) {
                throw new JSONException("illegal setter");
            }
            String name4 = null;
            JSONField annotation = (JSONField) method.getAnnotation(JSONField.class);
            if (annotation != null && annotation.name().length() != 0) {
                name4 = annotation.name();
            }
            if (name4 == null) {
                String name5 = method.getName();
                if (!name5.startsWith("set")) {
                    throw new JSONException("illegal setter");
                }
                if (name5.substring(3).length() == 0) {
                    throw new JSONException("illegal setter");
                }
                name4 = Character.toLowerCase(name3.charAt(0)) + name3.substring(1);
            }
            this.map.put(name4, args[0]);
            return null;
        } else if (parameterTypes.length == 0) {
            Class<?> returnType2 = method.getReturnType();
            if (returnType2 == Void.TYPE) {
                throw new JSONException("illegal getter");
            }
            String name6 = null;
            JSONField annotation2 = (JSONField) method.getAnnotation(JSONField.class);
            if (annotation2 != null && annotation2.name().length() != 0) {
                name6 = annotation2.name();
            }
            if (name6 == null) {
                String name7 = method.getName();
                if (name7.startsWith("get")) {
                    if (name7.substring(3).length() == 0) {
                        throw new JSONException("illegal getter");
                    }
                    name6 = Character.toLowerCase(name2.charAt(0)) + name2.substring(1);
                } else if (name7.startsWith(C2354g.f992ac)) {
                    if (name7.substring(2).length() == 0) {
                        throw new JSONException("illegal getter");
                    }
                    name6 = Character.toLowerCase(name.charAt(0)) + name.substring(1);
                } else if (name7.startsWith("hashCode")) {
                    return Integer.valueOf(hashCode());
                } else {
                    if (name7.startsWith("toString")) {
                        return toString();
                    }
                    throw new JSONException("illegal getter");
                }
            }
            Object value = this.map.get(name6);
            return TypeUtils.cast(value, method.getGenericReturnType(), ParserConfig.global);
        } else {
            throw new UnsupportedOperationException(method.toGenericString());
        }
    }

    public Map<String, Object> getInnerMap() {
        return this.map;
    }
}
