package org.dom4j.tree;

import org.dom4j.Element;
import org.dom4j.Node;
/* loaded from: classes2.dex */
public class FlyweightEntity extends AbstractEntity {
    protected String name;
    protected String text;

    protected FlyweightEntity() {
    }

    public FlyweightEntity(String name) {
        this.name = name;
    }

    public FlyweightEntity(String name, String text) {
        this.name = name;
        this.text = text;
    }

    @Override // org.dom4j.tree.AbstractNode, org.dom4j.Node
    public String getName() {
        return this.name;
    }

    @Override // org.dom4j.tree.AbstractNode, org.dom4j.Node
    public String getText() {
        return this.text;
    }

    @Override // org.dom4j.tree.AbstractNode, org.dom4j.Node
    public void setText(String text) {
        if (this.text != null) {
            this.text = text;
            return;
        }
        throw new UnsupportedOperationException("This Entity is read-only. It cannot be modified");
    }

    @Override // org.dom4j.tree.AbstractNode
    protected Node createXPathResult(Element parent) {
        return new DefaultEntity(parent, getName(), getText());
    }
}
