package org.dom4j.bean;

import java.beans.BeanInfo;
import java.beans.IntrospectionException;
import java.beans.Introspector;
import java.beans.PropertyDescriptor;
import java.lang.reflect.Method;
import java.util.HashMap;
import java.util.Map;
import org.dom4j.DocumentFactory;
import org.dom4j.QName;
/* loaded from: classes2.dex */
public class BeanMetaData {
    private Class beanClass;
    private Map nameMap = new HashMap();
    private PropertyDescriptor[] propertyDescriptors;
    private QName[] qNames;
    private Method[] readMethods;
    private Method[] writeMethods;
    protected static final Object[] NULL_ARGS = new Object[0];
    private static Map singletonCache = new HashMap();
    private static final DocumentFactory DOCUMENT_FACTORY = BeanDocumentFactory.getInstance();

    public BeanMetaData(Class beanClass) {
        this.beanClass = beanClass;
        if (beanClass != null) {
            try {
                BeanInfo beanInfo = Introspector.getBeanInfo(beanClass);
                this.propertyDescriptors = beanInfo.getPropertyDescriptors();
            } catch (IntrospectionException e) {
                handleException(e);
            }
        }
        if (this.propertyDescriptors == null) {
            this.propertyDescriptors = new PropertyDescriptor[0];
        }
        int size = this.propertyDescriptors.length;
        this.qNames = new QName[size];
        this.readMethods = new Method[size];
        this.writeMethods = new Method[size];
        for (int i = 0; i < size; i++) {
            PropertyDescriptor propertyDescriptor = this.propertyDescriptors[i];
            String name = propertyDescriptor.getName();
            QName qName = DOCUMENT_FACTORY.createQName(name);
            this.qNames[i] = qName;
            this.readMethods[i] = propertyDescriptor.getReadMethod();
            this.writeMethods[i] = propertyDescriptor.getWriteMethod();
            Integer index = new Integer(i);
            this.nameMap.put(name, index);
            this.nameMap.put(qName, index);
        }
    }

    public static BeanMetaData get(Class beanClass) {
        BeanMetaData answer = (BeanMetaData) singletonCache.get(beanClass);
        if (answer == null) {
            BeanMetaData answer2 = new BeanMetaData(beanClass);
            singletonCache.put(beanClass, answer2);
            return answer2;
        }
        return answer;
    }

    public int attributeCount() {
        return this.propertyDescriptors.length;
    }

    public BeanAttributeList createAttributeList(BeanElement parent) {
        return new BeanAttributeList(parent, this);
    }

    public QName getQName(int index) {
        return this.qNames[index];
    }

    public int getIndex(String name) {
        Integer index = (Integer) this.nameMap.get(name);
        if (index != null) {
            return index.intValue();
        }
        return -1;
    }

    public int getIndex(QName qName) {
        Integer index = (Integer) this.nameMap.get(qName);
        if (index != null) {
            return index.intValue();
        }
        return -1;
    }

    public Object getData(int index, Object bean) {
        try {
            Method method = this.readMethods[index];
            return method.invoke(bean, NULL_ARGS);
        } catch (Exception e) {
            handleException(e);
            return null;
        }
    }

    public void setData(int index, Object bean, Object data) {
        try {
            Method method = this.writeMethods[index];
            Object[] args = {data};
            method.invoke(bean, args);
        } catch (Exception e) {
            handleException(e);
        }
    }

    protected void handleException(Exception e) {
    }
}
