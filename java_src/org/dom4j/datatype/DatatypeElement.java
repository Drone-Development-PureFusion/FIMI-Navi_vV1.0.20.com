package org.dom4j.datatype;

import com.sun.msv.datatype.DatabindableDatatype;
import com.sun.msv.datatype.SerializationContext;
import com.sun.msv.datatype.xsd.XSDatatype;
import org.dom4j.Element;
import org.dom4j.Namespace;
import org.dom4j.Node;
import org.dom4j.QName;
import org.dom4j.tree.DefaultElement;
import org.relaxng.datatype.DatatypeException;
import org.relaxng.datatype.ValidationContext;
/* loaded from: classes2.dex */
public class DatatypeElement extends DefaultElement implements SerializationContext, ValidationContext {
    private Object data;
    private XSDatatype datatype;

    public DatatypeElement(QName qname, XSDatatype datatype) {
        super(qname);
        this.datatype = datatype;
    }

    public DatatypeElement(QName qname, int attributeCount, XSDatatype type) {
        super(qname, attributeCount);
        this.datatype = type;
    }

    @Override // org.dom4j.tree.AbstractElement
    public String toString() {
        return new StringBuffer().append(getClass().getName()).append(hashCode()).append(" [Element: <").append(getQualifiedName()).append(" attributes: ").append(attributeList()).append(" data: ").append(getData()).append(" />]").toString();
    }

    public XSDatatype getXSDatatype() {
        return this.datatype;
    }

    public String getNamespacePrefix(String uri) {
        Namespace namespace = getNamespaceForURI(uri);
        if (namespace != null) {
            return namespace.getPrefix();
        }
        return null;
    }

    public String getBaseUri() {
        return null;
    }

    public boolean isNotation(String notationName) {
        return false;
    }

    public boolean isUnparsedEntity(String entityName) {
        return true;
    }

    public String resolveNamespacePrefix(String prefix) {
        Namespace namespace = getNamespaceForPrefix(prefix);
        if (namespace != null) {
            return namespace.getURI();
        }
        return null;
    }

    @Override // org.dom4j.tree.AbstractElement, org.dom4j.Element
    public Object getData() {
        String text;
        if (this.data == null && (text = getTextTrim()) != null && text.length() > 0) {
            if (this.datatype instanceof DatabindableDatatype) {
                this.data = this.datatype.createJavaObject(text, this);
            } else {
                this.data = this.datatype.createValue(text, this);
            }
        }
        return this.data;
    }

    @Override // org.dom4j.tree.AbstractElement, org.dom4j.Element
    public void setData(Object data) {
        String s = this.datatype.convertToLexicalValue(data, this);
        validate(s);
        this.data = data;
        setText(s);
    }

    @Override // org.dom4j.tree.AbstractElement, org.dom4j.Element
    public Element addText(String text) {
        validate(text);
        return super.addText(text);
    }

    @Override // org.dom4j.tree.AbstractElement, org.dom4j.tree.AbstractNode, org.dom4j.Node
    public void setText(String text) {
        validate(text);
        super.setText(text);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.dom4j.tree.AbstractElement, org.dom4j.tree.AbstractBranch
    public void childAdded(Node node) {
        this.data = null;
        super.childAdded(node);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.dom4j.tree.AbstractElement, org.dom4j.tree.AbstractBranch
    public void childRemoved(Node node) {
        this.data = null;
        super.childRemoved(node);
    }

    protected void validate(String text) throws IllegalArgumentException {
        try {
            this.datatype.checkValid(text, this);
        } catch (DatatypeException e) {
            throw new IllegalArgumentException(e.getMessage());
        }
    }
}
