package org.jdom.transform;

import java.io.Reader;
import java.io.StringReader;
import java.util.ArrayList;
import java.util.List;
import javax.xml.transform.sax.SAXSource;
import org.jdom.Document;
import org.jdom.Element;
import org.jdom.JDOMException;
import org.jdom.output.SAXOutputter;
import org.jdom.output.XMLOutputter;
import org.xml.sax.InputSource;
import org.xml.sax.SAXException;
import org.xml.sax.SAXNotSupportedException;
import org.xml.sax.XMLFilter;
import org.xml.sax.XMLReader;
/* loaded from: classes2.dex */
public class JDOMSource extends SAXSource {
    private static final String CVS_ID = "@(#) $RCSfile: JDOMSource.java,v $ $Revision: 1.18 $ $Date: 2004/08/31 04:43:48 $ $Name: jdom_1_0 $";
    public static final String JDOM_FEATURE = "http://org.jdom.transform.JDOMSource/feature";
    private XMLReader xmlReader = null;

    public JDOMSource(Document source) {
        setDocument(source);
    }

    public JDOMSource(List source) {
        setNodes(source);
    }

    public JDOMSource(Element source) {
        List nodes = new ArrayList();
        nodes.add(source);
        setNodes(nodes);
    }

    public void setDocument(Document source) {
        super.setInputSource(new JDOMInputSource(source));
    }

    public Document getDocument() {
        Object src = ((JDOMInputSource) getInputSource()).getSource();
        if (!(src instanceof Document)) {
            return null;
        }
        Document doc = (Document) src;
        return doc;
    }

    public void setNodes(List source) {
        super.setInputSource(new JDOMInputSource(source));
    }

    public List getNodes() {
        Object src = ((JDOMInputSource) getInputSource()).getSource();
        if (!(src instanceof List)) {
            return null;
        }
        List nodes = (List) src;
        return nodes;
    }

    @Override // javax.xml.transform.sax.SAXSource
    public void setInputSource(InputSource inputSource) throws UnsupportedOperationException {
        throw new UnsupportedOperationException();
    }

    @Override // javax.xml.transform.sax.SAXSource
    public void setXMLReader(XMLReader reader) throws UnsupportedOperationException {
        if (reader instanceof XMLFilter) {
            XMLReader xMLReader = reader;
            while (true) {
                XMLFilter filter = (XMLFilter) xMLReader;
                if (filter.getParent() instanceof XMLFilter) {
                    xMLReader = filter.getParent();
                } else {
                    filter.setParent(new DocumentReader());
                    this.xmlReader = reader;
                    return;
                }
            }
        } else {
            throw new UnsupportedOperationException();
        }
    }

    @Override // javax.xml.transform.sax.SAXSource
    public XMLReader getXMLReader() {
        if (this.xmlReader == null) {
            this.xmlReader = new DocumentReader();
        }
        return this.xmlReader;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class JDOMInputSource extends InputSource {
        private Object source;

        public JDOMInputSource(Document document) {
            this.source = null;
            this.source = document;
        }

        public JDOMInputSource(List nodes) {
            this.source = null;
            this.source = nodes;
        }

        public Object getSource() {
            return this.source;
        }

        @Override // org.xml.sax.InputSource
        public void setCharacterStream(Reader characterStream) throws UnsupportedOperationException {
            throw new UnsupportedOperationException();
        }

        @Override // org.xml.sax.InputSource
        public Reader getCharacterStream() {
            Object src = getSource();
            if (src instanceof Document) {
                Reader reader = new StringReader(new XMLOutputter().outputString((Document) src));
                return reader;
            } else if (!(src instanceof List)) {
                return null;
            } else {
                Reader reader2 = new StringReader(new XMLOutputter().outputString((List) src));
                return reader2;
            }
        }
    }

    /* loaded from: classes2.dex */
    private static class DocumentReader extends SAXOutputter implements XMLReader {
        @Override // org.xml.sax.XMLReader
        public void parse(String systemId) throws SAXNotSupportedException {
            throw new SAXNotSupportedException("Only JDOM Documents are supported as input");
        }

        @Override // org.xml.sax.XMLReader
        public void parse(InputSource input) throws SAXException {
            if (input instanceof JDOMInputSource) {
                try {
                    Object source = ((JDOMInputSource) input).getSource();
                    if (source instanceof Document) {
                        output((Document) source);
                        return;
                    } else {
                        output((List) source);
                        return;
                    }
                } catch (JDOMException e) {
                    throw new SAXException(e.getMessage(), e);
                }
            }
            throw new SAXNotSupportedException("Only JDOM Documents are supported as input");
        }
    }
}
