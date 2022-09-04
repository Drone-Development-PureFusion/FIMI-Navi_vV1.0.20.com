package com.alibaba.fastjson.parser;

import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.PropertyNamingStrategy;
import com.alibaba.fastjson.annotation.JSONCreator;
import com.alibaba.fastjson.annotation.JSONField;
import com.alibaba.fastjson.annotation.JSONType;
import com.alibaba.fastjson.serializer.SerializerFeature;
import com.alibaba.fastjson.util.FieldInfo;
import com.alibaba.fastjson.util.TypeUtils;
import com.umeng.commonsdk.proguard.C2354g;
import java.lang.annotation.Annotation;
import java.lang.reflect.Constructor;
import java.lang.reflect.Field;
import java.lang.reflect.Method;
import java.lang.reflect.Modifier;
import java.lang.reflect.Type;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.List;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class JavaBeanInfo {
    final Constructor<?> creatorConstructor;
    final Constructor<?> defaultConstructor;
    final int defaultConstructorParameterSize;
    final Method factoryMethod;
    final FieldInfo[] fields;
    final JSONType jsonType;
    boolean ordered = false;
    public final int parserFeatures;
    final FieldInfo[] sortedFields;
    final boolean supportBeanToArray;
    public final String typeName;

    JavaBeanInfo(Class<?> clazz, Constructor<?> defaultConstructor, Constructor<?> creatorConstructor, Method factoryMethod, FieldInfo[] fields, FieldInfo[] sortedFields, JSONType jsonType) {
        Feature[] parseFeatures;
        Feature[] parseFeatures2;
        this.defaultConstructor = defaultConstructor;
        this.creatorConstructor = creatorConstructor;
        this.factoryMethod = factoryMethod;
        this.fields = fields;
        this.jsonType = jsonType;
        int parserFeatures = 0;
        if (jsonType != null) {
            String typeName = jsonType.typeName();
            if (typeName.length() != 0) {
                this.typeName = typeName;
            } else {
                this.typeName = clazz.getName();
            }
            for (Feature feature : jsonType.parseFeatures()) {
                parserFeatures |= feature.mask;
            }
        } else {
            this.typeName = clazz.getName();
        }
        this.parserFeatures = parserFeatures;
        boolean supportBeanToArray = false;
        if (jsonType != null) {
            for (Feature feature2 : jsonType.parseFeatures()) {
                if (feature2 == Feature.SupportArrayToBean) {
                    supportBeanToArray = true;
                }
            }
        }
        this.supportBeanToArray = supportBeanToArray;
        FieldInfo[] sortedFields2 = computeSortedFields(fields, sortedFields);
        this.sortedFields = !Arrays.equals(fields, sortedFields2) ? sortedFields2 : fields;
        this.defaultConstructorParameterSize = defaultConstructor != null ? defaultConstructor.getParameterTypes().length : 0;
    }

    private FieldInfo[] computeSortedFields(FieldInfo[] fields, FieldInfo[] sortedFields) {
        if (this.jsonType == null) {
            return sortedFields;
        }
        String[] orders = this.jsonType.orders();
        if (orders != null && orders.length != 0) {
            boolean containsAll = true;
            int i = 0;
            while (true) {
                if (i >= orders.length) {
                    break;
                }
                boolean got = false;
                int j = 0;
                while (true) {
                    if (j < sortedFields.length) {
                        if (!sortedFields[j].name.equals(orders[i])) {
                            j++;
                        } else {
                            got = true;
                            break;
                        }
                    } else {
                        break;
                    }
                }
                if (got) {
                    i++;
                } else {
                    containsAll = false;
                    break;
                }
            }
            if (!containsAll) {
                return sortedFields;
            }
            if (orders.length == fields.length) {
                boolean orderMatch = true;
                int i2 = 0;
                while (true) {
                    if (i2 < orders.length) {
                        if (sortedFields[i2].name.equals(orders[i2])) {
                            i2++;
                        } else {
                            orderMatch = false;
                            break;
                        }
                    } else {
                        break;
                    }
                }
                if (orderMatch) {
                    return sortedFields;
                }
                FieldInfo[] newSortedFields = new FieldInfo[sortedFields.length];
                for (int i3 = 0; i3 < orders.length; i3++) {
                    int j2 = 0;
                    while (true) {
                        if (j2 < sortedFields.length) {
                            if (!sortedFields[j2].name.equals(orders[i3])) {
                                j2++;
                            } else {
                                newSortedFields[i3] = sortedFields[j2];
                                break;
                            }
                        } else {
                            break;
                        }
                    }
                }
                this.ordered = true;
                return newSortedFields;
            }
            FieldInfo[] newSortedFields2 = new FieldInfo[sortedFields.length];
            for (int i4 = 0; i4 < orders.length; i4++) {
                int j3 = 0;
                while (true) {
                    if (j3 < sortedFields.length) {
                        if (!sortedFields[j3].name.equals(orders[i4])) {
                            j3++;
                        } else {
                            newSortedFields2[i4] = sortedFields[j3];
                            break;
                        }
                    } else {
                        break;
                    }
                }
            }
            int fieldIndex = orders.length;
            for (int i5 = 0; i5 < sortedFields.length; i5++) {
                boolean contains = false;
                int j4 = 0;
                while (true) {
                    if (j4 < newSortedFields2.length && j4 < fieldIndex) {
                        if (!newSortedFields2[i5].equals(sortedFields[j4])) {
                            j4++;
                        } else {
                            contains = true;
                            break;
                        }
                    } else {
                        break;
                    }
                }
                if (!contains) {
                    newSortedFields2[fieldIndex] = sortedFields[i5];
                    fieldIndex++;
                }
            }
            this.ordered = true;
        }
        return sortedFields;
    }

    static boolean addField(List<FieldInfo> fields, FieldInfo field, boolean fieldOnly) {
        if (!fieldOnly) {
            int size = fields.size();
            for (int i = 0; i < size; i++) {
                FieldInfo item = fields.get(i);
                if (item.name.equals(field.name) && (!item.getOnly || field.getOnly)) {
                    return false;
                }
            }
        }
        fields.add(field);
        return true;
    }

    public static JavaBeanInfo build(Class<?> clazz, int classModifiers, Type type, boolean fieldOnly, boolean jsonTypeSupport, boolean jsonFieldSupport, boolean fieldGenericSupport, PropertyNamingStrategy propertyNamingStrategy) {
        Method[] methods;
        String propertyName;
        Field[] declaredFields;
        Class<?> returnType;
        String propertyName2;
        List<FieldInfo> fieldList = new ArrayList<>();
        Constructor<?> defaultConstructor = null;
        if ((classModifiers & 1024) == 0) {
            try {
                defaultConstructor = clazz.getDeclaredConstructor(new Class[0]);
            } catch (Exception e) {
            }
            if (defaultConstructor == null && clazz.isMemberClass() && (classModifiers & 8) == 0) {
                Constructor<?>[] declaredConstructors = clazz.getDeclaredConstructors();
                int length = declaredConstructors.length;
                int i = 0;
                while (true) {
                    if (i >= length) {
                        break;
                    }
                    Constructor<?> constructor = declaredConstructors[i];
                    Class<?>[] parameterTypes = constructor.getParameterTypes();
                    if (parameterTypes.length != 1 || !parameterTypes[0].equals(clazz.getDeclaringClass())) {
                        i++;
                    } else {
                        defaultConstructor = constructor;
                        break;
                    }
                }
            }
        }
        Method[] methods2 = fieldOnly ? null : clazz.getMethods();
        Field[] declaredFields2 = clazz.getDeclaredFields();
        if (defaultConstructor == null && !clazz.isInterface() && (classModifiers & 1024) == 0) {
            Constructor<?> creatorConstructor = null;
            Constructor<?>[] declaredConstructors2 = clazz.getDeclaredConstructors();
            int length2 = declaredConstructors2.length;
            int i2 = 0;
            while (true) {
                if (i2 >= length2) {
                    break;
                }
                Constructor<?> constructor2 = declaredConstructors2[i2];
                if (((JSONCreator) constructor2.getAnnotation(JSONCreator.class)) == null) {
                    i2++;
                } else if (0 != 0) {
                    throw new JSONException("multi-json creator");
                } else {
                    creatorConstructor = constructor2;
                }
            }
            if (creatorConstructor != null) {
                TypeUtils.setAccessible(clazz, creatorConstructor, classModifiers);
                Class<?>[] parameterTypes2 = creatorConstructor.getParameterTypes();
                Type[] getGenericParameterTypes = fieldGenericSupport ? creatorConstructor.getGenericParameterTypes() : parameterTypes2;
                for (int i3 = 0; i3 < parameterTypes2.length; i3++) {
                    Annotation[] paramAnnotations = creatorConstructor.getParameterAnnotations()[i3];
                    JSONField fieldAnnotation = null;
                    int length3 = paramAnnotations.length;
                    int i4 = 0;
                    while (true) {
                        if (i4 >= length3) {
                            break;
                        }
                        Annotation paramAnnotation = paramAnnotations[i4];
                        if (!(paramAnnotation instanceof JSONField)) {
                            i4++;
                        } else {
                            fieldAnnotation = (JSONField) paramAnnotation;
                            break;
                        }
                    }
                    if (fieldAnnotation == null) {
                        throw new JSONException("illegal json creator");
                    }
                    Class<?> fieldClass = parameterTypes2[i3];
                    Type fieldType = getGenericParameterTypes[i3];
                    Field field = TypeUtils.getField(clazz, fieldAnnotation.name(), declaredFields2);
                    if (field != null) {
                        TypeUtils.setAccessible(clazz, field, classModifiers);
                    }
                    int ordinal = fieldAnnotation.ordinal();
                    int serialzeFeatures = SerializerFeature.m1426of(fieldAnnotation.serialzeFeatures());
                    FieldInfo fieldInfo = new FieldInfo(fieldAnnotation.name(), clazz, fieldClass, fieldType, field, ordinal, serialzeFeatures);
                    addField(fieldList, fieldInfo, fieldOnly);
                }
                FieldInfo[] fields = new FieldInfo[fieldList.size()];
                fieldList.toArray(fields);
                FieldInfo[] sortedFields = new FieldInfo[fields.length];
                System.arraycopy(fields, 0, sortedFields, 0, fields.length);
                Arrays.sort(sortedFields);
                JSONType jsonType = jsonTypeSupport ? (JSONType) clazz.getAnnotation(JSONType.class) : null;
                return new JavaBeanInfo(clazz, null, creatorConstructor, null, fields, sortedFields, jsonType);
            }
            Method factoryMethod = null;
            int length4 = methods2.length;
            int i5 = 0;
            while (true) {
                if (i5 >= length4) {
                    break;
                }
                Method method = methods2[i5];
                if (Modifier.isStatic(method.getModifiers()) && clazz.isAssignableFrom(method.getReturnType())) {
                    if (((JSONCreator) method.getAnnotation(JSONCreator.class)) != null) {
                        if (0 != 0) {
                            throw new JSONException("multi-json creator");
                        }
                        factoryMethod = method;
                    }
                }
                i5++;
            }
            if (factoryMethod != null) {
                TypeUtils.setAccessible(clazz, factoryMethod, classModifiers);
                Class<?>[] parameterTypes3 = factoryMethod.getParameterTypes();
                Type[] genericParameterTypes = fieldGenericSupport ? factoryMethod.getGenericParameterTypes() : parameterTypes3;
                for (int i6 = 0; i6 < parameterTypes3.length; i6++) {
                    Annotation[] paramAnnotations2 = factoryMethod.getParameterAnnotations()[i6];
                    JSONField fieldAnnotation2 = null;
                    int length5 = paramAnnotations2.length;
                    int i7 = 0;
                    while (true) {
                        if (i7 >= length5) {
                            break;
                        }
                        Annotation paramAnnotation2 = paramAnnotations2[i7];
                        if (!(paramAnnotation2 instanceof JSONField)) {
                            i7++;
                        } else {
                            fieldAnnotation2 = (JSONField) paramAnnotation2;
                            break;
                        }
                    }
                    if (fieldAnnotation2 == null) {
                        throw new JSONException("illegal json creator");
                    }
                    Class<?> fieldClass2 = parameterTypes3[i6];
                    Type fieldType2 = genericParameterTypes[i6];
                    Field field2 = TypeUtils.getField(clazz, fieldAnnotation2.name(), declaredFields2);
                    int ordinal2 = fieldAnnotation2.ordinal();
                    int serialzeFeatures2 = SerializerFeature.m1426of(fieldAnnotation2.serialzeFeatures());
                    FieldInfo fieldInfo2 = new FieldInfo(fieldAnnotation2.name(), clazz, fieldClass2, fieldType2, field2, ordinal2, serialzeFeatures2);
                    addField(fieldList, fieldInfo2, fieldOnly);
                }
                FieldInfo[] fields2 = new FieldInfo[fieldList.size()];
                fieldList.toArray(fields2);
                FieldInfo[] sortedFields2 = new FieldInfo[fields2.length];
                System.arraycopy(fields2, 0, sortedFields2, 0, fields2.length);
                Arrays.sort(sortedFields2);
                if (Arrays.equals(fields2, sortedFields2)) {
                    sortedFields2 = fields2;
                }
                JSONType jsonType2 = jsonTypeSupport ? (JSONType) clazz.getAnnotation(JSONType.class) : null;
                JavaBeanInfo beanInfo = new JavaBeanInfo(clazz, null, null, factoryMethod, fields2, sortedFields2, jsonType2);
                return beanInfo;
            }
            throw new JSONException("default constructor not found. " + clazz);
        }
        if (defaultConstructor != null) {
            TypeUtils.setAccessible(clazz, defaultConstructor, classModifiers);
        }
        if (!fieldOnly) {
            for (Method method2 : methods2) {
                int ordinal3 = 0;
                int serialzeFeatures3 = 0;
                String methodName = method2.getName();
                if (methodName.length() >= 4 && !Modifier.isStatic(method2.getModifiers()) && (((returnType = method2.getReturnType()) == Void.TYPE || returnType == method2.getDeclaringClass()) && method2.getParameterTypes().length == 1 && method2.getDeclaringClass() != Object.class)) {
                    JSONField annotation = jsonFieldSupport ? (JSONField) method2.getAnnotation(JSONField.class) : null;
                    if (annotation == null && jsonFieldSupport) {
                        annotation = TypeUtils.getSupperMethodAnnotation(clazz, method2);
                    }
                    if (annotation != null) {
                        if (annotation.deserialize()) {
                            ordinal3 = annotation.ordinal();
                            serialzeFeatures3 = SerializerFeature.m1426of(annotation.serialzeFeatures());
                            if (annotation.name().length() != 0) {
                                String propertyName3 = annotation.name();
                                addField(fieldList, new FieldInfo(propertyName3, method2, null, clazz, type, ordinal3, serialzeFeatures3, annotation, null, fieldGenericSupport), fieldOnly);
                                TypeUtils.setAccessible(clazz, method2, classModifiers);
                            }
                        }
                    }
                    if (methodName.startsWith("set")) {
                        char c3 = methodName.charAt(3);
                        if (Character.isUpperCase(c3)) {
                            if (TypeUtils.compatibleWithJavaBean) {
                                propertyName2 = TypeUtils.decapitalize(methodName.substring(3));
                            } else {
                                propertyName2 = Character.toLowerCase(methodName.charAt(3)) + methodName.substring(4);
                            }
                        } else if (c3 == '_') {
                            propertyName2 = methodName.substring(4);
                        } else if (c3 == 'f') {
                            propertyName2 = methodName.substring(3);
                        } else if (methodName.length() >= 5 && Character.isUpperCase(methodName.charAt(4))) {
                            propertyName2 = TypeUtils.decapitalize(methodName.substring(3));
                        }
                        Field field3 = TypeUtils.getField(clazz, propertyName2, declaredFields2);
                        if (field3 == null && method2.getParameterTypes()[0] == Boolean.TYPE) {
                            String isFieldName = C2354g.f992ac + Character.toUpperCase(propertyName2.charAt(0)) + propertyName2.substring(1);
                            field3 = TypeUtils.getField(clazz, isFieldName, declaredFields2);
                        }
                        if (field3 != null) {
                            JSONField fieldAnnotation3 = jsonFieldSupport ? (JSONField) field3.getAnnotation(JSONField.class) : null;
                            if (fieldAnnotation3 != null) {
                                ordinal3 = fieldAnnotation3.ordinal();
                                serialzeFeatures3 = SerializerFeature.m1426of(fieldAnnotation3.serialzeFeatures());
                                if (fieldAnnotation3.name().length() != 0) {
                                    String propertyName4 = fieldAnnotation3.name();
                                    addField(fieldList, new FieldInfo(propertyName4, method2, field3, clazz, type, ordinal3, serialzeFeatures3, annotation, fieldAnnotation3, fieldGenericSupport), fieldOnly);
                                } else if (annotation == null) {
                                    annotation = fieldAnnotation3;
                                }
                            }
                        }
                        if (propertyNamingStrategy != null) {
                            propertyName2 = propertyNamingStrategy.translate(propertyName2);
                        }
                        addField(fieldList, new FieldInfo(propertyName2, method2, null, clazz, type, ordinal3, serialzeFeatures3, annotation, null, fieldGenericSupport), fieldOnly);
                        TypeUtils.setAccessible(clazz, method2, classModifiers);
                    }
                }
            }
        }
        List<Field> classfields = new ArrayList<>(declaredFields2.length);
        for (Field f : declaredFields2) {
            int modifiers = f.getModifiers();
            if ((modifiers & 8) == 0) {
                if ((modifiers & 16) != 0) {
                    Class<?> fieldType3 = f.getType();
                    boolean supportReadOnly = Map.class.isAssignableFrom(fieldType3) || Collection.class.isAssignableFrom(fieldType3);
                    if (!supportReadOnly) {
                    }
                }
                if ((f.getModifiers() & 1) != 0) {
                    classfields.add(f);
                }
            }
        }
        for (Class<?> c = clazz.getSuperclass(); c != null && c != Object.class; c = c.getSuperclass()) {
            for (Field f2 : c.getDeclaredFields()) {
                int modifiers2 = f2.getModifiers();
                if ((modifiers2 & 8) == 0) {
                    if ((modifiers2 & 16) != 0) {
                        Class<?> fieldType4 = f2.getType();
                        boolean supportReadOnly2 = Map.class.isAssignableFrom(fieldType4) || Collection.class.isAssignableFrom(fieldType4);
                        if (!supportReadOnly2) {
                        }
                    }
                    if ((modifiers2 & 1) != 0) {
                        classfields.add(f2);
                    }
                }
            }
        }
        for (Field field4 : classfields) {
            String fieldName = field4.getName();
            boolean contains = false;
            int size = fieldList.size();
            for (int i8 = 0; i8 < size; i8++) {
                FieldInfo item = fieldList.get(i8);
                if (item.name.equals(fieldName)) {
                    contains = true;
                }
            }
            if (!contains) {
                int ordinal4 = 0;
                int serialzeFeatures4 = 0;
                String propertyName5 = fieldName;
                JSONField fieldAnnotation4 = jsonFieldSupport ? (JSONField) field4.getAnnotation(JSONField.class) : null;
                if (fieldAnnotation4 != null) {
                    ordinal4 = fieldAnnotation4.ordinal();
                    serialzeFeatures4 = SerializerFeature.m1426of(fieldAnnotation4.serialzeFeatures());
                    if (fieldAnnotation4.name().length() != 0) {
                        propertyName5 = fieldAnnotation4.name();
                    }
                }
                if (propertyNamingStrategy != null) {
                    propertyName5 = propertyNamingStrategy.translate(propertyName5);
                }
                TypeUtils.setAccessible(clazz, field4, classModifiers);
                addField(fieldList, new FieldInfo(propertyName5, null, field4, clazz, type, ordinal4, serialzeFeatures4, null, fieldAnnotation4, fieldGenericSupport), fieldOnly);
            }
        }
        if (!fieldOnly) {
            for (Method method3 : clazz.getMethods()) {
                String methodName2 = method3.getName();
                if (methodName2.length() >= 4 && !Modifier.isStatic(method3.getModifiers()) && methodName2.startsWith("get") && Character.isUpperCase(methodName2.charAt(3)) && method3.getParameterTypes().length == 0) {
                    Class<?> methodReturnType = method3.getReturnType();
                    if (Collection.class.isAssignableFrom(methodReturnType) || Map.class.isAssignableFrom(methodReturnType)) {
                        JSONField annotation2 = jsonFieldSupport ? (JSONField) method3.getAnnotation(JSONField.class) : null;
                        if (annotation2 != null) {
                            String annotationName = annotation2.name();
                            if (annotationName.length() > 0) {
                                propertyName = annotationName;
                                addField(fieldList, new FieldInfo(propertyName, method3, null, clazz, type, 0, 0, annotation2, null, fieldGenericSupport), fieldOnly);
                                TypeUtils.setAccessible(clazz, method3, classModifiers);
                            }
                        }
                        propertyName = Character.toLowerCase(methodName2.charAt(3)) + methodName2.substring(4);
                        addField(fieldList, new FieldInfo(propertyName, method3, null, clazz, type, 0, 0, annotation2, null, fieldGenericSupport), fieldOnly);
                        TypeUtils.setAccessible(clazz, method3, classModifiers);
                    }
                }
            }
        }
        FieldInfo[] fields3 = new FieldInfo[fieldList.size()];
        fieldList.toArray(fields3);
        FieldInfo[] sortedFields3 = new FieldInfo[fields3.length];
        System.arraycopy(fields3, 0, sortedFields3, 0, fields3.length);
        Arrays.sort(sortedFields3);
        JSONType jsonType3 = jsonTypeSupport ? (JSONType) clazz.getAnnotation(JSONType.class) : null;
        return new JavaBeanInfo(clazz, defaultConstructor, null, null, fields3, sortedFields3, jsonType3);
    }
}
