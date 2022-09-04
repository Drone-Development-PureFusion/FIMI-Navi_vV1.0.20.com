package org.dom4j.p019io;

import java.io.BufferedReader;
import java.io.CharArrayReader;
import java.io.File;
import java.io.FileReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.Reader;
import java.net.URL;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.DocumentFactory;
import org.dom4j.Element;
import org.dom4j.ElementHandler;
import org.dom4j.QName;
import org.xmlpull.v1.XmlPullParser;
import org.xmlpull.v1.XmlPullParserException;
import org.xmlpull.v1.XmlPullParserFactory;
/* renamed from: org.dom4j.io.XPP3Reader */
/* loaded from: classes2.dex */
public class XPP3Reader {
    private DispatchHandler dispatchHandler;
    private DocumentFactory factory;
    private XmlPullParserFactory xppFactory;
    private XmlPullParser xppParser;

    public XPP3Reader() {
    }

    public XPP3Reader(DocumentFactory factory) {
        this.factory = factory;
    }

    public Document read(File file) throws DocumentException, IOException, XmlPullParserException {
        String systemID = file.getAbsolutePath();
        return read(new BufferedReader(new FileReader(file)), systemID);
    }

    public Document read(URL url) throws DocumentException, IOException, XmlPullParserException {
        String systemID = url.toExternalForm();
        return read(createReader(url.openStream()), systemID);
    }

    public Document read(String systemID) throws DocumentException, IOException, XmlPullParserException {
        return systemID.indexOf(58) >= 0 ? read(new URL(systemID)) : read(new File(systemID));
    }

    public Document read(InputStream in) throws DocumentException, IOException, XmlPullParserException {
        return read(createReader(in));
    }

    public Document read(Reader reader) throws DocumentException, IOException, XmlPullParserException {
        getXPPParser().setInput(reader);
        return parseDocument();
    }

    public Document read(char[] text) throws DocumentException, IOException, XmlPullParserException {
        getXPPParser().setInput(new CharArrayReader(text));
        return parseDocument();
    }

    public Document read(InputStream in, String systemID) throws DocumentException, IOException, XmlPullParserException {
        return read(createReader(in), systemID);
    }

    public Document read(Reader reader, String systemID) throws DocumentException, IOException, XmlPullParserException {
        Document document = read(reader);
        document.setName(systemID);
        return document;
    }

    public XmlPullParser getXPPParser() throws XmlPullParserException {
        if (this.xppParser == null) {
            this.xppParser = getXPPFactory().newPullParser();
        }
        return this.xppParser;
    }

    public XmlPullParserFactory getXPPFactory() throws XmlPullParserException {
        if (this.xppFactory == null) {
            this.xppFactory = XmlPullParserFactory.newInstance();
        }
        this.xppFactory.setNamespaceAware(true);
        return this.xppFactory;
    }

    public void setXPPFactory(XmlPullParserFactory xPPfactory) {
        this.xppFactory = xPPfactory;
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

    public void addHandler(String path, ElementHandler handler) {
        getDispatchHandler().addHandler(path, handler);
    }

    public void removeHandler(String path) {
        getDispatchHandler().removeHandler(path);
    }

    public void setDefaultHandler(ElementHandler handler) {
        getDispatchHandler().setDefaultHandler(handler);
    }

    protected Document parseDocument() throws DocumentException, IOException, XmlPullParserException {
        DocumentFactory df = getDocumentFactory();
        Document document = df.createDocument();
        Element parent = null;
        XmlPullParser pp = getXPPParser();
        pp.setFeature("http://xmlpull.org/v1/doc/features.html#process-namespaces", true);
        while (true) {
            int type = pp.nextToken();
            switch (type) {
                case 1:
                    return document;
                case 2:
                    QName qname = pp.getPrefix() == null ? df.createQName(pp.getName(), pp.getNamespace()) : df.createQName(pp.getName(), pp.getPrefix(), pp.getNamespace());
                    Element newElement = df.createElement(qname);
                    int nsStart = pp.getNamespaceCount(pp.getDepth() - 1);
                    int nsEnd = pp.getNamespaceCount(pp.getDepth());
                    for (int i = nsStart; i < nsEnd; i++) {
                        if (pp.getNamespacePrefix(i) != null) {
                            newElement.addNamespace(pp.getNamespacePrefix(i), pp.getNamespaceUri(i));
                        }
                    }
                    for (int i2 = 0; i2 < pp.getAttributeCount(); i2++) {
                        QName qa = pp.getAttributePrefix(i2) == null ? df.createQName(pp.getAttributeName(i2)) : df.createQName(pp.getAttributeName(i2), pp.getAttributePrefix(i2), pp.getAttributeNamespace(i2));
                        newElement.addAttribute(qa, pp.getAttributeValue(i2));
                    }
                    if (parent != null) {
                        parent.add(newElement);
                    } else {
                        document.add(newElement);
                    }
                    parent = newElement;
                    break;
                case 3:
                    if (parent != null) {
                        parent = parent.getParent();
                        break;
                    } else {
                        break;
                    }
                case 4:
                    String text = pp.getText();
                    if (parent != null) {
                        parent.addText(text);
                        break;
                    } else {
                        throw new DocumentException("Cannot have text content outside of the root document");
                    }
                case 5:
                    if (parent != null) {
                        parent.addCDATA(pp.getText());
                        break;
                    } else {
                        throw new DocumentException("Cannot have text content outside of the root document");
                    }
                case 8:
                    String text2 = pp.getText();
                    int loc = text2.indexOf(" ");
                    if (loc >= 0) {
                        String target = text2.substring(0, loc);
                        String txt = text2.substring(loc + 1);
                        document.addProcessingInstruction(target, txt);
                        break;
                    } else {
                        document.addProcessingInstruction(text2, "");
                        break;
                    }
                case 9:
                    if (parent != null) {
                        parent.addComment(pp.getText());
                        break;
                    } else {
                        document.addComment(pp.getText());
                        break;
                    }
            }
        }
    }

    protected DispatchHandler getDispatchHandler() {
        if (this.dispatchHandler == null) {
            this.dispatchHandler = new DispatchHandler();
        }
        return this.dispatchHandler;
    }

    protected void setDispatchHandler(DispatchHandler dispatchHandler) {
        this.dispatchHandler = dispatchHandler;
    }

    protected Reader createReader(InputStream in) throws IOException {
        return new BufferedReader(new InputStreamReader(in));
    }
}
