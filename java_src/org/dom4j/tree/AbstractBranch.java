package org.dom4j.tree;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.StringTokenizer;
import org.dom4j.Branch;
import org.dom4j.Comment;
import org.dom4j.Element;
import org.dom4j.IllegalAddException;
import org.dom4j.Namespace;
import org.dom4j.Node;
import org.dom4j.ProcessingInstruction;
import org.dom4j.QName;
/* loaded from: classes2.dex */
public abstract class AbstractBranch extends AbstractNode implements Branch {
    protected static final int DEFAULT_CONTENT_LIST_SIZE = 5;

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void addNode(int i, Node node);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void addNode(Node node);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void childAdded(Node node);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void childRemoved(Node node);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract List contentList();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract boolean removeNode(Node node);

    @Override // org.dom4j.tree.AbstractNode, org.dom4j.Node
    public boolean isReadOnly() {
        return false;
    }

    @Override // org.dom4j.tree.AbstractNode, org.dom4j.Node
    public boolean hasContent() {
        return nodeCount() > 0;
    }

    @Override // org.dom4j.Branch
    public List content() {
        List backingList = contentList();
        return new ContentListFacade(this, backingList);
    }

    @Override // org.dom4j.tree.AbstractNode, org.dom4j.Node
    public String getText() {
        int size;
        List content = contentList();
        if (content != null && (size = content.size()) >= 1) {
            Object first = content.get(0);
            String firstText = getContentAsText(first);
            if (size != 1) {
                StringBuffer buffer = new StringBuffer(firstText);
                for (int i = 1; i < size; i++) {
                    Object node = content.get(i);
                    buffer.append(getContentAsText(node));
                }
                return buffer.toString();
            }
            return firstText;
        }
        return "";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String getContentAsText(Object content) {
        if (content instanceof Node) {
            Node node = (Node) content;
            switch (node.getNodeType()) {
                case 3:
                case 4:
                case 5:
                    return node.getText();
            }
        } else if (content instanceof String) {
            return (String) content;
        }
        return "";
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String getContentAsStringValue(Object content) {
        if (content instanceof Node) {
            Node node = (Node) content;
            switch (node.getNodeType()) {
                case 1:
                case 3:
                case 4:
                case 5:
                    return node.getStringValue();
            }
        } else if (content instanceof String) {
            return (String) content;
        }
        return "";
    }

    public String getTextTrim() {
        String text = getText();
        StringBuffer textContent = new StringBuffer();
        StringTokenizer tokenizer = new StringTokenizer(text);
        while (tokenizer.hasMoreTokens()) {
            String str = tokenizer.nextToken();
            textContent.append(str);
            if (tokenizer.hasMoreTokens()) {
                textContent.append(" ");
            }
        }
        return textContent.toString();
    }

    @Override // org.dom4j.Branch
    public void setProcessingInstructions(List listOfPIs) {
        Iterator iter = listOfPIs.iterator();
        while (iter.hasNext()) {
            ProcessingInstruction pi = (ProcessingInstruction) iter.next();
            addNode(pi);
        }
    }

    @Override // org.dom4j.Branch
    public Element addElement(String name) {
        Element node = getDocumentFactory().createElement(name);
        add(node);
        return node;
    }

    @Override // org.dom4j.Branch
    public Element addElement(String qualifiedName, String namespaceURI) {
        Element node = getDocumentFactory().createElement(qualifiedName, namespaceURI);
        add(node);
        return node;
    }

    @Override // org.dom4j.Branch
    public Element addElement(QName qname) {
        Element node = getDocumentFactory().createElement(qname);
        add(node);
        return node;
    }

    public Element addElement(String name, String prefix, String uri) {
        Namespace namespace = Namespace.get(prefix, uri);
        QName qName = getDocumentFactory().createQName(name, namespace);
        return addElement(qName);
    }

    @Override // org.dom4j.Branch
    public void add(Node node) {
        switch (node.getNodeType()) {
            case 1:
                add((Element) node);
                return;
            case 7:
                add((ProcessingInstruction) node);
                return;
            case 8:
                add((Comment) node);
                return;
            default:
                invalidNodeTypeAddException(node);
                return;
        }
    }

    @Override // org.dom4j.Branch
    public boolean remove(Node node) {
        switch (node.getNodeType()) {
            case 1:
                return remove((Element) node);
            case 7:
                return remove((ProcessingInstruction) node);
            case 8:
                return remove((Comment) node);
            default:
                invalidNodeTypeAddException(node);
                return false;
        }
    }

    @Override // org.dom4j.Branch
    public void add(Comment comment) {
        addNode(comment);
    }

    @Override // org.dom4j.Branch
    public void add(Element element) {
        addNode(element);
    }

    @Override // org.dom4j.Branch
    public void add(ProcessingInstruction pi) {
        addNode(pi);
    }

    @Override // org.dom4j.Branch
    public boolean remove(Comment comment) {
        return removeNode(comment);
    }

    @Override // org.dom4j.Branch
    public boolean remove(Element element) {
        return removeNode(element);
    }

    @Override // org.dom4j.Branch
    public boolean remove(ProcessingInstruction pi) {
        return removeNode(pi);
    }

    @Override // org.dom4j.Branch
    public Element elementByID(String elementID) {
        int size = nodeCount();
        for (int i = 0; i < size; i++) {
            Node node = node(i);
            if (node instanceof Element) {
                Element element = (Element) node;
                String id = elementID(element);
                if (id == null || !id.equals(elementID)) {
                    Element element2 = element.elementByID(elementID);
                    if (element2 != null) {
                        return element2;
                    }
                } else {
                    return element;
                }
            }
        }
        return null;
    }

    @Override // org.dom4j.Branch
    public void appendContent(Branch branch) {
        int size = branch.nodeCount();
        for (int i = 0; i < size; i++) {
            Node node = branch.node(i);
            add((Node) node.clone());
        }
    }

    @Override // org.dom4j.Branch
    public Node node(int index) {
        Object object = contentList().get(index);
        if (object instanceof Node) {
            return (Node) object;
        }
        if (object instanceof String) {
            return getDocumentFactory().createText(object.toString());
        }
        return null;
    }

    @Override // org.dom4j.Branch
    public int nodeCount() {
        return contentList().size();
    }

    @Override // org.dom4j.Branch
    public int indexOf(Node node) {
        return contentList().indexOf(node);
    }

    @Override // org.dom4j.Branch
    public Iterator nodeIterator() {
        return contentList().iterator();
    }

    protected String elementID(Element element) {
        return element.attributeValue("ID");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public List createContentList() {
        return new ArrayList(5);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public List createContentList(int size) {
        return new ArrayList(size);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public BackedList createResultList() {
        return new BackedList(this, contentList());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public List createSingleResultList(Object result) {
        BackedList list = new BackedList(this, contentList(), 1);
        list.addLocal(result);
        return list;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public List createEmptyList() {
        return new BackedList(this, contentList(), 0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void contentRemoved() {
        List content = contentList();
        int size = content.size();
        for (int i = 0; i < size; i++) {
            Object object = content.get(i);
            if (object instanceof Node) {
                childRemoved((Node) object);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void invalidNodeTypeAddException(Node node) {
        throw new IllegalAddException(new StringBuffer().append("Invalid node type. Cannot add node: ").append(node).append(" to this branch: ").append(this).toString());
    }
}
