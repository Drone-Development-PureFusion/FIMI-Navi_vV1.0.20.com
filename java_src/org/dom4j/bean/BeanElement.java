package org.dom4j.bean;

import ch.qos.logback.core.joran.action.Action;
import java.util.List;
import org.dom4j.Attribute;
import org.dom4j.DocumentFactory;
import org.dom4j.Element;
import org.dom4j.Namespace;
import org.dom4j.QName;
import org.dom4j.tree.DefaultElement;
import org.dom4j.tree.NamespaceStack;
import org.xml.sax.Attributes;
/* loaded from: classes2.dex */
public class BeanElement extends DefaultElement {
    private static final DocumentFactory DOCUMENT_FACTORY = BeanDocumentFactory.getInstance();
    static Class class$org$dom4j$bean$BeanElement;
    private Object bean;

    public BeanElement(String name, Object bean) {
        this(DOCUMENT_FACTORY.createQName(name), bean);
    }

    public BeanElement(String name, Namespace namespace, Object bean) {
        this(DOCUMENT_FACTORY.createQName(name, namespace), bean);
    }

    public BeanElement(QName qname, Object bean) {
        super(qname);
        this.bean = bean;
    }

    public BeanElement(QName qname) {
        super(qname);
    }

    @Override // org.dom4j.tree.AbstractElement, org.dom4j.Element
    public Object getData() {
        return this.bean;
    }

    @Override // org.dom4j.tree.AbstractElement, org.dom4j.Element
    public void setData(Object data) {
        this.bean = data;
        setAttributeList(null);
    }

    @Override // org.dom4j.tree.DefaultElement, org.dom4j.tree.AbstractElement, org.dom4j.Element
    public Attribute attribute(String name) {
        return getBeanAttributeList().attribute(name);
    }

    @Override // org.dom4j.tree.DefaultElement, org.dom4j.tree.AbstractElement, org.dom4j.Element
    public Attribute attribute(QName qname) {
        return getBeanAttributeList().attribute(qname);
    }

    @Override // org.dom4j.tree.AbstractElement, org.dom4j.Element
    public Element addAttribute(String name, String value) {
        Attribute attribute = attribute(name);
        if (attribute != null) {
            attribute.setValue(value);
        }
        return this;
    }

    @Override // org.dom4j.tree.AbstractElement, org.dom4j.Element
    public Element addAttribute(QName qName, String value) {
        Attribute attribute = attribute(qName);
        if (attribute != null) {
            attribute.setValue(value);
        }
        return this;
    }

    @Override // org.dom4j.tree.DefaultElement, org.dom4j.Element
    public void setAttributes(List attributes) {
        throw new UnsupportedOperationException("Not implemented yet.");
    }

    @Override // org.dom4j.tree.AbstractElement
    public void setAttributes(Attributes attributes, NamespaceStack namespaceStack, boolean noNamespaceAttributes) {
        Class cls;
        String className = attributes.getValue(Action.CLASS_ATTRIBUTE);
        if (className != null) {
            try {
                if (class$org$dom4j$bean$BeanElement == null) {
                    cls = class$("org.dom4j.bean.BeanElement");
                    class$org$dom4j$bean$BeanElement = cls;
                } else {
                    cls = class$org$dom4j$bean$BeanElement;
                }
                Class beanClass = Class.forName(className, true, cls.getClassLoader());
                setData(beanClass.newInstance());
                for (int i = 0; i < attributes.getLength(); i++) {
                    String attributeName = attributes.getLocalName(i);
                    if (!Action.CLASS_ATTRIBUTE.equalsIgnoreCase(attributeName)) {
                        addAttribute(attributeName, attributes.getValue(i));
                    }
                }
                return;
            } catch (Exception ex) {
                ((BeanDocumentFactory) getDocumentFactory()).handleException(ex);
                return;
            }
        }
        super.setAttributes(attributes, namespaceStack, noNamespaceAttributes);
    }

    static Class class$(String x0) {
        try {
            return Class.forName(x0);
        } catch (ClassNotFoundException x1) {
            throw new NoClassDefFoundError(x1.getMessage());
        }
    }

    @Override // org.dom4j.tree.DefaultElement, org.dom4j.tree.AbstractElement, org.dom4j.tree.AbstractNode
    protected DocumentFactory getDocumentFactory() {
        return DOCUMENT_FACTORY;
    }

    protected BeanAttributeList getBeanAttributeList() {
        return (BeanAttributeList) attributeList();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.dom4j.tree.AbstractElement
    public List createAttributeList() {
        return new BeanAttributeList(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.dom4j.tree.AbstractElement
    public List createAttributeList(int size) {
        return new BeanAttributeList(this);
    }
}
