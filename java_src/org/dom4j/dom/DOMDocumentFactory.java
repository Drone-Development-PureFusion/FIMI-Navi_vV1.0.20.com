package org.dom4j.dom;

import java.util.Map;
import org.dom4j.AbstractC2649Entity;
import org.dom4j.Attribute;
import org.dom4j.CDATA;
import org.dom4j.Comment;
import org.dom4j.Document;
import org.dom4j.DocumentFactory;
import org.dom4j.DocumentType;
import org.dom4j.Element;
import org.dom4j.Namespace;
import org.dom4j.ProcessingInstruction;
import org.dom4j.QName;
import org.dom4j.Text;
import org.dom4j.util.SingletonStrategy;
import org.w3c.dom.DOMException;
import org.w3c.dom.DOMImplementation;
/* loaded from: classes2.dex */
public class DOMDocumentFactory extends DocumentFactory implements DOMImplementation {
    static Class class$org$dom4j$dom$DOMDocumentFactory;
    private static SingletonStrategy singleton;

    static {
        Class cls;
        singleton = null;
        Class clazz = null;
        try {
            String singletonClass = System.getProperty("org.dom4j.dom.DOMDocumentFactory.singleton.strategy", "org.dom4j.util.SimpleSingleton");
            clazz = Class.forName(singletonClass);
        } catch (Exception e) {
            try {
                clazz = Class.forName("org.dom4j.util.SimpleSingleton");
            } catch (Exception e2) {
            }
        }
        try {
            singleton = (SingletonStrategy) clazz.newInstance();
            SingletonStrategy singletonStrategy = singleton;
            if (class$org$dom4j$dom$DOMDocumentFactory == null) {
                cls = class$("org.dom4j.dom.DOMDocumentFactory");
                class$org$dom4j$dom$DOMDocumentFactory = cls;
            } else {
                cls = class$org$dom4j$dom$DOMDocumentFactory;
            }
            singletonStrategy.setSingletonClassName(cls.getName());
        } catch (Exception e3) {
        }
    }

    static Class class$(String x0) {
        try {
            return Class.forName(x0);
        } catch (ClassNotFoundException x1) {
            throw new NoClassDefFoundError(x1.getMessage());
        }
    }

    public static DocumentFactory getInstance() {
        DOMDocumentFactory fact = (DOMDocumentFactory) singleton.instance();
        return fact;
    }

    @Override // org.dom4j.DocumentFactory
    public Document createDocument() {
        DOMDocument answer = new DOMDocument();
        answer.setDocumentFactory(this);
        return answer;
    }

    @Override // org.dom4j.DocumentFactory
    public DocumentType createDocType(String name, String publicId, String systemId) {
        return new DOMDocumentType(name, publicId, systemId);
    }

    @Override // org.dom4j.DocumentFactory
    public Element createElement(QName qname) {
        return new DOMElement(qname);
    }

    public Element createElement(QName qname, int attributeCount) {
        return new DOMElement(qname, attributeCount);
    }

    @Override // org.dom4j.DocumentFactory
    public Attribute createAttribute(Element owner, QName qname, String value) {
        return new DOMAttribute(qname, value);
    }

    @Override // org.dom4j.DocumentFactory
    public CDATA createCDATA(String text) {
        return new DOMCDATA(text);
    }

    @Override // org.dom4j.DocumentFactory
    public Comment createComment(String text) {
        return new DOMComment(text);
    }

    @Override // org.dom4j.DocumentFactory
    public Text createText(String text) {
        return new DOMText(text);
    }

    public AbstractC2649Entity createEntity(String name) {
        return new DOMEntityReference(name);
    }

    @Override // org.dom4j.DocumentFactory
    public AbstractC2649Entity createEntity(String name, String text) {
        return new DOMEntityReference(name, text);
    }

    @Override // org.dom4j.DocumentFactory
    public Namespace createNamespace(String prefix, String uri) {
        return new DOMNamespace(prefix, uri);
    }

    @Override // org.dom4j.DocumentFactory
    public ProcessingInstruction createProcessingInstruction(String target, String data) {
        return new DOMProcessingInstruction(target, data);
    }

    @Override // org.dom4j.DocumentFactory
    public ProcessingInstruction createProcessingInstruction(String target, Map data) {
        return new DOMProcessingInstruction(target, data);
    }

    @Override // org.w3c.dom.DOMImplementation
    public boolean hasFeature(String feat, String version) {
        if ("XML".equalsIgnoreCase(feat) || "Core".equalsIgnoreCase(feat)) {
            return version == null || version.length() == 0 || "1.0".equals(version) || "2.0".equals(version);
        }
        return false;
    }

    @Override // org.w3c.dom.DOMImplementation
    public org.w3c.dom.DocumentType createDocumentType(String qualifiedName, String publicId, String systemId) throws DOMException {
        return new DOMDocumentType(qualifiedName, publicId, systemId);
    }

    @Override // org.w3c.dom.DOMImplementation
    public org.w3c.dom.Document createDocument(String namespaceURI, String qualifiedName, org.w3c.dom.DocumentType docType) throws DOMException {
        DOMDocument document;
        if (docType != null) {
            DOMDocumentType documentType = asDocumentType(docType);
            document = new DOMDocument(documentType);
        } else {
            document = new DOMDocument();
        }
        document.addElement(createQName(qualifiedName, namespaceURI));
        return document;
    }

    protected DOMDocumentType asDocumentType(org.w3c.dom.DocumentType docType) {
        return docType instanceof DOMDocumentType ? (DOMDocumentType) docType : new DOMDocumentType(docType.getName(), docType.getPublicId(), docType.getSystemId());
    }
}
