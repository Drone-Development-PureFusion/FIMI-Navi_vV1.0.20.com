package org.dom4j.p019io;

import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import javax.xml.transform.sax.SAXResult;
import org.xml.sax.ContentHandler;
import org.xml.sax.ext.LexicalHandler;
/* renamed from: org.dom4j.io.XMLResult */
/* loaded from: classes2.dex */
public class XMLResult extends SAXResult {
    private XMLWriter xmlWriter;

    public XMLResult() {
        this(new XMLWriter());
    }

    public XMLResult(Writer writer) {
        this(new XMLWriter(writer));
    }

    public XMLResult(Writer writer, OutputFormat format) {
        this(new XMLWriter(writer, format));
    }

    public XMLResult(OutputStream out) throws UnsupportedEncodingException {
        this(new XMLWriter(out));
    }

    public XMLResult(OutputStream out, OutputFormat format) throws UnsupportedEncodingException {
        this(new XMLWriter(out, format));
    }

    public XMLResult(XMLWriter xmlWriter) {
        super(xmlWriter);
        this.xmlWriter = xmlWriter;
        setLexicalHandler(xmlWriter);
    }

    public XMLWriter getXMLWriter() {
        return this.xmlWriter;
    }

    public void setXMLWriter(XMLWriter writer) {
        this.xmlWriter = writer;
        setHandler(this.xmlWriter);
        setLexicalHandler(this.xmlWriter);
    }

    @Override // javax.xml.transform.sax.SAXResult
    public ContentHandler getHandler() {
        return this.xmlWriter;
    }

    @Override // javax.xml.transform.sax.SAXResult
    public LexicalHandler getLexicalHandler() {
        return this.xmlWriter;
    }
}
