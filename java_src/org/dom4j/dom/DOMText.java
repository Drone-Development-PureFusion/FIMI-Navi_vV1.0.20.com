package org.dom4j.dom;

import org.dom4j.Element;
import org.dom4j.tree.DefaultText;
import org.w3c.dom.DOMException;
import org.w3c.dom.Document;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
import org.w3c.dom.Text;
/* loaded from: classes2.dex */
public class DOMText extends DefaultText implements Text {
    public DOMText(String text) {
        super(text);
    }

    public DOMText(Element parent, String text) {
        super(parent, text);
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
        return "#text";
    }

    @Override // org.w3c.dom.Node
    public String getNodeValue() throws DOMException {
        return DOMNodeHelper.getNodeValue(this);
    }

    @Override // org.w3c.dom.Node
    public void setNodeValue(String nodeValue) throws DOMException {
        DOMNodeHelper.setNodeValue(this, nodeValue);
    }

    @Override // org.w3c.dom.Node
    public Node getParentNode() {
        return DOMNodeHelper.getParentNode(this);
    }

    @Override // org.w3c.dom.Node
    public NodeList getChildNodes() {
        return DOMNodeHelper.getChildNodes(this);
    }

    @Override // org.w3c.dom.Node
    public Node getFirstChild() {
        return DOMNodeHelper.getFirstChild(this);
    }

    @Override // org.w3c.dom.Node
    public Node getLastChild() {
        return DOMNodeHelper.getLastChild(this);
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
        throw new DOMException((short) 3, "Text nodes cannot have children");
    }

    @Override // org.w3c.dom.Node
    public boolean hasChildNodes() {
        return DOMNodeHelper.hasChildNodes(this);
    }

    @Override // org.w3c.dom.Node
    public Node cloneNode(boolean deep) {
        return DOMNodeHelper.cloneNode(this, deep);
    }

    @Override // org.w3c.dom.Node
    public void normalize() {
        DOMNodeHelper.normalize(this);
    }

    @Override // org.w3c.dom.Node
    public boolean isSupported(String feature, String version) {
        return DOMNodeHelper.isSupported(this, feature, version);
    }

    @Override // org.w3c.dom.Node
    public boolean hasAttributes() {
        return DOMNodeHelper.hasAttributes(this);
    }

    @Override // org.w3c.dom.CharacterData
    public String getData() throws DOMException {
        return DOMNodeHelper.getData(this);
    }

    @Override // org.w3c.dom.CharacterData
    public void setData(String data) throws DOMException {
        DOMNodeHelper.setData(this, data);
    }

    @Override // org.w3c.dom.CharacterData
    public int getLength() {
        return DOMNodeHelper.getLength(this);
    }

    @Override // org.w3c.dom.CharacterData
    public String substringData(int offset, int count) throws DOMException {
        return DOMNodeHelper.substringData(this, offset, count);
    }

    @Override // org.w3c.dom.CharacterData
    public void appendData(String arg) throws DOMException {
        DOMNodeHelper.appendData(this, arg);
    }

    @Override // org.w3c.dom.CharacterData
    public void insertData(int offset, String arg) throws DOMException {
        DOMNodeHelper.insertData(this, offset, arg);
    }

    @Override // org.w3c.dom.CharacterData
    public void deleteData(int offset, int count) throws DOMException {
        DOMNodeHelper.deleteData(this, offset, count);
    }

    @Override // org.w3c.dom.CharacterData
    public void replaceData(int offset, int count, String arg) throws DOMException {
        DOMNodeHelper.replaceData(this, offset, count, arg);
    }

    @Override // org.w3c.dom.Text
    public Text splitText(int offset) throws DOMException {
        if (isReadOnly()) {
            throw new DOMException((short) 7, new StringBuffer().append("CharacterData node is read only: ").append(this).toString());
        }
        String text = getText();
        int length = text != null ? text.length() : 0;
        if (offset < 0 || offset >= length) {
            throw new DOMException((short) 1, new StringBuffer().append("No text at offset: ").append(offset).toString());
        }
        String start = text.substring(0, offset);
        String rest = text.substring(offset);
        setText(start);
        Element parent = getParent();
        org.dom4j.Text newText = createText(rest);
        if (parent != null) {
            parent.add(newText);
        }
        return DOMNodeHelper.asDOMText(newText);
    }

    protected org.dom4j.Text createText(String text) {
        return new DOMText(text);
    }
}
