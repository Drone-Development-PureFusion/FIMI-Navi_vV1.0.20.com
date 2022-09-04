package com.alibaba.fastjson.util;

import com.alibaba.fastjson.annotation.JSONField;
import java.lang.reflect.Array;
import java.lang.reflect.Field;
import java.lang.reflect.GenericArrayType;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.ParameterizedType;
import java.lang.reflect.Type;
import java.lang.reflect.TypeVariable;
/* loaded from: classes.dex */
public class FieldInfo implements Comparable<FieldInfo> {
    public final Class<?> declaringClass;
    public final Field field;
    public final boolean fieldAccess;
    private final JSONField fieldAnnotation;
    public final Class<?> fieldClass;
    public final boolean fieldTransient;
    public final Type fieldType;
    public final String format;
    public final boolean getOnly;
    public final boolean isEnum;
    public final Method method;
    private final JSONField methodAnnotation;
    public final String name;
    public final long nameHashCode;
    private int ordinal;

    public FieldInfo(String name, Class<?> declaringClass, Class<?> fieldClass, Type fieldType, Field field, int ordinal, int serialzeFeatures) {
        this.ordinal = 0;
        this.name = name;
        this.declaringClass = declaringClass;
        this.fieldClass = fieldClass;
        this.fieldType = fieldType;
        this.method = null;
        this.field = field;
        this.ordinal = ordinal;
        this.isEnum = fieldClass.isEnum();
        this.fieldAnnotation = null;
        this.methodAnnotation = null;
        if (field != null) {
            int modifiers = field.getModifiers();
            this.fieldAccess = (modifiers & 1) != 0 || this.method == null;
            this.fieldTransient = Modifier.isTransient(modifiers);
        } else {
            this.fieldAccess = false;
            this.fieldTransient = false;
        }
        this.getOnly = false;
        long hashCode = -2128831035;
        for (int i = 0; i < name.length(); i++) {
            char c = name.charAt(i);
            hashCode = (hashCode ^ c) * 16777619;
        }
        this.nameHashCode = hashCode;
        this.format = null;
    }

    public FieldInfo(String name, Method method, Field field, Class<?> clazz, Type type, int ordinal, int serialzeFeatures, JSONField methodAnnotation, JSONField fieldAnnotation, boolean fieldGenericSupport) {
        Class<?> fieldClass;
        Type fieldType;
        this.ordinal = 0;
        this.name = name;
        this.method = method;
        this.field = field;
        this.ordinal = ordinal;
        this.methodAnnotation = methodAnnotation;
        this.fieldAnnotation = fieldAnnotation;
        JSONField annotation = getAnnotation();
        String format = null;
        if (annotation != null) {
            format = annotation.format();
            if (format.trim().length() == 0) {
                format = null;
            }
        }
        this.format = format;
        if (field != null) {
            int modifiers = field.getModifiers();
            this.fieldAccess = method == null || ((modifiers & 1) != 0 && method.getReturnType() == field.getType());
            this.fieldTransient = (modifiers & 128) != 0;
        } else {
            this.fieldAccess = false;
            this.fieldTransient = false;
        }
        long hashCode = -2128831035;
        for (int i = 0; i < name.length(); i++) {
            char c = name.charAt(i);
            hashCode = (hashCode ^ c) * 16777619;
        }
        this.nameHashCode = hashCode;
        if (method != null) {
            Class<?>[] parameterTypes = method.getParameterTypes();
            if (parameterTypes.length == 1) {
                fieldClass = parameterTypes[0];
                if (fieldClass == Class.class || fieldClass == String.class || fieldClass.isPrimitive()) {
                    fieldType = fieldClass;
                } else {
                    fieldType = fieldGenericSupport ? method.getGenericParameterTypes()[0] : fieldClass;
                }
                this.getOnly = false;
            } else {
                fieldClass = method.getReturnType();
                if (fieldClass == Class.class) {
                    fieldType = fieldClass;
                } else {
                    fieldType = fieldGenericSupport ? method.getGenericReturnType() : fieldClass;
                }
                this.getOnly = true;
            }
            this.declaringClass = method.getDeclaringClass();
        } else {
            fieldClass = field.getType();
            if (fieldClass.isPrimitive() || fieldClass == String.class || fieldClass.isEnum()) {
                fieldType = fieldClass;
            } else {
                fieldType = fieldGenericSupport ? field.getGenericType() : fieldClass;
            }
            this.declaringClass = field.getDeclaringClass();
            this.getOnly = Modifier.isFinal(field.getModifiers());
        }
        if (clazz != null && fieldClass == Object.class && (fieldType instanceof TypeVariable)) {
            TypeVariable<?> tv = (TypeVariable) fieldType;
            Type genericFieldType = getInheritGenericType(clazz, tv);
            if (genericFieldType != null) {
                this.fieldClass = TypeUtils.getClass(genericFieldType);
                this.fieldType = genericFieldType;
                this.isEnum = fieldClass.isEnum();
                return;
            }
        }
        Type genericFieldType2 = fieldType;
        if (!(fieldType instanceof Class)) {
            genericFieldType2 = getFieldType(clazz, type == null ? clazz : type, fieldType);
            if (genericFieldType2 != fieldType) {
                if (genericFieldType2 instanceof ParameterizedType) {
                    fieldClass = TypeUtils.getClass(genericFieldType2);
                } else if (genericFieldType2 instanceof Class) {
                    fieldClass = TypeUtils.getClass(genericFieldType2);
                }
            }
        }
        this.fieldType = genericFieldType2;
        this.fieldClass = fieldClass;
        this.isEnum = !fieldClass.isArray() && fieldClass.isEnum();
    }

    public static Type getFieldType(Class<?> clazz, Type type, Type fieldType) {
        if (clazz == null || type == null) {
            return fieldType;
        }
        if (fieldType instanceof GenericArrayType) {
            GenericArrayType genericArrayType = (GenericArrayType) fieldType;
            Type componentType = genericArrayType.getGenericComponentType();
            Type componentTypeX = getFieldType(clazz, type, componentType);
            return componentType != componentTypeX ? Array.newInstance(TypeUtils.getClass(componentTypeX), 0).getClass() : fieldType;
        } else if (!TypeUtils.isGenericParamType(type)) {
            return fieldType;
        } else {
            if (fieldType instanceof TypeVariable) {
                ParameterizedType paramType = (ParameterizedType) TypeUtils.getGenericParamType(type);
                Class<?> parameterizedClass = TypeUtils.getClass(paramType);
                TypeVariable<?> typeVar = (TypeVariable) fieldType;
                for (int i = 0; i < parameterizedClass.getTypeParameters().length; i++) {
                    if (parameterizedClass.getTypeParameters()[i].getName().equals(typeVar.getName())) {
                        return paramType.getActualTypeArguments()[i];
                    }
                }
            }
            if (fieldType instanceof ParameterizedType) {
                ParameterizedType parameterizedFieldType = (ParameterizedType) fieldType;
                Type[] arguments = parameterizedFieldType.getActualTypeArguments();
                boolean changed = false;
                TypeVariable<?>[] typeVariables = null;
                Type[] actualTypes = null;
                ParameterizedType paramType2 = null;
                if (type instanceof ParameterizedType) {
                    paramType2 = (ParameterizedType) type;
                    typeVariables = clazz.getTypeParameters();
                } else if (clazz.getGenericSuperclass() instanceof ParameterizedType) {
                    paramType2 = (ParameterizedType) clazz.getGenericSuperclass();
                    typeVariables = clazz.getSuperclass().getTypeParameters();
                }
                for (int i2 = 0; i2 < arguments.length && paramType2 != null; i2++) {
                    Type feildTypeArguement = arguments[i2];
                    if (feildTypeArguement instanceof TypeVariable) {
                        TypeVariable<?> typeVar2 = (TypeVariable) feildTypeArguement;
                        for (int j = 0; j < typeVariables.length; j++) {
                            if (typeVariables[j].getName().equals(typeVar2.getName())) {
                                if (actualTypes == null) {
                                    actualTypes = paramType2.getActualTypeArguments();
                                }
                                arguments[i2] = actualTypes[j];
                                changed = true;
                            }
                        }
                    }
                }
                if (changed) {
                    return new ParameterizedTypeImpl(arguments, parameterizedFieldType.getOwnerType(), parameterizedFieldType.getRawType());
                }
            }
            return fieldType;
        }
    }

    /* JADX WARN: Type inference failed for: r1v0, types: [java.lang.reflect.GenericDeclaration, java.lang.Object] */
    public static Type getInheritGenericType(Class<?> clazz, TypeVariable<?> tv) {
        Type type;
        ?? genericDeclaration = tv.getGenericDeclaration();
        do {
            type = clazz.getGenericSuperclass();
            if (type == null) {
                return null;
            }
            if (type instanceof ParameterizedType) {
                ParameterizedType ptype = (ParameterizedType) type;
                Type rawType = ptype.getRawType();
                boolean eq = genericDeclaration.equals(rawType) || ((genericDeclaration instanceof Class) && (rawType instanceof Class) && ((Class) genericDeclaration).isAssignableFrom((Class) rawType));
                if (eq) {
                    TypeVariable<?>[] tvs = genericDeclaration.getTypeParameters();
                    Type[] types = ptype.getActualTypeArguments();
                    for (int i = 0; i < tvs.length; i++) {
                        if (tvs[i] == tv) {
                            return types[i];
                        }
                    }
                    return null;
                }
            }
            clazz = TypeUtils.getClass(type);
        } while (type != null);
        return null;
    }

    public String toString() {
        return this.name;
    }

    @Override // java.lang.Comparable
    public int compareTo(FieldInfo o) {
        if (this.ordinal < o.ordinal) {
            return -1;
        }
        if (this.ordinal > o.ordinal) {
            return 1;
        }
        return this.name.compareTo(o.name);
    }

    public boolean equals(FieldInfo o) {
        return o == this || compareTo(o) == 0;
    }

    public JSONField getAnnotation() {
        return this.fieldAnnotation != null ? this.fieldAnnotation : this.methodAnnotation;
    }

    public Object get(Object javaObject) throws IllegalAccessException, InvocationTargetException {
        if (this.fieldAccess) {
            return this.field.get(javaObject);
        }
        return this.method.invoke(javaObject, new Object[0]);
    }

    public void set(Object javaObject, Object value) throws IllegalAccessException, InvocationTargetException {
        if (this.method != null) {
            this.method.invoke(javaObject, value);
        } else {
            this.field.set(javaObject, value);
        }
    }
}
