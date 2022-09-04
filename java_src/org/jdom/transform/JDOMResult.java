package org.jdom.transform;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.xml.transform.sax.SAXResult;
import org.jdom.DefaultJDOMFactory;
import org.jdom.Document;
import org.jdom.Element;
import org.jdom.JDOMFactory;
import org.jdom.input.SAXHandler;
import org.xml.sax.Attributes;
import org.xml.sax.ContentHandler;
import org.xml.sax.SAXException;
import org.xml.sax.ext.LexicalHandler;
import org.xml.sax.helpers.XMLFilterImpl;
/* loaded from: classes2.dex */
public class JDOMResult extends SAXResult {
    private static final String CVS_ID = "@(#) $RCSfile: JDOMResult.java,v $ $Revision: 1.23 $ $Date: 2004/08/31 06:10:38 $ $Name: jdom_1_0 $";
    public static final String JDOM_FEATURE = "http://org.jdom.transform.JDOMResult/feature";
    private Object result = null;
    private boolean queried = false;
    private JDOMFactory factory = null;

    public JDOMResult() {
        DocumentBuilder builder = new DocumentBuilder(this);
        super.setHandler(builder);
        super.setLexicalHandler(builder);
    }

    public void setResult(List result) {
        this.result = result;
        this.queried = false;
    }

    public List getResult() {
        List nodes = Collections.EMPTY_LIST;
        retrieveResult();
        if (this.result instanceof List) {
            nodes = (List) this.result;
        } else if ((this.result instanceof Document) && !this.queried) {
            List content = ((Document) this.result).getContent();
            nodes = new ArrayList(content.size());
            while (content.size() != 0) {
                Object o = content.remove(0);
                nodes.add(o);
            }
            this.result = nodes;
        }
        this.queried = true;
        return nodes;
    }

    public void setDocument(Document document) {
        this.result = document;
        this.queried = false;
    }

    public Document getDocument() {
        Document doc = null;
        retrieveResult();
        if (this.result instanceof Document) {
            doc = (Document) this.result;
        } else if ((this.result instanceof List) && !this.queried) {
            try {
                JDOMFactory f = getFactory();
                if (f == null) {
                    f = new DefaultJDOMFactory();
                }
                doc = f.document(null);
                doc.setContent((List) this.result);
                this.result = doc;
            } catch (RuntimeException e) {
            }
        }
        this.queried = true;
        return doc;
    }

    public void setFactory(JDOMFactory factory) {
        this.factory = factory;
    }

    public JDOMFactory getFactory() {
        return this.factory;
    }

    private void retrieveResult() {
        if (this.result != null) {
            return;
        }
        setResult(((DocumentBuilder) getHandler()).getResult());
    }

    @Override // javax.xml.transform.sax.SAXResult
    public void setHandler(ContentHandler handler) {
    }

    @Override // javax.xml.transform.sax.SAXResult
    public void setLexicalHandler(LexicalHandler handler) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public static class FragmentHandler extends SAXHandler {
        private Element dummyRoot = new Element("root", null, null);

        public FragmentHandler(JDOMFactory factory) {
            super(factory);
            pushElement(this.dummyRoot);
        }

        public List getResult() {
            try {
                flushCharacters();
            } catch (SAXException e) {
            }
            return getDetachedContent(this.dummyRoot);
        }

        private List getDetachedContent(Element elt) {
            List content = elt.getContent();
            List nodes = new ArrayList(content.size());
            while (content.size() != 0) {
                Object o = content.remove(0);
                nodes.add(o);
            }
            return nodes;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class DocumentBuilder extends XMLFilterImpl implements LexicalHandler {
        private FragmentHandler saxHandler = null;
        private boolean startDocumentReceived = false;
        private final JDOMResult this$0;

        public DocumentBuilder(JDOMResult this$0) {
            this.this$0 = this$0;
        }

        public List getResult() {
            if (this.saxHandler == null) {
                return null;
            }
            List result = this.saxHandler.getResult();
            this.saxHandler = null;
            this.startDocumentReceived = false;
            return result;
        }

        private void ensureInitialization() throws SAXException {
            if (this.startDocumentReceived) {
                return;
            }
            startDocument();
        }

        @Override // org.xml.sax.helpers.XMLFilterImpl, org.xml.sax.ContentHandler
        public void startDocument() throws SAXException {
            this.startDocumentReceived = true;
            this.this$0.setResult(null);
            this.saxHandler = new FragmentHandler(this.this$0.getFactory());
            super.setContentHandler(this.saxHandler);
            super.startDocument();
        }

        @Override // org.xml.sax.helpers.XMLFilterImpl, org.xml.sax.ContentHandler
        public void startElement(String nsURI, String localName, String qName, Attributes atts) throws SAXException {
            ensureInitialization();
            super.startElement(nsURI, localName, qName, atts);
        }

        @Override // org.xml.sax.helpers.XMLFilterImpl, org.xml.sax.ContentHandler
        public void startPrefixMapping(String prefix, String uri) throws SAXException {
            ensureInitialization();
            super.startPrefixMapping(prefix, uri);
        }

        @Override // org.xml.sax.helpers.XMLFilterImpl, org.xml.sax.ContentHandler
        public void characters(char[] ch2, int start, int length) throws SAXException {
            ensureInitialization();
            super.characters(ch2, start, length);
        }

        @Override // org.xml.sax.helpers.XMLFilterImpl, org.xml.sax.ContentHandler
        public void ignorableWhitespace(char[] ch2, int start, int length) throws SAXException {
            ensureInitialization();
            super.ignorableWhitespace(ch2, start, length);
        }

        @Override // org.xml.sax.helpers.XMLFilterImpl, org.xml.sax.ContentHandler
        public void processingInstruction(String target, String data) throws SAXException {
            ensureInitialization();
            super.processingInstruction(target, data);
        }

        @Override // org.xml.sax.helpers.XMLFilterImpl, org.xml.sax.ContentHandler
        public void skippedEntity(String name) throws SAXException {
            ensureInitialization();
            super.skippedEntity(name);
        }

        @Override // org.xml.sax.ext.LexicalHandler
        public void startDTD(String name, String publicId, String systemId) throws SAXException {
            ensureInitialization();
            this.saxHandler.startDTD(name, publicId, systemId);
        }

        @Override // org.xml.sax.ext.LexicalHandler
        public void endDTD() throws SAXException {
            this.saxHandler.endDTD();
        }

        @Override // org.xml.sax.ext.LexicalHandler
        public void startEntity(String name) throws SAXException {
            ensureInitialization();
            this.saxHandler.startEntity(name);
        }

        @Override // org.xml.sax.ext.LexicalHandler
        public void endEntity(String name) throws SAXException {
            this.saxHandler.endEntity(name);
        }

        @Override // org.xml.sax.ext.LexicalHandler
        public void startCDATA() throws SAXException {
            ensureInitialization();
            this.saxHandler.startCDATA();
        }

        @Override // org.xml.sax.ext.LexicalHandler
        public void endCDATA() throws SAXException {
            this.saxHandler.endCDATA();
        }

        @Override // org.xml.sax.ext.LexicalHandler
        public void comment(char[] ch2, int start, int length) throws SAXException {
            ensureInitialization();
            this.saxHandler.comment(ch2, start, length);
        }
    }
}
