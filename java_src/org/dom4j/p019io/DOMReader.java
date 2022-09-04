package org.dom4j.p019io;

import java.util.ArrayList;
import java.util.List;
import org.dom4j.Branch;
import org.dom4j.Document;
import org.dom4j.DocumentFactory;
import org.dom4j.Element;
import org.dom4j.Namespace;
import org.dom4j.QName;
import org.dom4j.tree.NamespaceStack;
import org.w3c.dom.DocumentType;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
/* renamed from: org.dom4j.io.DOMReader */
/* loaded from: classes2.dex */
public class DOMReader {
    private DocumentFactory factory;
    private NamespaceStack namespaceStack;

    public DOMReader() {
        this.factory = DocumentFactory.getInstance();
        this.namespaceStack = new NamespaceStack(this.factory);
    }

    public DOMReader(DocumentFactory factory) {
        this.factory = factory;
        this.namespaceStack = new NamespaceStack(factory);
    }

    public DocumentFactory getDocumentFactory() {
        return this.factory;
    }

    public void setDocumentFactory(DocumentFactory docFactory) {
        this.factory = docFactory;
        this.namespaceStack.setDocumentFactory(this.factory);
    }

    public Document read(org.w3c.dom.Document domDocument) {
        if (domDocument instanceof Document) {
            return (Document) domDocument;
        }
        Document document = createDocument();
        clearNamespaceStack();
        NodeList nodeList = domDocument.getChildNodes();
        int size = nodeList.getLength();
        for (int i = 0; i < size; i++) {
            readTree(nodeList.item(i), document);
        }
        return document;
    }

    protected void readTree(Node node, Branch current) {
        Element element = null;
        Document document = null;
        if (current instanceof Element) {
            element = (Element) current;
        } else {
            document = (Document) current;
        }
        switch (node.getNodeType()) {
            case 1:
                readElement(node, current);
                return;
            case 2:
            case 9:
            default:
                System.out.println(new StringBuffer().append("WARNING: Unknown DOM node type: ").append((int) node.getNodeType()).toString());
                return;
            case 3:
                element.addText(node.getNodeValue());
                return;
            case 4:
                element.addCDATA(node.getNodeValue());
                return;
            case 5:
                Node firstChild = node.getFirstChild();
                if (firstChild != null) {
                    element.addEntity(node.getNodeName(), firstChild.getNodeValue());
                    return;
                } else {
                    element.addEntity(node.getNodeName(), "");
                    return;
                }
            case 6:
                element.addEntity(node.getNodeName(), node.getNodeValue());
                return;
            case 7:
                if (current instanceof Element) {
                    Element currentEl = (Element) current;
                    currentEl.addProcessingInstruction(node.getNodeName(), node.getNodeValue());
                    return;
                }
                Document currentDoc = (Document) current;
                currentDoc.addProcessingInstruction(node.getNodeName(), node.getNodeValue());
                return;
            case 8:
                if (current instanceof Element) {
                    ((Element) current).addComment(node.getNodeValue());
                    return;
                } else {
                    ((Document) current).addComment(node.getNodeValue());
                    return;
                }
            case 10:
                DocumentType domDocType = (DocumentType) node;
                document.addDocType(domDocType.getName(), domDocType.getPublicId(), domDocType.getSystemId());
                return;
        }
    }

    protected void readElement(Node node, Branch current) {
        Node attribute;
        int previouslyDeclaredNamespaces = this.namespaceStack.size();
        String namespaceUri = node.getNamespaceURI();
        String elementPrefix = node.getPrefix();
        if (elementPrefix == null) {
        }
        NamedNodeMap attributeList = node.getAttributes();
        if (attributeList != null && namespaceUri == null && (attribute = attributeList.getNamedItem("xmlns")) != null) {
            namespaceUri = attribute.getNodeValue();
        }
        QName qName = this.namespaceStack.getQName(namespaceUri, node.getLocalName(), node.getNodeName());
        Element element = current.addElement(qName);
        if (attributeList != null) {
            int size = attributeList.getLength();
            List attributes = new ArrayList(size);
            for (int i = 0; i < size; i++) {
                Node attribute2 = attributeList.item(i);
                String name = attribute2.getNodeName();
                if (name.startsWith("xmlns")) {
                    String prefix = getPrefix(name);
                    String uri = attribute2.getNodeValue();
                    Namespace namespace = this.namespaceStack.addNamespace(prefix, uri);
                    element.add(namespace);
                } else {
                    attributes.add(attribute2);
                }
            }
            int size2 = attributes.size();
            for (int i2 = 0; i2 < size2; i2++) {
                Node attribute3 = (Node) attributes.get(i2);
                QName attributeQName = this.namespaceStack.getQName(attribute3.getNamespaceURI(), attribute3.getLocalName(), attribute3.getNodeName());
                element.addAttribute(attributeQName, attribute3.getNodeValue());
            }
        }
        NodeList children = node.getChildNodes();
        int size3 = children.getLength();
        for (int i3 = 0; i3 < size3; i3++) {
            Node child = children.item(i3);
            readTree(child, element);
        }
        while (this.namespaceStack.size() > previouslyDeclaredNamespaces) {
            this.namespaceStack.pop();
        }
    }

    protected Namespace getNamespace(String prefix, String uri) {
        return getDocumentFactory().createNamespace(prefix, uri);
    }

    protected Document createDocument() {
        return getDocumentFactory().createDocument();
    }

    protected void clearNamespaceStack() {
        this.namespaceStack.clear();
        if (!this.namespaceStack.contains(Namespace.XML_NAMESPACE)) {
            this.namespaceStack.push(Namespace.XML_NAMESPACE);
        }
    }

    private String getPrefix(String xmlnsDecl) {
        int index = xmlnsDecl.indexOf(58, 5);
        return index != -1 ? xmlnsDecl.substring(index + 1) : "";
    }
}
