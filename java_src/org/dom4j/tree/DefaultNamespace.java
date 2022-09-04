package org.dom4j.tree;

import org.dom4j.Element;
import org.dom4j.Namespace;
/* loaded from: classes2.dex */
public class DefaultNamespace extends Namespace {
    private Element parent;

    public DefaultNamespace(String prefix, String uri) {
        super(prefix, uri);
    }

    public DefaultNamespace(Element parent, String prefix, String uri) {
        super(prefix, uri);
        this.parent = parent;
    }

    @Override // org.dom4j.Namespace
    protected int createHashCode() {
        int hashCode = super.createHashCode();
        if (this.parent != null) {
            return hashCode ^ this.parent.hashCode();
        }
        return hashCode;
    }

    @Override // org.dom4j.Namespace
    public boolean equals(Object object) {
        if (object instanceof DefaultNamespace) {
            DefaultNamespace that = (DefaultNamespace) object;
            if (that.parent == this.parent) {
                return super.equals(object);
            }
        }
        return false;
    }

    @Override // org.dom4j.Namespace
    public int hashCode() {
        return super.hashCode();
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
