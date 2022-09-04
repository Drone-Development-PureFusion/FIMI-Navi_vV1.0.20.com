package org.dom4j.p019io;

import java.io.IOException;
import org.dom4j.Document;
import org.xml.sax.ContentHandler;
import org.xml.sax.ErrorHandler;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;
import org.xml.sax.helpers.DefaultHandler;
/* renamed from: org.dom4j.io.SAXValidator */
/* loaded from: classes2.dex */
public class SAXValidator {
    private ErrorHandler errorHandler;
    private XMLReader xmlReader;

    public SAXValidator() {
    }

    public SAXValidator(XMLReader xmlReader) {
        this.xmlReader = xmlReader;
    }

    public void validate(Document document) throws SAXException {
        if (document != null) {
            XMLReader reader = getXMLReader();
            if (this.errorHandler != null) {
                reader.setErrorHandler(this.errorHandler);
            }
            try {
                reader.parse(new DocumentInputSource(document));
            } catch (IOException e) {
                throw new RuntimeException(new StringBuffer().append("Caught and exception that should never happen: ").append(e).toString());
            }
        }
    }

    public XMLReader getXMLReader() throws SAXException {
        if (this.xmlReader == null) {
            this.xmlReader = createXMLReader();
            configureReader();
        }
        return this.xmlReader;
    }

    public void setXMLReader(XMLReader reader) throws SAXException {
        this.xmlReader = reader;
        configureReader();
    }

    public ErrorHandler getErrorHandler() {
        return this.errorHandler;
    }

    public void setErrorHandler(ErrorHandler errorHandler) {
        this.errorHandler = errorHandler;
    }

    protected XMLReader createXMLReader() throws SAXException {
        return SAXHelper.createXMLReader(true);
    }

    protected void configureReader() throws SAXException {
        ContentHandler handler = this.xmlReader.getContentHandler();
        if (handler == null) {
            this.xmlReader.setContentHandler(new DefaultHandler());
        }
        this.xmlReader.setFeature("http://xml.org/sax/features/validation", true);
        this.xmlReader.setFeature("http://xml.org/sax/features/namespaces", true);
        this.xmlReader.setFeature("http://xml.org/sax/features/namespace-prefixes", false);
    }
}
