package org.dom4j.datatype;

import com.sun.msv.datatype.xsd.XSDatatype;
import java.util.HashMap;
import java.util.Map;
import org.dom4j.Attribute;
import org.dom4j.DocumentFactory;
import org.dom4j.Element;
import org.dom4j.QName;
/* loaded from: classes2.dex */
public class DatatypeElementFactory extends DocumentFactory {
    private Map attributeXSDatatypes = new HashMap();
    private Map childrenXSDatatypes = new HashMap();
    private QName elementQName;

    public DatatypeElementFactory(QName elementQName) {
        this.elementQName = elementQName;
    }

    public QName getQName() {
        return this.elementQName;
    }

    public XSDatatype getAttributeXSDatatype(QName attributeQName) {
        return (XSDatatype) this.attributeXSDatatypes.get(attributeQName);
    }

    public void setAttributeXSDatatype(QName attributeQName, XSDatatype type) {
        this.attributeXSDatatypes.put(attributeQName, type);
    }

    public XSDatatype getChildElementXSDatatype(QName qname) {
        return (XSDatatype) this.childrenXSDatatypes.get(qname);
    }

    public void setChildElementXSDatatype(QName qname, XSDatatype dataType) {
        this.childrenXSDatatypes.put(qname, dataType);
    }

    @Override // org.dom4j.DocumentFactory
    public Element createElement(QName qname) {
        XSDatatype dataType = getChildElementXSDatatype(qname);
        if (dataType != null) {
            return new DatatypeElement(qname, dataType);
        }
        DocumentFactory factory = qname.getDocumentFactory();
        if (factory instanceof DatatypeElementFactory) {
            DatatypeElementFactory dtFactory = (DatatypeElementFactory) factory;
            XSDatatype dataType2 = dtFactory.getChildElementXSDatatype(qname);
            if (dataType2 != null) {
                return new DatatypeElement(qname, dataType2);
            }
        }
        return super.createElement(qname);
    }

    @Override // org.dom4j.DocumentFactory
    public Attribute createAttribute(Element owner, QName qname, String value) {
        XSDatatype dataType = getAttributeXSDatatype(qname);
        return dataType == null ? super.createAttribute(owner, qname, value) : new DatatypeAttribute(qname, dataType, value);
    }
}
