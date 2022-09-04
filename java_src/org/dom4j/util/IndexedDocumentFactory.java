package org.dom4j.util;

import org.dom4j.DocumentFactory;
import org.dom4j.Element;
import org.dom4j.QName;
/* loaded from: classes2.dex */
public class IndexedDocumentFactory extends DocumentFactory {
    protected static transient IndexedDocumentFactory singleton = new IndexedDocumentFactory();

    public static DocumentFactory getInstance() {
        return singleton;
    }

    @Override // org.dom4j.DocumentFactory
    public Element createElement(QName qname) {
        return new IndexedElement(qname);
    }

    public Element createElement(QName qname, int attributeCount) {
        return new IndexedElement(qname, attributeCount);
    }
}
