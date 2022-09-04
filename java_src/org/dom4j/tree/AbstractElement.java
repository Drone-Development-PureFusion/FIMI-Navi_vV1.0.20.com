package org.dom4j.tree;

import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.dom4j.AbstractC2649Entity;
import org.dom4j.Attribute;
import org.dom4j.CDATA;
import org.dom4j.CharacterData;
import org.dom4j.Comment;
import org.dom4j.Document;
import org.dom4j.DocumentFactory;
import org.dom4j.Element;
import org.dom4j.IllegalAddException;
import org.dom4j.Namespace;
import org.dom4j.Node;
import org.dom4j.ProcessingInstruction;
import org.dom4j.QName;
import org.dom4j.Text;
import org.dom4j.Visitor;
import org.dom4j.p019io.OutputFormat;
import org.dom4j.p019io.XMLWriter;
import org.xml.sax.Attributes;
/* loaded from: classes2.dex */
public abstract class AbstractElement extends AbstractBranch implements Element {
    protected static final boolean USE_STRINGVALUE_SEPARATOR = false;
    protected static final boolean VERBOSE_TOSTRING = false;
    private static final DocumentFactory DOCUMENT_FACTORY = DocumentFactory.getInstance();
    protected static final List EMPTY_LIST = Collections.EMPTY_LIST;
    protected static final Iterator EMPTY_ITERATOR = EMPTY_LIST.iterator();

    protected abstract List attributeList();

    protected abstract List attributeList(int i);

    @Override // org.dom4j.tree.AbstractNode, org.dom4j.Node
    public short getNodeType() {
        return (short) 1;
    }

    @Override // org.dom4j.Element
    public boolean isRootElement() {
        Document document = getDocument();
        if (document != null) {
            Element root = document.getRootElement();
            if (root == this) {
                return true;
            }
        }
        return false;
    }

    @Override // org.dom4j.tree.AbstractNode, org.dom4j.Node
    public void setName(String name) {
        setQName(getDocumentFactory().createQName(name));
    }

    public void setNamespace(Namespace namespace) {
        setQName(getDocumentFactory().createQName(getName(), namespace));
    }

    public String getXPathNameStep() {
        String uri = getNamespaceURI();
        if (uri == null || uri.length() == 0) {
            return getName();
        }
        String prefix = getNamespacePrefix();
        if (prefix == null || prefix.length() == 0) {
            return new StringBuffer().append("*[name()='").append(getName()).append("']").toString();
        }
        return getQualifiedName();
    }

    @Override // org.dom4j.Node
    public String getPath(Element context) {
        if (this == context) {
            return ".";
        }
        Element parent = getParent();
        if (parent == null) {
            return new StringBuffer().append("/").append(getXPathNameStep()).toString();
        }
        if (parent == context) {
            return getXPathNameStep();
        }
        return new StringBuffer().append(parent.getPath(context)).append("/").append(getXPathNameStep()).toString();
    }

    @Override // org.dom4j.Node
    public String getUniquePath(Element context) {
        int idx;
        Element parent = getParent();
        if (parent == null) {
            return new StringBuffer().append("/").append(getXPathNameStep()).toString();
        }
        StringBuffer buffer = new StringBuffer();
        if (parent != context) {
            buffer.append(parent.getUniquePath(context));
            buffer.append("/");
        }
        buffer.append(getXPathNameStep());
        List mySiblings = parent.elements(getQName());
        if (mySiblings.size() > 1 && (idx = mySiblings.indexOf(this)) >= 0) {
            buffer.append("[");
            buffer.append(Integer.toString(idx + 1));
            buffer.append("]");
        }
        return buffer.toString();
    }

    @Override // org.dom4j.Node
    public String asXML() {
        try {
            StringWriter out = new StringWriter();
            XMLWriter writer = new XMLWriter(out, new OutputFormat());
            writer.write((Element) this);
            writer.flush();
            return out.toString();
        } catch (IOException e) {
            throw new RuntimeException(new StringBuffer().append("IOException while generating textual representation: ").append(e.getMessage()).toString());
        }
    }

    @Override // org.dom4j.tree.AbstractNode, org.dom4j.Node
    public void write(Writer out) throws IOException {
        XMLWriter writer = new XMLWriter(out, new OutputFormat());
        writer.write((Element) this);
    }

    @Override // org.dom4j.Node
    public void accept(Visitor visitor) {
        visitor.visit(this);
        int size = attributeCount();
        for (int i = 0; i < size; i++) {
            Attribute attribute = attribute(i);
            visitor.visit(attribute);
        }
        int size2 = nodeCount();
        for (int i2 = 0; i2 < size2; i2++) {
            Node node = node(i2);
            node.accept(visitor);
        }
    }

    public String toString() {
        String uri = getNamespaceURI();
        return (uri == null || uri.length() <= 0) ? new StringBuffer().append(super.toString()).append(" [Element: <").append(getQualifiedName()).append(" attributes: ").append(attributeList()).append("/>]").toString() : new StringBuffer().append(super.toString()).append(" [Element: <").append(getQualifiedName()).append(" uri: ").append(uri).append(" attributes: ").append(attributeList()).append("/>]").toString();
    }

    @Override // org.dom4j.Element
    public Namespace getNamespace() {
        return getQName().getNamespace();
    }

    @Override // org.dom4j.tree.AbstractNode, org.dom4j.Node
    public String getName() {
        return getQName().getName();
    }

    @Override // org.dom4j.Element
    public String getNamespacePrefix() {
        return getQName().getNamespacePrefix();
    }

    public String getNamespaceURI() {
        return getQName().getNamespaceURI();
    }

    @Override // org.dom4j.Element
    public String getQualifiedName() {
        return getQName().getQualifiedName();
    }

    public Object getData() {
        return getText();
    }

    public void setData(Object data) {
    }

    @Override // org.dom4j.tree.AbstractBranch, org.dom4j.Branch
    public Node node(int index) {
        if (index >= 0) {
            List list = contentList();
            if (index >= list.size()) {
                return null;
            }
            Object node = list.get(index);
            if (node != null) {
                if (node instanceof Node) {
                    return (Node) node;
                }
                return getDocumentFactory().createText(node.toString());
            }
        }
        return null;
    }

    @Override // org.dom4j.tree.AbstractBranch, org.dom4j.Branch
    public int indexOf(Node node) {
        return contentList().indexOf(node);
    }

    @Override // org.dom4j.tree.AbstractBranch, org.dom4j.Branch
    public int nodeCount() {
        return contentList().size();
    }

    @Override // org.dom4j.tree.AbstractBranch, org.dom4j.Branch
    public Iterator nodeIterator() {
        return contentList().iterator();
    }

    @Override // org.dom4j.Element
    public Element element(String name) {
        List list = contentList();
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
        return null;
    }

    @Override // org.dom4j.Element
    public Element element(QName qName) {
        List list = contentList();
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
        return null;
    }

    public Element element(String name, Namespace namespace) {
        return element(getDocumentFactory().createQName(name, namespace));
    }

    @Override // org.dom4j.Element
    public List elements() {
        List list = contentList();
        BackedList answer = createResultList();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Object object = list.get(i);
            if (object instanceof Element) {
                answer.addLocal(object);
            }
        }
        return answer;
    }

    @Override // org.dom4j.Element
    public List elements(String name) {
        List list = contentList();
        BackedList answer = createResultList();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Object object = list.get(i);
            if (object instanceof Element) {
                Element element = (Element) object;
                if (name.equals(element.getName())) {
                    answer.addLocal(element);
                }
            }
        }
        return answer;
    }

    @Override // org.dom4j.Element
    public List elements(QName qName) {
        List list = contentList();
        BackedList answer = createResultList();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Object object = list.get(i);
            if (object instanceof Element) {
                Element element = (Element) object;
                if (qName.equals(element.getQName())) {
                    answer.addLocal(element);
                }
            }
        }
        return answer;
    }

    public List elements(String name, Namespace namespace) {
        return elements(getDocumentFactory().createQName(name, namespace));
    }

    @Override // org.dom4j.Element
    public Iterator elementIterator() {
        List list = elements();
        return list.iterator();
    }

    @Override // org.dom4j.Element
    public Iterator elementIterator(String name) {
        List list = elements(name);
        return list.iterator();
    }

    @Override // org.dom4j.Element
    public Iterator elementIterator(QName qName) {
        List list = elements(qName);
        return list.iterator();
    }

    public Iterator elementIterator(String name, Namespace ns) {
        return elementIterator(getDocumentFactory().createQName(name, ns));
    }

    @Override // org.dom4j.Element
    public List attributes() {
        return new ContentListFacade(this, attributeList());
    }

    @Override // org.dom4j.Element
    public Iterator attributeIterator() {
        return attributeList().iterator();
    }

    @Override // org.dom4j.Element
    public Attribute attribute(int index) {
        return (Attribute) attributeList().get(index);
    }

    @Override // org.dom4j.Element
    public int attributeCount() {
        return attributeList().size();
    }

    public Attribute attribute(String name) {
        List list = attributeList();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Attribute attribute = (Attribute) list.get(i);
            if (name.equals(attribute.getName())) {
                return attribute;
            }
        }
        return null;
    }

    public Attribute attribute(QName qName) {
        List list = attributeList();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Attribute attribute = (Attribute) list.get(i);
            if (qName.equals(attribute.getQName())) {
                return attribute;
            }
        }
        return null;
    }

    public Attribute attribute(String name, Namespace namespace) {
        return attribute(getDocumentFactory().createQName(name, namespace));
    }

    public void setAttributes(Attributes attributes, NamespaceStack namespaceStack, boolean noNamespaceAttributes) {
        int size = attributes.getLength();
        if (size > 0) {
            DocumentFactory factory = getDocumentFactory();
            if (size == 1) {
                String name = attributes.getQName(0);
                if (noNamespaceAttributes || !name.startsWith("xmlns")) {
                    String attributeURI = attributes.getURI(0);
                    String attributeLocalName = attributes.getLocalName(0);
                    String attributeValue = attributes.getValue(0);
                    QName attributeQName = namespaceStack.getAttributeQName(attributeURI, attributeLocalName, name);
                    add(factory.createAttribute(this, attributeQName, attributeValue));
                    return;
                }
                return;
            }
            List list = attributeList(size);
            list.clear();
            for (int i = 0; i < size; i++) {
                String attributeName = attributes.getQName(i);
                if (noNamespaceAttributes || !attributeName.startsWith("xmlns")) {
                    String attributeURI2 = attributes.getURI(i);
                    String attributeLocalName2 = attributes.getLocalName(i);
                    String attributeValue2 = attributes.getValue(i);
                    QName attributeQName2 = namespaceStack.getAttributeQName(attributeURI2, attributeLocalName2, attributeName);
                    Attribute attribute = factory.createAttribute(this, attributeQName2, attributeValue2);
                    list.add(attribute);
                    childAdded(attribute);
                }
            }
        }
    }

    @Override // org.dom4j.Element
    public String attributeValue(String name) {
        Attribute attrib = attribute(name);
        if (attrib == null) {
            return null;
        }
        return attrib.getValue();
    }

    @Override // org.dom4j.Element
    public String attributeValue(QName qName) {
        Attribute attrib = attribute(qName);
        if (attrib == null) {
            return null;
        }
        return attrib.getValue();
    }

    @Override // org.dom4j.Element
    public String attributeValue(String name, String defaultValue) {
        String answer = attributeValue(name);
        return answer != null ? answer : defaultValue;
    }

    @Override // org.dom4j.Element
    public String attributeValue(QName qName, String defaultValue) {
        String answer = attributeValue(qName);
        return answer != null ? answer : defaultValue;
    }

    @Override // org.dom4j.Element
    public void setAttributeValue(String name, String value) {
        addAttribute(name, value);
    }

    @Override // org.dom4j.Element
    public void setAttributeValue(QName qName, String value) {
        addAttribute(qName, value);
    }

    @Override // org.dom4j.Element
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
            attributeList().add(attribute);
            childAdded(attribute);
        }
    }

    @Override // org.dom4j.Element
    public boolean remove(Attribute attribute) {
        List list = attributeList();
        boolean answer = list.remove(attribute);
        if (answer) {
            childRemoved(attribute);
            return answer;
        }
        Attribute copy = attribute(attribute.getQName());
        if (copy != null) {
            list.remove(copy);
            return true;
        }
        return answer;
    }

    @Override // org.dom4j.Branch
    public List processingInstructions() {
        List list = contentList();
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

    @Override // org.dom4j.Branch
    public List processingInstructions(String target) {
        List list = contentList();
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

    @Override // org.dom4j.Branch
    public ProcessingInstruction processingInstruction(String target) {
        List list = contentList();
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
        return null;
    }

    @Override // org.dom4j.Branch
    public boolean removeProcessingInstruction(String target) {
        List list = contentList();
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
        return false;
    }

    @Override // org.dom4j.Element
    public Node getXPathResult(int index) {
        Node answer = node(index);
        if (answer != null && !answer.supportsParent()) {
            return answer.asXPathResult(this);
        }
        return answer;
    }

    public Element addAttribute(String name, String value) {
        Attribute attribute = attribute(name);
        if (value != null) {
            if (attribute == null) {
                add(getDocumentFactory().createAttribute(this, name, value));
            } else if (attribute.isReadOnly()) {
                remove(attribute);
                add(getDocumentFactory().createAttribute(this, name, value));
            } else {
                attribute.setValue(value);
            }
        } else if (attribute != null) {
            remove(attribute);
        }
        return this;
    }

    public Element addAttribute(QName qName, String value) {
        Attribute attribute = attribute(qName);
        if (value != null) {
            if (attribute == null) {
                add(getDocumentFactory().createAttribute(this, qName, value));
            } else if (attribute.isReadOnly()) {
                remove(attribute);
                add(getDocumentFactory().createAttribute(this, qName, value));
            } else {
                attribute.setValue(value);
            }
        } else if (attribute != null) {
            remove(attribute);
        }
        return this;
    }

    @Override // org.dom4j.Element
    public Element addCDATA(String cdata) {
        CDATA node = getDocumentFactory().createCDATA(cdata);
        addNewNode(node);
        return this;
    }

    @Override // org.dom4j.Element
    public Element addComment(String comment) {
        Comment node = getDocumentFactory().createComment(comment);
        addNewNode(node);
        return this;
    }

    @Override // org.dom4j.tree.AbstractBranch, org.dom4j.Branch
    public Element addElement(String name) {
        Namespace namespace;
        Element node;
        DocumentFactory factory = getDocumentFactory();
        int index = name.indexOf(":");
        String localName = name;
        if (index > 0) {
            String prefix = name.substring(0, index);
            localName = name.substring(index + 1);
            namespace = getNamespaceForPrefix(prefix);
            if (namespace == null) {
                throw new IllegalAddException(new StringBuffer().append("No such namespace prefix: ").append(prefix).append(" is in scope on: ").append(this).append(" so cannot add element: ").append(name).toString());
            }
        } else {
            namespace = getNamespaceForPrefix("");
        }
        if (namespace != null) {
            QName qname = factory.createQName(localName, namespace);
            node = factory.createElement(qname);
        } else {
            node = factory.createElement(name);
        }
        addNewNode(node);
        return node;
    }

    @Override // org.dom4j.Element
    public Element addEntity(String name, String text) {
        AbstractC2649Entity node = getDocumentFactory().createEntity(name, text);
        addNewNode(node);
        return this;
    }

    @Override // org.dom4j.Element
    public Element addNamespace(String prefix, String uri) {
        Namespace node = getDocumentFactory().createNamespace(prefix, uri);
        addNewNode(node);
        return this;
    }

    @Override // org.dom4j.Element
    public Element addProcessingInstruction(String target, String data) {
        ProcessingInstruction node = getDocumentFactory().createProcessingInstruction(target, data);
        addNewNode(node);
        return this;
    }

    @Override // org.dom4j.Element
    public Element addProcessingInstruction(String target, Map data) {
        ProcessingInstruction node = getDocumentFactory().createProcessingInstruction(target, data);
        addNewNode(node);
        return this;
    }

    public Element addText(String text) {
        Text node = getDocumentFactory().createText(text);
        addNewNode(node);
        return this;
    }

    @Override // org.dom4j.tree.AbstractBranch, org.dom4j.Branch
    public void add(Node node) {
        switch (node.getNodeType()) {
            case 1:
                add((Element) node);
                return;
            case 2:
                add((Attribute) node);
                return;
            case 3:
                add((Text) node);
                return;
            case 4:
                add((CDATA) node);
                return;
            case 5:
                add((AbstractC2649Entity) node);
                return;
            case 6:
            case 9:
            case 10:
            case 11:
            case 12:
            default:
                invalidNodeTypeAddException(node);
                return;
            case 7:
                add((ProcessingInstruction) node);
                return;
            case 8:
                add((Comment) node);
                return;
            case 13:
                add((Namespace) node);
                return;
        }
    }

    @Override // org.dom4j.tree.AbstractBranch, org.dom4j.Branch
    public boolean remove(Node node) {
        switch (node.getNodeType()) {
            case 1:
                return remove((Element) node);
            case 2:
                return remove((Attribute) node);
            case 3:
                return remove((Text) node);
            case 4:
                return remove((CDATA) node);
            case 5:
                return remove((AbstractC2649Entity) node);
            case 6:
            case 9:
            case 10:
            case 11:
            case 12:
            default:
                return false;
            case 7:
                return remove((ProcessingInstruction) node);
            case 8:
                return remove((Comment) node);
            case 13:
                return remove((Namespace) node);
        }
    }

    @Override // org.dom4j.Element
    public void add(CDATA cdata) {
        addNode(cdata);
    }

    @Override // org.dom4j.tree.AbstractBranch, org.dom4j.Branch
    public void add(Comment comment) {
        addNode(comment);
    }

    @Override // org.dom4j.tree.AbstractBranch, org.dom4j.Branch
    public void add(Element element) {
        addNode(element);
    }

    @Override // org.dom4j.Element
    public void add(AbstractC2649Entity entity) {
        addNode(entity);
    }

    @Override // org.dom4j.Element
    public void add(Namespace namespace) {
        addNode(namespace);
    }

    @Override // org.dom4j.tree.AbstractBranch, org.dom4j.Branch
    public void add(ProcessingInstruction pi) {
        addNode(pi);
    }

    @Override // org.dom4j.Element
    public void add(Text text) {
        addNode(text);
    }

    @Override // org.dom4j.Element
    public boolean remove(CDATA cdata) {
        return removeNode(cdata);
    }

    @Override // org.dom4j.tree.AbstractBranch, org.dom4j.Branch
    public boolean remove(Comment comment) {
        return removeNode(comment);
    }

    @Override // org.dom4j.tree.AbstractBranch, org.dom4j.Branch
    public boolean remove(Element element) {
        return removeNode(element);
    }

    @Override // org.dom4j.Element
    public boolean remove(AbstractC2649Entity entity) {
        return removeNode(entity);
    }

    @Override // org.dom4j.Element
    public boolean remove(Namespace namespace) {
        return removeNode(namespace);
    }

    @Override // org.dom4j.tree.AbstractBranch, org.dom4j.Branch
    public boolean remove(ProcessingInstruction pi) {
        return removeNode(pi);
    }

    @Override // org.dom4j.Element
    public boolean remove(Text text) {
        return removeNode(text);
    }

    @Override // org.dom4j.Element
    public boolean hasMixedContent() {
        List content = contentList();
        if (content == null || content.isEmpty() || content.size() < 2) {
            return false;
        }
        Class prevClass = null;
        for (Object object : content) {
            Class newClass = object.getClass();
            if (newClass != prevClass) {
                if (prevClass != null) {
                    return true;
                }
                prevClass = newClass;
            }
        }
        return false;
    }

    @Override // org.dom4j.Element
    public boolean isTextOnly() {
        List content = contentList();
        if (content == null || content.isEmpty()) {
            return true;
        }
        for (Object object : content) {
            if (!(object instanceof CharacterData) && !(object instanceof String)) {
                return false;
            }
        }
        return true;
    }

    @Override // org.dom4j.tree.AbstractNode, org.dom4j.Node
    public void setText(String text) {
        List allContent = contentList();
        if (allContent != null) {
            Iterator it = allContent.iterator();
            while (it.hasNext()) {
                Node node = (Node) it.next();
                switch (node.getNodeType()) {
                    case 3:
                    case 4:
                    case 5:
                        it.remove();
                        break;
                }
            }
        }
        addText(text);
    }

    @Override // org.dom4j.tree.AbstractNode, org.dom4j.Node
    public String getStringValue() {
        List list = contentList();
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
        return "";
    }

    @Override // org.dom4j.Branch
    public void normalize() {
        List content = contentList();
        Text previousText = null;
        int i = 0;
        while (i < content.size()) {
            Node node = (Node) content.get(i);
            if (node instanceof Text) {
                Text text = (Text) node;
                if (previousText != null) {
                    previousText.appendText(text.getText());
                    remove(text);
                } else {
                    String value = text.getText();
                    if (value == null || value.length() <= 0) {
                        remove(text);
                    } else {
                        previousText = text;
                        i++;
                    }
                }
            } else {
                if (node instanceof Element) {
                    Element element = (Element) node;
                    element.normalize();
                }
                previousText = null;
                i++;
            }
        }
    }

    @Override // org.dom4j.Element
    public String elementText(String name) {
        Element element = element(name);
        if (element != null) {
            return element.getText();
        }
        return null;
    }

    @Override // org.dom4j.Element
    public String elementText(QName qName) {
        Element element = element(qName);
        if (element != null) {
            return element.getText();
        }
        return null;
    }

    @Override // org.dom4j.Element
    public String elementTextTrim(String name) {
        Element element = element(name);
        if (element != null) {
            return element.getTextTrim();
        }
        return null;
    }

    @Override // org.dom4j.Element
    public String elementTextTrim(QName qName) {
        Element element = element(qName);
        if (element != null) {
            return element.getTextTrim();
        }
        return null;
    }

    @Override // org.dom4j.Element
    public void appendAttributes(Element element) {
        int size = element.attributeCount();
        for (int i = 0; i < size; i++) {
            Attribute attribute = element.attribute(i);
            if (attribute.supportsParent()) {
                addAttribute(attribute.getQName(), attribute.getValue());
            } else {
                add(attribute);
            }
        }
    }

    @Override // org.dom4j.Element
    public Element createCopy() {
        Element clone = createElement(getQName());
        clone.appendAttributes(this);
        clone.appendContent(this);
        return clone;
    }

    @Override // org.dom4j.Element
    public Element createCopy(String name) {
        Element clone = createElement(name);
        clone.appendAttributes(this);
        clone.appendContent(this);
        return clone;
    }

    @Override // org.dom4j.Element
    public Element createCopy(QName qName) {
        Element clone = createElement(qName);
        clone.appendAttributes(this);
        clone.appendContent(this);
        return clone;
    }

    @Override // org.dom4j.Element
    public QName getQName(String qualifiedName) {
        String prefix = "";
        String localName = qualifiedName;
        int index = qualifiedName.indexOf(":");
        if (index > 0) {
            prefix = qualifiedName.substring(0, index);
            localName = qualifiedName.substring(index + 1);
        }
        Namespace namespace = getNamespaceForPrefix(prefix);
        return namespace != null ? getDocumentFactory().createQName(localName, namespace) : getDocumentFactory().createQName(localName);
    }

    @Override // org.dom4j.Element
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
        List list = contentList();
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
        Element parent = getParent();
        if (parent != null && (answer = parent.getNamespaceForPrefix(prefix)) != null) {
            return answer;
        }
        if (prefix == null || prefix.length() <= 0) {
            return Namespace.NO_NAMESPACE;
        }
        return null;
    }

    @Override // org.dom4j.Element
    public Namespace getNamespaceForURI(String uri) {
        if (uri == null || uri.length() <= 0) {
            return Namespace.NO_NAMESPACE;
        }
        if (uri.equals(getNamespaceURI())) {
            return getNamespace();
        }
        List list = contentList();
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
        return null;
    }

    @Override // org.dom4j.Element
    public List getNamespacesForURI(String uri) {
        BackedList answer = createResultList();
        List list = contentList();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Object object = list.get(i);
            if ((object instanceof Namespace) && ((Namespace) object).getURI().equals(uri)) {
                answer.addLocal(object);
            }
        }
        return answer;
    }

    @Override // org.dom4j.Element
    public List declaredNamespaces() {
        BackedList answer = createResultList();
        List list = contentList();
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Object object = list.get(i);
            if (object instanceof Namespace) {
                answer.addLocal(object);
            }
        }
        return answer;
    }

    @Override // org.dom4j.Element
    public List additionalNamespaces() {
        List list = contentList();
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
    }

    public List additionalNamespaces(String defaultNamespaceURI) {
        List list = contentList();
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

    public void ensureAttributesCapacity(int minCapacity) {
        if (minCapacity > 1) {
            List list = attributeList();
            if (list instanceof ArrayList) {
                ArrayList arrayList = (ArrayList) list;
                arrayList.ensureCapacity(minCapacity);
            }
        }
    }

    protected Element createElement(String name) {
        return getDocumentFactory().createElement(name);
    }

    protected Element createElement(QName qName) {
        return getDocumentFactory().createElement(qName);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.dom4j.tree.AbstractBranch
    public void addNode(Node node) {
        if (node.getParent() != null) {
            String message = new StringBuffer().append("The Node already has an existing parent of \"").append(node.getParent().getQualifiedName()).append("\"").toString();
            throw new IllegalAddException((Element) this, node, message);
        } else {
            addNewNode(node);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.dom4j.tree.AbstractBranch
    public void addNode(int index, Node node) {
        if (node.getParent() != null) {
            String message = new StringBuffer().append("The Node already has an existing parent of \"").append(node.getParent().getQualifiedName()).append("\"").toString();
            throw new IllegalAddException((Element) this, node, message);
        } else {
            addNewNode(index, node);
        }
    }

    protected void addNewNode(Node node) {
        contentList().add(node);
        childAdded(node);
    }

    protected void addNewNode(int index, Node node) {
        contentList().add(index, node);
        childAdded(node);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.dom4j.tree.AbstractBranch
    public boolean removeNode(Node node) {
        boolean answer = contentList().remove(node);
        if (answer) {
            childRemoved(node);
        }
        return answer;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.dom4j.tree.AbstractBranch
    public void childAdded(Node node) {
        if (node != null) {
            node.setParent(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.dom4j.tree.AbstractBranch
    public void childRemoved(Node node) {
        if (node != null) {
            node.setParent(null);
            node.setDocument(null);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.dom4j.tree.AbstractNode
    public DocumentFactory getDocumentFactory() {
        DocumentFactory factory;
        QName qName = getQName();
        return (qName == null || (factory = qName.getDocumentFactory()) == null) ? DOCUMENT_FACTORY : factory;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public List createAttributeList() {
        return createAttributeList(5);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public List createAttributeList(int size) {
        return new ArrayList(size);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Iterator createSingleIterator(Object result) {
        return new SingleIterator(result);
    }
}
