package org.dom4j.tree;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.dom4j.Attribute;
import org.dom4j.Branch;
import org.dom4j.Document;
import org.dom4j.DocumentFactory;
import org.dom4j.Element;
import org.dom4j.IllegalAddException;
import org.dom4j.Namespace;
import org.dom4j.Node;
import org.dom4j.ProcessingInstruction;
import org.dom4j.QName;
import org.dom4j.Text;
/* loaded from: classes2.dex */
public class DefaultElement extends AbstractElement {
    private static final transient DocumentFactory DOCUMENT_FACTORY = DocumentFactory.getInstance();
    private Object attributes;
    private Object content;
    private Branch parentBranch;
    private QName qname;

    public DefaultElement(String name) {
        this.qname = DOCUMENT_FACTORY.createQName(name);
    }

    public DefaultElement(QName qname) {
        this.qname = qname;
    }

    public DefaultElement(QName qname, int attributeCount) {
        this.qname = qname;
        if (attributeCount > 1) {
            this.attributes = new ArrayList(attributeCount);
        }
    }

    public DefaultElement(String name, Namespace namespace) {
        this.qname = DOCUMENT_FACTORY.createQName(name, namespace);
    }

    @Override // org.dom4j.tree.AbstractNode, org.dom4j.Node
    public Element getParent() {
        if (!(this.parentBranch instanceof Element)) {
            return null;
        }
        Element result = (Element) this.parentBranch;
        return result;
    }

    @Override // org.dom4j.tree.AbstractNode, org.dom4j.Node
    public void setParent(Element parent) {
        if ((this.parentBranch instanceof Element) || parent != null) {
            this.parentBranch = parent;
        }
    }

    @Override // org.dom4j.tree.AbstractNode, org.dom4j.Node
    public Document getDocument() {
        if (this.parentBranch instanceof Document) {
            return (Document) this.parentBranch;
        }
        if (this.parentBranch instanceof Element) {
            Element parent = (Element) this.parentBranch;
            return parent.getDocument();
        }
        return null;
    }

    @Override // org.dom4j.tree.AbstractNode, org.dom4j.Node
    public void setDocument(Document document) {
        if ((this.parentBranch instanceof Document) || document != null) {
            this.parentBranch = document;
        }
    }

    @Override // org.dom4j.tree.AbstractNode, org.dom4j.Node
    public boolean supportsParent() {
        return true;
    }

    @Override // org.dom4j.Element
    public QName getQName() {
        return this.qname;
    }

    @Override // org.dom4j.Element
    public void setQName(QName name) {
        this.qname = name;
    }

    @Override // org.dom4j.tree.AbstractBranch, org.dom4j.tree.AbstractNode, org.dom4j.Node
    public String getText() {
        Object contentShadow = this.content;
        if (contentShadow instanceof List) {
            return super.getText();
        }
        if (contentShadow != null) {
            return getContentAsText(contentShadow);
        }
        return "";
    }

    @Override // org.dom4j.tree.AbstractElement, org.dom4j.tree.AbstractNode, org.dom4j.Node
    public String getStringValue() {
        Object contentShadow = this.content;
        if (contentShadow instanceof List) {
            List list = (List) contentShadow;
            int size = list.size();
            if (size > 0) {
                if (size == 1) {
                    return getContentAsStringValue(list.get(0));
                }
                StringBuffer buffer = new StringBuffer();
                for (int i = 0; i < size; i++) {
                    Object node = list.get(i);
                    String string = getContentAsStringValue(node);
                    if (string.length() > 0) {
                        buffer.append(string);
                    }
                }
                return buffer.toString();
            }
        } else if (contentShadow != null) {
            return getContentAsStringValue(contentShadow);
        }
        return "";
    }

    @Override // org.dom4j.tree.AbstractNode, org.dom4j.Node
    public Object clone() {
        DefaultElement answer = (DefaultElement) super.clone();
        if (answer != this) {
            answer.content = null;
            answer.attributes = null;
            answer.appendAttributes(this);
            answer.appendContent(this);
        }
        return answer;
    }

    @Override // org.dom4j.tree.AbstractElement, org.dom4j.Element
    public Namespace getNamespaceForPrefix(String prefix) {
        Namespace answer;
        if (prefix == null) {
            prefix = "";
        }
        if (prefix.equals(getNamespacePrefix())) {
            return getNamespace();
        }
        if (prefix.equals("xml")) {
            return Namespace.XML_NAMESPACE;
        }
        Object contentShadow = this.content;
        if (contentShadow instanceof List) {
            List list = (List) contentShadow;
            int size = list.size();
            for (int i = 0; i < size; i++) {
                Object object = list.get(i);
                if (object instanceof Namespace) {
                    Namespace namespace = (Namespace) object;
                    if (prefix.equals(namespace.getPrefix())) {
                        return namespace;
                    }
                }
            }
        } else if (contentShadow instanceof Namespace) {
            Namespace namespace2 = (Namespace) contentShadow;
            if (prefix.equals(namespace2.getPrefix())) {
                return namespace2;
            }
        }
        Element parent = getParent();
        if (parent != null && (answer = parent.getNamespaceForPrefix(prefix)) != null) {
            return answer;
        }
        if (prefix == null || prefix.length() <= 0) {
            return Namespace.NO_NAMESPACE;
        }
        return null;
    }

    @Override // org.dom4j.tree.AbstractElement, org.dom4j.Element
    public Namespace getNamespaceForURI(String uri) {
        if (uri == null || uri.length() <= 0) {
            return Namespace.NO_NAMESPACE;
        }
        if (uri.equals(getNamespaceURI())) {
            return getNamespace();
        }
        Object contentShadow = this.content;
        if (contentShadow instanceof List) {
            List list = (List) contentShadow;
            int size = list.size();
            for (int i = 0; i < size; i++) {
                Object object = list.get(i);
                if (object instanceof Namespace) {
                    Namespace namespace = (Namespace) object;
                    if (uri.equals(namespace.getURI())) {
                        return namespace;
                    }
                }
            }
        } else if (contentShadow instanceof Namespace) {
            Namespace namespace2 = (Namespace) contentShadow;
            if (uri.equals(namespace2.getURI())) {
                return namespace2;
            }
        }
        Element parent = getParent();
        if (parent != null) {
            return parent.getNamespaceForURI(uri);
        }
        return null;
    }

    @Override // org.dom4j.tree.AbstractElement, org.dom4j.Element
    public List declaredNamespaces() {
        BackedList answer = createResultList();
        Object contentShadow = this.content;
        if (contentShadow instanceof List) {
            List list = (List) contentShadow;
            int size = list.size();
            for (int i = 0; i < size; i++) {
                Object object = list.get(i);
                if (object instanceof Namespace) {
                    answer.addLocal(object);
                }
            }
        } else if (contentShadow instanceof Namespace) {
            answer.addLocal(contentShadow);
        }
        return answer;
    }

    @Override // org.dom4j.tree.AbstractElement, org.dom4j.Element
    public List additionalNamespaces() {
        Object contentShadow = this.content;
        if (contentShadow instanceof List) {
            List list = (List) contentShadow;
            int size = list.size();
            BackedList answer = createResultList();
            for (int i = 0; i < size; i++) {
                Object object = list.get(i);
                if (object instanceof Namespace) {
                    Namespace namespace = (Namespace) object;
                    if (!namespace.equals(getNamespace())) {
                        answer.addLocal(namespace);
                    }
                }
            }
            return answer;
        } else if (contentShadow instanceof Namespace) {
            Namespace namespace2 = (Namespace) contentShadow;
            if (namespace2.equals(getNamespace())) {
                return createEmptyList();
            }
            return createSingleResultList(namespace2);
        } else {
            return createEmptyList();
        }
    }

    @Override // org.dom4j.tree.AbstractElement
    public List additionalNamespaces(String defaultNamespaceURI) {
        Object contentShadow = this.content;
        if (contentShadow instanceof List) {
            List list = (List) contentShadow;
            BackedList answer = createResultList();
            int size = list.size();
            for (int i = 0; i < size; i++) {
                Object object = list.get(i);
                if (object instanceof Namespace) {
                    Namespace namespace = (Namespace) object;
                    if (!defaultNamespaceURI.equals(namespace.getURI())) {
                        answer.addLocal(namespace);
                    }
                }
            }
            return answer;
        }
        if (contentShadow instanceof Namespace) {
            Namespace namespace2 = (Namespace) contentShadow;
            if (!defaultNamespaceURI.equals(namespace2.getURI())) {
                return createSingleResultList(namespace2);
            }
        }
        return createEmptyList();
    }

    @Override // org.dom4j.tree.AbstractElement, org.dom4j.Branch
    public List processingInstructions() {
        Object contentShadow = this.content;
        if (!(contentShadow instanceof List)) {
            return contentShadow instanceof ProcessingInstruction ? createSingleResultList(contentShadow) : createEmptyList();
        }
        List list = (List) contentShadow;
        BackedList answer = createResultList();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Object object = list.get(i);
            if (object instanceof ProcessingInstruction) {
                answer.addLocal(object);
            }
        }
        return answer;
    }

    @Override // org.dom4j.tree.AbstractElement, org.dom4j.Branch
    public List processingInstructions(String target) {
        Object shadow = this.content;
        if (shadow instanceof List) {
            List list = (List) shadow;
            BackedList answer = createResultList();
            int size = list.size();
            for (int i = 0; i < size; i++) {
                Object object = list.get(i);
                if (object instanceof ProcessingInstruction) {
                    ProcessingInstruction pi = (ProcessingInstruction) object;
                    if (target.equals(pi.getName())) {
                        answer.addLocal(pi);
                    }
                }
            }
            return answer;
        }
        if (shadow instanceof ProcessingInstruction) {
            ProcessingInstruction pi2 = (ProcessingInstruction) shadow;
            if (target.equals(pi2.getName())) {
                return createSingleResultList(pi2);
            }
        }
        return createEmptyList();
    }

    @Override // org.dom4j.tree.AbstractElement, org.dom4j.Branch
    public ProcessingInstruction processingInstruction(String target) {
        Object shadow = this.content;
        if (shadow instanceof List) {
            List list = (List) shadow;
            int size = list.size();
            for (int i = 0; i < size; i++) {
                Object object = list.get(i);
                if (object instanceof ProcessingInstruction) {
                    ProcessingInstruction pi = (ProcessingInstruction) object;
                    if (target.equals(pi.getName())) {
                        return pi;
                    }
                }
            }
        } else if (shadow instanceof ProcessingInstruction) {
            ProcessingInstruction pi2 = (ProcessingInstruction) shadow;
            if (target.equals(pi2.getName())) {
                return pi2;
            }
        }
        return null;
    }

    @Override // org.dom4j.tree.AbstractElement, org.dom4j.Branch
    public boolean removeProcessingInstruction(String target) {
        Object shadow = this.content;
        if (shadow instanceof List) {
            List list = (List) shadow;
            Iterator iter = list.iterator();
            while (iter.hasNext()) {
                Object object = iter.next();
                if (object instanceof ProcessingInstruction) {
                    ProcessingInstruction pi = (ProcessingInstruction) object;
                    if (target.equals(pi.getName())) {
                        iter.remove();
                        return true;
                    }
                }
            }
        } else if (shadow instanceof ProcessingInstruction) {
            ProcessingInstruction pi2 = (ProcessingInstruction) shadow;
            if (target.equals(pi2.getName())) {
                this.content = null;
                return true;
            }
        }
        return false;
    }

    @Override // org.dom4j.tree.AbstractElement, org.dom4j.Element
    public Element element(String name) {
        Object contentShadow = this.content;
        if (contentShadow instanceof List) {
            List list = (List) contentShadow;
            int size = list.size();
            for (int i = 0; i < size; i++) {
                Object object = list.get(i);
                if (object instanceof Element) {
                    Element element = (Element) object;
                    if (name.equals(element.getName())) {
                        return element;
                    }
                }
            }
        } else if (contentShadow instanceof Element) {
            Element element2 = (Element) contentShadow;
            if (name.equals(element2.getName())) {
                return element2;
            }
        }
        return null;
    }

    @Override // org.dom4j.tree.AbstractElement, org.dom4j.Element
    public Element element(QName qName) {
        Object contentShadow = this.content;
        if (contentShadow instanceof List) {
            List list = (List) contentShadow;
            int size = list.size();
            for (int i = 0; i < size; i++) {
                Object object = list.get(i);
                if (object instanceof Element) {
                    Element element = (Element) object;
                    if (qName.equals(element.getQName())) {
                        return element;
                    }
                }
            }
        } else if (contentShadow instanceof Element) {
            Element element2 = (Element) contentShadow;
            if (qName.equals(element2.getQName())) {
                return element2;
            }
        }
        return null;
    }

    @Override // org.dom4j.tree.AbstractElement
    public Element element(String name, Namespace namespace) {
        return element(getDocumentFactory().createQName(name, namespace));
    }

    @Override // org.dom4j.Branch
    public void setContent(List content) {
        contentRemoved();
        if (content instanceof ContentListFacade) {
            content = ((ContentListFacade) content).getBackingList();
        }
        if (content == null) {
            this.content = null;
            return;
        }
        int size = content.size();
        List newContent = createContentList(size);
        for (int i = 0; i < size; i++) {
            Object object = content.get(i);
            if (object instanceof Node) {
                Node node = (Node) object;
                Element parent = node.getParent();
                if (parent != null && parent != this) {
                    node = (Node) node.clone();
                }
                newContent.add(node);
                childAdded(node);
            } else if (object != null) {
                String text = object.toString();
                Text createText = getDocumentFactory().createText(text);
                newContent.add(createText);
                childAdded(createText);
            }
        }
        this.content = newContent;
    }

    @Override // org.dom4j.Branch
    public void clearContent() {
        if (this.content != null) {
            contentRemoved();
            this.content = null;
        }
    }

    @Override // org.dom4j.tree.AbstractElement, org.dom4j.tree.AbstractBranch, org.dom4j.Branch
    public Node node(int index) {
        Object node;
        if (index >= 0) {
            Object contentShadow = this.content;
            if (contentShadow instanceof List) {
                List list = (List) contentShadow;
                if (index >= list.size()) {
                    return null;
                }
                node = list.get(index);
            } else {
                node = index == 0 ? contentShadow : null;
            }
            if (node == null) {
                return null;
            }
            if (node instanceof Node) {
                return (Node) node;
            }
            return new DefaultText(node.toString());
        }
        return null;
    }

    @Override // org.dom4j.tree.AbstractElement, org.dom4j.tree.AbstractBranch, org.dom4j.Branch
    public int indexOf(Node node) {
        Object contentShadow = this.content;
        if (contentShadow instanceof List) {
            List list = (List) contentShadow;
            return list.indexOf(node);
        } else if (contentShadow != null && contentShadow.equals(node)) {
            return 0;
        } else {
            return -1;
        }
    }

    @Override // org.dom4j.tree.AbstractElement, org.dom4j.tree.AbstractBranch, org.dom4j.Branch
    public int nodeCount() {
        Object contentShadow = this.content;
        if (!(contentShadow instanceof List)) {
            return contentShadow != null ? 1 : 0;
        }
        List list = (List) contentShadow;
        return list.size();
    }

    @Override // org.dom4j.tree.AbstractElement, org.dom4j.tree.AbstractBranch, org.dom4j.Branch
    public Iterator nodeIterator() {
        Object contentShadow = this.content;
        if (contentShadow instanceof List) {
            List list = (List) contentShadow;
            return list.iterator();
        } else if (contentShadow != null) {
            return createSingleIterator(contentShadow);
        } else {
            return EMPTY_ITERATOR;
        }
    }

    @Override // org.dom4j.tree.AbstractElement, org.dom4j.Element
    public List attributes() {
        return new ContentListFacade(this, attributeList());
    }

    public void setAttributes(List attributes) {
        if (attributes instanceof ContentListFacade) {
            attributes = ((ContentListFacade) attributes).getBackingList();
        }
        this.attributes = attributes;
    }

    @Override // org.dom4j.tree.AbstractElement, org.dom4j.Element
    public Iterator attributeIterator() {
        Object attributesShadow = this.attributes;
        if (attributesShadow instanceof List) {
            List list = (List) attributesShadow;
            return list.iterator();
        } else if (attributesShadow != null) {
            return createSingleIterator(attributesShadow);
        } else {
            return EMPTY_ITERATOR;
        }
    }

    @Override // org.dom4j.tree.AbstractElement, org.dom4j.Element
    public Attribute attribute(int index) {
        Object attributesShadow = this.attributes;
        if (attributesShadow instanceof List) {
            List list = (List) attributesShadow;
            return (Attribute) list.get(index);
        } else if (attributesShadow != null && index == 0) {
            return (Attribute) attributesShadow;
        } else {
            return null;
        }
    }

    @Override // org.dom4j.tree.AbstractElement, org.dom4j.Element
    public int attributeCount() {
        Object attributesShadow = this.attributes;
        if (!(attributesShadow instanceof List)) {
            return attributesShadow != null ? 1 : 0;
        }
        List list = (List) attributesShadow;
        return list.size();
    }

    @Override // org.dom4j.tree.AbstractElement, org.dom4j.Element
    public Attribute attribute(String name) {
        Object attributesShadow = this.attributes;
        if (attributesShadow instanceof List) {
            List list = (List) attributesShadow;
            int size = list.size();
            for (int i = 0; i < size; i++) {
                Attribute attribute = (Attribute) list.get(i);
                if (name.equals(attribute.getName())) {
                    return attribute;
                }
            }
        } else if (attributesShadow != null) {
            Attribute attribute2 = (Attribute) attributesShadow;
            if (name.equals(attribute2.getName())) {
                return attribute2;
            }
        }
        return null;
    }

    @Override // org.dom4j.tree.AbstractElement, org.dom4j.Element
    public Attribute attribute(QName qName) {
        Object attributesShadow = this.attributes;
        if (attributesShadow instanceof List) {
            List list = (List) attributesShadow;
            int size = list.size();
            for (int i = 0; i < size; i++) {
                Attribute attribute = (Attribute) list.get(i);
                if (qName.equals(attribute.getQName())) {
                    return attribute;
                }
            }
        } else if (attributesShadow != null) {
            Attribute attribute2 = (Attribute) attributesShadow;
            if (qName.equals(attribute2.getQName())) {
                return attribute2;
            }
        }
        return null;
    }

    @Override // org.dom4j.tree.AbstractElement
    public Attribute attribute(String name, Namespace namespace) {
        return attribute(getDocumentFactory().createQName(name, namespace));
    }

    @Override // org.dom4j.tree.AbstractElement, org.dom4j.Element
    public void add(Attribute attribute) {
        if (attribute.getParent() != null) {
            String message = new StringBuffer().append("The Attribute already has an existing parent \"").append(attribute.getParent().getQualifiedName()).append("\"").toString();
            throw new IllegalAddException((Element) this, (Node) attribute, message);
        } else if (attribute.getValue() == null) {
            Attribute oldAttribute = attribute(attribute.getQName());
            if (oldAttribute != null) {
                remove(oldAttribute);
            }
        } else {
            if (this.attributes == null) {
                this.attributes = attribute;
            } else {
                attributeList().add(attribute);
            }
            childAdded(attribute);
        }
    }

    @Override // org.dom4j.tree.AbstractElement, org.dom4j.Element
    public boolean remove(Attribute attribute) {
        Attribute copy;
        boolean answer = false;
        Object attributesShadow = this.attributes;
        if (attributesShadow instanceof List) {
            List list = (List) attributesShadow;
            answer = list.remove(attribute);
            if (!answer && (copy = attribute(attribute.getQName())) != null) {
                list.remove(copy);
                answer = true;
            }
        } else if (attributesShadow != null) {
            if (attribute.equals(attributesShadow)) {
                this.attributes = null;
                answer = true;
            } else {
                Attribute other = (Attribute) attributesShadow;
                if (attribute.getQName().equals(other.getQName())) {
                    this.attributes = null;
                    answer = true;
                }
            }
        }
        if (answer) {
            childRemoved(attribute);
        }
        return answer;
    }

    @Override // org.dom4j.tree.AbstractElement
    protected void addNewNode(Node node) {
        Object contentShadow = this.content;
        if (contentShadow == null) {
            this.content = node;
        } else if (contentShadow instanceof List) {
            ((List) contentShadow).add(node);
        } else {
            List list = createContentList();
            list.add(contentShadow);
            list.add(node);
            this.content = list;
        }
        childAdded(node);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.dom4j.tree.AbstractElement, org.dom4j.tree.AbstractBranch
    public boolean removeNode(Node node) {
        boolean answer = false;
        Object contentShadow = this.content;
        if (contentShadow != null) {
            if (contentShadow == node) {
                this.content = null;
                answer = true;
            } else if (contentShadow instanceof List) {
                List list = (List) contentShadow;
                answer = list.remove(node);
            }
        }
        if (answer) {
            childRemoved(node);
        }
        return answer;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.dom4j.tree.AbstractBranch
    public List contentList() {
        Object contentShadow = this.content;
        if (contentShadow instanceof List) {
            return (List) contentShadow;
        }
        List list = createContentList();
        if (contentShadow != null) {
            list.add(contentShadow);
        }
        this.content = list;
        return list;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.dom4j.tree.AbstractElement
    public List attributeList() {
        Object attributesShadow = this.attributes;
        if (attributesShadow instanceof List) {
            return (List) attributesShadow;
        }
        if (attributesShadow != null) {
            List list = createAttributeList();
            list.add(attributesShadow);
            this.attributes = list;
            return list;
        }
        List list2 = createAttributeList();
        this.attributes = list2;
        return list2;
    }

    @Override // org.dom4j.tree.AbstractElement
    protected List attributeList(int size) {
        Object attributesShadow = this.attributes;
        if (attributesShadow instanceof List) {
            return (List) attributesShadow;
        }
        if (attributesShadow != null) {
            List list = createAttributeList(size);
            list.add(attributesShadow);
            this.attributes = list;
            return list;
        }
        List list2 = createAttributeList(size);
        this.attributes = list2;
        return list2;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setAttributeList(List attributeList) {
        this.attributes = attributeList;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.dom4j.tree.AbstractElement, org.dom4j.tree.AbstractNode
    public DocumentFactory getDocumentFactory() {
        DocumentFactory factory = this.qname.getDocumentFactory();
        return factory != null ? factory : DOCUMENT_FACTORY;
    }
}
