package org.dom4j.tree;

import org.dom4j.Comment;
import org.dom4j.Element;
import org.dom4j.Node;
/* loaded from: classes2.dex */
public class FlyweightComment extends AbstractComment implements Comment {
    protected String text;

    public FlyweightComment(String text) {
        this.text = text;
    }

    @Override // org.dom4j.tree.AbstractNode, org.dom4j.Node
    public String getText() {
        return this.text;
    }

    @Override // org.dom4j.tree.AbstractNode
    protected Node createXPathResult(Element parent) {
        return new DefaultComment(parent, getText());
    }
}
