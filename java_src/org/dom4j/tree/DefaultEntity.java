package org.dom4j.tree;

import org.dom4j.Element;
/* loaded from: classes2.dex */
public class DefaultEntity extends FlyweightEntity {
    private Element parent;

    public DefaultEntity(String name) {
        super(name);
    }

    public DefaultEntity(String name, String text) {
        super(name, text);
    }

    public DefaultEntity(Element parent, String name, String text) {
        super(name, text);
        this.parent = parent;
    }

    @Override // org.dom4j.tree.AbstractNode, org.dom4j.Node
    public void setName(String name) {
        this.name = name;
    }

    @Override // org.dom4j.tree.FlyweightEntity, org.dom4j.tree.AbstractNode, org.dom4j.Node
    public void setText(String text) {
        this.text = text;
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
