package org.dom4j.tree;

import org.dom4j.CharacterData;
import org.dom4j.Element;
/* loaded from: classes2.dex */
public abstract class AbstractCharacterData extends AbstractNode implements CharacterData {
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

    @Override // org.dom4j.CharacterData
    public void appendText(String text) {
        setText(new StringBuffer().append(getText()).append(text).toString());
    }
}
