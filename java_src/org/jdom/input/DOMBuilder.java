package org.jdom.input;

import org.jdom.Attribute;
import org.jdom.DefaultJDOMFactory;
import org.jdom.DocType;
import org.jdom.Document;
import org.jdom.Element;
import org.jdom.EntityRef;
import org.jdom.JDOMFactory;
import org.jdom.Namespace;
import org.w3c.dom.Attr;
import org.w3c.dom.DocumentType;
import org.w3c.dom.NamedNodeMap;
import org.w3c.dom.Node;
import org.w3c.dom.NodeList;
/* loaded from: classes2.dex */
public class DOMBuilder {
    private static final String CVS_ID = "@(#) $RCSfile: DOMBuilder.java,v $ $Revision: 1.59 $ $Date: 2004/09/03 06:03:41 $ $Name: jdom_1_0 $";
    private String adapterClass;
    private JDOMFactory factory = new DefaultJDOMFactory();

    public DOMBuilder() {
    }

    public DOMBuilder(String adapterClass) {
        this.adapterClass = adapterClass;
    }

    public void setFactory(JDOMFactory factory) {
        this.factory = factory;
    }

    public JDOMFactory getFactory() {
        return this.factory;
    }

    public Document build(org.w3c.dom.Document domDocument) {
        Document doc = this.factory.document(null);
        buildTree(domDocument, doc, null, true);
        return doc;
    }

    public Element build(org.w3c.dom.Element domElement) {
        Document doc = this.factory.document(null);
        buildTree(domElement, doc, null, true);
        return doc.getRootElement();
    }

    private void buildTree(Node node, Document doc, Element current, boolean atRoot) {
        Namespace ns;
        Namespace attns;
        switch (node.getNodeType()) {
            case 1:
                String nodeName = node.getNodeName();
                String prefix = "";
                String localName = nodeName;
                int colon = nodeName.indexOf(58);
                if (colon >= 0) {
                    prefix = nodeName.substring(0, colon);
                    localName = nodeName.substring(colon + 1);
                }
                String uri = node.getNamespaceURI();
                if (uri == null) {
                    ns = current == null ? Namespace.NO_NAMESPACE : current.getNamespace(prefix);
                } else {
                    ns = Namespace.getNamespace(prefix, uri);
                }
                Element element = this.factory.element(localName, ns);
                if (atRoot) {
                    doc.setRootElement(element);
                } else {
                    this.factory.addContent(current, element);
                }
                NamedNodeMap attributeList = node.getAttributes();
                int attsize = attributeList.getLength();
                for (int i = 0; i < attsize; i++) {
                    Attr att = (Attr) attributeList.item(i);
                    String attname = att.getName();
                    if (attname.startsWith("xmlns")) {
                        String attPrefix = "";
                        int colon2 = attname.indexOf(58);
                        if (colon2 >= 0) {
                            attPrefix = attname.substring(colon2 + 1);
                        }
                        String attvalue = att.getValue();
                        Namespace declaredNS = Namespace.getNamespace(attPrefix, attvalue);
                        if (prefix.equals(attPrefix)) {
                            element.setNamespace(declaredNS);
                        } else {
                            this.factory.addNamespaceDeclaration(element, declaredNS);
                        }
                    }
                }
                for (int i2 = 0; i2 < attsize; i2++) {
                    Attr att2 = (Attr) attributeList.item(i2);
                    String attname2 = att2.getName();
                    if (!attname2.startsWith("xmlns")) {
                        String attPrefix2 = "";
                        String attLocalName = attname2;
                        int colon3 = attname2.indexOf(58);
                        if (colon3 >= 0) {
                            attPrefix2 = attname2.substring(0, colon3);
                            attLocalName = attname2.substring(colon3 + 1);
                        }
                        String attvalue2 = att2.getValue();
                        if ("".equals(attPrefix2)) {
                            attns = Namespace.NO_NAMESPACE;
                        } else {
                            attns = element.getNamespace(attPrefix2);
                        }
                        Attribute attribute = this.factory.attribute(attLocalName, attvalue2, attns);
                        this.factory.setAttribute(element, attribute);
                    }
                }
                NodeList children = node.getChildNodes();
                if (children == null) {
                    return;
                }
                int size = children.getLength();
                for (int i3 = 0; i3 < size; i3++) {
                    Node item = children.item(i3);
                    if (item != null) {
                        buildTree(item, doc, element, false);
                    }
                }
                return;
            case 2:
            case 6:
            default:
                return;
            case 3:
                String data = node.getNodeValue();
                this.factory.addContent(current, this.factory.text(data));
                return;
            case 4:
                String cdata = node.getNodeValue();
                this.factory.addContent(current, this.factory.cdata(cdata));
                return;
            case 5:
                EntityRef entity = this.factory.entityRef(node.getNodeName());
                this.factory.addContent(current, entity);
                return;
            case 7:
                if (atRoot) {
                    this.factory.addContent(doc, this.factory.processingInstruction(node.getNodeName(), node.getNodeValue()));
                    return;
                } else {
                    this.factory.addContent(current, this.factory.processingInstruction(node.getNodeName(), node.getNodeValue()));
                    return;
                }
            case 8:
                if (atRoot) {
                    this.factory.addContent(doc, this.factory.comment(node.getNodeValue()));
                    return;
                } else {
                    this.factory.addContent(current, this.factory.comment(node.getNodeValue()));
                    return;
                }
            case 9:
                NodeList nodes = node.getChildNodes();
                int size2 = nodes.getLength();
                for (int i4 = 0; i4 < size2; i4++) {
                    buildTree(nodes.item(i4), doc, current, true);
                }
                return;
            case 10:
                DocumentType domDocType = (DocumentType) node;
                String publicID = domDocType.getPublicId();
                String systemID = domDocType.getSystemId();
                String internalDTD = domDocType.getInternalSubset();
                DocType docType = this.factory.docType(domDocType.getName());
                docType.setPublicID(publicID);
                docType.setSystemID(systemID);
                docType.setInternalSubset(internalDTD);
                this.factory.addContent(doc, docType);
                return;
        }
    }
}
