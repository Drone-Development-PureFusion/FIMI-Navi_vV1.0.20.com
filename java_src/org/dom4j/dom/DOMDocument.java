package org.dom4j.dom;

import java.util.ArrayList;
import org.dom4j.DocumentFactory;
import org.dom4j.QName;
import org.dom4j.tree.DefaultDocument;
import org.w3c.dom.Attr;
import org.w3c.dom.CDATASection;
import org.w3c.dom.Comment;
import org.w3c.dom.DOMException;
import org.w3c.dom.DOMImplementation;
import org.w3c.dom.Document;
import org.w3c.dom.DocumentFragment;
import org.w3c.dom.DocumentType;
import org.w3c.dom.Element;
import org.w3c.dom.EntityReference;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.ProcessingInstruction;
import org.w3c.dom.Text;
/* loaded from: classes2.dex */
public class DOMDocument extends DefaultDocument implements Document {
    private static final DOMDocumentFactory DOCUMENT_FACTORY = (DOMDocumentFactory) DOMDocumentFactory.getInstance();

    public DOMDocument() {
        init();
    }

    public DOMDocument(String name) {
        super(name);
        init();
    }

    public DOMDocument(DOMElement rootElement) {
        super(rootElement);
        init();
    }

    public DOMDocument(DOMDocumentType docType) {
        super(docType);
        init();
    }

    public DOMDocument(DOMElement rootElement, DOMDocumentType docType) {
        super(rootElement, docType);
        init();
    }

    public DOMDocument(String name, DOMElement rootElement, DOMDocumentType docType) {
        super(name, rootElement, docType);
        init();
    }

    private void init() {
        setDocumentFactory(DOCUMENT_FACTORY);
    }

    public boolean supports(String feature, String version) {
        return DOMNodeHelper.supports(this, feature, version);
    }

    @Override // org.w3c.dom.Node
    public String getNamespaceURI() {
        return DOMNodeHelper.getNamespaceURI(this);
    }

    @Override // org.w3c.dom.Node
    public String getPrefix() {
        return DOMNodeHelper.getPrefix(this);
    }

    @Override // org.w3c.dom.Node
    public void setPrefix(String prefix) throws DOMException {
        DOMNodeHelper.setPrefix(this, prefix);
    }

    @Override // org.w3c.dom.Node
    public String getLocalName() {
        return DOMNodeHelper.getLocalName(this);
    }

    @Override // org.w3c.dom.Node
    public String getNodeName() {
        return "#document";
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
        return null;
    }

    @Override // org.w3c.dom.Node
    public Document getOwnerDocument() {
        return null;
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
        if (nodeType != 1 && nodeType != 8 && nodeType != 7 && nodeType != 10) {
            throw new DOMException((short) 3, "Given node cannot be a child of document");
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

    @Override // org.w3c.dom.Document
    public NodeList getElementsByTagName(String name) {
        ArrayList list = new ArrayList();
        DOMNodeHelper.appendElementsByTagName(list, this, name);
        return DOMNodeHelper.createNodeList(list);
    }

    @Override // org.w3c.dom.Document
    public NodeList getElementsByTagNameNS(String namespace, String name) {
        ArrayList list = new ArrayList();
        DOMNodeHelper.appendElementsByTagNameNS(list, this, namespace, name);
        return DOMNodeHelper.createNodeList(list);
    }

    @Override // org.w3c.dom.Document
    public DocumentType getDoctype() {
        return DOMNodeHelper.asDOMDocumentType(getDocType());
    }

    @Override // org.w3c.dom.Document
    public DOMImplementation getImplementation() {
        return getDocumentFactory() instanceof DOMImplementation ? (DOMImplementation) getDocumentFactory() : DOCUMENT_FACTORY;
    }

    @Override // org.w3c.dom.Document
    public Element getDocumentElement() {
        return DOMNodeHelper.asDOMElement(getRootElement());
    }

    @Override // org.w3c.dom.Document
    public Element createElement(String name) throws DOMException {
        return (Element) getDocumentFactory().createElement(name);
    }

    @Override // org.w3c.dom.Document
    public DocumentFragment createDocumentFragment() {
        DOMNodeHelper.notSupported();
        return null;
    }

    @Override // org.w3c.dom.Document
    public Text createTextNode(String data) {
        return (Text) getDocumentFactory().createText(data);
    }

    @Override // org.w3c.dom.Document
    public Comment createComment(String data) {
        return (Comment) getDocumentFactory().createComment(data);
    }

    @Override // org.w3c.dom.Document
    public CDATASection createCDATASection(String data) throws DOMException {
        return (CDATASection) getDocumentFactory().createCDATA(data);
    }

    @Override // org.w3c.dom.Document
    public ProcessingInstruction createProcessingInstruction(String target, String data) throws DOMException {
        return (ProcessingInstruction) getDocumentFactory().createProcessingInstruction(target, data);
    }

    @Override // org.w3c.dom.Document
    public Attr createAttribute(String name) throws DOMException {
        QName qname = getDocumentFactory().createQName(name);
        return (Attr) getDocumentFactory().createAttribute((org.dom4j.Element) null, qname, "");
    }

    @Override // org.w3c.dom.Document
    public EntityReference createEntityReference(String name) throws DOMException {
        return (EntityReference) getDocumentFactory().createEntity(name, null);
    }

    @Override // org.w3c.dom.Document
    public Node importNode(Node importedNode, boolean deep) throws DOMException {
        DOMNodeHelper.notSupported();
        return null;
    }

    @Override // org.w3c.dom.Document
    public Element createElementNS(String namespaceURI, String qualifiedName) throws DOMException {
        QName qname = getDocumentFactory().createQName(qualifiedName, namespaceURI);
        return (Element) getDocumentFactory().createElement(qname);
    }

    @Override // org.w3c.dom.Document
    public Attr createAttributeNS(String namespaceURI, String qualifiedName) throws DOMException {
        QName qname = getDocumentFactory().createQName(qualifiedName, namespaceURI);
        return (Attr) getDocumentFactory().createAttribute((org.dom4j.Element) null, qname, (String) null);
    }

    @Override // org.w3c.dom.Document
    public Element getElementById(String elementId) {
        return DOMNodeHelper.asDOMElement(elementByID(elementId));
    }

    @Override // org.dom4j.tree.DefaultDocument, org.dom4j.tree.AbstractNode
    protected DocumentFactory getDocumentFactory() {
        return super.getDocumentFactory() == null ? DOCUMENT_FACTORY : super.getDocumentFactory();
    }
}
