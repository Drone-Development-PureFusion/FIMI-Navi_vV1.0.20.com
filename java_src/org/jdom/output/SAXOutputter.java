package org.jdom.output;

import java.io.IOException;
import java.io.StringReader;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.List;
import org.jdom.Attribute;
import org.jdom.CDATA;
import org.jdom.Comment;
import org.jdom.Content;
import org.jdom.DocType;
import org.jdom.Document;
import org.jdom.Element;
import org.jdom.EntityRef;
import org.jdom.JDOMException;
import org.jdom.Namespace;
import org.jdom.ProcessingInstruction;
import org.jdom.Text;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.DTDHandler;
import org.xml.sax.EntityResolver;
import org.xml.sax.ErrorHandler;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.SAXNotRecognizedException;
import org.xml.sax.SAXNotSupportedException;
import org.xml.sax.SAXParseException;
import org.xml.sax.XMLReader;
import org.xml.sax.ext.DeclHandler;
import org.xml.sax.ext.LexicalHandler;
import org.xml.sax.helpers.AttributesImpl;
import org.xml.sax.helpers.DefaultHandler;
import org.xml.sax.helpers.XMLReaderFactory;
/* loaded from: classes2.dex */
public class SAXOutputter {
    private static final String CVS_ID = "@(#) $RCSfile: SAXOutputter.java,v $ $Revision: 1.37 $ $Date: 2004/09/03 06:11:00 $ $Name: jdom_1_0 $";
    private static final String DECL_HANDLER_ALT_PROPERTY = "http://xml.org/sax/handlers/DeclHandler";
    private static final String DECL_HANDLER_SAX_PROPERTY = "http://xml.org/sax/properties/declaration-handler";
    private static final String LEXICAL_HANDLER_ALT_PROPERTY = "http://xml.org/sax/handlers/LexicalHandler";
    private static final String LEXICAL_HANDLER_SAX_PROPERTY = "http://xml.org/sax/properties/lexical-handler";
    private static final String NAMESPACES_SAX_FEATURE = "http://xml.org/sax/features/namespaces";
    private static final String NS_PREFIXES_SAX_FEATURE = "http://xml.org/sax/features/namespace-prefixes";
    private static final String VALIDATION_SAX_FEATURE = "http://xml.org/sax/features/validation";
    private static final String[] attrTypeToNameMap = {"CDATA", "CDATA", "ID", "IDREF", "IDREFS", "ENTITY", "ENTITIES", "NMTOKEN", "NMTOKENS", "NOTATION", "NMTOKEN"};
    private ContentHandler contentHandler;
    private DeclHandler declHandler;
    private boolean declareNamespaces;
    private DTDHandler dtdHandler;
    private EntityResolver entityResolver;
    private ErrorHandler errorHandler;
    private LexicalHandler lexicalHandler;
    private JDOMLocator locator;
    private boolean reportDtdEvents;

    public SAXOutputter() {
        this.declareNamespaces = false;
        this.reportDtdEvents = true;
        this.locator = null;
    }

    public SAXOutputter(ContentHandler contentHandler) {
        this(contentHandler, null, null, null, null);
    }

    public SAXOutputter(ContentHandler contentHandler, ErrorHandler errorHandler, DTDHandler dtdHandler, EntityResolver entityResolver) {
        this(contentHandler, errorHandler, dtdHandler, entityResolver, null);
    }

    public SAXOutputter(ContentHandler contentHandler, ErrorHandler errorHandler, DTDHandler dtdHandler, EntityResolver entityResolver, LexicalHandler lexicalHandler) {
        this.declareNamespaces = false;
        this.reportDtdEvents = true;
        this.locator = null;
        this.contentHandler = contentHandler;
        this.errorHandler = errorHandler;
        this.dtdHandler = dtdHandler;
        this.entityResolver = entityResolver;
        this.lexicalHandler = lexicalHandler;
    }

    public void setContentHandler(ContentHandler contentHandler) {
        this.contentHandler = contentHandler;
    }

    public ContentHandler getContentHandler() {
        return this.contentHandler;
    }

    public void setErrorHandler(ErrorHandler errorHandler) {
        this.errorHandler = errorHandler;
    }

    public ErrorHandler getErrorHandler() {
        return this.errorHandler;
    }

    public void setDTDHandler(DTDHandler dtdHandler) {
        this.dtdHandler = dtdHandler;
    }

    public DTDHandler getDTDHandler() {
        return this.dtdHandler;
    }

    public void setEntityResolver(EntityResolver entityResolver) {
        this.entityResolver = entityResolver;
    }

    public EntityResolver getEntityResolver() {
        return this.entityResolver;
    }

    public void setLexicalHandler(LexicalHandler lexicalHandler) {
        this.lexicalHandler = lexicalHandler;
    }

    public LexicalHandler getLexicalHandler() {
        return this.lexicalHandler;
    }

    public void setDeclHandler(DeclHandler declHandler) {
        this.declHandler = declHandler;
    }

    public DeclHandler getDeclHandler() {
        return this.declHandler;
    }

    public boolean getReportNamespaceDeclarations() {
        return this.declareNamespaces;
    }

    public void setReportNamespaceDeclarations(boolean declareNamespaces) {
        this.declareNamespaces = declareNamespaces;
    }

    public boolean getReportDTDEvents() {
        return this.reportDtdEvents;
    }

    public void setReportDTDEvents(boolean reportDtdEvents) {
        this.reportDtdEvents = reportDtdEvents;
    }

    public void setFeature(String name, boolean value) throws SAXNotRecognizedException, SAXNotSupportedException {
        if (NS_PREFIXES_SAX_FEATURE.equals(name)) {
            setReportNamespaceDeclarations(value);
        } else if (NAMESPACES_SAX_FEATURE.equals(name)) {
            if (value) {
                return;
            }
            throw new SAXNotSupportedException(name);
        } else if (VALIDATION_SAX_FEATURE.equals(name)) {
            setReportDTDEvents(value);
        } else {
            throw new SAXNotRecognizedException(name);
        }
    }

    public boolean getFeature(String name) throws SAXNotRecognizedException, SAXNotSupportedException {
        if (NS_PREFIXES_SAX_FEATURE.equals(name)) {
            return this.declareNamespaces;
        }
        if (NAMESPACES_SAX_FEATURE.equals(name)) {
            return true;
        }
        if (VALIDATION_SAX_FEATURE.equals(name)) {
            return this.reportDtdEvents;
        }
        throw new SAXNotRecognizedException(name);
    }

    public void setProperty(String name, Object value) throws SAXNotRecognizedException, SAXNotSupportedException {
        if (LEXICAL_HANDLER_SAX_PROPERTY.equals(name) || LEXICAL_HANDLER_ALT_PROPERTY.equals(name)) {
            setLexicalHandler((LexicalHandler) value);
        } else if (DECL_HANDLER_SAX_PROPERTY.equals(name) || DECL_HANDLER_ALT_PROPERTY.equals(name)) {
            setDeclHandler((DeclHandler) value);
        } else {
            throw new SAXNotRecognizedException(name);
        }
    }

    public Object getProperty(String name) throws SAXNotRecognizedException, SAXNotSupportedException {
        if (LEXICAL_HANDLER_SAX_PROPERTY.equals(name) || LEXICAL_HANDLER_ALT_PROPERTY.equals(name)) {
            return getLexicalHandler();
        }
        if (DECL_HANDLER_SAX_PROPERTY.equals(name) || DECL_HANDLER_ALT_PROPERTY.equals(name)) {
            return getDeclHandler();
        }
        throw new SAXNotRecognizedException(name);
    }

    public void output(Document document) throws JDOMException {
        if (document == null) {
            return;
        }
        documentLocator(document);
        startDocument();
        if (this.reportDtdEvents) {
            dtdEvents(document);
        }
        for (Object obj : document.getContent()) {
            this.locator.setNode(obj);
            if (obj instanceof Element) {
                element(document.getRootElement(), new NamespaceStack());
            } else if (obj instanceof ProcessingInstruction) {
                processingInstruction((ProcessingInstruction) obj);
            } else if (obj instanceof Comment) {
                comment(((Comment) obj).getText());
            }
        }
        endDocument();
    }

    public void output(List nodes) throws JDOMException {
        if (nodes == null || nodes.size() == 0) {
            return;
        }
        documentLocator(null);
        startDocument();
        elementContent(nodes, new NamespaceStack());
        endDocument();
    }

    public void output(Element node) throws JDOMException {
        if (node == null) {
            return;
        }
        documentLocator(null);
        startDocument();
        elementContent(node, new NamespaceStack());
        endDocument();
    }

    public void outputFragment(List nodes) throws JDOMException {
        if (nodes == null || nodes.size() == 0) {
            return;
        }
        elementContent(nodes, new NamespaceStack());
    }

    public void outputFragment(Content node) throws JDOMException {
        if (node == null) {
            return;
        }
        elementContent(node, new NamespaceStack());
    }

    private void dtdEvents(Document document) throws JDOMException {
        DocType docType = document.getDocType();
        if (docType == null) {
            return;
        }
        if (this.dtdHandler == null && this.declHandler == null) {
            return;
        }
        String dtdDoc = new XMLOutputter().outputString(docType);
        try {
            createDTDParser().parse(new InputSource(new StringReader(dtdDoc)));
        } catch (IOException e) {
            throw new JDOMException("DTD parsing error", e);
        } catch (SAXParseException e2) {
        } catch (SAXException e3) {
            throw new JDOMException("DTD parsing error", e3);
        }
    }

    private void documentLocator(Document document) {
        DocType docType;
        this.locator = new JDOMLocator();
        String publicID = null;
        String systemID = null;
        if (document != null && (docType = document.getDocType()) != null) {
            publicID = docType.getPublicID();
            systemID = docType.getSystemID();
        }
        this.locator.setPublicId(publicID);
        this.locator.setSystemId(systemID);
        this.locator.setLineNumber(-1);
        this.locator.setColumnNumber(-1);
        this.contentHandler.setDocumentLocator(this.locator);
    }

    private void startDocument() throws JDOMException {
        try {
            this.contentHandler.startDocument();
        } catch (SAXException se) {
            throw new JDOMException("Exception in startDocument", se);
        }
    }

    private void endDocument() throws JDOMException {
        try {
            this.contentHandler.endDocument();
            this.locator = null;
        } catch (SAXException se) {
            throw new JDOMException("Exception in endDocument", se);
        }
    }

    private void processingInstruction(ProcessingInstruction pi) throws JDOMException {
        if (pi == null) {
            return;
        }
        String target = pi.getTarget();
        String data = pi.getData();
        try {
            this.contentHandler.processingInstruction(target, data);
        } catch (SAXException se) {
            throw new JDOMException("Exception in processingInstruction", se);
        }
    }

    private void element(Element element, NamespaceStack namespaces) throws JDOMException {
        int previouslyDeclaredNamespaces = namespaces.size();
        Attributes nsAtts = startPrefixMapping(element, namespaces);
        startElement(element, nsAtts);
        elementContent(element.getContent(), namespaces);
        this.locator.setNode(element);
        endElement(element);
        endPrefixMapping(namespaces, previouslyDeclaredNamespaces);
    }

    private Attributes startPrefixMapping(Element element, NamespaceStack namespaces) throws JDOMException {
        AttributesImpl nsAtts = null;
        Namespace ns = element.getNamespace();
        if (ns != Namespace.XML_NAMESPACE) {
            String prefix = ns.getPrefix();
            String uri = namespaces.getURI(prefix);
            if (!ns.getURI().equals(uri)) {
                namespaces.push(ns);
                nsAtts = addNsAttribute(null, ns);
                try {
                    this.contentHandler.startPrefixMapping(prefix, ns.getURI());
                } catch (SAXException se) {
                    throw new JDOMException("Exception in startPrefixMapping", se);
                }
            }
        }
        List<Namespace> additionalNamespaces = element.getAdditionalNamespaces();
        if (additionalNamespaces != null) {
            for (Namespace ns2 : additionalNamespaces) {
                String prefix2 = ns2.getPrefix();
                String uri2 = namespaces.getURI(prefix2);
                if (!ns2.getURI().equals(uri2)) {
                    namespaces.push(ns2);
                    nsAtts = addNsAttribute(nsAtts, ns2);
                    try {
                        this.contentHandler.startPrefixMapping(prefix2, ns2.getURI());
                    } catch (SAXException se2) {
                        throw new JDOMException("Exception in startPrefixMapping", se2);
                    }
                }
            }
        }
        return nsAtts;
    }

    private void endPrefixMapping(NamespaceStack namespaces, int previouslyDeclaredNamespaces) throws JDOMException {
        while (namespaces.size() > previouslyDeclaredNamespaces) {
            String prefix = namespaces.pop();
            try {
                this.contentHandler.endPrefixMapping(prefix);
            } catch (SAXException se) {
                throw new JDOMException("Exception in endPrefixMapping", se);
            }
        }
    }

    private void startElement(Element element, Attributes nsAtts) throws JDOMException {
        String namespaceURI = element.getNamespaceURI();
        String localName = element.getName();
        String rawName = element.getQualifiedName();
        AttributesImpl atts = nsAtts != null ? new AttributesImpl(nsAtts) : new AttributesImpl();
        List<Attribute> attributes = element.getAttributes();
        for (Attribute a : attributes) {
            atts.addAttribute(a.getNamespaceURI(), a.getName(), a.getQualifiedName(), getAttributeTypeName(a.getAttributeType()), a.getValue());
        }
        try {
            this.contentHandler.startElement(namespaceURI, localName, rawName, atts);
        } catch (SAXException se) {
            throw new JDOMException("Exception in startElement", se);
        }
    }

    private void endElement(Element element) throws JDOMException {
        String namespaceURI = element.getNamespaceURI();
        String localName = element.getName();
        String rawName = element.getQualifiedName();
        try {
            this.contentHandler.endElement(namespaceURI, localName, rawName);
        } catch (SAXException se) {
            throw new JDOMException("Exception in endElement", se);
        }
    }

    private void elementContent(List content, NamespaceStack namespaces) throws JDOMException {
        for (Object obj : content) {
            if (obj instanceof Content) {
                elementContent((Content) obj, namespaces);
            } else {
                handleError(new JDOMException(new StringBuffer("Invalid element content: ").append(obj).toString()));
            }
        }
    }

    private void elementContent(Content node, NamespaceStack namespaces) throws JDOMException {
        this.locator.setNode(node);
        if (node instanceof Element) {
            element((Element) node, namespaces);
        } else if (node instanceof CDATA) {
            cdata(((CDATA) node).getText());
        } else if (node instanceof Text) {
            characters(((Text) node).getText());
        } else if (node instanceof ProcessingInstruction) {
            processingInstruction((ProcessingInstruction) node);
        } else if (node instanceof Comment) {
            comment(((Comment) node).getText());
        } else if (node instanceof EntityRef) {
            entityRef((EntityRef) node);
        } else {
            handleError(new JDOMException(new StringBuffer("Invalid element content: ").append(node).toString()));
        }
    }

    private void cdata(String cdataText) throws JDOMException {
        try {
            if (this.lexicalHandler != null) {
                this.lexicalHandler.startCDATA();
                characters(cdataText);
                this.lexicalHandler.endCDATA();
                return;
            }
            characters(cdataText);
        } catch (SAXException se) {
            throw new JDOMException("Exception in CDATA", se);
        }
    }

    private void characters(String elementText) throws JDOMException {
        char[] c = elementText.toCharArray();
        try {
            this.contentHandler.characters(c, 0, c.length);
        } catch (SAXException se) {
            throw new JDOMException("Exception in characters", se);
        }
    }

    private void comment(String commentText) throws JDOMException {
        if (this.lexicalHandler == null) {
            return;
        }
        char[] c = commentText.toCharArray();
        try {
            this.lexicalHandler.comment(c, 0, c.length);
        } catch (SAXException se) {
            throw new JDOMException("Exception in comment", se);
        }
    }

    private void entityRef(EntityRef entity) throws JDOMException {
        if (entity == null) {
            return;
        }
        try {
            this.contentHandler.skippedEntity(entity.getName());
        } catch (SAXException se) {
            throw new JDOMException("Exception in entityRef", se);
        }
    }

    private AttributesImpl addNsAttribute(AttributesImpl atts, Namespace ns) {
        if (this.declareNamespaces) {
            if (atts == null) {
                atts = new AttributesImpl();
            }
            atts.addAttribute("", "", new StringBuffer("xmlns:").append(ns.getPrefix()).toString(), "CDATA", ns.getURI());
        }
        return atts;
    }

    private static String getAttributeTypeName(int type) {
        if (type < 0 || type >= attrTypeToNameMap.length) {
            type = 0;
        }
        return attrTypeToNameMap[type];
    }

    private void handleError(JDOMException exception) throws JDOMException {
        if (this.errorHandler != null) {
            try {
                this.errorHandler.error(new SAXParseException(exception.getMessage(), null, exception));
                return;
            } catch (SAXException se) {
                if (se.getException() instanceof JDOMException) {
                    throw ((JDOMException) se.getException());
                }
                throw new JDOMException(se.getMessage(), se);
            }
        }
        throw exception;
    }

    protected XMLReader createParser() throws Exception {
        XMLReader parser = null;
        try {
            Class factoryClass = Class.forName("javax.xml.parsers.SAXParserFactory");
            Method newParserInstance = factoryClass.getMethod("newInstance", null);
            Object factory = newParserInstance.invoke(null, null);
            Method newSAXParser = factoryClass.getMethod("newSAXParser", null);
            Object jaxpParser = newSAXParser.invoke(factory, null);
            Class parserClass = jaxpParser.getClass();
            Method getXMLReader = parserClass.getMethod("getXMLReader", null);
            parser = (XMLReader) getXMLReader.invoke(jaxpParser, null);
        } catch (ClassNotFoundException e) {
        } catch (IllegalAccessException e2) {
        } catch (NoSuchMethodException e3) {
        } catch (InvocationTargetException e4) {
        }
        if (parser == null) {
            return XMLReaderFactory.createXMLReader("org.apache.xerces.parsers.SAXParser");
        }
        return parser;
    }

    private XMLReader createDTDParser() throws JDOMException {
        try {
            XMLReader parser = createParser();
            if (getDTDHandler() != null) {
                parser.setDTDHandler(getDTDHandler());
            }
            if (getEntityResolver() != null) {
                parser.setEntityResolver(getEntityResolver());
            }
            if (getLexicalHandler() != null) {
                try {
                    parser.setProperty(LEXICAL_HANDLER_SAX_PROPERTY, getLexicalHandler());
                } catch (SAXException e) {
                    try {
                        parser.setProperty(LEXICAL_HANDLER_ALT_PROPERTY, getLexicalHandler());
                    } catch (SAXException e2) {
                    }
                }
            }
            if (getDeclHandler() != null) {
                try {
                    parser.setProperty(DECL_HANDLER_SAX_PROPERTY, getDeclHandler());
                } catch (SAXException e3) {
                    try {
                        parser.setProperty(DECL_HANDLER_ALT_PROPERTY, getDeclHandler());
                    } catch (SAXException e4) {
                    }
                }
            }
            parser.setErrorHandler(new DefaultHandler());
            return parser;
        } catch (Exception ex1) {
            throw new JDOMException("Error in SAX parser allocation", ex1);
        }
    }

    public JDOMLocator getLocator() {
        if (this.locator != null) {
            return new JDOMLocator(this.locator);
        }
        return null;
    }
}
