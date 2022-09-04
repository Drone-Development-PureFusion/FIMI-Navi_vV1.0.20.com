package org.dom4j.p019io;

import java.io.File;
import java.io.InputStream;
import java.io.Reader;
import java.net.URL;
import java.util.HashMap;
import java.util.Map;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.DocumentFactory;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.XMLReader;
/* renamed from: org.dom4j.io.SAXModifier */
/* loaded from: classes2.dex */
public class SAXModifier {
    private HashMap modifiers = new HashMap();
    private SAXModifyReader modifyReader;
    private boolean pruneElements;
    private XMLReader xmlReader;
    private XMLWriter xmlWriter;

    public SAXModifier() {
    }

    public SAXModifier(boolean pruneElements) {
        this.pruneElements = pruneElements;
    }

    public SAXModifier(XMLReader xmlReader) {
        this.xmlReader = xmlReader;
    }

    public SAXModifier(XMLReader xmlReader, boolean pruneElements) {
        this.xmlReader = xmlReader;
    }

    public Document modify(File source) throws DocumentException {
        try {
            return installModifyReader().read(source);
        } catch (SAXModifyException ex) {
            Throwable cause = ex.getCause();
            throw new DocumentException(cause.getMessage(), cause);
        }
    }

    public Document modify(InputSource source) throws DocumentException {
        try {
            return installModifyReader().read(source);
        } catch (SAXModifyException ex) {
            Throwable cause = ex.getCause();
            throw new DocumentException(cause.getMessage(), cause);
        }
    }

    public Document modify(InputStream source) throws DocumentException {
        try {
            return installModifyReader().read(source);
        } catch (SAXModifyException ex) {
            Throwable cause = ex.getCause();
            throw new DocumentException(cause.getMessage(), cause);
        }
    }

    public Document modify(InputStream source, String systemId) throws DocumentException {
        try {
            return installModifyReader().read(source);
        } catch (SAXModifyException ex) {
            Throwable cause = ex.getCause();
            throw new DocumentException(cause.getMessage(), cause);
        }
    }

    public Document modify(Reader source) throws DocumentException {
        try {
            return installModifyReader().read(source);
        } catch (SAXModifyException ex) {
            Throwable cause = ex.getCause();
            throw new DocumentException(cause.getMessage(), cause);
        }
    }

    public Document modify(Reader source, String systemId) throws DocumentException {
        try {
            return installModifyReader().read(source);
        } catch (SAXModifyException ex) {
            Throwable cause = ex.getCause();
            throw new DocumentException(cause.getMessage(), cause);
        }
    }

    public Document modify(URL source) throws DocumentException {
        try {
            return installModifyReader().read(source);
        } catch (SAXModifyException ex) {
            Throwable cause = ex.getCause();
            throw new DocumentException(cause.getMessage(), cause);
        }
    }

    public Document modify(String source) throws DocumentException {
        try {
            return installModifyReader().read(source);
        } catch (SAXModifyException ex) {
            Throwable cause = ex.getCause();
            throw new DocumentException(cause.getMessage(), cause);
        }
    }

    public void addModifier(String path, ElementModifier modifier) {
        this.modifiers.put(path, modifier);
    }

    public void resetModifiers() {
        this.modifiers.clear();
        getSAXModifyReader().resetHandlers();
    }

    public void removeModifier(String path) {
        this.modifiers.remove(path);
        getSAXModifyReader().removeHandler(path);
    }

    public DocumentFactory getDocumentFactory() {
        return getSAXModifyReader().getDocumentFactory();
    }

    public void setDocumentFactory(DocumentFactory factory) {
        getSAXModifyReader().setDocumentFactory(factory);
    }

    public XMLWriter getXMLWriter() {
        return this.xmlWriter;
    }

    public void setXMLWriter(XMLWriter writer) {
        this.xmlWriter = writer;
    }

    public boolean isPruneElements() {
        return this.pruneElements;
    }

    private SAXReader installModifyReader() throws DocumentException {
        try {
            SAXModifyReader reader = getSAXModifyReader();
            if (isPruneElements()) {
                this.modifyReader.setDispatchHandler(new PruningDispatchHandler());
            }
            reader.resetHandlers();
            for (Map.Entry entry : this.modifiers.entrySet()) {
                SAXModifyElementHandler handler = new SAXModifyElementHandler((ElementModifier) entry.getValue());
                reader.addHandler((String) entry.getKey(), handler);
            }
            reader.setXMLWriter(getXMLWriter());
            reader.setXMLReader(getXMLReader());
            return reader;
        } catch (SAXException ex) {
            throw new DocumentException(ex.getMessage(), ex);
        }
    }

    private XMLReader getXMLReader() throws SAXException {
        if (this.xmlReader == null) {
            this.xmlReader = SAXHelper.createXMLReader(false);
        }
        return this.xmlReader;
    }

    private SAXModifyReader getSAXModifyReader() {
        if (this.modifyReader == null) {
            this.modifyReader = new SAXModifyReader();
        }
        return this.modifyReader;
    }
}
