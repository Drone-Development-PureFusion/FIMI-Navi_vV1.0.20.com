package org.dom4j.p019io;

import java.io.IOException;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.dom4j.AbstractC2649Entity;
import org.dom4j.Attribute;
import org.dom4j.Branch;
import org.dom4j.CDATA;
import org.dom4j.CharacterData;
import org.dom4j.Comment;
import org.dom4j.Document;
import org.dom4j.DocumentType;
import org.dom4j.Element;
import org.dom4j.Namespace;
import org.dom4j.Node;
import org.dom4j.ProcessingInstruction;
import org.dom4j.Text;
import org.dom4j.tree.NamespaceStack;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.DTDHandler;
import org.xml.sax.EntityResolver;
import org.xml.sax.ErrorHandler;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.SAXNotRecognizedException;
import org.xml.sax.SAXNotSupportedException;
import org.xml.sax.XMLReader;
import org.xml.sax.ext.LexicalHandler;
import org.xml.sax.helpers.AttributesImpl;
import org.xml.sax.helpers.LocatorImpl;
/* renamed from: org.dom4j.io.SAXWriter */
/* loaded from: classes2.dex */
public class SAXWriter implements XMLReader {
    protected static final String FEATURE_NAMESPACES = "http://xml.org/sax/features/namespaces";
    protected static final String FEATURE_NAMESPACE_PREFIXES = "http://xml.org/sax/features/namespace-prefixes";
    protected static final String[] LEXICAL_HANDLER_NAMES = {"http://xml.org/sax/properties/lexical-handler", "http://xml.org/sax/handlers/LexicalHandler"};
    private AttributesImpl attributes;
    private ContentHandler contentHandler;
    private boolean declareNamespaceAttributes;
    private DTDHandler dtdHandler;
    private EntityResolver entityResolver;
    private ErrorHandler errorHandler;
    private Map features;
    private LexicalHandler lexicalHandler;
    private Map properties;

    public SAXWriter() {
        this.attributes = new AttributesImpl();
        this.features = new HashMap();
        this.properties = new HashMap();
        this.properties.put(FEATURE_NAMESPACE_PREFIXES, Boolean.FALSE);
        this.properties.put(FEATURE_NAMESPACE_PREFIXES, Boolean.TRUE);
    }

    public SAXWriter(ContentHandler contentHandler) {
        this();
        this.contentHandler = contentHandler;
    }

    public SAXWriter(ContentHandler contentHandler, LexicalHandler lexicalHandler) {
        this();
        this.contentHandler = contentHandler;
        this.lexicalHandler = lexicalHandler;
    }

    public SAXWriter(ContentHandler contentHandler, LexicalHandler lexicalHandler, EntityResolver entityResolver) {
        this();
        this.contentHandler = contentHandler;
        this.lexicalHandler = lexicalHandler;
        this.entityResolver = entityResolver;
    }

    public void write(Node node) throws SAXException {
        int nodeType = node.getNodeType();
        switch (nodeType) {
            case 1:
                write((Element) node);
                return;
            case 2:
                write((Attribute) node);
                return;
            case 3:
                write(node.getText());
                return;
            case 4:
                write((CDATA) node);
                return;
            case 5:
                write((AbstractC2649Entity) node);
                return;
            case 6:
            case 11:
            case 12:
            default:
                throw new SAXException(new StringBuffer().append("Invalid node type: ").append(node).toString());
            case 7:
                write((ProcessingInstruction) node);
                return;
            case 8:
                write((Comment) node);
                return;
            case 9:
                write((Document) node);
                return;
            case 10:
                write((DocumentType) node);
                return;
            case 13:
                return;
        }
    }

    public void write(Document document) throws SAXException {
        if (document != null) {
            checkForNullHandlers();
            documentLocator(document);
            startDocument();
            entityResolver(document);
            dtdHandler(document);
            writeContent(document, new NamespaceStack());
            endDocument();
        }
    }

    public void write(Element element) throws SAXException {
        write(element, new NamespaceStack());
    }

    public void writeOpen(Element element) throws SAXException {
        startElement(element, null);
    }

    public void writeClose(Element element) throws SAXException {
        endElement(element);
    }

    public void write(String text) throws SAXException {
        if (text != null) {
            char[] chars = text.toCharArray();
            this.contentHandler.characters(chars, 0, chars.length);
        }
    }

    public void write(CDATA cdata) throws SAXException {
        String text = cdata.getText();
        if (this.lexicalHandler != null) {
            this.lexicalHandler.startCDATA();
            write(text);
            this.lexicalHandler.endCDATA();
            return;
        }
        write(text);
    }

    public void write(Comment comment) throws SAXException {
        if (this.lexicalHandler != null) {
            String text = comment.getText();
            char[] chars = text.toCharArray();
            this.lexicalHandler.comment(chars, 0, chars.length);
        }
    }

    public void write(AbstractC2649Entity entity) throws SAXException {
        String text = entity.getText();
        if (this.lexicalHandler != null) {
            String name = entity.getName();
            this.lexicalHandler.startEntity(name);
            write(text);
            this.lexicalHandler.endEntity(name);
            return;
        }
        write(text);
    }

    public void write(ProcessingInstruction pi) throws SAXException {
        String target = pi.getTarget();
        String text = pi.getText();
        this.contentHandler.processingInstruction(target, text);
    }

    public boolean isDeclareNamespaceAttributes() {
        return this.declareNamespaceAttributes;
    }

    public void setDeclareNamespaceAttributes(boolean declareNamespaceAttrs) {
        this.declareNamespaceAttributes = declareNamespaceAttrs;
    }

    @Override // org.xml.sax.XMLReader
    public ContentHandler getContentHandler() {
        return this.contentHandler;
    }

    @Override // org.xml.sax.XMLReader
    public void setContentHandler(ContentHandler contentHandler) {
        this.contentHandler = contentHandler;
    }

    @Override // org.xml.sax.XMLReader
    public DTDHandler getDTDHandler() {
        return this.dtdHandler;
    }

    @Override // org.xml.sax.XMLReader
    public void setDTDHandler(DTDHandler handler) {
        this.dtdHandler = handler;
    }

    @Override // org.xml.sax.XMLReader
    public ErrorHandler getErrorHandler() {
        return this.errorHandler;
    }

    @Override // org.xml.sax.XMLReader
    public void setErrorHandler(ErrorHandler errorHandler) {
        this.errorHandler = errorHandler;
    }

    @Override // org.xml.sax.XMLReader
    public EntityResolver getEntityResolver() {
        return this.entityResolver;
    }

    @Override // org.xml.sax.XMLReader
    public void setEntityResolver(EntityResolver entityResolver) {
        this.entityResolver = entityResolver;
    }

    public LexicalHandler getLexicalHandler() {
        return this.lexicalHandler;
    }

    public void setLexicalHandler(LexicalHandler lexicalHandler) {
        this.lexicalHandler = lexicalHandler;
    }

    public void setXMLReader(XMLReader xmlReader) {
        setContentHandler(xmlReader.getContentHandler());
        setDTDHandler(xmlReader.getDTDHandler());
        setEntityResolver(xmlReader.getEntityResolver());
        setErrorHandler(xmlReader.getErrorHandler());
    }

    @Override // org.xml.sax.XMLReader
    public boolean getFeature(String name) throws SAXNotRecognizedException, SAXNotSupportedException {
        Boolean answer = (Boolean) this.features.get(name);
        return answer != null && answer.booleanValue();
    }

    @Override // org.xml.sax.XMLReader
    public void setFeature(String name, boolean value) throws SAXNotRecognizedException, SAXNotSupportedException {
        if (FEATURE_NAMESPACE_PREFIXES.equals(name)) {
            setDeclareNamespaceAttributes(value);
        } else if (FEATURE_NAMESPACE_PREFIXES.equals(name) && !value) {
            throw new SAXNotSupportedException("Namespace feature is always supported in dom4j");
        }
        this.features.put(name, value ? Boolean.TRUE : Boolean.FALSE);
    }

    @Override // org.xml.sax.XMLReader
    public void setProperty(String name, Object value) {
        for (int i = 0; i < LEXICAL_HANDLER_NAMES.length; i++) {
            if (LEXICAL_HANDLER_NAMES[i].equals(name)) {
                setLexicalHandler((LexicalHandler) value);
                return;
            }
        }
        this.properties.put(name, value);
    }

    @Override // org.xml.sax.XMLReader
    public Object getProperty(String name) throws SAXNotRecognizedException, SAXNotSupportedException {
        for (int i = 0; i < LEXICAL_HANDLER_NAMES.length; i++) {
            if (LEXICAL_HANDLER_NAMES[i].equals(name)) {
                return getLexicalHandler();
            }
        }
        return this.properties.get(name);
    }

    @Override // org.xml.sax.XMLReader
    public void parse(String systemId) throws SAXNotSupportedException {
        throw new SAXNotSupportedException("This XMLReader can only accept <dom4j> InputSource objects");
    }

    @Override // org.xml.sax.XMLReader
    public void parse(InputSource input) throws SAXException {
        if (input instanceof DocumentInputSource) {
            DocumentInputSource documentInput = (DocumentInputSource) input;
            Document document = documentInput.getDocument();
            write(document);
            return;
        }
        throw new SAXNotSupportedException("This XMLReader can only accept <dom4j> InputSource objects");
    }

    protected void writeContent(Branch branch, NamespaceStack namespaceStack) throws SAXException {
        Iterator iter = branch.nodeIterator();
        while (iter.hasNext()) {
            Object object = iter.next();
            if (object instanceof Element) {
                write((Element) object, namespaceStack);
            } else if (object instanceof CharacterData) {
                if (object instanceof Text) {
                    Text text = (Text) object;
                    write(text.getText());
                } else if (object instanceof CDATA) {
                    write((CDATA) object);
                } else if (object instanceof Comment) {
                    write((Comment) object);
                } else {
                    throw new SAXException(new StringBuffer().append("Invalid Node in DOM4J content: ").append(object).append(" of type: ").append(object.getClass()).toString());
                }
            } else if (object instanceof String) {
                write((String) object);
            } else if (object instanceof AbstractC2649Entity) {
                write((AbstractC2649Entity) object);
            } else if (object instanceof ProcessingInstruction) {
                write((ProcessingInstruction) object);
            } else if (object instanceof Namespace) {
                write((Namespace) object);
            } else {
                throw new SAXException(new StringBuffer().append("Invalid Node in DOM4J content: ").append(object).toString());
            }
        }
    }

    protected void documentLocator(Document document) throws SAXException {
        LocatorImpl locator = new LocatorImpl();
        String publicID = null;
        String systemID = null;
        DocumentType docType = document.getDocType();
        if (docType != null) {
            publicID = docType.getPublicID();
            systemID = docType.getSystemID();
        }
        if (publicID != null) {
            locator.setPublicId(publicID);
        }
        if (systemID != null) {
            locator.setSystemId(systemID);
        }
        locator.setLineNumber(-1);
        locator.setColumnNumber(-1);
        this.contentHandler.setDocumentLocator(locator);
    }

    protected void entityResolver(Document document) throws SAXException {
        DocumentType docType;
        if (this.entityResolver != null && (docType = document.getDocType()) != null) {
            String publicID = docType.getPublicID();
            String systemID = docType.getSystemID();
            if (publicID != null || systemID != null) {
                try {
                    this.entityResolver.resolveEntity(publicID, systemID);
                } catch (IOException e) {
                    throw new SAXException(new StringBuffer().append("Could not resolve publicID: ").append(publicID).append(" systemID: ").append(systemID).toString(), e);
                }
            }
        }
    }

    protected void dtdHandler(Document document) throws SAXException {
    }

    protected void startDocument() throws SAXException {
        this.contentHandler.startDocument();
    }

    protected void endDocument() throws SAXException {
        this.contentHandler.endDocument();
    }

    protected void write(Element element, NamespaceStack namespaceStack) throws SAXException {
        int stackSize = namespaceStack.size();
        AttributesImpl namespaceAttributes = startPrefixMapping(element, namespaceStack);
        startElement(element, namespaceAttributes);
        writeContent(element, namespaceStack);
        endElement(element);
        endPrefixMapping(namespaceStack, stackSize);
    }

    protected AttributesImpl startPrefixMapping(Element element, NamespaceStack namespaceStack) throws SAXException {
        AttributesImpl namespaceAttributes = null;
        Namespace elementNamespace = element.getNamespace();
        if (elementNamespace != null && !isIgnoreableNamespace(elementNamespace, namespaceStack)) {
            namespaceStack.push(elementNamespace);
            this.contentHandler.startPrefixMapping(elementNamespace.getPrefix(), elementNamespace.getURI());
            namespaceAttributes = addNamespaceAttribute(null, elementNamespace);
        }
        List declaredNamespaces = element.declaredNamespaces();
        int size = declaredNamespaces.size();
        for (int i = 0; i < size; i++) {
            Namespace namespace = (Namespace) declaredNamespaces.get(i);
            if (!isIgnoreableNamespace(namespace, namespaceStack)) {
                namespaceStack.push(namespace);
                this.contentHandler.startPrefixMapping(namespace.getPrefix(), namespace.getURI());
                namespaceAttributes = addNamespaceAttribute(namespaceAttributes, namespace);
            }
        }
        return namespaceAttributes;
    }

    protected void endPrefixMapping(NamespaceStack stack, int stackSize) throws SAXException {
        while (stack.size() > stackSize) {
            Namespace namespace = stack.pop();
            if (namespace != null) {
                this.contentHandler.endPrefixMapping(namespace.getPrefix());
            }
        }
    }

    protected void startElement(Element element, AttributesImpl namespaceAttributes) throws SAXException {
        this.contentHandler.startElement(element.getNamespaceURI(), element.getName(), element.getQualifiedName(), createAttributes(element, namespaceAttributes));
    }

    protected void endElement(Element element) throws SAXException {
        this.contentHandler.endElement(element.getNamespaceURI(), element.getName(), element.getQualifiedName());
    }

    protected Attributes createAttributes(Element element, Attributes namespaceAttributes) throws SAXException {
        this.attributes.clear();
        if (namespaceAttributes != null) {
            this.attributes.setAttributes(namespaceAttributes);
        }
        Iterator iter = element.attributeIterator();
        while (iter.hasNext()) {
            Attribute attribute = (Attribute) iter.next();
            this.attributes.addAttribute(attribute.getNamespaceURI(), attribute.getName(), attribute.getQualifiedName(), "CDATA", attribute.getValue());
        }
        return this.attributes;
    }

    protected AttributesImpl addNamespaceAttribute(AttributesImpl attrs, Namespace namespace) {
        if (this.declareNamespaceAttributes) {
            if (attrs == null) {
                attrs = new AttributesImpl();
            }
            String prefix = namespace.getPrefix();
            String qualifiedName = "xmlns";
            if (prefix != null && prefix.length() > 0) {
                qualifiedName = new StringBuffer().append("xmlns:").append(prefix).toString();
            }
            String value = namespace.getURI();
            attrs.addAttribute("", prefix, qualifiedName, "CDATA", value);
        }
        return attrs;
    }

    protected boolean isIgnoreableNamespace(Namespace namespace, NamespaceStack namespaceStack) {
        String uri;
        if (namespace.equals(Namespace.NO_NAMESPACE) || namespace.equals(Namespace.XML_NAMESPACE) || (uri = namespace.getURI()) == null || uri.length() <= 0) {
            return true;
        }
        return namespaceStack.contains(namespace);
    }

    protected void checkForNullHandlers() {
    }
}
