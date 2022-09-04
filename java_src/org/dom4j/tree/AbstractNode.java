package org.dom4j.tree;

import com.facebook.internal.AnalyticsEvents;
import java.io.IOException;
import java.io.Serializable;
import java.io.Writer;
import java.util.List;
import org.dom4j.Document;
import org.dom4j.DocumentFactory;
import org.dom4j.Element;
import org.dom4j.Node;
import org.dom4j.NodeFilter;
import org.dom4j.XPath;
import org.dom4j.rule.Pattern;
/* loaded from: classes2.dex */
public abstract class AbstractNode implements Node, Cloneable, Serializable {
    protected static final String[] NODE_TYPE_NAMES = {"Node", "Element", "Attribute", "Text", "CDATA", "Entity", "Entity", "ProcessingInstruction", "Comment", "Document", "DocumentType", "DocumentFragment", "Notation", "Namespace", AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN};
    private static final DocumentFactory DOCUMENT_FACTORY = DocumentFactory.getInstance();

    @Override // org.dom4j.Node
    public short getNodeType() {
        return (short) 14;
    }

    @Override // org.dom4j.Node
    public String getNodeTypeName() {
        int type = getNodeType();
        return (type < 0 || type >= NODE_TYPE_NAMES.length) ? AnalyticsEvents.PARAMETER_DIALOG_OUTCOME_VALUE_UNKNOWN : NODE_TYPE_NAMES[type];
    }

    @Override // org.dom4j.Node
    public Document getDocument() {
        Element element = getParent();
        if (element != null) {
            return element.getDocument();
        }
        return null;
    }

    @Override // org.dom4j.Node
    public void setDocument(Document document) {
    }

    @Override // org.dom4j.Node
    public Element getParent() {
        return null;
    }

    @Override // org.dom4j.Node
    public void setParent(Element parent) {
    }

    @Override // org.dom4j.Node
    public boolean supportsParent() {
        return false;
    }

    @Override // org.dom4j.Node
    public boolean isReadOnly() {
        return true;
    }

    @Override // org.dom4j.Node
    public boolean hasContent() {
        return false;
    }

    @Override // org.dom4j.Node
    public String getPath() {
        return getPath(null);
    }

    @Override // org.dom4j.Node
    public String getUniquePath() {
        return getUniquePath(null);
    }

    @Override // org.dom4j.Node
    public Object clone() {
        if (!isReadOnly()) {
            try {
                Node answer = (Node) super.clone();
                answer.setParent(null);
                answer.setDocument(null);
                return answer;
            } catch (CloneNotSupportedException e) {
                throw new RuntimeException(new StringBuffer().append("This should never happen. Caught: ").append(e).toString());
            }
        }
        return this;
    }

    @Override // org.dom4j.Node
    public Node detach() {
        Element parent = getParent();
        if (parent != null) {
            parent.remove(this);
        } else {
            Document document = getDocument();
            if (document != null) {
                document.remove(this);
            }
        }
        setParent(null);
        setDocument(null);
        return this;
    }

    @Override // org.dom4j.Node
    public String getName() {
        return null;
    }

    @Override // org.dom4j.Node
    public void setName(String name) {
        throw new UnsupportedOperationException("This node cannot be modified");
    }

    @Override // org.dom4j.Node
    public String getText() {
        return null;
    }

    @Override // org.dom4j.Node
    public String getStringValue() {
        return getText();
    }

    @Override // org.dom4j.Node
    public void setText(String text) {
        throw new UnsupportedOperationException("This node cannot be modified");
    }

    @Override // org.dom4j.Node
    public void write(Writer writer) throws IOException {
        writer.write(asXML());
    }

    @Override // org.dom4j.Node
    public Object selectObject(String xpathExpression) {
        XPath xpath = createXPath(xpathExpression);
        return xpath.evaluate(this);
    }

    @Override // org.dom4j.Node
    public List selectNodes(String xpathExpression) {
        XPath xpath = createXPath(xpathExpression);
        return xpath.selectNodes(this);
    }

    @Override // org.dom4j.Node
    public List selectNodes(String xpathExpression, String comparisonXPathExpression) {
        return selectNodes(xpathExpression, comparisonXPathExpression, false);
    }

    @Override // org.dom4j.Node
    public List selectNodes(String xpathExpression, String comparisonXPathExpression, boolean removeDuplicates) {
        XPath xpath = createXPath(xpathExpression);
        XPath sortBy = createXPath(comparisonXPathExpression);
        return xpath.selectNodes(this, sortBy, removeDuplicates);
    }

    @Override // org.dom4j.Node
    public Node selectSingleNode(String xpathExpression) {
        XPath xpath = createXPath(xpathExpression);
        return xpath.selectSingleNode(this);
    }

    @Override // org.dom4j.Node
    public String valueOf(String xpathExpression) {
        XPath xpath = createXPath(xpathExpression);
        return xpath.valueOf(this);
    }

    @Override // org.dom4j.Node
    public Number numberValueOf(String xpathExpression) {
        XPath xpath = createXPath(xpathExpression);
        return xpath.numberValueOf(this);
    }

    @Override // org.dom4j.Node
    public boolean matches(String patternText) {
        NodeFilter filter = createXPathFilter(patternText);
        return filter.matches(this);
    }

    @Override // org.dom4j.Node
    public XPath createXPath(String xpathExpression) {
        return getDocumentFactory().createXPath(xpathExpression);
    }

    public NodeFilter createXPathFilter(String patternText) {
        return getDocumentFactory().createXPathFilter(patternText);
    }

    public Pattern createPattern(String patternText) {
        return getDocumentFactory().createPattern(patternText);
    }

    @Override // org.dom4j.Node
    public Node asXPathResult(Element parent) {
        return supportsParent() ? this : createXPathResult(parent);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public DocumentFactory getDocumentFactory() {
        return DOCUMENT_FACTORY;
    }

    protected Node createXPathResult(Element parent) {
        throw new RuntimeException(new StringBuffer().append("asXPathResult() not yet implemented fully for: ").append(this).toString());
    }
}
