package org.dom4j.dom;

import java.util.ArrayList;
import java.util.List;
import org.dom4j.Attribute;
import org.dom4j.DocumentFactory;
import org.dom4j.Namespace;
import org.dom4j.QName;
import org.dom4j.tree.DefaultElement;
import org.w3c.dom.Attr;
import org.w3c.dom.DOMException;
import org.w3c.dom.Document;
import org.w3c.dom.Element;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
/* loaded from: classes2.dex */
public class DOMElement extends DefaultElement implements Element {
    private static final DocumentFactory DOCUMENT_FACTORY = DOMDocumentFactory.getInstance();

    public DOMElement(String name) {
        super(name);
    }

    public DOMElement(QName qname) {
        super(qname);
    }

    public DOMElement(QName qname, int attributeCount) {
        super(qname, attributeCount);
    }

    public DOMElement(String name, Namespace namespace) {
        super(name, namespace);
    }

    public boolean supports(String feature, String version) {
        return DOMNodeHelper.supports(this, feature, version);
    }

    @Override // org.dom4j.tree.AbstractElement, org.dom4j.Element, org.w3c.dom.Node
    public String getNamespaceURI() {
        return getQName().getNamespaceURI();
    }

    @Override // org.w3c.dom.Node
    public String getPrefix() {
        return getQName().getNamespacePrefix();
    }

    @Override // org.w3c.dom.Node
    public void setPrefix(String prefix) throws DOMException {
        DOMNodeHelper.setPrefix(this, prefix);
    }

    @Override // org.w3c.dom.Node
    public String getLocalName() {
        return getQName().getName();
    }

    @Override // org.w3c.dom.Node
    public String getNodeName() {
        return getName();
    }

    @Override // org.w3c.dom.Node
    public String getNodeValue() throws DOMException {
        return null;
    }

    @Override // org.w3c.dom.Node
    public void setNodeValue(String nodeValue) throws DOMException {
    }

    @Override // org.w3c.dom.Node
    public Node getParentNode() {
        return DOMNodeHelper.getParentNode(this);
    }

    @Override // org.w3c.dom.Node
    public NodeList getChildNodes() {
        return DOMNodeHelper.createNodeList(content());
    }

    @Override // org.w3c.dom.Node
    public Node getFirstChild() {
        return DOMNodeHelper.asDOMNode(node(0));
    }

    @Override // org.w3c.dom.Node
    public Node getLastChild() {
        return DOMNodeHelper.asDOMNode(node(nodeCount() - 1));
    }

    @Override // org.w3c.dom.Node
    public Node getPreviousSibling() {
        return DOMNodeHelper.getPreviousSibling(this);
    }

    @Override // org.w3c.dom.Node
    public Node getNextSibling() {
        return DOMNodeHelper.getNextSibling(this);
    }

    @Override // org.w3c.dom.Node
    public NamedNodeMap getAttributes() {
        return new DOMAttributeNodeMap(this);
    }

    @Override // org.w3c.dom.Node
    public Document getOwnerDocument() {
        return DOMNodeHelper.getOwnerDocument(this);
    }

    @Override // org.w3c.dom.Node
    public Node insertBefore(Node newChild, Node refChild) throws DOMException {
        checkNewChildNode(newChild);
        return DOMNodeHelper.insertBefore(this, newChild, refChild);
    }

    @Override // org.w3c.dom.Node
    public Node replaceChild(Node newChild, Node oldChild) throws DOMException {
        checkNewChildNode(newChild);
        return DOMNodeHelper.replaceChild(this, newChild, oldChild);
    }

    @Override // org.w3c.dom.Node
    public Node removeChild(Node oldChild) throws DOMException {
        return DOMNodeHelper.removeChild(this, oldChild);
    }

    @Override // org.w3c.dom.Node
    public Node appendChild(Node newChild) throws DOMException {
        checkNewChildNode(newChild);
        return DOMNodeHelper.appendChild(this, newChild);
    }

    private void checkNewChildNode(Node newChild) throws DOMException {
        int nodeType = newChild.getNodeType();
        if (nodeType != 1 && nodeType != 3 && nodeType != 8 && nodeType != 7 && nodeType != 4 && nodeType != 5) {
            throw new DOMException((short) 3, "Given node cannot be a child of element");
        }
    }

    @Override // org.w3c.dom.Node
    public boolean hasChildNodes() {
        return nodeCount() > 0;
    }

    @Override // org.w3c.dom.Node
    public Node cloneNode(boolean deep) {
        return DOMNodeHelper.cloneNode(this, deep);
    }

    @Override // org.w3c.dom.Node
    public boolean isSupported(String feature, String version) {
        return DOMNodeHelper.isSupported(this, feature, version);
    }

    @Override // org.w3c.dom.Node
    public boolean hasAttributes() {
        return DOMNodeHelper.hasAttributes(this);
    }

    @Override // org.w3c.dom.Element
    public String getTagName() {
        return getName();
    }

    @Override // org.w3c.dom.Element
    public String getAttribute(String name) {
        String answer = attributeValue(name);
        return answer != null ? answer : "";
    }

    @Override // org.w3c.dom.Element
    public void setAttribute(String name, String value) throws DOMException {
        addAttribute(name, value);
    }

    @Override // org.w3c.dom.Element
    public void removeAttribute(String name) throws DOMException {
        Attribute attribute = attribute(name);
        if (attribute != null) {
            remove(attribute);
        }
    }

    @Override // org.w3c.dom.Element
    public Attr getAttributeNode(String name) {
        return DOMNodeHelper.asDOMAttr(attribute(name));
    }

    @Override // org.w3c.dom.Element
    public Attr setAttributeNode(Attr newAttr) throws DOMException {
        if (isReadOnly()) {
            throw new DOMException((short) 7, "No modification allowed");
        }
        Attribute attribute = attribute(newAttr);
        if (attribute != newAttr) {
            if (newAttr.getOwnerElement() != null) {
                throw new DOMException((short) 10, "Attribute is already in use");
            }
            Attribute newAttribute = createAttribute(newAttr);
            if (attribute != null) {
                attribute.detach();
            }
            add(newAttribute);
        }
        return DOMNodeHelper.asDOMAttr(attribute);
    }

    @Override // org.w3c.dom.Element
    public Attr removeAttributeNode(Attr oldAttr) throws DOMException {
        Attribute attribute = attribute(oldAttr);
        if (attribute != null) {
            attribute.detach();
            return DOMNodeHelper.asDOMAttr(attribute);
        }
        throw new DOMException((short) 8, "No such attribute");
    }

    @Override // org.w3c.dom.Element
    public String getAttributeNS(String namespaceURI, String localName) {
        String answer;
        Attribute attribute = attribute(namespaceURI, localName);
        return (attribute == null || (answer = attribute.getValue()) == null) ? "" : answer;
    }

    @Override // org.w3c.dom.Element
    public void setAttributeNS(String namespaceURI, String qualifiedName, String value) throws DOMException {
        Attribute attribute = attribute(namespaceURI, qualifiedName);
        if (attribute != null) {
            attribute.setValue(value);
            return;
        }
        QName qname = getQName(namespaceURI, qualifiedName);
        addAttribute(qname, value);
    }

    @Override // org.w3c.dom.Element
    public void removeAttributeNS(String namespaceURI, String localName) throws DOMException {
        Attribute attribute = attribute(namespaceURI, localName);
        if (attribute != null) {
            remove(attribute);
        }
    }

    @Override // org.w3c.dom.Element
    public Attr getAttributeNodeNS(String namespaceURI, String localName) {
        Attribute attribute = attribute(namespaceURI, localName);
        if (attribute != null) {
            DOMNodeHelper.asDOMAttr(attribute);
            return null;
        }
        return null;
    }

    @Override // org.w3c.dom.Element
    public Attr setAttributeNodeNS(Attr newAttr) throws DOMException {
        Attribute attribute = attribute(newAttr.getNamespaceURI(), newAttr.getLocalName());
        if (attribute != null) {
            attribute.setValue(newAttr.getValue());
        } else {
            attribute = createAttribute(newAttr);
            add(attribute);
        }
        return DOMNodeHelper.asDOMAttr(attribute);
    }

    @Override // org.w3c.dom.Element
    public NodeList getElementsByTagName(String name) {
        ArrayList list = new ArrayList();
        DOMNodeHelper.appendElementsByTagName(list, this, name);
        return DOMNodeHelper.createNodeList(list);
    }

    @Override // org.w3c.dom.Element
    public NodeList getElementsByTagNameNS(String namespace, String lName) {
        ArrayList list = new ArrayList();
        DOMNodeHelper.appendElementsByTagNameNS(list, this, namespace, lName);
        return DOMNodeHelper.createNodeList(list);
    }

    @Override // org.w3c.dom.Element
    public boolean hasAttribute(String name) {
        return attribute(name) != null;
    }

    @Override // org.w3c.dom.Element
    public boolean hasAttributeNS(String namespaceURI, String localName) {
        return attribute(namespaceURI, localName) != null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.dom4j.tree.DefaultElement, org.dom4j.tree.AbstractElement, org.dom4j.tree.AbstractNode
    public DocumentFactory getDocumentFactory() {
        DocumentFactory factory = getQName().getDocumentFactory();
        return factory != null ? factory : DOCUMENT_FACTORY;
    }

    protected Attribute attribute(Attr attr) {
        return attribute(DOCUMENT_FACTORY.createQName(attr.getLocalName(), attr.getPrefix(), attr.getNamespaceURI()));
    }

    protected Attribute attribute(String namespaceURI, String localName) {
        List attributes = attributeList();
        int size = attributes.size();
        for (int i = 0; i < size; i++) {
            Attribute attribute = (Attribute) attributes.get(i);
            if (localName.equals(attribute.getName())) {
                if ((namespaceURI == null || namespaceURI.length() == 0) && (attribute.getNamespaceURI() == null || attribute.getNamespaceURI().length() == 0)) {
                    return attribute;
                }
                if (namespaceURI != null && namespaceURI.equals(attribute.getNamespaceURI())) {
                    return attribute;
                }
            }
        }
        return null;
    }

    protected Attribute createAttribute(Attr newAttr) {
        QName qname;
        String name = newAttr.getLocalName();
        if (name != null) {
            String prefix = newAttr.getPrefix();
            String uri = newAttr.getNamespaceURI();
            qname = getDocumentFactory().createQName(name, prefix, uri);
        } else {
            qname = getDocumentFactory().createQName(newAttr.getName());
        }
        return new DOMAttribute(qname, newAttr.getValue());
    }

    protected QName getQName(String namespace, String qualifiedName) {
        int index = qualifiedName.indexOf(58);
        String prefix = "";
        String localName = qualifiedName;
        if (index >= 0) {
            prefix = qualifiedName.substring(0, index);
            localName = qualifiedName.substring(index + 1);
        }
        return getDocumentFactory().createQName(localName, prefix, namespace);
    }
}
