package org.dom4j.tree;

import java.io.IOException;
import java.io.Writer;
import org.dom4j.AbstractC2649Entity;
import org.dom4j.Element;
import org.dom4j.Visitor;
/* loaded from: classes2.dex */
public abstract class AbstractEntity extends AbstractNode implements AbstractC2649Entity {
    @Override // org.dom4j.tree.AbstractNode, org.dom4j.Node
    public short getNodeType() {
        return (short) 5;
    }

    @Override // org.dom4j.Node
    public String getPath(Element context) {
        Element parent = getParent();
        return (parent == null || parent == context) ? "text()" : new StringBuffer().append(parent.getPath(context)).append("/text()").toString();
    }

    @Override // org.dom4j.Node
    public String getUniquePath(Element context) {
        Element parent = getParent();
        return (parent == null || parent == context) ? "text()" : new StringBuffer().append(parent.getUniquePath(context)).append("/text()").toString();
    }

    public String toString() {
        return new StringBuffer().append(super.toString()).append(" [Entity: &").append(getName()).append(";]").toString();
    }

    @Override // org.dom4j.tree.AbstractNode, org.dom4j.Node
    public String getStringValue() {
        return new StringBuffer().append("&").append(getName()).append(";").toString();
    }

    @Override // org.dom4j.Node
    public String asXML() {
        return new StringBuffer().append("&").append(getName()).append(";").toString();
    }

    @Override // org.dom4j.tree.AbstractNode, org.dom4j.Node
    public void write(Writer writer) throws IOException {
        writer.write("&");
        writer.write(getName());
        writer.write(";");
    }

    @Override // org.dom4j.Node
    public void accept(Visitor visitor) {
        visitor.visit(this);
    }
}
