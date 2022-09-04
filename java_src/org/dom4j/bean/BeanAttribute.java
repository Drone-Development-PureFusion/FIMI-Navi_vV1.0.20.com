package org.dom4j.bean;

import org.dom4j.Element;
import org.dom4j.QName;
import org.dom4j.tree.AbstractAttribute;
/* loaded from: classes2.dex */
public class BeanAttribute extends AbstractAttribute {
    private final BeanAttributeList beanList;
    private final int index;

    public BeanAttribute(BeanAttributeList beanList, int index) {
        this.beanList = beanList;
        this.index = index;
    }

    @Override // org.dom4j.Attribute
    public QName getQName() {
        return this.beanList.getQName(this.index);
    }

    @Override // org.dom4j.tree.AbstractNode, org.dom4j.Node
    public Element getParent() {
        return this.beanList.getParent();
    }

    @Override // org.dom4j.Attribute
    public String getValue() {
        Object data = getData();
        if (data != null) {
            return data.toString();
        }
        return null;
    }

    @Override // org.dom4j.tree.AbstractAttribute, org.dom4j.Attribute
    public void setValue(String data) {
        this.beanList.setData(this.index, data);
    }

    @Override // org.dom4j.tree.AbstractAttribute, org.dom4j.Attribute
    public Object getData() {
        return this.beanList.getData(this.index);
    }

    @Override // org.dom4j.tree.AbstractAttribute, org.dom4j.Attribute
    public void setData(Object data) {
        this.beanList.setData(this.index, data);
    }
}
