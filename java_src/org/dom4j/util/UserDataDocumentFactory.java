package org.dom4j.util;

import org.dom4j.Attribute;
import org.dom4j.DocumentFactory;
import org.dom4j.Element;
import org.dom4j.QName;
/* loaded from: classes2.dex */
public class UserDataDocumentFactory extends DocumentFactory {
    protected static transient UserDataDocumentFactory singleton = new UserDataDocumentFactory();

    public static DocumentFactory getInstance() {
        return singleton;
    }

    @Override // org.dom4j.DocumentFactory
    public Element createElement(QName qname) {
        return new UserDataElement(qname);
    }

    @Override // org.dom4j.DocumentFactory
    public Attribute createAttribute(Element owner, QName qname, String value) {
        return new UserDataAttribute(qname, value);
    }
}
