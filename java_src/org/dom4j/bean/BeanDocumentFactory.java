package org.dom4j.bean;

import ch.qos.logback.core.joran.action.Action;
import org.dom4j.Attribute;
import org.dom4j.DocumentFactory;
import org.dom4j.Element;
import org.dom4j.QName;
import org.dom4j.tree.DefaultAttribute;
import org.xml.sax.Attributes;
/* loaded from: classes2.dex */
public class BeanDocumentFactory extends DocumentFactory {
    static Class class$org$dom4j$bean$BeanDocumentFactory;
    private static BeanDocumentFactory singleton = new BeanDocumentFactory();

    public static DocumentFactory getInstance() {
        return singleton;
    }

    @Override // org.dom4j.DocumentFactory
    public Element createElement(QName qname) {
        Object bean = createBean(qname);
        return bean == null ? new BeanElement(qname) : new BeanElement(qname, bean);
    }

    public Element createElement(QName qname, Attributes attributes) {
        Object bean = createBean(qname, attributes);
        return bean == null ? new BeanElement(qname) : new BeanElement(qname, bean);
    }

    @Override // org.dom4j.DocumentFactory
    public Attribute createAttribute(Element owner, QName qname, String value) {
        return new DefaultAttribute(qname, value);
    }

    protected Object createBean(QName qname) {
        return null;
    }

    protected Object createBean(QName qname, Attributes attributes) {
        Class cls;
        String value = attributes.getValue(Action.CLASS_ATTRIBUTE);
        if (value != null) {
            try {
                if (class$org$dom4j$bean$BeanDocumentFactory == null) {
                    cls = class$("org.dom4j.bean.BeanDocumentFactory");
                    class$org$dom4j$bean$BeanDocumentFactory = cls;
                } else {
                    cls = class$org$dom4j$bean$BeanDocumentFactory;
                }
                Class beanClass = Class.forName(value, true, cls.getClassLoader());
                return beanClass.newInstance();
            } catch (Exception e) {
                handleException(e);
            }
        }
        return null;
    }

    static Class class$(String x0) {
        try {
            return Class.forName(x0);
        } catch (ClassNotFoundException x1) {
            throw new NoClassDefFoundError(x1.getMessage());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void handleException(Exception e) {
        System.out.println(new StringBuffer().append("#### Warning: couldn't create bean: ").append(e).toString());
    }
}
