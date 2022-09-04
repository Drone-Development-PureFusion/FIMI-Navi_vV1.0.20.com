package org.dom4j.datatype;

import com.sun.msv.datatype.DatabindableDatatype;
import com.sun.msv.datatype.SerializationContext;
import com.sun.msv.datatype.xsd.XSDatatype;
import org.dom4j.Element;
import org.dom4j.Namespace;
import org.dom4j.QName;
import org.dom4j.tree.AbstractAttribute;
import org.relaxng.datatype.DatatypeException;
import org.relaxng.datatype.ValidationContext;
/* loaded from: classes2.dex */
public class DatatypeAttribute extends AbstractAttribute implements SerializationContext, ValidationContext {
    private Object data;
    private XSDatatype datatype;
    private Element parent;
    private QName qname;
    private String text;

    public DatatypeAttribute(QName qname, XSDatatype datatype) {
        this.qname = qname;
        this.datatype = datatype;
    }

    public DatatypeAttribute(QName qname, XSDatatype datatype, String text) {
        this.qname = qname;
        this.datatype = datatype;
        this.text = text;
        this.data = convertToValue(text);
    }

    @Override // org.dom4j.tree.AbstractAttribute
    public String toString() {
        return new StringBuffer().append(getClass().getName()).append(hashCode()).append(" [Attribute: name ").append(getQualifiedName()).append(" value \"").append(getValue()).append("\" data: ").append(getData()).append("]").toString();
    }

    public XSDatatype getXSDatatype() {
        return this.datatype;
    }

    public String getNamespacePrefix(String uri) {
        Namespace namespace;
        Element parentElement = getParent();
        if (parentElement == null || (namespace = parentElement.getNamespaceForURI(uri)) == null) {
            return null;
        }
        return namespace.getPrefix();
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
        Namespace namespace;
        if (prefix.equals(getNamespacePrefix())) {
            return getNamespaceURI();
        }
        Element parentElement = getParent();
        if (parentElement != null && (namespace = parentElement.getNamespaceForPrefix(prefix)) != null) {
            return namespace.getURI();
        }
        return null;
    }

    @Override // org.dom4j.Attribute
    public QName getQName() {
        return this.qname;
    }

    @Override // org.dom4j.Attribute
    public String getValue() {
        return this.text;
    }

    @Override // org.dom4j.tree.AbstractAttribute, org.dom4j.Attribute
    public void setValue(String value) {
        validate(value);
        this.text = value;
        this.data = convertToValue(value);
    }

    @Override // org.dom4j.tree.AbstractAttribute, org.dom4j.Attribute
    public Object getData() {
        return this.data;
    }

    @Override // org.dom4j.tree.AbstractAttribute, org.dom4j.Attribute
    public void setData(Object data) {
        String s = this.datatype.convertToLexicalValue(data, this);
        validate(s);
        this.text = s;
        this.data = data;
    }

    @Override // org.dom4j.tree.AbstractNode, org.dom4j.Node
    public Element getParent() {
        return this.parent;
    }

    @Override // org.dom4j.tree.AbstractNode, org.dom4j.Node
    public void setParent(Element parent) {
        this.parent = parent;
    }

    @Override // org.dom4j.tree.AbstractNode, org.dom4j.Node
    public boolean supportsParent() {
        return true;
    }

    @Override // org.dom4j.tree.AbstractNode, org.dom4j.Node
    public boolean isReadOnly() {
        return false;
    }

    protected void validate(String txt) throws IllegalArgumentException {
        try {
            this.datatype.checkValid(txt, this);
        } catch (DatatypeException e) {
            throw new IllegalArgumentException(e.getMessage());
        }
    }

    protected Object convertToValue(String txt) {
        return this.datatype instanceof DatabindableDatatype ? this.datatype.createJavaObject(txt, this) : this.datatype.createValue(txt, this);
    }
}
