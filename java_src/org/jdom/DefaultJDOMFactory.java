package org.jdom;

import java.util.Map;
/* loaded from: classes2.dex */
public class DefaultJDOMFactory implements JDOMFactory {
    private static final String CVS_ID = "@(#) $RCSfile: DefaultJDOMFactory.java,v $ $Revision: 1.6 $ $Date: 2004/09/01 05:25:38 $ $Name: jdom_1_0 $";

    @Override // org.jdom.JDOMFactory
    public Attribute attribute(String name, String value, Namespace namespace) {
        return new Attribute(name, value, namespace);
    }

    @Override // org.jdom.JDOMFactory
    public Attribute attribute(String name, String value, int type, Namespace namespace) {
        return new Attribute(name, value, type, namespace);
    }

    @Override // org.jdom.JDOMFactory
    public Attribute attribute(String name, String value) {
        return new Attribute(name, value);
    }

    @Override // org.jdom.JDOMFactory
    public Attribute attribute(String name, String value, int type) {
        return new Attribute(name, value, type);
    }

    @Override // org.jdom.JDOMFactory
    public CDATA cdata(String text) {
        return new CDATA(text);
    }

    @Override // org.jdom.JDOMFactory
    public Text text(String text) {
        return new Text(text);
    }

    @Override // org.jdom.JDOMFactory
    public Comment comment(String text) {
        return new Comment(text);
    }

    @Override // org.jdom.JDOMFactory
    public DocType docType(String elementName, String publicID, String systemID) {
        return new DocType(elementName, publicID, systemID);
    }

    @Override // org.jdom.JDOMFactory
    public DocType docType(String elementName, String systemID) {
        return new DocType(elementName, systemID);
    }

    @Override // org.jdom.JDOMFactory
    public DocType docType(String elementName) {
        return new DocType(elementName);
    }

    @Override // org.jdom.JDOMFactory
    public Document document(Element rootElement, DocType docType) {
        return new Document(rootElement, docType);
    }

    @Override // org.jdom.JDOMFactory
    public Document document(Element rootElement, DocType docType, String baseURI) {
        return new Document(rootElement, docType, baseURI);
    }

    @Override // org.jdom.JDOMFactory
    public Document document(Element rootElement) {
        return new Document(rootElement);
    }

    @Override // org.jdom.JDOMFactory
    public Element element(String name, Namespace namespace) {
        return new Element(name, namespace);
    }

    @Override // org.jdom.JDOMFactory
    public Element element(String name) {
        return new Element(name);
    }

    @Override // org.jdom.JDOMFactory
    public Element element(String name, String uri) {
        return new Element(name, uri);
    }

    @Override // org.jdom.JDOMFactory
    public Element element(String name, String prefix, String uri) {
        return new Element(name, prefix, uri);
    }

    @Override // org.jdom.JDOMFactory
    public ProcessingInstruction processingInstruction(String target, Map data) {
        return new ProcessingInstruction(target, data);
    }

    @Override // org.jdom.JDOMFactory
    public ProcessingInstruction processingInstruction(String target, String data) {
        return new ProcessingInstruction(target, data);
    }

    @Override // org.jdom.JDOMFactory
    public EntityRef entityRef(String name) {
        return new EntityRef(name);
    }

    @Override // org.jdom.JDOMFactory
    public EntityRef entityRef(String name, String publicID, String systemID) {
        return new EntityRef(name, publicID, systemID);
    }

    @Override // org.jdom.JDOMFactory
    public EntityRef entityRef(String name, String systemID) {
        return new EntityRef(name, systemID);
    }

    @Override // org.jdom.JDOMFactory
    public void addContent(Parent parent, Content child) {
        if (parent instanceof Document) {
            ((Document) parent).addContent(child);
        } else {
            ((Element) parent).addContent(child);
        }
    }

    @Override // org.jdom.JDOMFactory
    public void setAttribute(Element parent, Attribute a) {
        parent.setAttribute(a);
    }

    @Override // org.jdom.JDOMFactory
    public void addNamespaceDeclaration(Element parent, Namespace additional) {
        parent.addNamespaceDeclaration(additional);
    }
}
