package org.dom4j.tree;

import java.io.IOException;
import java.io.StringWriter;
import java.io.Writer;
import java.util.List;
import java.util.Map;
import org.dom4j.Comment;
import org.dom4j.Document;
import org.dom4j.DocumentType;
import org.dom4j.Element;
import org.dom4j.IllegalAddException;
import org.dom4j.Node;
import org.dom4j.ProcessingInstruction;
import org.dom4j.QName;
import org.dom4j.Text;
import org.dom4j.Visitor;
import org.dom4j.p019io.OutputFormat;
import org.dom4j.p019io.XMLWriter;
/* loaded from: classes2.dex */
public abstract class AbstractDocument extends AbstractBranch implements Document {
    protected String encoding;

    protected abstract void rootElementAdded(Element element);

    @Override // org.dom4j.tree.AbstractNode, org.dom4j.Node
    public short getNodeType() {
        return (short) 9;
    }

    @Override // org.dom4j.Node
    public String getPath(Element context) {
        return "/";
    }

    @Override // org.dom4j.Node
    public String getUniquePath(Element context) {
        return "/";
    }

    @Override // org.dom4j.tree.AbstractNode, org.dom4j.Node
    public Document getDocument() {
        return this;
    }

    @Override // org.dom4j.Document
    public String getXMLEncoding() {
        return null;
    }

    @Override // org.dom4j.tree.AbstractNode, org.dom4j.Node
    public String getStringValue() {
        Element root = getRootElement();
        return root != null ? root.getStringValue() : "";
    }

    @Override // org.dom4j.Node
    public String asXML() {
        OutputFormat format = new OutputFormat();
        format.setEncoding(this.encoding);
        try {
            StringWriter out = new StringWriter();
            XMLWriter writer = new XMLWriter(out, format);
            writer.write((Document) this);
            writer.flush();
            return out.toString();
        } catch (IOException e) {
            throw new RuntimeException(new StringBuffer().append("IOException while generating textual representation: ").append(e.getMessage()).toString());
        }
    }

    @Override // org.dom4j.tree.AbstractNode, org.dom4j.Node
    public void write(Writer out) throws IOException {
        OutputFormat format = new OutputFormat();
        format.setEncoding(this.encoding);
        XMLWriter writer = new XMLWriter(out, format);
        writer.write((Document) this);
    }

    @Override // org.dom4j.Node
    public void accept(Visitor visitor) {
        visitor.visit(this);
        DocumentType docType = getDocType();
        if (docType != null) {
            visitor.visit(docType);
        }
        List content = content();
        if (content != null) {
            for (Object object : content) {
                if (object instanceof String) {
                    Text text = getDocumentFactory().createText((String) object);
                    visitor.visit(text);
                } else {
                    Node node = (Node) object;
                    node.accept(visitor);
                }
            }
        }
    }

    public String toString() {
        return new StringBuffer().append(super.toString()).append(" [Document: name ").append(getName()).append("]").toString();
    }

    @Override // org.dom4j.Branch
    public void normalize() {
        Element element = getRootElement();
        if (element != null) {
            element.normalize();
        }
    }

    @Override // org.dom4j.Document
    public Document addComment(String comment) {
        Comment node = getDocumentFactory().createComment(comment);
        add(node);
        return this;
    }

    @Override // org.dom4j.Document
    public Document addProcessingInstruction(String target, String data) {
        ProcessingInstruction node = getDocumentFactory().createProcessingInstruction(target, data);
        add(node);
        return this;
    }

    @Override // org.dom4j.Document
    public Document addProcessingInstruction(String target, Map data) {
        ProcessingInstruction node = getDocumentFactory().createProcessingInstruction(target, data);
        add(node);
        return this;
    }

    @Override // org.dom4j.tree.AbstractBranch, org.dom4j.Branch
    public Element addElement(String name) {
        Element element = getDocumentFactory().createElement(name);
        add(element);
        return element;
    }

    @Override // org.dom4j.tree.AbstractBranch, org.dom4j.Branch
    public Element addElement(String qualifiedName, String namespaceURI) {
        Element element = getDocumentFactory().createElement(qualifiedName, namespaceURI);
        add(element);
        return element;
    }

    @Override // org.dom4j.tree.AbstractBranch, org.dom4j.Branch
    public Element addElement(QName qName) {
        Element element = getDocumentFactory().createElement(qName);
        add(element);
        return element;
    }

    @Override // org.dom4j.Document
    public void setRootElement(Element rootElement) {
        clearContent();
        if (rootElement != null) {
            super.add(rootElement);
            rootElementAdded(rootElement);
        }
    }

    @Override // org.dom4j.tree.AbstractBranch, org.dom4j.Branch
    public void add(Element element) {
        checkAddElementAllowed(element);
        super.add(element);
        rootElementAdded(element);
    }

    @Override // org.dom4j.tree.AbstractBranch, org.dom4j.Branch
    public boolean remove(Element element) {
        boolean answer = super.remove(element);
        Element root = getRootElement();
        if (root != null && answer) {
            setRootElement(null);
        }
        element.setDocument(null);
        return answer;
    }

    @Override // org.dom4j.tree.AbstractNode, org.dom4j.Node
    public Node asXPathResult(Element parent) {
        return this;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.dom4j.tree.AbstractBranch
    public void childAdded(Node node) {
        if (node != null) {
            node.setDocument(this);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.dom4j.tree.AbstractBranch
    public void childRemoved(Node node) {
        if (node != null) {
            node.setDocument(null);
        }
    }

    protected void checkAddElementAllowed(Element element) {
        Element root = getRootElement();
        if (root != null) {
            throw new IllegalAddException(this, element, new StringBuffer().append("Cannot add another element to this Document as it already has a root element of: ").append(root.getQualifiedName()).toString());
        }
    }

    @Override // org.dom4j.Document
    public void setXMLEncoding(String enc) {
        this.encoding = enc;
    }
}
