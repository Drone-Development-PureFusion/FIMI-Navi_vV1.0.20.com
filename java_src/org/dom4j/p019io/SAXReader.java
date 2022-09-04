package org.dom4j.p019io;

import com.fimi.kernel.animutils.IOUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.InputStream;
import java.io.Reader;
import java.io.Serializable;
import java.net.URL;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.DocumentFactory;
import org.dom4j.ElementHandler;
import org.xml.sax.EntityResolver;
import org.xml.sax.ErrorHandler;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.SAXParseException;
import org.xml.sax.XMLFilter;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.DefaultHandler;
import org.xml.sax.helpers.XMLReaderFactory;
/* renamed from: org.dom4j.io.SAXReader */
/* loaded from: classes2.dex */
public class SAXReader {
    private static final String SAX_DECL_HANDLER = "http://xml.org/sax/properties/declaration-handler";
    private static final String SAX_LEXICALHANDLER = "http://xml.org/sax/handlers/LexicalHandler";
    private static final String SAX_LEXICAL_HANDLER = "http://xml.org/sax/properties/lexical-handler";
    private static final String SAX_NAMESPACES = "http://xml.org/sax/features/namespaces";
    private static final String SAX_NAMESPACE_PREFIXES = "http://xml.org/sax/features/namespace-prefixes";
    private static final String SAX_STRING_INTERNING = "http://xml.org/sax/features/string-interning";
    private DispatchHandler dispatchHandler;
    private EntityResolver entityResolver;
    private ErrorHandler errorHandler;
    private DocumentFactory factory;
    private boolean validating;
    private XMLFilter xmlFilter;
    private XMLReader xmlReader;
    private boolean stringInternEnabled = true;
    private boolean includeInternalDTDDeclarations = false;
    private boolean includeExternalDTDDeclarations = false;
    private boolean mergeAdjacentText = false;
    private boolean stripWhitespaceText = false;
    private boolean ignoreComments = false;
    private String encoding = null;

    public SAXReader() {
    }

    public SAXReader(boolean validating) {
        this.validating = validating;
    }

    public SAXReader(DocumentFactory factory) {
        this.factory = factory;
    }

    public SAXReader(DocumentFactory factory, boolean validating) {
        this.factory = factory;
        this.validating = validating;
    }

    public SAXReader(XMLReader xmlReader) {
        this.xmlReader = xmlReader;
    }

    public SAXReader(XMLReader xmlReader, boolean validating) {
        this.xmlReader = xmlReader;
        this.validating = validating;
    }

    public SAXReader(String xmlReaderClassName) throws SAXException {
        if (xmlReaderClassName != null) {
            this.xmlReader = XMLReaderFactory.createXMLReader(xmlReaderClassName);
        }
    }

    public SAXReader(String xmlReaderClassName, boolean validating) throws SAXException {
        if (xmlReaderClassName != null) {
            this.xmlReader = XMLReaderFactory.createXMLReader(xmlReaderClassName);
        }
        this.validating = validating;
    }

    public void setProperty(String name, Object value) throws SAXException {
        getXMLReader().setProperty(name, value);
    }

    public void setFeature(String name, boolean value) throws SAXException {
        getXMLReader().setFeature(name, value);
    }

    public Document read(File file) throws DocumentException {
        try {
            InputSource source = new InputSource(new FileInputStream(file));
            if (this.encoding != null) {
                source.setEncoding(this.encoding);
            }
            String path = file.getAbsolutePath();
            if (path != null) {
                StringBuffer sb = new StringBuffer("file://");
                if (!path.startsWith(File.separator)) {
                    sb.append("/");
                }
                sb.append(path.replace('\\', IOUtils.DIR_SEPARATOR_UNIX));
                source.setSystemId(sb.toString());
            }
            return read(source);
        } catch (FileNotFoundException e) {
            throw new DocumentException(e.getMessage(), e);
        }
    }

    public Document read(URL url) throws DocumentException {
        String systemID = url.toExternalForm();
        InputSource source = new InputSource(systemID);
        if (this.encoding != null) {
            source.setEncoding(this.encoding);
        }
        return read(source);
    }

    public Document read(String systemId) throws DocumentException {
        InputSource source = new InputSource(systemId);
        if (this.encoding != null) {
            source.setEncoding(this.encoding);
        }
        return read(source);
    }

    public Document read(InputStream in) throws DocumentException {
        InputSource source = new InputSource(in);
        if (this.encoding != null) {
            source.setEncoding(this.encoding);
        }
        return read(source);
    }

    public Document read(Reader reader) throws DocumentException {
        InputSource source = new InputSource(reader);
        if (this.encoding != null) {
            source.setEncoding(this.encoding);
        }
        return read(source);
    }

    public Document read(InputStream in, String systemId) throws DocumentException {
        InputSource source = new InputSource(in);
        source.setSystemId(systemId);
        if (this.encoding != null) {
            source.setEncoding(this.encoding);
        }
        return read(source);
    }

    public Document read(Reader reader, String systemId) throws DocumentException {
        InputSource source = new InputSource(reader);
        source.setSystemId(systemId);
        if (this.encoding != null) {
            source.setEncoding(this.encoding);
        }
        return read(source);
    }

    public Document read(InputSource in) throws DocumentException {
        try {
            XMLReader reader = installXMLFilter(getXMLReader());
            EntityResolver thatEntityResolver = this.entityResolver;
            if (thatEntityResolver == null) {
                thatEntityResolver = createDefaultEntityResolver(in.getSystemId());
                this.entityResolver = thatEntityResolver;
            }
            reader.setEntityResolver(thatEntityResolver);
            SAXContentHandler contentHandler = createContentHandler(reader);
            contentHandler.setEntityResolver(thatEntityResolver);
            contentHandler.setInputSource(in);
            boolean internal = isIncludeInternalDTDDeclarations();
            boolean external = isIncludeExternalDTDDeclarations();
            contentHandler.setIncludeInternalDTDDeclarations(internal);
            contentHandler.setIncludeExternalDTDDeclarations(external);
            contentHandler.setMergeAdjacentText(isMergeAdjacentText());
            contentHandler.setStripWhitespaceText(isStripWhitespaceText());
            contentHandler.setIgnoreComments(isIgnoreComments());
            reader.setContentHandler(contentHandler);
            configureReader(reader, contentHandler);
            reader.parse(in);
            return contentHandler.getDocument();
        } catch (Exception e) {
            if (e instanceof SAXParseException) {
                SAXParseException parseException = (SAXParseException) e;
                String systemId = parseException.getSystemId();
                if (systemId == null) {
                    systemId = "";
                }
                String message = new StringBuffer().append("Error on line ").append(parseException.getLineNumber()).append(" of document ").append(systemId).append(" : ").append(parseException.getMessage()).toString();
                throw new DocumentException(message, e);
            }
            throw new DocumentException(e.getMessage(), e);
        }
    }

    public boolean isValidating() {
        return this.validating;
    }

    public void setValidation(boolean validation) {
        this.validating = validation;
    }

    public boolean isIncludeInternalDTDDeclarations() {
        return this.includeInternalDTDDeclarations;
    }

    public void setIncludeInternalDTDDeclarations(boolean include) {
        this.includeInternalDTDDeclarations = include;
    }

    public boolean isIncludeExternalDTDDeclarations() {
        return this.includeExternalDTDDeclarations;
    }

    public void setIncludeExternalDTDDeclarations(boolean include) {
        this.includeExternalDTDDeclarations = include;
    }

    public boolean isStringInternEnabled() {
        return this.stringInternEnabled;
    }

    public void setStringInternEnabled(boolean stringInternEnabled) {
        this.stringInternEnabled = stringInternEnabled;
    }

    public boolean isMergeAdjacentText() {
        return this.mergeAdjacentText;
    }

    public void setMergeAdjacentText(boolean mergeAdjacentText) {
        this.mergeAdjacentText = mergeAdjacentText;
    }

    public boolean isStripWhitespaceText() {
        return this.stripWhitespaceText;
    }

    public void setStripWhitespaceText(boolean stripWhitespaceText) {
        this.stripWhitespaceText = stripWhitespaceText;
    }

    public boolean isIgnoreComments() {
        return this.ignoreComments;
    }

    public void setIgnoreComments(boolean ignoreComments) {
        this.ignoreComments = ignoreComments;
    }

    public DocumentFactory getDocumentFactory() {
        if (this.factory == null) {
            this.factory = DocumentFactory.getInstance();
        }
        return this.factory;
    }

    public void setDocumentFactory(DocumentFactory documentFactory) {
        this.factory = documentFactory;
    }

    public ErrorHandler getErrorHandler() {
        return this.errorHandler;
    }

    public void setErrorHandler(ErrorHandler errorHandler) {
        this.errorHandler = errorHandler;
    }

    public EntityResolver getEntityResolver() {
        return this.entityResolver;
    }

    public void setEntityResolver(EntityResolver entityResolver) {
        this.entityResolver = entityResolver;
    }

    public XMLReader getXMLReader() throws SAXException {
        if (this.xmlReader == null) {
            this.xmlReader = createXMLReader();
        }
        return this.xmlReader;
    }

    public void setXMLReader(XMLReader reader) {
        this.xmlReader = reader;
    }

    public String getEncoding() {
        return this.encoding;
    }

    public void setEncoding(String encoding) {
        this.encoding = encoding;
    }

    public void setXMLReaderClassName(String xmlReaderClassName) throws SAXException {
        setXMLReader(XMLReaderFactory.createXMLReader(xmlReaderClassName));
    }

    public void addHandler(String path, ElementHandler handler) {
        getDispatchHandler().addHandler(path, handler);
    }

    public void removeHandler(String path) {
        getDispatchHandler().removeHandler(path);
    }

    public void setDefaultHandler(ElementHandler handler) {
        getDispatchHandler().setDefaultHandler(handler);
    }

    public void resetHandlers() {
        getDispatchHandler().resetHandlers();
    }

    public XMLFilter getXMLFilter() {
        return this.xmlFilter;
    }

    public void setXMLFilter(XMLFilter filter) {
        this.xmlFilter = filter;
    }

    protected XMLReader installXMLFilter(XMLReader reader) {
        XMLFilter filter = getXMLFilter();
        if (filter != null) {
            XMLFilter root = filter;
            while (true) {
                XMLReader parent = root.getParent();
                if (parent instanceof XMLFilter) {
                    root = (XMLFilter) parent;
                } else {
                    root.setParent(reader);
                    return filter;
                }
            }
        } else {
            return reader;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public DispatchHandler getDispatchHandler() {
        if (this.dispatchHandler == null) {
            this.dispatchHandler = new DispatchHandler();
        }
        return this.dispatchHandler;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void setDispatchHandler(DispatchHandler dispatchHandler) {
        this.dispatchHandler = dispatchHandler;
    }

    protected XMLReader createXMLReader() throws SAXException {
        return SAXHelper.createXMLReader(isValidating());
    }

    protected void configureReader(XMLReader reader, DefaultHandler handler) throws DocumentException {
        SAXHelper.setParserProperty(reader, SAX_LEXICALHANDLER, handler);
        SAXHelper.setParserProperty(reader, SAX_LEXICAL_HANDLER, handler);
        if (this.includeInternalDTDDeclarations || this.includeExternalDTDDeclarations) {
            SAXHelper.setParserProperty(reader, SAX_DECL_HANDLER, handler);
        }
        SAXHelper.setParserFeature(reader, SAX_NAMESPACES, true);
        SAXHelper.setParserFeature(reader, SAX_NAMESPACE_PREFIXES, false);
        SAXHelper.setParserFeature(reader, SAX_STRING_INTERNING, isStringInternEnabled());
        SAXHelper.setParserFeature(reader, "http://xml.org/sax/features/use-locator2", true);
        try {
            reader.setFeature("http://xml.org/sax/features/validation", isValidating());
            if (this.errorHandler != null) {
                reader.setErrorHandler(this.errorHandler);
            } else {
                reader.setErrorHandler(handler);
            }
        } catch (Exception e) {
            if (isValidating()) {
                throw new DocumentException(new StringBuffer().append("Validation not supported for XMLReader: ").append(reader).toString(), e);
            }
        }
    }

    protected SAXContentHandler createContentHandler(XMLReader reader) {
        return new SAXContentHandler(getDocumentFactory(), this.dispatchHandler);
    }

    protected EntityResolver createDefaultEntityResolver(String systemId) {
        int idx;
        String prefix = null;
        if (systemId != null && systemId.length() > 0 && (idx = systemId.lastIndexOf(47)) > 0) {
            prefix = systemId.substring(0, idx + 1);
        }
        return new SAXEntityResolver(prefix);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* renamed from: org.dom4j.io.SAXReader$SAXEntityResolver */
    /* loaded from: classes2.dex */
    public static class SAXEntityResolver implements EntityResolver, Serializable {
        protected String uriPrefix;

        public SAXEntityResolver(String uriPrefix) {
            this.uriPrefix = uriPrefix;
        }

        @Override // org.xml.sax.EntityResolver
        public InputSource resolveEntity(String publicId, String systemId) {
            if (systemId != null && systemId.length() > 0 && this.uriPrefix != null && systemId.indexOf(58) <= 0) {
                systemId = new StringBuffer().append(this.uriPrefix).append(systemId).toString();
            }
            return new InputSource(systemId);
        }
    }
}
