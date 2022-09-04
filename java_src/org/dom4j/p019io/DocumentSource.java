package org.dom4j.p019io;

import javax.xml.transform.sax.SAXSource;
import org.dom4j.Document;
import org.dom4j.Node;
import org.xml.sax.InputSource;
import org.xml.sax.XMLFilter;
import org.xml.sax.XMLReader;
/* renamed from: org.dom4j.io.DocumentSource */
/* loaded from: classes2.dex */
public class DocumentSource extends SAXSource {
    public static final String DOM4J_FEATURE = "http://org.dom4j.io.DoucmentSource/feature";
    private XMLReader xmlReader = new SAXWriter();

    public DocumentSource(Node node) {
        setDocument(node.getDocument());
    }

    public DocumentSource(Document document) {
        setDocument(document);
    }

    public Document getDocument() {
        DocumentInputSource source = (DocumentInputSource) getInputSource();
        return source.getDocument();
    }

    public void setDocument(Document document) {
        super.setInputSource(new DocumentInputSource(document));
    }

    @Override // javax.xml.transform.sax.SAXSource
    public XMLReader getXMLReader() {
        return this.xmlReader;
    }

    @Override // javax.xml.transform.sax.SAXSource
    public void setInputSource(InputSource inputSource) throws UnsupportedOperationException {
        if (inputSource instanceof DocumentInputSource) {
            super.setInputSource((DocumentInputSource) inputSource);
            return;
        }
        throw new UnsupportedOperationException();
    }

    @Override // javax.xml.transform.sax.SAXSource
    public void setXMLReader(XMLReader reader) throws UnsupportedOperationException {
        if (reader instanceof SAXWriter) {
            this.xmlReader = (SAXWriter) reader;
        } else if (!(reader instanceof XMLFilter)) {
            throw new UnsupportedOperationException();
        } else {
            XMLReader xMLReader = reader;
            while (true) {
                XMLFilter filter = (XMLFilter) xMLReader;
                XMLReader parent = filter.getParent();
                if (!(parent instanceof XMLFilter)) {
                    filter.setParent(this.xmlReader);
                    this.xmlReader = filter;
                    return;
                }
                xMLReader = parent;
            }
        }
    }
}
