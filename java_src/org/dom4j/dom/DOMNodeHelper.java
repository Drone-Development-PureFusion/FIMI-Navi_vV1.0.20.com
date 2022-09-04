package org.dom4j.dom;

import java.util.List;
import org.dom4j.Branch;
import org.dom4j.CharacterData;
import org.dom4j.Element;
import org.dom4j.Node;
import org.slf4j.Marker;
import org.w3c.dom.Attr;
import org.w3c.dom.DOMException;
import org.w3c.dom.Document;
import org.w3c.dom.DocumentType;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.NodeList;
import org.w3c.dom.Text;
/* loaded from: classes2.dex */
public class DOMNodeHelper {
    public static final NodeList EMPTY_NODE_LIST = new EmptyNodeList();

    protected DOMNodeHelper() {
    }

    public static boolean supports(Node node, String feature, String version) {
        return false;
    }

    public static String getNamespaceURI(Node node) {
        return null;
    }

    public static String getPrefix(Node node) {
        return null;
    }

    public static String getLocalName(Node node) {
        return null;
    }

    public static void setPrefix(Node node, String prefix) throws DOMException {
        notSupported();
    }

    public static String getNodeValue(Node node) throws DOMException {
        return node.getText();
    }

    public static void setNodeValue(Node node, String nodeValue) throws DOMException {
        node.setText(nodeValue);
    }

    public static org.w3c.dom.Node getParentNode(Node node) {
        return asDOMNode(node.getParent());
    }

    public static NodeList getChildNodes(Node node) {
        return EMPTY_NODE_LIST;
    }

    public static org.w3c.dom.Node getFirstChild(Node node) {
        return null;
    }

    public static org.w3c.dom.Node getLastChild(Node node) {
        return null;
    }

    public static org.w3c.dom.Node getPreviousSibling(Node node) {
        int index;
        Element parent = node.getParent();
        if (parent == null || (index = parent.indexOf(node)) <= 0) {
            return null;
        }
        Node previous = parent.node(index - 1);
        return asDOMNode(previous);
    }

    public static org.w3c.dom.Node getNextSibling(Node node) {
        int index;
        int index2;
        Element parent = node.getParent();
        if (parent == null || (index = parent.indexOf(node)) < 0 || (index2 = index + 1) >= parent.nodeCount()) {
            return null;
        }
        Node next = parent.node(index2);
        return asDOMNode(next);
    }

    public static NamedNodeMap getAttributes(Node node) {
        return null;
    }

    public static Document getOwnerDocument(Node node) {
        return asDOMDocument(node.getDocument());
    }

    public static org.w3c.dom.Node insertBefore(Node node, org.w3c.dom.Node newChild, org.w3c.dom.Node refChild) throws DOMException {
        if (node instanceof Branch) {
            Branch branch = (Branch) node;
            List list = branch.content();
            int index = list.indexOf(refChild);
            if (index < 0) {
                branch.add((Node) newChild);
            } else {
                list.add(index, newChild);
            }
            return newChild;
        }
        throw new DOMException((short) 3, new StringBuffer().append("Children not allowed for this node: ").append(node).toString());
    }

    public static org.w3c.dom.Node replaceChild(Node node, org.w3c.dom.Node newChild, org.w3c.dom.Node oldChild) throws DOMException {
        if (node instanceof Branch) {
            Branch branch = (Branch) node;
            List list = branch.content();
            int index = list.indexOf(oldChild);
            if (index < 0) {
                throw new DOMException((short) 8, new StringBuffer().append("Tried to replace a non existing child for node: ").append(node).toString());
            }
            list.set(index, newChild);
            return oldChild;
        }
        throw new DOMException((short) 3, new StringBuffer().append("Children not allowed for this node: ").append(node).toString());
    }

    public static org.w3c.dom.Node removeChild(Node node, org.w3c.dom.Node oldChild) throws DOMException {
        if (node instanceof Branch) {
            Branch branch = (Branch) node;
            branch.remove((Node) oldChild);
            return oldChild;
        }
        throw new DOMException((short) 3, new StringBuffer().append("Children not allowed for this node: ").append(node).toString());
    }

    public static org.w3c.dom.Node appendChild(Node node, org.w3c.dom.Node newChild) throws DOMException {
        if (node instanceof Branch) {
            Branch branch = (Branch) node;
            org.w3c.dom.Node previousParent = newChild.getParentNode();
            if (previousParent != null) {
                previousParent.removeChild(newChild);
            }
            branch.add((Node) newChild);
            return newChild;
        }
        throw new DOMException((short) 3, new StringBuffer().append("Children not allowed for this node: ").append(node).toString());
    }

    public static boolean hasChildNodes(Node node) {
        return false;
    }

    public static org.w3c.dom.Node cloneNode(Node node, boolean deep) {
        return asDOMNode((Node) node.clone());
    }

    public static void normalize(Node node) {
        notSupported();
    }

    public static boolean isSupported(Node n, String feature, String version) {
        return false;
    }

    public static boolean hasAttributes(Node node) {
        return node != null && (node instanceof Element) && ((Element) node).attributeCount() > 0;
    }

    public static String getData(CharacterData charData) throws DOMException {
        return charData.getText();
    }

    public static void setData(CharacterData charData, String data) throws DOMException {
        charData.setText(data);
    }

    public static int getLength(CharacterData charData) {
        String text = charData.getText();
        if (text != null) {
            return text.length();
        }
        return 0;
    }

    public static String substringData(CharacterData charData, int offset, int count) throws DOMException {
        if (count < 0) {
            throw new DOMException((short) 1, new StringBuffer().append("Illegal value for count: ").append(count).toString());
        }
        String text = charData.getText();
        int length = text != null ? text.length() : 0;
        if (offset < 0 || offset >= length) {
            throw new DOMException((short) 1, new StringBuffer().append("No text at offset: ").append(offset).toString());
        }
        return offset + count > length ? text.substring(offset) : text.substring(offset, offset + count);
    }

    public static void appendData(CharacterData charData, String arg) throws DOMException {
        if (charData.isReadOnly()) {
            throw new DOMException((short) 7, new StringBuffer().append("CharacterData node is read only: ").append(charData).toString());
        }
        String text = charData.getText();
        if (text == null) {
            charData.setText(text);
        } else {
            charData.setText(new StringBuffer().append(text).append(arg).toString());
        }
    }

    public static void insertData(CharacterData data, int offset, String arg) throws DOMException {
        if (data.isReadOnly()) {
            throw new DOMException((short) 7, new StringBuffer().append("CharacterData node is read only: ").append(data).toString());
        }
        String text = data.getText();
        if (text == null) {
            data.setText(arg);
            return;
        }
        int length = text.length();
        if (offset < 0 || offset > length) {
            throw new DOMException((short) 1, new StringBuffer().append("No text at offset: ").append(offset).toString());
        }
        StringBuffer buffer = new StringBuffer(text);
        buffer.insert(offset, arg);
        data.setText(buffer.toString());
    }

    public static void deleteData(CharacterData charData, int offset, int count) throws DOMException {
        if (charData.isReadOnly()) {
            throw new DOMException((short) 7, new StringBuffer().append("CharacterData node is read only: ").append(charData).toString());
        }
        if (count < 0) {
            throw new DOMException((short) 1, new StringBuffer().append("Illegal value for count: ").append(count).toString());
        }
        String text = charData.getText();
        if (text != null) {
            int length = text.length();
            if (offset < 0 || offset >= length) {
                throw new DOMException((short) 1, new StringBuffer().append("No text at offset: ").append(offset).toString());
            }
            StringBuffer buffer = new StringBuffer(text);
            buffer.delete(offset, offset + count);
            charData.setText(buffer.toString());
        }
    }

    public static void replaceData(CharacterData charData, int offset, int count, String arg) throws DOMException {
        if (charData.isReadOnly()) {
            throw new DOMException((short) 7, new StringBuffer().append("CharacterData node is read only: ").append(charData).toString());
        }
        if (count < 0) {
            throw new DOMException((short) 1, new StringBuffer().append("Illegal value for count: ").append(count).toString());
        }
        String text = charData.getText();
        if (text != null) {
            int length = text.length();
            if (offset < 0 || offset >= length) {
                throw new DOMException((short) 1, new StringBuffer().append("No text at offset: ").append(offset).toString());
            }
            StringBuffer buffer = new StringBuffer(text);
            buffer.replace(offset, offset + count, arg);
            charData.setText(buffer.toString());
        }
    }

    public static void appendElementsByTagName(List list, Branch parent, String name) {
        boolean isStar = Marker.ANY_MARKER.equals(name);
        int size = parent.nodeCount();
        for (int i = 0; i < size; i++) {
            Node node = parent.node(i);
            if (node instanceof Element) {
                Element element = (Element) node;
                if (isStar || name.equals(element.getName())) {
                    list.add(element);
                }
                appendElementsByTagName(list, element, name);
            }
        }
    }

    public static void appendElementsByTagNameNS(List list, Branch parent, String namespace, String localName) {
        boolean isStarNS = Marker.ANY_MARKER.equals(namespace);
        boolean isStar = Marker.ANY_MARKER.equals(localName);
        int size = parent.nodeCount();
        for (int i = 0; i < size; i++) {
            Node node = parent.node(i);
            if (node instanceof Element) {
                Element element = (Element) node;
                if ((isStarNS || (((namespace == null || namespace.length() == 0) && (element.getNamespaceURI() == null || element.getNamespaceURI().length() == 0)) || (namespace != null && namespace.equals(element.getNamespaceURI())))) && (isStar || localName.equals(element.getName()))) {
                    list.add(element);
                }
                appendElementsByTagNameNS(list, element, namespace, localName);
            }
        }
    }

    public static NodeList createNodeList(List list) {
        return new NodeList(list) { // from class: org.dom4j.dom.DOMNodeHelper.1
            private final List val$list;

            @Override // org.w3c.dom.NodeList
            public org.w3c.dom.Node item(int index) {
                if (index >= getLength()) {
                    return null;
                }
                return DOMNodeHelper.asDOMNode((Node) this.val$list.get(index));
            }

            {
                this.val$list = list;
            }

            @Override // org.w3c.dom.NodeList
            public int getLength() {
                return this.val$list.size();
            }
        };
    }

    public static org.w3c.dom.Node asDOMNode(Node node) {
        if (node == null) {
            return null;
        }
        if (node instanceof org.w3c.dom.Node) {
            return (org.w3c.dom.Node) node;
        }
        System.out.println(new StringBuffer().append("Cannot convert: ").append(node).append(" into a W3C DOM Node").toString());
        notSupported();
        return null;
    }

    public static Document asDOMDocument(org.dom4j.Document document) {
        if (document == null) {
            return null;
        }
        if (document instanceof Document) {
            return (Document) document;
        }
        notSupported();
        return null;
    }

    public static DocumentType asDOMDocumentType(org.dom4j.DocumentType dt) {
        if (dt == null) {
            return null;
        }
        if (dt instanceof DocumentType) {
            return (DocumentType) dt;
        }
        notSupported();
        return null;
    }

    public static Text asDOMText(CharacterData text) {
        if (text == null) {
            return null;
        }
        if (text instanceof Text) {
            return (Text) text;
        }
        notSupported();
        return null;
    }

    public static org.w3c.dom.Element asDOMElement(Node element) {
        if (element == null) {
            return null;
        }
        if (element instanceof org.w3c.dom.Element) {
            return (org.w3c.dom.Element) element;
        }
        notSupported();
        return null;
    }

    public static Attr asDOMAttr(Node attribute) {
        if (attribute == null) {
            return null;
        }
        if (attribute instanceof Attr) {
            return (Attr) attribute;
        }
        notSupported();
        return null;
    }

    public static void notSupported() {
        throw new DOMException((short) 9, "Not supported yet");
    }

    /* loaded from: classes2.dex */
    public static class EmptyNodeList implements NodeList {
        @Override // org.w3c.dom.NodeList
        public org.w3c.dom.Node item(int index) {
            return null;
        }

        @Override // org.w3c.dom.NodeList
        public int getLength() {
            return 0;
        }
    }
}
