package org.dom4j.tree;

import org.dom4j.Element;
import org.dom4j.Node;
import org.dom4j.Text;
/* loaded from: classes2.dex */
public class FlyweightText extends AbstractText implements Text {
    protected String text;

    public FlyweightText(String text) {
        this.text = text;
    }

    @Override // org.dom4j.tree.AbstractNode, org.dom4j.Node
    public String getText() {
        return this.text;
    }

    @Override // org.dom4j.tree.AbstractNode
    protected Node createXPathResult(Element parent) {
        return new DefaultText(parent, getText());
    }
}
