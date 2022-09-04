package org.dom4j.p019io;

import javax.xml.parsers.DocumentBuilder;
import javax.xml.parsers.DocumentBuilderFactory;
import javax.xml.parsers.SAXParser;
import javax.xml.parsers.SAXParserFactory;
import org.w3c.dom.Document;
import org.xml.sax.XMLReader;
/* renamed from: org.dom4j.io.JAXPHelper */
/* loaded from: classes2.dex */
class JAXPHelper {
    protected JAXPHelper() {
    }

    public static XMLReader createXMLReader(boolean validating, boolean namespaceAware) throws Exception {
        SAXParserFactory factory = SAXParserFactory.newInstance();
        factory.setValidating(validating);
        factory.setNamespaceAware(namespaceAware);
        SAXParser parser = factory.newSAXParser();
        return parser.getXMLReader();
    }

    public static Document createDocument(boolean validating, boolean namespaceAware) throws Exception {
        DocumentBuilderFactory factory = DocumentBuilderFactory.newInstance();
        factory.setValidating(validating);
        factory.setNamespaceAware(namespaceAware);
        DocumentBuilder builder = factory.newDocumentBuilder();
        return builder.newDocument();
    }
}
