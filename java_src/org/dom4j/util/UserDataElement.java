package org.dom4j.util;

import org.dom4j.Element;
import org.dom4j.QName;
import org.dom4j.tree.DefaultElement;
/* loaded from: classes2.dex */
public class UserDataElement extends DefaultElement {
    private Object data;

    public UserDataElement(String name) {
        super(name);
    }

    public UserDataElement(QName qname) {
        super(qname);
    }

    @Override // org.dom4j.tree.AbstractElement, org.dom4j.Element
    public Object getData() {
        return this.data;
    }

    @Override // org.dom4j.tree.AbstractElement, org.dom4j.Element
    public void setData(Object data) {
        this.data = data;
    }

    @Override // org.dom4j.tree.AbstractElement
    public String toString() {
        return new StringBuffer().append(super.toString()).append(" userData: ").append(this.data).toString();
    }

    @Override // org.dom4j.tree.DefaultElement, org.dom4j.tree.AbstractNode, org.dom4j.Node
    public Object clone() {
        UserDataElement answer = (UserDataElement) super.clone();
        if (answer != this) {
            answer.data = getCopyOfUserData();
        }
        return answer;
    }

    protected Object getCopyOfUserData() {
        return this.data;
    }

    @Override // org.dom4j.tree.AbstractElement
    protected Element createElement(String name) {
        Element answer = getDocumentFactory().createElement(name);
        answer.setData(getCopyOfUserData());
        return answer;
    }

    @Override // org.dom4j.tree.AbstractElement
    protected Element createElement(QName qName) {
        Element answer = getDocumentFactory().createElement(qName);
        answer.setData(getCopyOfUserData());
        return answer;
    }
}
