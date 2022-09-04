package ch.qos.logback.core.joran.util;

import ch.qos.logback.core.joran.spi.DefaultClass;
import ch.qos.logback.core.joran.spi.DefaultNestedComponentRegistry;
import ch.qos.logback.core.spi.ContextAwareBase;
import ch.qos.logback.core.util.AggregationType;
import ch.qos.logback.core.util.PropertySetterException;
import java.lang.annotation.Annotation;
import java.lang.reflect.Method;
/* loaded from: classes.dex */
public class PropertySetter extends ContextAwareBase {
    protected MethodDescriptor[] methodDescriptors;
    protected Object obj;
    protected Class<?> objClass;
    protected PropertyDescriptor[] propertyDescriptors;

    public PropertySetter(Object obj) {
        this.obj = obj;
        this.objClass = obj.getClass();
    }

    private String capitalizeFirstLetter(String str) {
        return str.substring(0, 1).toUpperCase() + str.substring(1);
    }

    private AggregationType computeRawAggregationType(Method method) {
        Class<?> parameterClassForMethod = getParameterClassForMethod(method);
        return parameterClassForMethod == null ? AggregationType.NOT_FOUND : StringToObjectConverter.canBeBuiltFromSimpleString(parameterClassForMethod) ? AggregationType.AS_BASIC_PROPERTY : AggregationType.AS_COMPLEX_PROPERTY;
    }

    private Method findAdderMethod(String str) {
        return getMethod("add" + capitalizeFirstLetter(str));
    }

    private Method findSetterMethod(String str) {
        PropertyDescriptor propertyDescriptor = getPropertyDescriptor(Introspector.decapitalize(str));
        if (propertyDescriptor != null) {
            return propertyDescriptor.getWriteMethod();
        }
        return null;
    }

    private Class<?> getParameterClassForMethod(Method method) {
        if (method == null) {
            return null;
        }
        Class<?>[] parameterTypes = method.getParameterTypes();
        if (parameterTypes.length != 1) {
            return null;
        }
        return parameterTypes[0];
    }

    private boolean isSanityCheckSuccessful(String str, Method method, Class<?>[] clsArr, Object obj) {
        Class<?> cls = obj.getClass();
        if (clsArr.length != 1) {
            addError("Wrong number of parameters in setter method for property [" + str + "] in " + this.obj.getClass().getName());
            return false;
        } else if (clsArr[0].isAssignableFrom(obj.getClass())) {
            return true;
        } else {
            addError("A \"" + cls.getName() + "\" object is not assignable to a \"" + clsArr[0].getName() + "\" variable.");
            addError("The class \"" + clsArr[0].getName() + "\" was loaded by ");
            addError("[" + clsArr[0].getClassLoader() + "] whereas object of type ");
            addError("\"" + cls.getName() + "\" was loaded by [" + cls.getClassLoader() + "].");
            return false;
        }
    }

    private boolean isUnequivocallyInstantiable(Class<?> cls) {
        if (cls.isInterface()) {
            return false;
        }
        try {
            return cls.newInstance() != null;
        } catch (IllegalAccessException e) {
            return false;
        } catch (InstantiationException e2) {
            return false;
        }
    }

    public void addBasicProperty(String str, String str2) {
        if (str2 == null) {
            return;
        }
        String capitalizeFirstLetter = capitalizeFirstLetter(str);
        Method findAdderMethod = findAdderMethod(capitalizeFirstLetter);
        if (findAdderMethod == null) {
            addError("No adder for property [" + capitalizeFirstLetter + "].");
            return;
        }
        Class<?>[] parameterTypes = findAdderMethod.getParameterTypes();
        isSanityCheckSuccessful(capitalizeFirstLetter, findAdderMethod, parameterTypes, str2);
        try {
            if (StringToObjectConverter.convertArg(this, str2, parameterTypes[0]) == null) {
                return;
            }
            invokeMethodWithSingleParameterOnThisObject(findAdderMethod, str2);
        } catch (Throwable th) {
            addError("Conversion to type [" + parameterTypes[0] + "] failed. ", th);
        }
    }

    public void addComplexProperty(String str, Object obj) {
        Method findAdderMethod = findAdderMethod(str);
        if (findAdderMethod == null) {
            addError("Could not find method [add" + str + "] in class [" + this.objClass.getName() + "].");
        } else if (!isSanityCheckSuccessful(str, findAdderMethod, findAdderMethod.getParameterTypes(), obj)) {
        } else {
            invokeMethodWithSingleParameterOnThisObject(findAdderMethod, obj);
        }
    }

    public AggregationType computeAggregationType(String str) {
        Method findAdderMethod = findAdderMethod(str);
        if (findAdderMethod != null) {
            switch (computeRawAggregationType(findAdderMethod)) {
                case NOT_FOUND:
                    return AggregationType.NOT_FOUND;
                case AS_BASIC_PROPERTY:
                    return AggregationType.AS_BASIC_PROPERTY_COLLECTION;
                case AS_COMPLEX_PROPERTY:
                    return AggregationType.AS_COMPLEX_PROPERTY_COLLECTION;
            }
        }
        Method findSetterMethod = findSetterMethod(str);
        return findSetterMethod != null ? computeRawAggregationType(findSetterMethod) : AggregationType.NOT_FOUND;
    }

    <T extends Annotation> T getAnnotation(String str, Class<T> cls, Method method) {
        if (method != null) {
            return (T) method.getAnnotation(cls);
        }
        return null;
    }

    Class<?> getByConcreteType(String str, Method method) {
        Class<?> parameterClassForMethod = getParameterClassForMethod(method);
        if (parameterClassForMethod != null && isUnequivocallyInstantiable(parameterClassForMethod)) {
            return parameterClassForMethod;
        }
        return null;
    }

    public Class<?> getClassNameViaImplicitRules(String str, AggregationType aggregationType, DefaultNestedComponentRegistry defaultNestedComponentRegistry) {
        Class<?> findDefaultComponentType = defaultNestedComponentRegistry.findDefaultComponentType(this.obj.getClass(), str);
        if (findDefaultComponentType != null) {
            return findDefaultComponentType;
        }
        Method relevantMethod = getRelevantMethod(str, aggregationType);
        if (relevantMethod == null) {
            return null;
        }
        Class<?> defaultClassNameByAnnonation = getDefaultClassNameByAnnonation(str, relevantMethod);
        return defaultClassNameByAnnonation == null ? getByConcreteType(str, relevantMethod) : defaultClassNameByAnnonation;
    }

    Class<?> getDefaultClassNameByAnnonation(String str, Method method) {
        DefaultClass defaultClass = (DefaultClass) getAnnotation(str, DefaultClass.class, method);
        if (defaultClass != null) {
            return defaultClass.value();
        }
        return null;
    }

    protected Method getMethod(String str) {
        if (this.methodDescriptors == null) {
            introspect();
        }
        for (int i = 0; i < this.methodDescriptors.length; i++) {
            if (str.equals(this.methodDescriptors[i].getName())) {
                return this.methodDescriptors[i].getMethod();
            }
        }
        return null;
    }

    public Object getObj() {
        return this.obj;
    }

    public Class<?> getObjClass() {
        return this.objClass;
    }

    protected PropertyDescriptor getPropertyDescriptor(String str) {
        if (this.propertyDescriptors == null) {
            introspect();
        }
        for (int i = 0; i < this.propertyDescriptors.length; i++) {
            if (str.equals(this.propertyDescriptors[i].getName())) {
                return this.propertyDescriptors[i];
            }
        }
        return null;
    }

    Method getRelevantMethod(String str, AggregationType aggregationType) {
        String capitalizeFirstLetter = capitalizeFirstLetter(str);
        if (aggregationType == AggregationType.AS_COMPLEX_PROPERTY_COLLECTION) {
            return findAdderMethod(capitalizeFirstLetter);
        }
        if (aggregationType != AggregationType.AS_COMPLEX_PROPERTY) {
            throw new IllegalStateException(aggregationType + " not allowed here");
        }
        return findSetterMethod(capitalizeFirstLetter);
    }

    protected void introspect() {
        try {
            this.propertyDescriptors = Introspector.getPropertyDescriptors(this.objClass);
            this.methodDescriptors = Introspector.getMethodDescriptors(this.objClass);
        } catch (IntrospectionException e) {
            addError("Failed to introspect " + this.obj + ": " + e.getMessage());
            this.propertyDescriptors = new PropertyDescriptor[0];
            this.methodDescriptors = new MethodDescriptor[0];
        }
    }

    void invokeMethodWithSingleParameterOnThisObject(Method method, Object obj) {
        Class<?> cls = obj.getClass();
        try {
            method.invoke(this.obj, obj);
        } catch (Exception e) {
            addError("Could not invoke method " + method.getName() + " in class " + this.obj.getClass().getName() + " with parameter of type " + cls.getName(), e);
        }
    }

    public void setComplexProperty(String str, Object obj) {
        PropertyDescriptor propertyDescriptor = getPropertyDescriptor(Introspector.decapitalize(str));
        if (propertyDescriptor == null) {
            addWarn("Could not find PropertyDescriptor for [" + str + "] in " + this.objClass.getName());
            return;
        }
        Method writeMethod = propertyDescriptor.getWriteMethod();
        if (writeMethod == null) {
            addWarn("Not setter method for property [" + str + "] in " + this.obj.getClass().getName());
        } else if (!isSanityCheckSuccessful(str, writeMethod, writeMethod.getParameterTypes(), obj)) {
        } else {
            try {
                invokeMethodWithSingleParameterOnThisObject(writeMethod, obj);
            } catch (Exception e) {
                addError("Could not set component " + this.obj + " for parent component " + this.obj, e);
            }
        }
    }

    public void setProperty(PropertyDescriptor propertyDescriptor, String str, String str2) throws PropertySetterException {
        Method writeMethod = propertyDescriptor.getWriteMethod();
        if (writeMethod == null) {
            throw new PropertySetterException("No setter for property [" + str + "].");
        }
        Class<?>[] parameterTypes = writeMethod.getParameterTypes();
        if (parameterTypes.length != 1) {
            throw new PropertySetterException("#params for setter != 1");
        }
        try {
            Object convertArg = StringToObjectConverter.convertArg(this, str2, parameterTypes[0]);
            if (convertArg == null) {
                throw new PropertySetterException("Conversion to type [" + parameterTypes[0] + "] failed.");
            }
            try {
                writeMethod.invoke(this.obj, convertArg);
            } catch (Exception e) {
                throw new PropertySetterException(e);
            }
        } catch (Throwable th) {
            throw new PropertySetterException("Conversion to type [" + parameterTypes[0] + "] failed. ", th);
        }
    }

    public void setProperty(String str, String str2) {
        if (str2 == null) {
            return;
        }
        String decapitalize = Introspector.decapitalize(str);
        PropertyDescriptor propertyDescriptor = getPropertyDescriptor(decapitalize);
        if (propertyDescriptor == null) {
            addWarn("No such property [" + decapitalize + "] in " + this.objClass.getName() + ".");
            return;
        }
        try {
            setProperty(propertyDescriptor, decapitalize, str2);
        } catch (PropertySetterException e) {
            addWarn("Failed to set property [" + decapitalize + "] to value \"" + str2 + "\". ", e);
        }
    }
}
