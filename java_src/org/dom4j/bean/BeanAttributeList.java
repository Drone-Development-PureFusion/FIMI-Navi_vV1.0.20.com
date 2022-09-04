package org.dom4j.bean;

import java.util.AbstractList;
import org.dom4j.Attribute;
import org.dom4j.QName;
/* loaded from: classes2.dex */
public class BeanAttributeList extends AbstractList {
    private BeanAttribute[] attributes;
    private BeanMetaData beanMetaData;
    private BeanElement parent;

    public BeanAttributeList(BeanElement parent, BeanMetaData beanMetaData) {
        this.parent = parent;
        this.beanMetaData = beanMetaData;
        this.attributes = new BeanAttribute[beanMetaData.attributeCount()];
    }

    public BeanAttributeList(BeanElement parent) {
        this.parent = parent;
        Object data = parent.getData();
        Class beanClass = data != null ? data.getClass() : null;
        this.beanMetaData = BeanMetaData.get(beanClass);
        this.attributes = new BeanAttribute[this.beanMetaData.attributeCount()];
    }

    public Attribute attribute(String name) {
        int index = this.beanMetaData.getIndex(name);
        return attribute(index);
    }

    public Attribute attribute(QName qname) {
        int index = this.beanMetaData.getIndex(qname);
        return attribute(index);
    }

    public BeanAttribute attribute(int index) {
        if (index < 0 || index > this.attributes.length) {
            return null;
        }
        BeanAttribute attribute = this.attributes[index];
        if (attribute == null) {
            BeanAttribute attribute2 = createAttribute(this.parent, index);
            this.attributes[index] = attribute2;
            return attribute2;
        }
        return attribute;
    }

    public BeanElement getParent() {
        return this.parent;
    }

    public QName getQName(int index) {
        return this.beanMetaData.getQName(index);
    }

    public Object getData(int index) {
        return this.beanMetaData.getData(index, this.parent.getData());
    }

    public void setData(int index, Object data) {
        this.beanMetaData.setData(index, this.parent.getData(), data);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.attributes.length;
    }

    @Override // java.util.AbstractList, java.util.List
    public Object get(int index) {
        BeanAttribute attribute = this.attributes[index];
        if (attribute == null) {
            BeanAttribute attribute2 = createAttribute(this.parent, index);
            this.attributes[index] = attribute2;
            return attribute2;
        }
        return attribute;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(Object object) {
        throw new UnsupportedOperationException("add(Object) unsupported");
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int index, Object object) {
        throw new UnsupportedOperationException("add(int,Object) unsupported");
    }

    @Override // java.util.AbstractList, java.util.List
    public Object set(int index, Object object) {
        throw new UnsupportedOperationException("set(int,Object) unsupported");
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object object) {
        return false;
    }

    @Override // java.util.AbstractList, java.util.List
    public Object remove(int index) {
        BeanAttribute attribute = (BeanAttribute) get(index);
        String oldValue = attribute.getValue();
        attribute.setValue(null);
        return oldValue;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        int size = this.attributes.length;
        for (int i = 0; i < size; i++) {
            BeanAttribute attribute = this.attributes[i];
            if (attribute != null) {
                attribute.setValue(null);
            }
        }
    }

    protected BeanAttribute createAttribute(BeanElement element, int index) {
        return new BeanAttribute(this, index);
    }
}
