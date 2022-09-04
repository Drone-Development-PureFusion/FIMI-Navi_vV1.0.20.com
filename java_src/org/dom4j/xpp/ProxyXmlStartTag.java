package org.dom4j.xpp;

import java.util.ArrayList;
import java.util.Iterator;
import org.dom4j.Attribute;
import org.dom4j.DocumentFactory;
import org.dom4j.Element;
import org.dom4j.QName;
import org.dom4j.tree.AbstractElement;
import org.gjt.xpp.XmlPullParserException;
import org.gjt.xpp.XmlStartTag;
/* loaded from: classes2.dex */
public class ProxyXmlStartTag implements XmlStartTag {
    private Element element;
    private DocumentFactory factory = DocumentFactory.getInstance();

    public ProxyXmlStartTag() {
    }

    public ProxyXmlStartTag(Element element) {
        this.element = element;
    }

    public void resetStartTag() {
        this.element = null;
    }

    public int getAttributeCount() {
        if (this.element != null) {
            return this.element.attributeCount();
        }
        return 0;
    }

    public String getAttributeNamespaceUri(int index) {
        Attribute attribute;
        if (this.element == null || (attribute = this.element.attribute(index)) == null) {
            return null;
        }
        return attribute.getNamespaceURI();
    }

    public String getAttributeLocalName(int index) {
        Attribute attribute;
        if (this.element == null || (attribute = this.element.attribute(index)) == null) {
            return null;
        }
        return attribute.getName();
    }

    public String getAttributePrefix(int index) {
        Attribute attribute;
        String prefix;
        if (this.element == null || (attribute = this.element.attribute(index)) == null || (prefix = attribute.getNamespacePrefix()) == null || prefix.length() <= 0) {
            return null;
        }
        return prefix;
    }

    public String getAttributeRawName(int index) {
        Attribute attribute;
        if (this.element == null || (attribute = this.element.attribute(index)) == null) {
            return null;
        }
        return attribute.getQualifiedName();
    }

    public String getAttributeValue(int index) {
        Attribute attribute;
        if (this.element == null || (attribute = this.element.attribute(index)) == null) {
            return null;
        }
        return attribute.getValue();
    }

    public String getAttributeValueFromRawName(String rawName) {
        if (this.element != null) {
            Iterator iter = this.element.attributeIterator();
            while (iter.hasNext()) {
                Attribute attribute = (Attribute) iter.next();
                if (rawName.equals(attribute.getQualifiedName())) {
                    return attribute.getValue();
                }
            }
        }
        return null;
    }

    public String getAttributeValueFromName(String namespaceURI, String localName) {
        if (this.element != null) {
            Iterator iter = this.element.attributeIterator();
            while (iter.hasNext()) {
                Attribute attribute = (Attribute) iter.next();
                if (namespaceURI.equals(attribute.getNamespaceURI()) && localName.equals(attribute.getName())) {
                    return attribute.getValue();
                }
            }
        }
        return null;
    }

    public boolean isAttributeNamespaceDeclaration(int index) {
        Attribute attribute;
        if (this.element == null || (attribute = this.element.attribute(index)) == null) {
            return false;
        }
        return "xmlns".equals(attribute.getNamespacePrefix());
    }

    public void addAttribute(String namespaceURI, String localName, String rawName, String value) throws XmlPullParserException {
        QName qname = QName.get(rawName, namespaceURI);
        this.element.addAttribute(qname, value);
    }

    public void addAttribute(String namespaceURI, String localName, String rawName, String value, boolean isNamespaceDeclaration) throws XmlPullParserException {
        if (isNamespaceDeclaration) {
            String prefix = "";
            int idx = rawName.indexOf(58);
            if (idx > 0) {
                prefix = rawName.substring(0, idx);
            }
            this.element.addNamespace(prefix, namespaceURI);
            return;
        }
        QName qname = QName.get(rawName, namespaceURI);
        this.element.addAttribute(qname, value);
    }

    public void ensureAttributesCapacity(int minCapacity) throws XmlPullParserException {
        if (this.element instanceof AbstractElement) {
            AbstractElement elementImpl = (AbstractElement) this.element;
            elementImpl.ensureAttributesCapacity(minCapacity);
        }
    }

    public void removeAtttributes() throws XmlPullParserException {
        removeAttributes();
    }

    public void removeAttributes() throws XmlPullParserException {
        if (this.element != null) {
            this.element.setAttributes(new ArrayList());
        }
    }

    public String getLocalName() {
        return this.element.getName();
    }

    public String getNamespaceUri() {
        return this.element.getNamespaceURI();
    }

    public String getPrefix() {
        return this.element.getNamespacePrefix();
    }

    public String getRawName() {
        return this.element.getQualifiedName();
    }

    public void modifyTag(String namespaceURI, String lName, String rawName) {
        this.element = this.factory.createElement(rawName, namespaceURI);
    }

    public void resetTag() {
        this.element = null;
    }

    public boolean removeAttributeByName(String namespaceURI, String localName) throws XmlPullParserException {
        if (this.element != null) {
            QName qname = QName.get(localName, namespaceURI);
            Attribute attribute = this.element.attribute(qname);
            return this.element.remove(attribute);
        }
        return false;
    }

    public boolean removeAttributeByRawName(String rawName) throws XmlPullParserException {
        if (this.element != null) {
            Attribute attribute = null;
            Iterator it = this.element.attributeIterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                Attribute current = (Attribute) it.next();
                if (current.getQualifiedName().equals(rawName)) {
                    attribute = current;
                    break;
                }
            }
            return this.element.remove(attribute);
        }
        return false;
    }

    public DocumentFactory getDocumentFactory() {
        return this.factory;
    }

    public void setDocumentFactory(DocumentFactory documentFactory) {
        this.factory = documentFactory;
    }

    public Element getElement() {
        return this.element;
    }
}
