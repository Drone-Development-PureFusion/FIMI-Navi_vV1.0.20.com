package org.dom4j.util;

import org.dom4j.QName;
import org.dom4j.tree.DefaultAttribute;
/* loaded from: classes2.dex */
public class UserDataAttribute extends DefaultAttribute {
    private Object data;

    public UserDataAttribute(QName qname) {
        super(qname);
    }

    public UserDataAttribute(QName qname, String text) {
        super(qname, text);
    }

    @Override // org.dom4j.tree.AbstractAttribute, org.dom4j.Attribute
    public Object getData() {
        return this.data;
    }

    @Override // org.dom4j.tree.AbstractAttribute, org.dom4j.Attribute
    public void setData(Object data) {
        this.data = data;
    }
}
