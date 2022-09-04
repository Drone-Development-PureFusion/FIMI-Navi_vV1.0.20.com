package org.dom4j.tree;

import org.dom4j.CDATA;
import org.dom4j.Element;
import org.dom4j.Node;
/* loaded from: classes2.dex */
public class FlyweightCDATA extends AbstractCDATA implements CDATA {
    protected String text;

    public FlyweightCDATA(String text) {
        this.text = text;
    }

    @Override // org.dom4j.tree.AbstractNode, org.dom4j.Node
    public String getText() {
        return this.text;
    }

    @Override // org.dom4j.tree.AbstractNode
    protected Node createXPathResult(Element parent) {
        return new DefaultCDATA(parent, getText());
    }
}
