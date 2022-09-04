package org.jdom.input;

import ch.qos.logback.core.CoreConstants;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import org.jdom.Attribute;
import org.jdom.DefaultJDOMFactory;
import org.jdom.Document;
import org.jdom.Element;
import org.jdom.EntityRef;
import org.jdom.JDOMFactory;
import org.jdom.Namespace;
import org.jdom.Parent;
import org.xml.sax.Attributes;
import org.xml.sax.DTDHandler;
import org.xml.sax.Locator;
import org.xml.sax.SAXException;
import org.xml.sax.ext.DeclHandler;
import org.xml.sax.ext.LexicalHandler;
import org.xml.sax.helpers.DefaultHandler;
/* loaded from: classes2.dex */
public class SAXHandler extends DefaultHandler implements LexicalHandler, DeclHandler, DTDHandler {
    private static final String CVS_ID = "@(#) $RCSfile: SAXHandler.java,v $ $Revision: 1.68 $ $Date: 2004/08/31 06:14:05 $ $Name: jdom_1_0 $";
    private static final Map attrNameToTypeMap = new HashMap(13);
    private boolean atRoot;
    private Element currentElement;
    private List declaredNamespaces;
    private Document document;
    private int entityDepth;
    private boolean expand;
    private Map externalEntities;
    private JDOMFactory factory;
    private boolean ignoringWhite;
    private boolean inCDATA;
    private boolean inDTD;
    private boolean inInternalSubset;
    private StringBuffer internalSubset;
    private Locator locator;
    private boolean previousCDATA;
    private boolean suppress;
    private TextBuffer textBuffer;

    static {
        attrNameToTypeMap.put("CDATA", new Integer(1));
        attrNameToTypeMap.put("ID", new Integer(2));
        attrNameToTypeMap.put("IDREF", new Integer(3));
        attrNameToTypeMap.put("IDREFS", new Integer(4));
        attrNameToTypeMap.put("ENTITY", new Integer(5));
        attrNameToTypeMap.put("ENTITIES", new Integer(6));
        attrNameToTypeMap.put("NMTOKEN", new Integer(7));
        attrNameToTypeMap.put("NMTOKENS", new Integer(8));
        attrNameToTypeMap.put("NOTATION", new Integer(9));
        attrNameToTypeMap.put("ENUMERATION", new Integer(10));
    }

    public SAXHandler() {
        this(null);
    }

    public SAXHandler(JDOMFactory factory) {
        this.inDTD = false;
        this.inInternalSubset = false;
        this.previousCDATA = false;
        this.inCDATA = false;
        this.expand = true;
        this.suppress = false;
        this.entityDepth = 0;
        this.internalSubset = new StringBuffer();
        this.textBuffer = new TextBuffer();
        this.ignoringWhite = false;
        if (factory != null) {
            this.factory = factory;
        } else {
            this.factory = new DefaultJDOMFactory();
        }
        this.atRoot = true;
        this.declaredNamespaces = new ArrayList();
        this.externalEntities = new HashMap();
        this.document = this.factory.document(null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void pushElement(Element element) {
        if (this.atRoot) {
            this.document.setRootElement(element);
            this.atRoot = false;
        } else {
            this.factory.addContent(this.currentElement, element);
        }
        this.currentElement = element;
    }

    public Document getDocument() {
        return this.document;
    }

    public JDOMFactory getFactory() {
        return this.factory;
    }

    public void setExpandEntities(boolean expand) {
        this.expand = expand;
    }

    public boolean getExpandEntities() {
        return this.expand;
    }

    public void setIgnoringElementContentWhitespace(boolean ignoringWhite) {
        this.ignoringWhite = ignoringWhite;
    }

    public boolean getIgnoringElementContentWhitespace() {
        return this.ignoringWhite;
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void startDocument() {
        if (this.locator == null) {
            return;
        }
        this.document.setBaseURI(this.locator.getSystemId());
    }

    @Override // org.xml.sax.ext.DeclHandler
    public void externalEntityDecl(String name, String publicID, String systemID) throws SAXException {
        this.externalEntities.put(name, new String[]{publicID, systemID});
        if (!this.inInternalSubset) {
            return;
        }
        this.internalSubset.append("  <!ENTITY ").append(name);
        appendExternalId(publicID, systemID);
        this.internalSubset.append(">\n");
    }

    @Override // org.xml.sax.ext.DeclHandler
    public void attributeDecl(String eName, String aName, String type, String valueDefault, String value) throws SAXException {
        if (!this.inInternalSubset) {
            return;
        }
        this.internalSubset.append("  <!ATTLIST ").append(eName).append(' ').append(aName).append(' ').append(type).append(' ');
        if (valueDefault != null) {
            this.internalSubset.append(valueDefault);
        } else {
            this.internalSubset.append(CoreConstants.DOUBLE_QUOTE_CHAR).append(value).append(CoreConstants.DOUBLE_QUOTE_CHAR);
        }
        if (valueDefault != null && valueDefault.equals("#FIXED")) {
            this.internalSubset.append(" \"").append(value).append(CoreConstants.DOUBLE_QUOTE_CHAR);
        }
        this.internalSubset.append(">\n");
    }

    @Override // org.xml.sax.ext.DeclHandler
    public void elementDecl(String name, String model) throws SAXException {
        if (!this.inInternalSubset) {
            return;
        }
        this.internalSubset.append("  <!ELEMENT ").append(name).append(' ').append(model).append(">\n");
    }

    @Override // org.xml.sax.ext.DeclHandler
    public void internalEntityDecl(String name, String value) throws SAXException {
        if (!this.inInternalSubset) {
            return;
        }
        this.internalSubset.append("  <!ENTITY ");
        if (name.startsWith("%")) {
            this.internalSubset.append("% ").append(name.substring(1));
        } else {
            this.internalSubset.append(name);
        }
        this.internalSubset.append(" \"").append(value).append("\">\n");
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void processingInstruction(String target, String data) throws SAXException {
        if (this.suppress) {
            return;
        }
        flushCharacters();
        if (this.atRoot) {
            this.factory.addContent(this.document, this.factory.processingInstruction(target, data));
        } else {
            this.factory.addContent(getCurrentElement(), this.factory.processingInstruction(target, data));
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void skippedEntity(String name) throws SAXException {
        if (name.startsWith("%")) {
            return;
        }
        flushCharacters();
        this.factory.addContent(getCurrentElement(), this.factory.entityRef(name));
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void startPrefixMapping(String prefix, String uri) throws SAXException {
        if (this.suppress) {
            return;
        }
        Namespace ns = Namespace.getNamespace(prefix, uri);
        this.declaredNamespaces.add(ns);
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void startElement(String namespaceURI, String localName, String qName, Attributes atts) throws SAXException {
        Element element;
        Attribute attribute;
        if (this.suppress) {
            return;
        }
        if (namespaceURI != null && !namespaceURI.equals("")) {
            String prefix = "";
            if (!qName.equals(localName)) {
                int split = qName.indexOf(":");
                prefix = qName.substring(0, split);
            }
            Namespace elementNamespace = Namespace.getNamespace(prefix, namespaceURI);
            element = this.factory.element(localName, elementNamespace);
        } else {
            element = this.factory.element(localName);
        }
        if (this.declaredNamespaces.size() > 0) {
            transferNamespaces(element);
        }
        int len = atts.getLength();
        for (int i = 0; i < len; i++) {
            String attLocalName = atts.getLocalName(i);
            String attQName = atts.getQName(i);
            int attType = getAttributeType(atts.getType(i));
            if (!attQName.startsWith("xmlns:") && !attQName.equals("xmlns")) {
                if (!attQName.equals(attLocalName)) {
                    String attPrefix = attQName.substring(0, attQName.indexOf(":"));
                    Namespace attNs = Namespace.getNamespace(attPrefix, atts.getURI(i));
                    attribute = this.factory.attribute(attLocalName, atts.getValue(i), attType, attNs);
                } else {
                    attribute = this.factory.attribute(attLocalName, atts.getValue(i), attType);
                }
                this.factory.setAttribute(element, attribute);
            }
        }
        flushCharacters();
        if (this.atRoot) {
            this.document.setRootElement(element);
            this.atRoot = false;
        } else {
            this.factory.addContent(getCurrentElement(), element);
        }
        this.currentElement = element;
    }

    private void transferNamespaces(Element element) {
        for (Namespace ns : this.declaredNamespaces) {
            if (ns != element.getNamespace()) {
                element.addNamespaceDeclaration(ns);
            }
        }
        this.declaredNamespaces.clear();
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void characters(char[] ch2, int start, int length) throws SAXException {
        if (this.suppress || length == 0) {
            return;
        }
        if (this.previousCDATA != this.inCDATA) {
            flushCharacters();
        }
        this.textBuffer.append(ch2, start, length);
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void ignorableWhitespace(char[] ch2, int start, int length) throws SAXException {
        if (this.ignoringWhite) {
            return;
        }
        characters(ch2, start, length);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void flushCharacters() throws SAXException {
        flushCharacters(this.textBuffer.toString());
        this.textBuffer.clear();
    }

    protected void flushCharacters(String data) throws SAXException {
        if (data.length() == 0) {
            this.previousCDATA = this.inCDATA;
            return;
        }
        if (this.previousCDATA) {
            this.factory.addContent(getCurrentElement(), this.factory.cdata(data));
        } else {
            this.factory.addContent(getCurrentElement(), this.factory.text(data));
        }
        this.previousCDATA = this.inCDATA;
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void endElement(String namespaceURI, String localName, String qName) throws SAXException {
        if (this.suppress) {
            return;
        }
        flushCharacters();
        if (!this.atRoot) {
            Parent p = this.currentElement.getParent();
            if (p instanceof Document) {
                this.atRoot = true;
                return;
            } else {
                this.currentElement = (Element) p;
                return;
            }
        }
        throw new SAXException(new StringBuffer("Ill-formed XML document (missing opening tag for ").append(localName).append(")").toString());
    }

    @Override // org.xml.sax.ext.LexicalHandler
    public void startDTD(String name, String publicID, String systemID) throws SAXException {
        flushCharacters();
        this.factory.addContent(this.document, this.factory.docType(name, publicID, systemID));
        this.inDTD = true;
        this.inInternalSubset = true;
    }

    @Override // org.xml.sax.ext.LexicalHandler
    public void endDTD() throws SAXException {
        this.document.getDocType().setInternalSubset(this.internalSubset.toString());
        this.inDTD = false;
        this.inInternalSubset = false;
    }

    @Override // org.xml.sax.ext.LexicalHandler
    public void startEntity(String name) throws SAXException {
        this.entityDepth++;
        if (!this.expand && this.entityDepth <= 1) {
            if (name.equals("[dtd]")) {
                this.inInternalSubset = false;
            } else if (this.inDTD || name.equals("amp") || name.equals("lt") || name.equals("gt") || name.equals("apos") || name.equals("quot") || this.expand) {
            } else {
                String pub = null;
                String sys = null;
                String[] ids = (String[]) this.externalEntities.get(name);
                if (ids != null) {
                    pub = ids[0];
                    sys = ids[1];
                }
                if (!this.atRoot) {
                    flushCharacters();
                    EntityRef entity = this.factory.entityRef(name, pub, sys);
                    this.factory.addContent(getCurrentElement(), entity);
                }
                this.suppress = true;
            }
        }
    }

    @Override // org.xml.sax.ext.LexicalHandler
    public void endEntity(String name) throws SAXException {
        this.entityDepth--;
        if (this.entityDepth == 0) {
            this.suppress = false;
        }
        if (!name.equals("[dtd]")) {
            return;
        }
        this.inInternalSubset = true;
    }

    @Override // org.xml.sax.ext.LexicalHandler
    public void startCDATA() throws SAXException {
        if (this.suppress) {
            return;
        }
        this.inCDATA = true;
    }

    @Override // org.xml.sax.ext.LexicalHandler
    public void endCDATA() throws SAXException {
        if (this.suppress) {
            return;
        }
        this.previousCDATA = true;
        this.inCDATA = false;
    }

    @Override // org.xml.sax.ext.LexicalHandler
    public void comment(char[] ch2, int start, int length) throws SAXException {
        if (!this.suppress) {
            flushCharacters();
            String commentText = new String(ch2, start, length);
            if (this.inDTD && this.inInternalSubset && !this.expand) {
                this.internalSubset.append("  <!--").append(commentText).append("-->\n");
            } else if (this.inDTD || commentText.equals("")) {
            } else {
                if (this.atRoot) {
                    this.factory.addContent(this.document, this.factory.comment(commentText));
                } else {
                    this.factory.addContent(getCurrentElement(), this.factory.comment(commentText));
                }
            }
        }
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.DTDHandler
    public void notationDecl(String name, String publicID, String systemID) throws SAXException {
        if (!this.inInternalSubset) {
            return;
        }
        this.internalSubset.append("  <!NOTATION ").append(name);
        appendExternalId(publicID, systemID);
        this.internalSubset.append(">\n");
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.DTDHandler
    public void unparsedEntityDecl(String name, String publicID, String systemID, String notationName) throws SAXException {
        if (!this.inInternalSubset) {
            return;
        }
        this.internalSubset.append("  <!ENTITY ").append(name);
        appendExternalId(publicID, systemID);
        this.internalSubset.append(" NDATA ").append(notationName);
        this.internalSubset.append(">\n");
    }

    private void appendExternalId(String publicID, String systemID) {
        if (publicID != null) {
            this.internalSubset.append(" PUBLIC \"").append(publicID).append(CoreConstants.DOUBLE_QUOTE_CHAR);
        }
        if (systemID == null) {
            return;
        }
        if (publicID == null) {
            this.internalSubset.append(" SYSTEM ");
        } else {
            this.internalSubset.append(' ');
        }
        this.internalSubset.append(CoreConstants.DOUBLE_QUOTE_CHAR).append(systemID).append(CoreConstants.DOUBLE_QUOTE_CHAR);
    }

    public Element getCurrentElement() throws SAXException {
        if (this.currentElement == null) {
            throw new SAXException("Ill-formed XML document (multiple root elements detected)");
        }
        return this.currentElement;
    }

    private static int getAttributeType(String typeName) {
        Integer type = (Integer) attrNameToTypeMap.get(typeName);
        return type == null ? (typeName == null || typeName.length() <= 0 || typeName.charAt(0) != '(') ? 0 : 10 : type.intValue();
    }

    @Override // org.xml.sax.helpers.DefaultHandler, org.xml.sax.ContentHandler
    public void setDocumentLocator(Locator locator) {
        this.locator = locator;
    }

    public Locator getDocumentLocator() {
        return this.locator;
    }
}
