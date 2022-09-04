package org.dom4j.p019io;

import java.util.List;
import org.dom4j.AbstractC2649Entity;
import org.dom4j.Attribute;
import org.dom4j.CDATA;
import org.dom4j.Comment;
import org.dom4j.DocumentException;
import org.dom4j.Element;
import org.dom4j.Namespace;
import org.dom4j.ProcessingInstruction;
import org.dom4j.Text;
import org.dom4j.tree.NamespaceStack;
import org.w3c.dom.CDATASection;
import org.w3c.dom.DOMImplementation;
import org.w3c.dom.Document;
import org.w3c.dom.EntityReference;
import org.w3c.dom.Node;
/* renamed from: org.dom4j.io.DOMWriter */
/* loaded from: classes2.dex */
public class DOMWriter {
    static Class class$org$dom4j$io$DOMWriter;
    private Class domDocumentClass;
    private NamespaceStack namespaceStack = new NamespaceStack();
    private static boolean loggedWarning = false;
    private static final String[] DEFAULT_DOM_DOCUMENT_CLASSES = {"org.apache.xerces.dom.DocumentImpl", "gnu.xml.dom.DomDocument", "org.apache.crimson.tree.XmlDocument", "com.sun.xml.tree.XmlDocument", "oracle.xml.parser.v2.XMLDocument", "oracle.xml.parser.XMLDocument", "org.dom4j.dom.DOMDocument"};

    public DOMWriter() {
    }

    public DOMWriter(Class domDocumentClass) {
        this.domDocumentClass = domDocumentClass;
    }

    public Class getDomDocumentClass() throws DocumentException {
        Class cls;
        Class result = this.domDocumentClass;
        if (result == null) {
            int size = DEFAULT_DOM_DOCUMENT_CLASSES.length;
            for (int i = 0; i < size; i++) {
                try {
                    String name = DEFAULT_DOM_DOCUMENT_CLASSES[i];
                    if (class$org$dom4j$io$DOMWriter == null) {
                        cls = class$("org.dom4j.io.DOMWriter");
                        class$org$dom4j$io$DOMWriter = cls;
                    } else {
                        cls = class$org$dom4j$io$DOMWriter;
                    }
                    result = Class.forName(name, true, cls.getClassLoader());
                } catch (Exception e) {
                }
                if (result != null) {
                    break;
                }
            }
        }
        return result;
    }

    static Class class$(String x0) {
        try {
            return Class.forName(x0);
        } catch (ClassNotFoundException x1) {
            throw new NoClassDefFoundError(x1.getMessage());
        }
    }

    public void setDomDocumentClass(Class domDocumentClass) {
        this.domDocumentClass = domDocumentClass;
    }

    public void setDomDocumentClassName(String name) throws DocumentException {
        Class cls;
        try {
            if (class$org$dom4j$io$DOMWriter == null) {
                cls = class$("org.dom4j.io.DOMWriter");
                class$org$dom4j$io$DOMWriter = cls;
            } else {
                cls = class$org$dom4j$io$DOMWriter;
            }
            this.domDocumentClass = Class.forName(name, true, cls.getClassLoader());
        } catch (Exception e) {
            throw new DocumentException(new StringBuffer().append("Could not load the DOM Document class: ").append(name).toString(), e);
        }
    }

    public Document write(org.dom4j.Document document) throws DocumentException {
        if (document instanceof Document) {
            return (Document) document;
        }
        resetNamespaceStack();
        Document domDocument = createDomDocument(document);
        appendDOMTree(domDocument, domDocument, document.content());
        this.namespaceStack.clear();
        return domDocument;
    }

    public Document write(org.dom4j.Document document, DOMImplementation domImpl) throws DocumentException {
        if (document instanceof Document) {
            return (Document) document;
        }
        resetNamespaceStack();
        Document domDocument = createDomDocument(document, domImpl);
        appendDOMTree(domDocument, domDocument, document.content());
        this.namespaceStack.clear();
        return domDocument;
    }

    protected void appendDOMTree(Document domDocument, Node domCurrent, List content) {
        int size = content.size();
        for (int i = 0; i < size; i++) {
            Object object = content.get(i);
            if (object instanceof Element) {
                appendDOMTree(domDocument, domCurrent, (Element) object);
            } else if (object instanceof String) {
                appendDOMTree(domDocument, domCurrent, (String) object);
            } else if (object instanceof Text) {
                Text text = (Text) object;
                appendDOMTree(domDocument, domCurrent, text.getText());
            } else if (object instanceof CDATA) {
                appendDOMTree(domDocument, domCurrent, (CDATA) object);
            } else if (object instanceof Comment) {
                appendDOMTree(domDocument, domCurrent, (Comment) object);
            } else if (object instanceof AbstractC2649Entity) {
                appendDOMTree(domDocument, domCurrent, (AbstractC2649Entity) object);
            } else if (object instanceof ProcessingInstruction) {
                appendDOMTree(domDocument, domCurrent, (ProcessingInstruction) object);
            }
        }
    }

    protected void appendDOMTree(Document domDocument, Node domCurrent, Element element) {
        String elUri = element.getNamespaceURI();
        String elName = element.getQualifiedName();
        org.w3c.dom.Element domElement = domDocument.createElementNS(elUri, elName);
        int stackSize = this.namespaceStack.size();
        Namespace elementNamespace = element.getNamespace();
        if (isNamespaceDeclaration(elementNamespace)) {
            this.namespaceStack.push(elementNamespace);
            writeNamespace(domElement, elementNamespace);
        }
        List declaredNamespaces = element.declaredNamespaces();
        int size = declaredNamespaces.size();
        for (int i = 0; i < size; i++) {
            Namespace namespace = (Namespace) declaredNamespaces.get(i);
            if (isNamespaceDeclaration(namespace)) {
                this.namespaceStack.push(namespace);
                writeNamespace(domElement, namespace);
            }
        }
        int size2 = element.attributeCount();
        for (int i2 = 0; i2 < size2; i2++) {
            Attribute attribute = element.attribute(i2);
            String attUri = attribute.getNamespaceURI();
            String attName = attribute.getQualifiedName();
            String value = attribute.getValue();
            domElement.setAttributeNS(attUri, attName, value);
        }
        appendDOMTree(domDocument, domElement, element.content());
        domCurrent.appendChild(domElement);
        while (this.namespaceStack.size() > stackSize) {
            this.namespaceStack.pop();
        }
    }

    protected void appendDOMTree(Document domDocument, Node domCurrent, CDATA cdata) {
        CDATASection domCDATA = domDocument.createCDATASection(cdata.getText());
        domCurrent.appendChild(domCDATA);
    }

    protected void appendDOMTree(Document domDocument, Node domCurrent, Comment comment) {
        org.w3c.dom.Comment domComment = domDocument.createComment(comment.getText());
        domCurrent.appendChild(domComment);
    }

    protected void appendDOMTree(Document domDocument, Node domCurrent, String text) {
        org.w3c.dom.Text domText = domDocument.createTextNode(text);
        domCurrent.appendChild(domText);
    }

    protected void appendDOMTree(Document domDocument, Node domCurrent, AbstractC2649Entity entity) {
        EntityReference domEntity = domDocument.createEntityReference(entity.getName());
        domCurrent.appendChild(domEntity);
    }

    protected void appendDOMTree(Document domDoc, Node domCurrent, ProcessingInstruction pi) {
        org.w3c.dom.ProcessingInstruction domPI = domDoc.createProcessingInstruction(pi.getTarget(), pi.getText());
        domCurrent.appendChild(domPI);
    }

    protected void writeNamespace(org.w3c.dom.Element domElement, Namespace namespace) {
        String attributeName = attributeNameForNamespace(namespace);
        domElement.setAttribute(attributeName, namespace.getURI());
    }

    protected String attributeNameForNamespace(Namespace namespace) {
        String prefix = namespace.getPrefix();
        if (prefix.length() > 0) {
            String xmlns = new StringBuffer().append("xmlns").append(":").append(prefix).toString();
            return xmlns;
        }
        return "xmlns";
    }

    protected Document createDomDocument(org.dom4j.Document document) throws DocumentException {
        if (this.domDocumentClass != null) {
            try {
                return (Document) this.domDocumentClass.newInstance();
            } catch (Exception e) {
                throw new DocumentException(new StringBuffer().append("Could not instantiate an instance of DOM Document with class: ").append(this.domDocumentClass.getName()).toString(), e);
            }
        }
        Document result = createDomDocumentViaJAXP();
        if (result == null) {
            Class theClass = getDomDocumentClass();
            try {
                return (Document) theClass.newInstance();
            } catch (Exception e2) {
                throw new DocumentException(new StringBuffer().append("Could not instantiate an instance of DOM Document with class: ").append(theClass.getName()).toString(), e2);
            }
        }
        return result;
    }

    protected Document createDomDocumentViaJAXP() throws DocumentException {
        try {
            return JAXPHelper.createDocument(false, true);
        } catch (Throwable e) {
            if (!loggedWarning) {
                loggedWarning = true;
                if (SAXHelper.isVerboseErrorReporting()) {
                    System.out.println("Warning: Caught exception attempting to use JAXP to create a W3C DOM document");
                    System.out.println(new StringBuffer().append("Warning: Exception was: ").append(e).toString());
                    e.printStackTrace();
                } else {
                    System.out.println("Warning: Error occurred using JAXP to create a DOM document.");
                }
            }
            return null;
        }
    }

    protected Document createDomDocument(org.dom4j.Document document, DOMImplementation domImpl) throws DocumentException {
        return domImpl.createDocument(null, null, null);
    }

    protected boolean isNamespaceDeclaration(Namespace ns) {
        String uri;
        return (ns == null || ns == Namespace.NO_NAMESPACE || ns == Namespace.XML_NAMESPACE || (uri = ns.getURI()) == null || uri.length() <= 0 || this.namespaceStack.contains(ns)) ? false : true;
    }

    protected void resetNamespaceStack() {
        this.namespaceStack.clear();
        this.namespaceStack.push(Namespace.XML_NAMESPACE);
    }
}
