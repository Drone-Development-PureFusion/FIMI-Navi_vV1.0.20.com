package org.dom4j;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.Serializable;
import java.util.List;
import java.util.Map;
import org.dom4j.rule.Pattern;
import org.dom4j.tree.AbstractDocument;
import org.dom4j.tree.DefaultAttribute;
import org.dom4j.tree.DefaultCDATA;
import org.dom4j.tree.DefaultComment;
import org.dom4j.tree.DefaultDocument;
import org.dom4j.tree.DefaultDocumentType;
import org.dom4j.tree.DefaultElement;
import org.dom4j.tree.DefaultEntity;
import org.dom4j.tree.DefaultProcessingInstruction;
import org.dom4j.tree.DefaultText;
import org.dom4j.tree.QNameCache;
import org.dom4j.util.SimpleSingleton;
import org.dom4j.util.SingletonStrategy;
import org.dom4j.xpath.DefaultXPath;
import org.dom4j.xpath.XPathPattern;
import org.jaxen.VariableContext;
/* loaded from: classes2.dex */
public class DocumentFactory implements Serializable {
    static Class class$org$dom4j$DocumentFactory;
    private static SingletonStrategy singleton = null;
    protected transient QNameCache cache;
    private Map xpathNamespaceURIs;

    private static SingletonStrategy createSingleton() {
        String documentFactoryClassName;
        SingletonStrategy result;
        try {
            documentFactoryClassName = System.getProperty("org.dom4j.factory", "org.dom4j.DocumentFactory");
        } catch (Exception e) {
            documentFactoryClassName = "org.dom4j.DocumentFactory";
        }
        try {
            String singletonClass = System.getProperty("org.dom4j.DocumentFactory.singleton.strategy", "org.dom4j.util.SimpleSingleton");
            Class clazz = Class.forName(singletonClass);
            result = (SingletonStrategy) clazz.newInstance();
        } catch (Exception e2) {
            result = new SimpleSingleton();
        }
        result.setSingletonClassName(documentFactoryClassName);
        return result;
    }

    public DocumentFactory() {
        init();
    }

    public static synchronized DocumentFactory getInstance() {
        DocumentFactory documentFactory;
        synchronized (DocumentFactory.class) {
            if (singleton == null) {
                singleton = createSingleton();
            }
            documentFactory = (DocumentFactory) singleton.instance();
        }
        return documentFactory;
    }

    public Document createDocument() {
        DefaultDocument answer = new DefaultDocument();
        answer.setDocumentFactory(this);
        return answer;
    }

    public Document createDocument(String encoding) {
        Document answer = createDocument();
        if (answer instanceof AbstractDocument) {
            ((AbstractDocument) answer).setXMLEncoding(encoding);
        }
        return answer;
    }

    public Document createDocument(Element rootElement) {
        Document answer = createDocument();
        answer.setRootElement(rootElement);
        return answer;
    }

    public DocumentType createDocType(String name, String publicId, String systemId) {
        return new DefaultDocumentType(name, publicId, systemId);
    }

    public Element createElement(QName qname) {
        return new DefaultElement(qname);
    }

    public Element createElement(String name) {
        return createElement(createQName(name));
    }

    public Element createElement(String qualifiedName, String namespaceURI) {
        return createElement(createQName(qualifiedName, namespaceURI));
    }

    public Attribute createAttribute(Element owner, QName qname, String value) {
        return new DefaultAttribute(qname, value);
    }

    public Attribute createAttribute(Element owner, String name, String value) {
        return createAttribute(owner, createQName(name), value);
    }

    public CDATA createCDATA(String text) {
        return new DefaultCDATA(text);
    }

    public Comment createComment(String text) {
        return new DefaultComment(text);
    }

    public Text createText(String text) {
        if (text == null) {
            throw new IllegalArgumentException("Adding text to an XML document must not be null");
        }
        return new DefaultText(text);
    }

    public AbstractC2649Entity createEntity(String name, String text) {
        return new DefaultEntity(name, text);
    }

    public Namespace createNamespace(String prefix, String uri) {
        return Namespace.get(prefix, uri);
    }

    public ProcessingInstruction createProcessingInstruction(String target, String data) {
        return new DefaultProcessingInstruction(target, data);
    }

    public ProcessingInstruction createProcessingInstruction(String target, Map data) {
        return new DefaultProcessingInstruction(target, data);
    }

    public QName createQName(String localName, Namespace namespace) {
        return this.cache.get(localName, namespace);
    }

    public QName createQName(String localName) {
        return this.cache.get(localName);
    }

    public QName createQName(String name, String prefix, String uri) {
        return this.cache.get(name, Namespace.get(prefix, uri));
    }

    public QName createQName(String qualifiedName, String uri) {
        return this.cache.get(qualifiedName, uri);
    }

    public XPath createXPath(String xpathExpression) throws InvalidXPathException {
        DefaultXPath xpath = new DefaultXPath(xpathExpression);
        if (this.xpathNamespaceURIs != null) {
            xpath.setNamespaceURIs(this.xpathNamespaceURIs);
        }
        return xpath;
    }

    public XPath createXPath(String xpathExpression, VariableContext variableContext) {
        XPath xpath = createXPath(xpathExpression);
        xpath.setVariableContext(variableContext);
        return xpath;
    }

    public NodeFilter createXPathFilter(String xpathFilterExpression, VariableContext variableContext) {
        XPath answer = createXPath(xpathFilterExpression);
        answer.setVariableContext(variableContext);
        return answer;
    }

    public NodeFilter createXPathFilter(String xpathFilterExpression) {
        return createXPath(xpathFilterExpression);
    }

    public Pattern createPattern(String xpathPattern) {
        return new XPathPattern(xpathPattern);
    }

    public List getQNames() {
        return this.cache.getQNames();
    }

    public Map getXPathNamespaceURIs() {
        return this.xpathNamespaceURIs;
    }

    public void setXPathNamespaceURIs(Map namespaceURIs) {
        this.xpathNamespaceURIs = namespaceURIs;
    }

    protected static DocumentFactory createSingleton(String className) {
        Class cls;
        try {
            if (class$org$dom4j$DocumentFactory == null) {
                cls = class$("org.dom4j.DocumentFactory");
                class$org$dom4j$DocumentFactory = cls;
            } else {
                cls = class$org$dom4j$DocumentFactory;
            }
            Class theClass = Class.forName(className, true, cls.getClassLoader());
            return (DocumentFactory) theClass.newInstance();
        } catch (Throwable th) {
            System.out.println(new StringBuffer().append("WARNING: Cannot load DocumentFactory: ").append(className).toString());
            return new DocumentFactory();
        }
    }

    static Class class$(String x0) {
        try {
            return Class.forName(x0);
        } catch (ClassNotFoundException x1) {
            throw new NoClassDefFoundError(x1.getMessage());
        }
    }

    protected QName intern(QName qname) {
        return this.cache.intern(qname);
    }

    protected QNameCache createQNameCache() {
        return new QNameCache(this);
    }

    private void readObject(ObjectInputStream in) throws IOException, ClassNotFoundException {
        in.defaultReadObject();
        init();
    }

    protected void init() {
        this.cache = createQNameCache();
    }
}
