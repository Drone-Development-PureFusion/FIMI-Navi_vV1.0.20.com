package org.dom4j.tree;

import org.dom4j.Element;
import org.dom4j.Namespace;
import org.dom4j.QName;
/* loaded from: classes2.dex */
public class DefaultAttribute extends FlyweightAttribute {
    private Element parent;

    public DefaultAttribute(QName qname) {
        super(qname);
    }

    public DefaultAttribute(QName qname, String value) {
        super(qname, value);
    }

    public DefaultAttribute(Element parent, QName qname, String value) {
        super(qname, value);
        this.parent = parent;
    }

    public DefaultAttribute(String name, String value) {
        super(name, value);
    }

    public DefaultAttribute(String name, String value, Namespace namespace) {
        super(name, value, namespace);
    }

    public DefaultAttribute(Element parent, String name, String value, Namespace namespace) {
        super(name, value, namespace);
        this.parent = parent;
    }

    @Override // org.dom4j.tree.AbstractAttribute, org.dom4j.Attribute
    public void setValue(String value) {
        this.value = value;
    }

    @Override // org.dom4j.tree.AbstractNode, org.dom4j.Node
    public Element getParent() {
        return this.parent;
    }

    @Override // org.dom4j.tree.AbstractNode, org.dom4j.Node
    public void setParent(Element parent) {
        this.parent = parent;
    }

    @Override // org.dom4j.tree.AbstractNode, org.dom4j.Node
    public boolean supportsParent() {
        return true;
    }

    @Override // org.dom4j.tree.AbstractNode, org.dom4j.Node
    public boolean isReadOnly() {
        return false;
    }
}
