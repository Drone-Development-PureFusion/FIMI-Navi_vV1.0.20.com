package org.dom4j.dom;

import org.w3c.dom.Attr;
import org.w3c.dom.DOMException;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
/* loaded from: classes2.dex */
public class DOMAttributeNodeMap implements NamedNodeMap {
    private DOMElement element;

    public DOMAttributeNodeMap(DOMElement element) {
        this.element = element;
    }

    public void foo() throws DOMException {
        DOMNodeHelper.notSupported();
    }

    @Override // org.w3c.dom.NamedNodeMap
    public Node getNamedItem(String name) {
        return this.element.getAttributeNode(name);
    }

    @Override // org.w3c.dom.NamedNodeMap
    public Node setNamedItem(Node arg) throws DOMException {
        if (arg instanceof Attr) {
            return this.element.setAttributeNode((Attr) arg);
        }
        throw new DOMException((short) 9, new StringBuffer().append("Node is not an Attr: ").append(arg).toString());
    }

    @Override // org.w3c.dom.NamedNodeMap
    public Node removeNamedItem(String name) throws DOMException {
        Attr attr = this.element.getAttributeNode(name);
        if (attr == null) {
            throw new DOMException((short) 8, new StringBuffer().append("No attribute named ").append(name).toString());
        }
        return this.element.removeAttributeNode(attr);
    }

    @Override // org.w3c.dom.NamedNodeMap
    public Node item(int index) {
        return DOMNodeHelper.asDOMAttr(this.element.attribute(index));
    }

    @Override // org.w3c.dom.NamedNodeMap
    public int getLength() {
        return this.element.attributeCount();
    }

    @Override // org.w3c.dom.NamedNodeMap
    public Node getNamedItemNS(String namespaceURI, String localName) {
        return this.element.getAttributeNodeNS(namespaceURI, localName);
    }

    @Override // org.w3c.dom.NamedNodeMap
    public Node setNamedItemNS(Node arg) throws DOMException {
        if (arg instanceof Attr) {
            return this.element.setAttributeNodeNS((Attr) arg);
        }
        throw new DOMException((short) 9, new StringBuffer().append("Node is not an Attr: ").append(arg).toString());
    }

    @Override // org.w3c.dom.NamedNodeMap
    public Node removeNamedItemNS(String namespaceURI, String localName) throws DOMException {
        Attr attr = this.element.getAttributeNodeNS(namespaceURI, localName);
        if (attr != null) {
            return this.element.removeAttributeNode(attr);
        }
        return attr;
    }
}
