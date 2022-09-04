package org.jdom.output;

import org.jdom.Attribute;
import org.jdom.CDATA;
import org.jdom.Comment;
import org.jdom.DocType;
import org.jdom.Element;
import org.jdom.EntityRef;
import org.jdom.JDOMException;
import org.jdom.Namespace;
import org.jdom.ProcessingInstruction;
import org.jdom.adapters.DOMAdapter;
import org.w3c.dom.Attr;
import org.w3c.dom.CDATASection;
import org.w3c.dom.Document;
import org.w3c.dom.EntityReference;
import org.w3c.dom.Text;
/* loaded from: classes2.dex */
public class DOMOutputter {
    private static final String CVS_ID = "@(#) $RCSfile: DOMOutputter.java,v $ $Revision: 1.41 $ $Date: 2004/09/03 06:03:42 $ $Name: jdom_1_0 $";
    private static final String DEFAULT_ADAPTER_CLASS = "org.jdom.adapters.XercesDOMAdapter";
    private String adapterClass;

    public DOMOutputter() {
    }

    public DOMOutputter(String adapterClass) {
        this.adapterClass = adapterClass;
    }

    public Document output(org.jdom.Document document) throws JDOMException {
        NamespaceStack namespaces = new NamespaceStack();
        try {
            DocType dt = document.getDocType();
            Document domDoc = createDOMDocument(dt);
            for (Object node : document.getContent()) {
                if (node instanceof Element) {
                    Element element = (Element) node;
                    org.w3c.dom.Element domElement = output(element, domDoc, namespaces);
                    org.w3c.dom.Element root = domDoc.getDocumentElement();
                    if (root == null) {
                        domDoc.appendChild(domElement);
                    } else {
                        domDoc.replaceChild(domElement, root);
                    }
                } else if (node instanceof Comment) {
                    Comment comment = (Comment) node;
                    org.w3c.dom.Comment domComment = domDoc.createComment(comment.getText());
                    domDoc.appendChild(domComment);
                } else if (node instanceof ProcessingInstruction) {
                    ProcessingInstruction pi = (ProcessingInstruction) node;
                    org.w3c.dom.ProcessingInstruction domPI = domDoc.createProcessingInstruction(pi.getTarget(), pi.getData());
                    domDoc.appendChild(domPI);
                } else if (!(node instanceof DocType)) {
                    throw new JDOMException(new StringBuffer("Document contained top-level content with type:").append(node.getClass().getName()).toString());
                }
            }
            return domDoc;
        } catch (Throwable e) {
            throw new JDOMException("Exception outputting Document", e);
        }
    }

    private Document createDOMDocument(DocType dt) throws JDOMException {
        if (this.adapterClass != null) {
            try {
                DOMAdapter adapter = (DOMAdapter) Class.forName(this.adapterClass).newInstance();
                return adapter.createDocument(dt);
            } catch (ClassNotFoundException e) {
            } catch (IllegalAccessException e2) {
            } catch (InstantiationException e3) {
            }
        } else {
            try {
                DOMAdapter adapter2 = (DOMAdapter) Class.forName("org.jdom.adapters.JAXPDOMAdapter").newInstance();
                return adapter2.createDocument(dt);
            } catch (ClassNotFoundException e4) {
            } catch (IllegalAccessException e5) {
            } catch (InstantiationException e6) {
            }
        }
        try {
            DOMAdapter adapter3 = (DOMAdapter) Class.forName(DEFAULT_ADAPTER_CLASS).newInstance();
            return adapter3.createDocument(dt);
        } catch (ClassNotFoundException | IllegalAccessException | InstantiationException e7) {
            throw new JDOMException("No JAXP or default parser available");
        }
    }

    private org.w3c.dom.Element output(Element element, Document domDoc, NamespaceStack namespaces) throws JDOMException {
        org.w3c.dom.Element domElement;
        try {
            int previouslyDeclaredNamespaces = namespaces.size();
            if (element.getNamespace() == Namespace.NO_NAMESPACE) {
                domElement = domDoc.createElement(element.getQualifiedName());
            } else {
                domElement = domDoc.createElementNS(element.getNamespaceURI(), element.getQualifiedName());
            }
            Namespace ns = element.getNamespace();
            if (ns != Namespace.XML_NAMESPACE && (ns != Namespace.NO_NAMESPACE || namespaces.getURI("") != null)) {
                String prefix = ns.getPrefix();
                String uri = namespaces.getURI(prefix);
                if (!ns.getURI().equals(uri)) {
                    namespaces.push(ns);
                    String attrName = getXmlnsTagFor(ns);
                    domElement.setAttribute(attrName, ns.getURI());
                }
            }
            for (Namespace additional : element.getAdditionalNamespaces()) {
                String prefix2 = additional.getPrefix();
                String uri2 = namespaces.getURI(prefix2);
                if (!additional.getURI().equals(uri2)) {
                    String attrName2 = getXmlnsTagFor(additional);
                    domElement.setAttribute(attrName2, additional.getURI());
                    namespaces.push(additional);
                }
            }
            for (Attribute attribute : element.getAttributes()) {
                domElement.setAttributeNode(output(attribute, domDoc));
                Namespace ns1 = attribute.getNamespace();
                if (ns1 != Namespace.NO_NAMESPACE && ns1 != Namespace.XML_NAMESPACE) {
                    String prefix3 = ns1.getPrefix();
                    String uri3 = namespaces.getURI(prefix3);
                    if (!ns1.getURI().equals(uri3)) {
                        String attrName3 = getXmlnsTagFor(ns1);
                        domElement.setAttribute(attrName3, ns1.getURI());
                        namespaces.push(ns1);
                    }
                }
                if (attribute.getNamespace() == Namespace.NO_NAMESPACE) {
                    domElement.setAttribute(attribute.getQualifiedName(), attribute.getValue());
                } else {
                    domElement.setAttributeNS(attribute.getNamespaceURI(), attribute.getQualifiedName(), attribute.getValue());
                }
            }
            for (Object node : element.getContent()) {
                if (node instanceof Element) {
                    Element e = (Element) node;
                    org.w3c.dom.Element domElt = output(e, domDoc, namespaces);
                    domElement.appendChild(domElt);
                } else if (node instanceof String) {
                    String str = (String) node;
                    Text domText = domDoc.createTextNode(str);
                    domElement.appendChild(domText);
                } else if (node instanceof CDATA) {
                    CDATA cdata = (CDATA) node;
                    CDATASection domCdata = domDoc.createCDATASection(cdata.getText());
                    domElement.appendChild(domCdata);
                } else if (node instanceof org.jdom.Text) {
                    org.jdom.Text text = (org.jdom.Text) node;
                    Text domText2 = domDoc.createTextNode(text.getText());
                    domElement.appendChild(domText2);
                } else if (node instanceof Comment) {
                    Comment comment = (Comment) node;
                    org.w3c.dom.Comment domComment = domDoc.createComment(comment.getText());
                    domElement.appendChild(domComment);
                } else if (node instanceof ProcessingInstruction) {
                    ProcessingInstruction pi = (ProcessingInstruction) node;
                    org.w3c.dom.ProcessingInstruction domPI = domDoc.createProcessingInstruction(pi.getTarget(), pi.getData());
                    domElement.appendChild(domPI);
                } else if (node instanceof EntityRef) {
                    EntityRef entity = (EntityRef) node;
                    EntityReference domEntity = domDoc.createEntityReference(entity.getName());
                    domElement.appendChild(domEntity);
                } else {
                    throw new JDOMException(new StringBuffer("Element contained content with type:").append(node.getClass().getName()).toString());
                }
            }
            while (namespaces.size() > previouslyDeclaredNamespaces) {
                namespaces.pop();
            }
            return domElement;
        } catch (Exception e2) {
            throw new JDOMException(new StringBuffer("Exception outputting Element ").append(element.getQualifiedName()).toString(), e2);
        }
    }

    private Attr output(Attribute attribute, Document domDoc) throws JDOMException {
        Attr domAttr;
        try {
            if (attribute.getNamespace() == Namespace.NO_NAMESPACE) {
                domAttr = domDoc.createAttribute(attribute.getQualifiedName());
            } else {
                domAttr = domDoc.createAttributeNS(attribute.getNamespaceURI(), attribute.getQualifiedName());
            }
            domAttr.setValue(attribute.getValue());
            return domAttr;
        } catch (Exception e) {
            throw new JDOMException(new StringBuffer("Exception outputting Attribute ").append(attribute.getQualifiedName()).toString(), e);
        }
    }

    private static String getXmlnsTagFor(Namespace ns) {
        if (ns.getPrefix().equals("")) {
            return "xmlns";
        }
        String attrName = new StringBuffer(String.valueOf("xmlns")).append(":").toString();
        return new StringBuffer(String.valueOf(attrName)).append(ns.getPrefix()).toString();
    }
}
