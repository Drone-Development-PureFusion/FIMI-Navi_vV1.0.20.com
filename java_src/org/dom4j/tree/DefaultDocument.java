package org.dom4j.tree;

import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import org.dom4j.Document;
import org.dom4j.DocumentFactory;
import org.dom4j.DocumentType;
import org.dom4j.Element;
import org.dom4j.IllegalAddException;
import org.dom4j.Node;
import org.dom4j.ProcessingInstruction;
import org.xml.sax.EntityResolver;
/* loaded from: classes2.dex */
public class DefaultDocument extends AbstractDocument {
    private List content;
    private DocumentType docType;
    private DocumentFactory documentFactory = DocumentFactory.getInstance();
    private transient EntityResolver entityResolver;
    private String name;
    private Element rootElement;
    protected static final List EMPTY_LIST = Collections.EMPTY_LIST;
    protected static final Iterator EMPTY_ITERATOR = EMPTY_LIST.iterator();

    public DefaultDocument() {
    }

    public DefaultDocument(String name) {
        this.name = name;
    }

    public DefaultDocument(Element rootElement) {
        this.rootElement = rootElement;
    }

    public DefaultDocument(DocumentType docType) {
        this.docType = docType;
    }

    public DefaultDocument(Element rootElement, DocumentType docType) {
        this.rootElement = rootElement;
        this.docType = docType;
    }

    public DefaultDocument(String name, Element rootElement, DocumentType docType) {
        this.name = name;
        this.rootElement = rootElement;
        this.docType = docType;
    }

    @Override // org.dom4j.tree.AbstractNode, org.dom4j.Node
    public String getName() {
        return this.name;
    }

    @Override // org.dom4j.tree.AbstractNode, org.dom4j.Node
    public void setName(String name) {
        this.name = name;
    }

    @Override // org.dom4j.Document
    public Element getRootElement() {
        return this.rootElement;
    }

    @Override // org.dom4j.Document
    public DocumentType getDocType() {
        return this.docType;
    }

    @Override // org.dom4j.Document
    public void setDocType(DocumentType docType) {
        this.docType = docType;
    }

    @Override // org.dom4j.Document
    public Document addDocType(String docTypeName, String publicId, String systemId) {
        setDocType(getDocumentFactory().createDocType(docTypeName, publicId, systemId));
        return this;
    }

    @Override // org.dom4j.tree.AbstractDocument, org.dom4j.Document
    public String getXMLEncoding() {
        return this.encoding;
    }

    @Override // org.dom4j.Document
    public EntityResolver getEntityResolver() {
        return this.entityResolver;
    }

    @Override // org.dom4j.Document
    public void setEntityResolver(EntityResolver entityResolver) {
        this.entityResolver = entityResolver;
    }

    @Override // org.dom4j.tree.AbstractNode, org.dom4j.Node
    public Object clone() {
        DefaultDocument document = (DefaultDocument) super.clone();
        document.rootElement = null;
        document.content = null;
        document.appendContent(this);
        return document;
    }

    @Override // org.dom4j.Branch
    public List processingInstructions() {
        List source = contentList();
        List answer = createResultList();
        int size = source.size();
        for (int i = 0; i < size; i++) {
            Object object = source.get(i);
            if (object instanceof ProcessingInstruction) {
                answer.add(object);
            }
        }
        return answer;
    }

    @Override // org.dom4j.Branch
    public List processingInstructions(String target) {
        List source = contentList();
        List answer = createResultList();
        int size = source.size();
        for (int i = 0; i < size; i++) {
            Object object = source.get(i);
            if (object instanceof ProcessingInstruction) {
                ProcessingInstruction pi = (ProcessingInstruction) object;
                if (target.equals(pi.getName())) {
                    answer.add(pi);
                }
            }
        }
        return answer;
    }

    @Override // org.dom4j.Branch
    public ProcessingInstruction processingInstruction(String target) {
        List source = contentList();
        int size = source.size();
        for (int i = 0; i < size; i++) {
            Object object = source.get(i);
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
        List source = contentList();
        Iterator iter = source.iterator();
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

    @Override // org.dom4j.Branch
    public void setContent(List content) {
        this.rootElement = null;
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
                Document doc = node.getDocument();
                if (doc != null && doc != this) {
                    node = (Node) node.clone();
                }
                if (node instanceof Element) {
                    if (this.rootElement == null) {
                        this.rootElement = (Element) node;
                    } else {
                        throw new IllegalAddException(new StringBuffer().append("A document may only contain one root element: ").append(content).toString());
                    }
                }
                newContent.add(node);
                childAdded(node);
            }
        }
        this.content = newContent;
    }

    @Override // org.dom4j.Branch
    public void clearContent() {
        contentRemoved();
        this.content = null;
        this.rootElement = null;
    }

    public void setDocumentFactory(DocumentFactory documentFactory) {
        this.documentFactory = documentFactory;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.dom4j.tree.AbstractBranch
    public List contentList() {
        if (this.content == null) {
            this.content = createContentList();
            if (this.rootElement != null) {
                this.content.add(this.rootElement);
            }
        }
        return this.content;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.dom4j.tree.AbstractBranch
    public void addNode(Node node) {
        if (node != null) {
            Document document = node.getDocument();
            if (document != null && document != this) {
                String message = new StringBuffer().append("The Node already has an existing document: ").append(document).toString();
                throw new IllegalAddException(this, node, message);
            }
            contentList().add(node);
            childAdded(node);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.dom4j.tree.AbstractBranch
    public void addNode(int index, Node node) {
        if (node != null) {
            Document document = node.getDocument();
            if (document != null && document != this) {
                String message = new StringBuffer().append("The Node already has an existing document: ").append(document).toString();
                throw new IllegalAddException(this, node, message);
            }
            contentList().add(index, node);
            childAdded(node);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.dom4j.tree.AbstractBranch
    public boolean removeNode(Node node) {
        if (node == this.rootElement) {
            this.rootElement = null;
        }
        if (contentList().remove(node)) {
            childRemoved(node);
            return true;
        }
        return false;
    }

    @Override // org.dom4j.tree.AbstractDocument
    protected void rootElementAdded(Element element) {
        this.rootElement = element;
        element.setDocument(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.dom4j.tree.AbstractNode
    public DocumentFactory getDocumentFactory() {
        return this.documentFactory;
    }
}
