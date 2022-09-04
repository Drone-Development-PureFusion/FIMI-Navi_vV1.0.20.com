package org.dom4j.tree;

import org.dom4j.Element;
/* loaded from: classes2.dex */
public class DefaultComment extends FlyweightComment {
    private Element parent;

    public DefaultComment(String text) {
        super(text);
    }

    public DefaultComment(Element parent, String text) {
        super(text);
        this.parent = parent;
    }

    @Override // org.dom4j.tree.AbstractNode, org.dom4j.Node
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
