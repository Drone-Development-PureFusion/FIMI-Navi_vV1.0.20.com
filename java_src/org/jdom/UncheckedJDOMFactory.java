package org.jdom;

import java.util.ArrayList;
import java.util.Map;
/* loaded from: classes2.dex */
public class UncheckedJDOMFactory implements JDOMFactory {
    @Override // org.jdom.JDOMFactory
    public Element element(String name, Namespace namespace) {
        Element e = new Element();
        e.name = name;
        if (namespace == null) {
            namespace = Namespace.NO_NAMESPACE;
        }
        e.namespace = namespace;
        return e;
    }

    @Override // org.jdom.JDOMFactory
    public Element element(String name) {
        Element e = new Element();
        e.name = name;
        e.namespace = Namespace.NO_NAMESPACE;
        return e;
    }

    @Override // org.jdom.JDOMFactory
    public Element element(String name, String uri) {
        return element(name, Namespace.getNamespace("", uri));
    }

    @Override // org.jdom.JDOMFactory
    public Element element(String name, String prefix, String uri) {
        return element(name, Namespace.getNamespace(prefix, uri));
    }

    @Override // org.jdom.JDOMFactory
    public Attribute attribute(String name, String value, Namespace namespace) {
        Attribute a = new Attribute();
        a.name = name;
        a.value = value;
        if (namespace == null) {
            namespace = Namespace.NO_NAMESPACE;
        }
        a.namespace = namespace;
        return a;
    }

    @Override // org.jdom.JDOMFactory
    public Attribute attribute(String name, String value, int type, Namespace namespace) {
        Attribute a = new Attribute();
        a.name = name;
        a.type = type;
        a.value = value;
        if (namespace == null) {
            namespace = Namespace.NO_NAMESPACE;
        }
        a.namespace = namespace;
        return a;
    }

    @Override // org.jdom.JDOMFactory
    public Attribute attribute(String name, String value) {
        Attribute a = new Attribute();
        a.name = name;
        a.value = value;
        a.namespace = Namespace.NO_NAMESPACE;
        return a;
    }

    @Override // org.jdom.JDOMFactory
    public Attribute attribute(String name, String value, int type) {
        Attribute a = new Attribute();
        a.name = name;
        a.type = type;
        a.value = value;
        a.namespace = Namespace.NO_NAMESPACE;
        return a;
    }

    @Override // org.jdom.JDOMFactory
    public Text text(String str) {
        Text t = new Text();
        t.value = str;
        return t;
    }

    @Override // org.jdom.JDOMFactory
    public CDATA cdata(String str) {
        CDATA c = new CDATA();
        c.value = str;
        return c;
    }

    @Override // org.jdom.JDOMFactory
    public Comment comment(String str) {
        Comment c = new Comment();
        c.text = str;
        return c;
    }

    @Override // org.jdom.JDOMFactory
    public ProcessingInstruction processingInstruction(String target, Map data) {
        ProcessingInstruction p = new ProcessingInstruction();
        p.target = target;
        p.setData(data);
        return p;
    }

    @Override // org.jdom.JDOMFactory
    public ProcessingInstruction processingInstruction(String target, String data) {
        ProcessingInstruction p = new ProcessingInstruction();
        p.target = target;
        p.setData(data);
        return p;
    }

    @Override // org.jdom.JDOMFactory
    public EntityRef entityRef(String name) {
        EntityRef e = new EntityRef();
        e.name = name;
        return e;
    }

    @Override // org.jdom.JDOMFactory
    public EntityRef entityRef(String name, String systemID) {
        EntityRef e = new EntityRef();
        e.name = name;
        e.systemID = systemID;
        return e;
    }

    @Override // org.jdom.JDOMFactory
    public EntityRef entityRef(String name, String publicID, String systemID) {
        EntityRef e = new EntityRef();
        e.name = name;
        e.publicID = publicID;
        e.systemID = systemID;
        return e;
    }

    @Override // org.jdom.JDOMFactory
    public DocType docType(String elementName, String publicID, String systemID) {
        DocType d = new DocType();
        d.elementName = elementName;
        d.publicID = publicID;
        d.systemID = systemID;
        return d;
    }

    @Override // org.jdom.JDOMFactory
    public DocType docType(String elementName, String systemID) {
        return docType(elementName, null, systemID);
    }

    @Override // org.jdom.JDOMFactory
    public DocType docType(String elementName) {
        return docType(elementName, null, null);
    }

    @Override // org.jdom.JDOMFactory
    public Document document(Element rootElement, DocType docType, String baseURI) {
        Document d = new Document();
        if (docType != null) {
            addContent(d, docType);
        }
        if (rootElement != null) {
            addContent(d, rootElement);
        }
        if (baseURI != null) {
            d.baseURI = baseURI;
        }
        return d;
    }

    @Override // org.jdom.JDOMFactory
    public Document document(Element rootElement, DocType docType) {
        return document(rootElement, docType, null);
    }

    @Override // org.jdom.JDOMFactory
    public Document document(Element rootElement) {
        return document(rootElement, null, null);
    }

    @Override // org.jdom.JDOMFactory
    public void addContent(Parent parent, Content child) {
        if (parent instanceof Element) {
            Element elt = (Element) parent;
            elt.content.uncheckedAddContent(child);
            return;
        }
        Document doc = (Document) parent;
        doc.content.uncheckedAddContent(child);
    }

    @Override // org.jdom.JDOMFactory
    public void setAttribute(Element parent, Attribute a) {
        parent.attributes.uncheckedAddAttribute(a);
    }

    @Override // org.jdom.JDOMFactory
    public void addNamespaceDeclaration(Element parent, Namespace additional) {
        if (parent.additionalNamespaces == null) {
            parent.additionalNamespaces = new ArrayList(5);
        }
        parent.additionalNamespaces.add(additional);
    }
}
