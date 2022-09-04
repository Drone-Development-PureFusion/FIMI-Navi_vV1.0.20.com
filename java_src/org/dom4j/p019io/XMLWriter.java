package org.dom4j.p019io;

import com.twitter.sdk.android.core.internal.network.UrlUtils;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.StringTokenizer;
import org.dom4j.AbstractC2649Entity;
import org.dom4j.Attribute;
import org.dom4j.CDATA;
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
import org.xml.sax.InputSource;
import org.xml.sax.Locator;
import org.xml.sax.SAXException;
import org.xml.sax.SAXNotRecognizedException;
import org.xml.sax.SAXNotSupportedException;
import org.xml.sax.XMLReader;
import org.xml.sax.ext.LexicalHandler;
import org.xml.sax.helpers.XMLFilterImpl;
/* renamed from: org.dom4j.io.XMLWriter */
/* loaded from: classes2.dex */
public class XMLWriter extends XMLFilterImpl implements LexicalHandler {
    private static final String PAD_TEXT = " ";
    private boolean autoFlush;
    private StringBuffer buffer;
    private boolean charsAdded;
    private boolean escapeText;
    private OutputFormat format;
    private boolean inDTD;
    private int indentLevel;
    private char lastChar;
    private boolean lastElementClosed;
    protected int lastOutputNodeType;
    private LexicalHandler lexicalHandler;
    private int maximumAllowedCharacter;
    private NamespaceStack namespaceStack;
    private Map namespacesMap;
    protected boolean preserve;
    private boolean resolveEntityRefs;
    private boolean showCommentsInDTDs;
    protected Writer writer;
    protected static final String[] LEXICAL_HANDLER_NAMES = {"http://xml.org/sax/properties/lexical-handler", "http://xml.org/sax/handlers/LexicalHandler"};
    protected static final OutputFormat DEFAULT_FORMAT = new OutputFormat();

    public XMLWriter(Writer writer) {
        this(writer, DEFAULT_FORMAT);
    }

    public XMLWriter(Writer writer, OutputFormat format) {
        this.resolveEntityRefs = true;
        this.lastElementClosed = false;
        this.preserve = false;
        this.namespaceStack = new NamespaceStack();
        this.escapeText = true;
        this.indentLevel = 0;
        this.buffer = new StringBuffer();
        this.charsAdded = false;
        this.writer = writer;
        this.format = format;
        this.namespaceStack.push(Namespace.NO_NAMESPACE);
    }

    public XMLWriter() {
        this.resolveEntityRefs = true;
        this.lastElementClosed = false;
        this.preserve = false;
        this.namespaceStack = new NamespaceStack();
        this.escapeText = true;
        this.indentLevel = 0;
        this.buffer = new StringBuffer();
        this.charsAdded = false;
        this.format = DEFAULT_FORMAT;
        this.writer = new BufferedWriter(new OutputStreamWriter(System.out));
        this.autoFlush = true;
        this.namespaceStack.push(Namespace.NO_NAMESPACE);
    }

    public XMLWriter(OutputStream out) throws UnsupportedEncodingException {
        this.resolveEntityRefs = true;
        this.lastElementClosed = false;
        this.preserve = false;
        this.namespaceStack = new NamespaceStack();
        this.escapeText = true;
        this.indentLevel = 0;
        this.buffer = new StringBuffer();
        this.charsAdded = false;
        this.format = DEFAULT_FORMAT;
        this.writer = createWriter(out, this.format.getEncoding());
        this.autoFlush = true;
        this.namespaceStack.push(Namespace.NO_NAMESPACE);
    }

    public XMLWriter(OutputStream out, OutputFormat format) throws UnsupportedEncodingException {
        this.resolveEntityRefs = true;
        this.lastElementClosed = false;
        this.preserve = false;
        this.namespaceStack = new NamespaceStack();
        this.escapeText = true;
        this.indentLevel = 0;
        this.buffer = new StringBuffer();
        this.charsAdded = false;
        this.format = format;
        this.writer = createWriter(out, format.getEncoding());
        this.autoFlush = true;
        this.namespaceStack.push(Namespace.NO_NAMESPACE);
    }

    public XMLWriter(OutputFormat format) throws UnsupportedEncodingException {
        this.resolveEntityRefs = true;
        this.lastElementClosed = false;
        this.preserve = false;
        this.namespaceStack = new NamespaceStack();
        this.escapeText = true;
        this.indentLevel = 0;
        this.buffer = new StringBuffer();
        this.charsAdded = false;
        this.format = format;
        this.writer = createWriter(System.out, format.getEncoding());
        this.autoFlush = true;
        this.namespaceStack.push(Namespace.NO_NAMESPACE);
    }

    public void setWriter(Writer writer) {
        this.writer = writer;
        this.autoFlush = false;
    }

    public void setOutputStream(OutputStream out) throws UnsupportedEncodingException {
        this.writer = createWriter(out, this.format.getEncoding());
        this.autoFlush = true;
    }

    public boolean isEscapeText() {
        return this.escapeText;
    }

    public void setEscapeText(boolean escapeText) {
        this.escapeText = escapeText;
    }

    public void setIndentLevel(int indentLevel) {
        this.indentLevel = indentLevel;
    }

    public int getMaximumAllowedCharacter() {
        if (this.maximumAllowedCharacter == 0) {
            this.maximumAllowedCharacter = defaultMaximumAllowedCharacter();
        }
        return this.maximumAllowedCharacter;
    }

    public void setMaximumAllowedCharacter(int maximumAllowedCharacter) {
        this.maximumAllowedCharacter = maximumAllowedCharacter;
    }

    public void flush() throws IOException {
        this.writer.flush();
    }

    public void close() throws IOException {
        this.writer.close();
    }

    public void println() throws IOException {
        this.writer.write(this.format.getLineSeparator());
    }

    public void write(Attribute attribute) throws IOException {
        writeAttribute(attribute);
        if (this.autoFlush) {
            flush();
        }
    }

    public void write(Document doc) throws IOException {
        writeDeclaration();
        if (doc.getDocType() != null) {
            indent();
            writeDocType(doc.getDocType());
        }
        int size = doc.nodeCount();
        for (int i = 0; i < size; i++) {
            Node node = doc.node(i);
            writeNode(node);
        }
        writePrintln();
        if (this.autoFlush) {
            flush();
        }
    }

    public void write(Element element) throws IOException {
        writeElement(element);
        if (this.autoFlush) {
            flush();
        }
    }

    public void write(CDATA cdata) throws IOException {
        writeCDATA(cdata.getText());
        if (this.autoFlush) {
            flush();
        }
    }

    public void write(Comment comment) throws IOException {
        writeComment(comment.getText());
        if (this.autoFlush) {
            flush();
        }
    }

    public void write(DocumentType docType) throws IOException {
        writeDocType(docType);
        if (this.autoFlush) {
            flush();
        }
    }

    public void write(AbstractC2649Entity entity) throws IOException {
        writeEntity(entity);
        if (this.autoFlush) {
            flush();
        }
    }

    public void write(Namespace namespace) throws IOException {
        writeNamespace(namespace);
        if (this.autoFlush) {
            flush();
        }
    }

    public void write(ProcessingInstruction processingInstruction) throws IOException {
        writeProcessingInstruction(processingInstruction);
        if (this.autoFlush) {
            flush();
        }
    }

    public void write(String text) throws IOException {
        writeString(text);
        if (this.autoFlush) {
            flush();
        }
    }

    public void write(Text text) throws IOException {
        writeString(text.getText());
        if (this.autoFlush) {
            flush();
        }
    }

    public void write(Node node) throws IOException {
        writeNode(node);
        if (this.autoFlush) {
            flush();
        }
    }

    public void write(Object object) throws IOException {
        if (object instanceof Node) {
            write((Node) object);
        } else if (object instanceof String) {
            write((String) object);
        } else if (object instanceof List) {
            List list = (List) object;
            int size = list.size();
            for (int i = 0; i < size; i++) {
                write(list.get(i));
            }
        } else if (object != null) {
            throw new IOException(new StringBuffer().append("Invalid object: ").append(object).toString());
        }
    }

    public void writeOpen(Element element) throws IOException {
        this.writer.write("<");
        this.writer.write(element.getQualifiedName());
        writeAttributes(element);
        this.writer.write(">");
    }

    public void writeClose(Element element) throws IOException {
        writeClose(element.getQualifiedName());
    }

    @Override // org.xml.sax.helpers.XMLFilterImpl, org.xml.sax.XMLReader
    public void parse(InputSource source) throws IOException, SAXException {
        installLexicalHandler();
        super.parse(source);
    }

    @Override // org.xml.sax.helpers.XMLFilterImpl, org.xml.sax.XMLReader
    public void setProperty(String name, Object value) throws SAXNotRecognizedException, SAXNotSupportedException {
        for (int i = 0; i < LEXICAL_HANDLER_NAMES.length; i++) {
            if (LEXICAL_HANDLER_NAMES[i].equals(name)) {
                setLexicalHandler((LexicalHandler) value);
                return;
            }
        }
        super.setProperty(name, value);
    }

    @Override // org.xml.sax.helpers.XMLFilterImpl, org.xml.sax.XMLReader
    public Object getProperty(String name) throws SAXNotRecognizedException, SAXNotSupportedException {
        for (int i = 0; i < LEXICAL_HANDLER_NAMES.length; i++) {
            if (LEXICAL_HANDLER_NAMES[i].equals(name)) {
                return getLexicalHandler();
            }
        }
        return super.getProperty(name);
    }

    public void setLexicalHandler(LexicalHandler handler) {
        if (handler == null) {
            throw new NullPointerException("Null lexical handler");
        }
        this.lexicalHandler = handler;
    }

    public LexicalHandler getLexicalHandler() {
        return this.lexicalHandler;
    }

    @Override // org.xml.sax.helpers.XMLFilterImpl, org.xml.sax.ContentHandler
    public void setDocumentLocator(Locator locator) {
        super.setDocumentLocator(locator);
    }

    @Override // org.xml.sax.helpers.XMLFilterImpl, org.xml.sax.ContentHandler
    public void startDocument() throws SAXException {
        try {
            writeDeclaration();
            super.startDocument();
        } catch (IOException e) {
            handleException(e);
        }
    }

    @Override // org.xml.sax.helpers.XMLFilterImpl, org.xml.sax.ContentHandler
    public void endDocument() throws SAXException {
        super.endDocument();
        if (this.autoFlush) {
            try {
                flush();
            } catch (IOException e) {
            }
        }
    }

    @Override // org.xml.sax.helpers.XMLFilterImpl, org.xml.sax.ContentHandler
    public void startPrefixMapping(String prefix, String uri) throws SAXException {
        if (this.namespacesMap == null) {
            this.namespacesMap = new HashMap();
        }
        this.namespacesMap.put(prefix, uri);
        super.startPrefixMapping(prefix, uri);
    }

    @Override // org.xml.sax.helpers.XMLFilterImpl, org.xml.sax.ContentHandler
    public void endPrefixMapping(String prefix) throws SAXException {
        super.endPrefixMapping(prefix);
    }

    @Override // org.xml.sax.helpers.XMLFilterImpl, org.xml.sax.ContentHandler
    public void startElement(String namespaceURI, String localName, String qName, Attributes attributes) throws SAXException {
        try {
            this.charsAdded = false;
            writePrintln();
            indent();
            this.writer.write("<");
            this.writer.write(qName);
            writeNamespaces();
            writeAttributes(attributes);
            this.writer.write(">");
            this.indentLevel++;
            this.lastOutputNodeType = 1;
            this.lastElementClosed = false;
            super.startElement(namespaceURI, localName, qName, attributes);
        } catch (IOException e) {
            handleException(e);
        }
    }

    @Override // org.xml.sax.helpers.XMLFilterImpl, org.xml.sax.ContentHandler
    public void endElement(String namespaceURI, String localName, String qName) throws SAXException {
        try {
            this.charsAdded = false;
            this.indentLevel--;
            if (this.lastElementClosed) {
                writePrintln();
                indent();
            }
            if (1 != 0) {
                writeClose(qName);
            } else {
                writeEmptyElementClose(qName);
            }
            this.lastOutputNodeType = 1;
            this.lastElementClosed = true;
            super.endElement(namespaceURI, localName, qName);
        } catch (IOException e) {
            handleException(e);
        }
    }

    @Override // org.xml.sax.helpers.XMLFilterImpl, org.xml.sax.ContentHandler
    public void characters(char[] ch2, int start, int length) throws SAXException {
        if (ch2 != null && ch2.length != 0 && length > 0) {
            try {
                String string = String.valueOf(ch2, start, length);
                if (this.escapeText) {
                    string = escapeElementEntities(string);
                }
                if (this.format.isTrimText()) {
                    if (this.lastOutputNodeType == 3 && !this.charsAdded) {
                        this.writer.write(32);
                    } else if (this.charsAdded && Character.isWhitespace(this.lastChar)) {
                        this.writer.write(32);
                    } else if (this.lastOutputNodeType == 1 && this.format.isPadText() && this.lastElementClosed && Character.isWhitespace(ch2[0])) {
                        this.writer.write(PAD_TEXT);
                    }
                    String delim = "";
                    StringTokenizer tokens = new StringTokenizer(string);
                    while (tokens.hasMoreTokens()) {
                        this.writer.write(delim);
                        this.writer.write(tokens.nextToken());
                        delim = PAD_TEXT;
                    }
                } else {
                    this.writer.write(string);
                }
                this.charsAdded = true;
                this.lastChar = ch2[(start + length) - 1];
                this.lastOutputNodeType = 3;
                super.characters(ch2, start, length);
            } catch (IOException e) {
                handleException(e);
            }
        }
    }

    @Override // org.xml.sax.helpers.XMLFilterImpl, org.xml.sax.ContentHandler
    public void ignorableWhitespace(char[] ch2, int start, int length) throws SAXException {
        super.ignorableWhitespace(ch2, start, length);
    }

    @Override // org.xml.sax.helpers.XMLFilterImpl, org.xml.sax.ContentHandler
    public void processingInstruction(String target, String data) throws SAXException {
        try {
            indent();
            this.writer.write("<?");
            this.writer.write(target);
            this.writer.write(PAD_TEXT);
            this.writer.write(data);
            this.writer.write("?>");
            writePrintln();
            this.lastOutputNodeType = 7;
            super.processingInstruction(target, data);
        } catch (IOException e) {
            handleException(e);
        }
    }

    @Override // org.xml.sax.helpers.XMLFilterImpl, org.xml.sax.DTDHandler
    public void notationDecl(String name, String publicID, String systemID) throws SAXException {
        super.notationDecl(name, publicID, systemID);
    }

    @Override // org.xml.sax.helpers.XMLFilterImpl, org.xml.sax.DTDHandler
    public void unparsedEntityDecl(String name, String publicID, String systemID, String notationName) throws SAXException {
        super.unparsedEntityDecl(name, publicID, systemID, notationName);
    }

    @Override // org.xml.sax.ext.LexicalHandler
    public void startDTD(String name, String publicID, String systemID) throws SAXException {
        this.inDTD = true;
        try {
            writeDocType(name, publicID, systemID);
        } catch (IOException e) {
            handleException(e);
        }
        if (this.lexicalHandler != null) {
            this.lexicalHandler.startDTD(name, publicID, systemID);
        }
    }

    @Override // org.xml.sax.ext.LexicalHandler
    public void endDTD() throws SAXException {
        this.inDTD = false;
        if (this.lexicalHandler != null) {
            this.lexicalHandler.endDTD();
        }
    }

    public void startCDATA() throws SAXException {
        try {
            this.writer.write("<![CDATA[");
        } catch (IOException e) {
            handleException(e);
        }
        if (this.lexicalHandler != null) {
            this.lexicalHandler.startCDATA();
        }
    }

    public void endCDATA() throws SAXException {
        try {
            this.writer.write("]]>");
        } catch (IOException e) {
            handleException(e);
        }
        if (this.lexicalHandler != null) {
            this.lexicalHandler.endCDATA();
        }
    }

    @Override // org.xml.sax.ext.LexicalHandler
    public void startEntity(String name) throws SAXException {
        try {
            writeEntityRef(name);
        } catch (IOException e) {
            handleException(e);
        }
        if (this.lexicalHandler != null) {
            this.lexicalHandler.startEntity(name);
        }
    }

    @Override // org.xml.sax.ext.LexicalHandler
    public void endEntity(String name) throws SAXException {
        if (this.lexicalHandler != null) {
            this.lexicalHandler.endEntity(name);
        }
    }

    @Override // org.xml.sax.ext.LexicalHandler
    public void comment(char[] ch2, int start, int length) throws SAXException {
        if (this.showCommentsInDTDs || !this.inDTD) {
            try {
                this.charsAdded = false;
                writeComment(new String(ch2, start, length));
            } catch (IOException e) {
                handleException(e);
            }
        }
        if (this.lexicalHandler != null) {
            this.lexicalHandler.comment(ch2, start, length);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void writeElement(Element element) throws IOException {
        int size = element.nodeCount();
        String qualifiedName = element.getQualifiedName();
        writePrintln();
        indent();
        this.writer.write("<");
        this.writer.write(qualifiedName);
        int previouslyDeclaredNamespaces = this.namespaceStack.size();
        Namespace ns = element.getNamespace();
        if (isNamespaceDeclaration(ns)) {
            this.namespaceStack.push(ns);
            writeNamespace(ns);
        }
        boolean textOnly = true;
        for (int i = 0; i < size; i++) {
            Node node = element.node(i);
            if (node instanceof Namespace) {
                Namespace additional = (Namespace) node;
                if (isNamespaceDeclaration(additional)) {
                    this.namespaceStack.push(additional);
                    writeNamespace(additional);
                }
            } else if (node instanceof Element) {
                textOnly = false;
            } else if (node instanceof Comment) {
                textOnly = false;
            }
        }
        writeAttributes(element);
        this.lastOutputNodeType = 1;
        if (size <= 0) {
            writeEmptyElementClose(qualifiedName);
        } else {
            this.writer.write(">");
            if (textOnly) {
                writeElementContent(element);
            } else {
                this.indentLevel++;
                writeElementContent(element);
                this.indentLevel--;
                writePrintln();
                indent();
            }
            this.writer.write("</");
            this.writer.write(qualifiedName);
            this.writer.write(">");
        }
        while (this.namespaceStack.size() > previouslyDeclaredNamespaces) {
            this.namespaceStack.pop();
        }
        this.lastOutputNodeType = 1;
    }

    protected final boolean isElementSpacePreserved(Element element) {
        Attribute attr = element.attribute("space");
        boolean preserveFound = this.preserve;
        if (attr != null) {
            if ("xml".equals(attr.getNamespacePrefix()) && "preserve".equals(attr.getText())) {
                return true;
            }
            return false;
        }
        return preserveFound;
    }

    protected void writeElementContent(Element element) throws IOException {
        char firstChar;
        boolean trim = this.format.isTrimText();
        boolean oldPreserve = this.preserve;
        if (trim) {
            this.preserve = isElementSpacePreserved(element);
            trim = !this.preserve;
        }
        if (trim) {
            Text lastTextNode = null;
            StringBuffer buff = null;
            boolean textOnly = true;
            int size = element.nodeCount();
            for (int i = 0; i < size; i++) {
                Node node = element.node(i);
                if (node instanceof Text) {
                    if (lastTextNode == null) {
                        lastTextNode = (Text) node;
                    } else {
                        if (buff == null) {
                            buff = new StringBuffer(lastTextNode.getText());
                        }
                        buff.append(((Text) node).getText());
                    }
                } else {
                    if (!textOnly && this.format.isPadText()) {
                        char firstChar2 = 'a';
                        if (buff != null) {
                            firstChar2 = buff.charAt(0);
                        } else if (lastTextNode != null) {
                            firstChar2 = lastTextNode.getText().charAt(0);
                        }
                        if (Character.isWhitespace(firstChar2)) {
                            this.writer.write(PAD_TEXT);
                        }
                    }
                    if (lastTextNode != null) {
                        if (buff != null) {
                            writeString(buff.toString());
                            buff = null;
                        } else {
                            writeString(lastTextNode.getText());
                        }
                        if (this.format.isPadText()) {
                            char lastTextChar = 'a';
                            if (buff != null) {
                                lastTextChar = buff.charAt(buff.length() - 1);
                            } else if (lastTextNode != null) {
                                String txt = lastTextNode.getText();
                                lastTextChar = txt.charAt(txt.length() - 1);
                            }
                            if (Character.isWhitespace(lastTextChar)) {
                                this.writer.write(PAD_TEXT);
                            }
                        }
                        lastTextNode = null;
                    }
                    textOnly = false;
                    writeNode(node);
                }
            }
            if (lastTextNode != null) {
                if (!textOnly && this.format.isPadText()) {
                    if (buff != null) {
                        firstChar = buff.charAt(0);
                    } else {
                        firstChar = lastTextNode.getText().charAt(0);
                    }
                    if (Character.isWhitespace(firstChar)) {
                        this.writer.write(PAD_TEXT);
                    }
                }
                if (buff != null) {
                    writeString(buff.toString());
                } else {
                    writeString(lastTextNode.getText());
                }
            }
        } else {
            Node lastTextNode2 = null;
            int size2 = element.nodeCount();
            for (int i2 = 0; i2 < size2; i2++) {
                Node node2 = element.node(i2);
                if (node2 instanceof Text) {
                    writeNode(node2);
                    lastTextNode2 = node2;
                } else {
                    if (lastTextNode2 != null && this.format.isPadText()) {
                        String txt2 = lastTextNode2.getText();
                        char lastTextChar2 = txt2.charAt(txt2.length() - 1);
                        if (Character.isWhitespace(lastTextChar2)) {
                            this.writer.write(PAD_TEXT);
                        }
                    }
                    writeNode(node2);
                    lastTextNode2 = null;
                }
            }
        }
        this.preserve = oldPreserve;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void writeCDATA(String text) throws IOException {
        this.writer.write("<![CDATA[");
        if (text != null) {
            this.writer.write(text);
        }
        this.writer.write("]]>");
        this.lastOutputNodeType = 4;
    }

    protected void writeDocType(DocumentType docType) throws IOException {
        if (docType != null) {
            docType.write(this.writer);
            writePrintln();
        }
    }

    protected void writeNamespace(Namespace namespace) throws IOException {
        if (namespace != null) {
            writeNamespace(namespace.getPrefix(), namespace.getURI());
        }
    }

    protected void writeNamespaces() throws IOException {
        if (this.namespacesMap != null) {
            for (Map.Entry entry : this.namespacesMap.entrySet()) {
                String prefix = (String) entry.getKey();
                String uri = (String) entry.getValue();
                writeNamespace(prefix, uri);
            }
            this.namespacesMap = null;
        }
    }

    protected void writeNamespace(String prefix, String uri) throws IOException {
        if (prefix != null && prefix.length() > 0) {
            this.writer.write(" xmlns:");
            this.writer.write(prefix);
            this.writer.write("=\"");
        } else {
            this.writer.write(" xmlns=\"");
        }
        this.writer.write(uri);
        this.writer.write("\"");
    }

    protected void writeProcessingInstruction(ProcessingInstruction pi) throws IOException {
        this.writer.write("<?");
        this.writer.write(pi.getName());
        this.writer.write(PAD_TEXT);
        this.writer.write(pi.getText());
        this.writer.write("?>");
        writePrintln();
        this.lastOutputNodeType = 7;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void writeString(String text) throws IOException {
        if (text != null && text.length() > 0) {
            if (this.escapeText) {
                text = escapeElementEntities(text);
            }
            if (this.format.isTrimText()) {
                boolean first = true;
                StringTokenizer tokenizer = new StringTokenizer(text);
                while (tokenizer.hasMoreTokens()) {
                    String token = tokenizer.nextToken();
                    if (first) {
                        first = false;
                        if (this.lastOutputNodeType == 3) {
                            this.writer.write(PAD_TEXT);
                        }
                    } else {
                        this.writer.write(PAD_TEXT);
                    }
                    this.writer.write(token);
                    this.lastOutputNodeType = 3;
                    this.lastChar = token.charAt(token.length() - 1);
                }
                return;
            }
            this.lastOutputNodeType = 3;
            this.writer.write(text);
            this.lastChar = text.charAt(text.length() - 1);
        }
    }

    protected void writeNodeText(Node node) throws IOException {
        String text = node.getText();
        if (text != null && text.length() > 0) {
            if (this.escapeText) {
                text = escapeElementEntities(text);
            }
            this.lastOutputNodeType = 3;
            this.writer.write(text);
            this.lastChar = text.charAt(text.length() - 1);
        }
    }

    protected void writeNode(Node node) throws IOException {
        int nodeType = node.getNodeType();
        switch (nodeType) {
            case 1:
                writeElement((Element) node);
                return;
            case 2:
                writeAttribute((Attribute) node);
                return;
            case 3:
                writeNodeText(node);
                return;
            case 4:
                writeCDATA(node.getText());
                return;
            case 5:
                writeEntity((AbstractC2649Entity) node);
                return;
            case 6:
            case 11:
            case 12:
            default:
                throw new IOException(new StringBuffer().append("Invalid node type: ").append(node).toString());
            case 7:
                writeProcessingInstruction((ProcessingInstruction) node);
                return;
            case 8:
                writeComment(node.getText());
                return;
            case 9:
                write((Document) node);
                return;
            case 10:
                writeDocType((DocumentType) node);
                return;
            case 13:
                return;
        }
    }

    protected void installLexicalHandler() {
        XMLReader parent = getParent();
        if (parent == null) {
            throw new NullPointerException("No parent for filter");
        }
        for (int i = 0; i < LEXICAL_HANDLER_NAMES.length; i++) {
            try {
                parent.setProperty(LEXICAL_HANDLER_NAMES[i], this);
                return;
            } catch (SAXNotRecognizedException | SAXNotSupportedException e) {
            }
        }
    }

    protected void writeDocType(String name, String publicID, String systemID) throws IOException {
        boolean hasPublic = false;
        this.writer.write("<!DOCTYPE ");
        this.writer.write(name);
        if (publicID != null && !publicID.equals("")) {
            this.writer.write(" PUBLIC \"");
            this.writer.write(publicID);
            this.writer.write("\"");
            hasPublic = true;
        }
        if (systemID != null && !systemID.equals("")) {
            if (!hasPublic) {
                this.writer.write(" SYSTEM");
            }
            this.writer.write(" \"");
            this.writer.write(systemID);
            this.writer.write("\"");
        }
        this.writer.write(">");
        writePrintln();
    }

    protected void writeEntity(AbstractC2649Entity entity) throws IOException {
        if (!resolveEntityRefs()) {
            writeEntityRef(entity.getName());
        } else {
            this.writer.write(entity.getText());
        }
    }

    protected void writeEntityRef(String name) throws IOException {
        this.writer.write("&");
        this.writer.write(name);
        this.writer.write(";");
        this.lastOutputNodeType = 5;
    }

    protected void writeComment(String text) throws IOException {
        if (this.format.isNewlines()) {
            println();
            indent();
        }
        this.writer.write("<!--");
        this.writer.write(text);
        this.writer.write("-->");
        this.lastOutputNodeType = 8;
    }

    protected void writeAttributes(Element element) throws IOException {
        int size = element.attributeCount();
        for (int i = 0; i < size; i++) {
            Attribute attribute = element.attribute(i);
            Namespace ns = attribute.getNamespace();
            if (ns != null && ns != Namespace.NO_NAMESPACE && ns != Namespace.XML_NAMESPACE) {
                if (!ns.getURI().equals(this.namespaceStack.getURI(ns.getPrefix()))) {
                    writeNamespace(ns);
                    this.namespaceStack.push(ns);
                }
            }
            String attName = attribute.getName();
            if (attName.startsWith("xmlns:")) {
                String prefix = attName.substring(6);
                if (this.namespaceStack.getNamespaceForPrefix(prefix) == null) {
                    String uri = attribute.getValue();
                    this.namespaceStack.push(prefix, uri);
                    writeNamespace(prefix, uri);
                }
            } else if (attName.equals("xmlns")) {
                if (this.namespaceStack.getDefaultNamespace() == null) {
                    String uri2 = attribute.getValue();
                    this.namespaceStack.push(null, uri2);
                    writeNamespace(null, uri2);
                }
            } else {
                char quote = this.format.getAttributeQuoteCharacter();
                this.writer.write(PAD_TEXT);
                this.writer.write(attribute.getQualifiedName());
                this.writer.write("=");
                this.writer.write(quote);
                writeEscapeAttributeEntities(attribute.getValue());
                this.writer.write(quote);
            }
        }
    }

    protected void writeAttribute(Attribute attribute) throws IOException {
        this.writer.write(PAD_TEXT);
        this.writer.write(attribute.getQualifiedName());
        this.writer.write("=");
        char quote = this.format.getAttributeQuoteCharacter();
        this.writer.write(quote);
        writeEscapeAttributeEntities(attribute.getValue());
        this.writer.write(quote);
        this.lastOutputNodeType = 2;
    }

    protected void writeAttributes(Attributes attributes) throws IOException {
        int size = attributes.getLength();
        for (int i = 0; i < size; i++) {
            writeAttribute(attributes, i);
        }
    }

    protected void writeAttribute(Attributes attributes, int index) throws IOException {
        char quote = this.format.getAttributeQuoteCharacter();
        this.writer.write(PAD_TEXT);
        this.writer.write(attributes.getQName(index));
        this.writer.write("=");
        this.writer.write(quote);
        writeEscapeAttributeEntities(attributes.getValue(index));
        this.writer.write(quote);
    }

    protected void indent() throws IOException {
        String indent = this.format.getIndent();
        if (indent != null && indent.length() > 0) {
            for (int i = 0; i < this.indentLevel; i++) {
                this.writer.write(indent);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void writePrintln() throws IOException {
        if (this.format.isNewlines()) {
            String seperator = this.format.getLineSeparator();
            if (this.lastChar != seperator.charAt(seperator.length() - 1)) {
                this.writer.write(this.format.getLineSeparator());
            }
        }
    }

    protected Writer createWriter(OutputStream outStream, String encoding) throws UnsupportedEncodingException {
        return new BufferedWriter(new OutputStreamWriter(outStream, encoding));
    }

    protected void writeDeclaration() throws IOException {
        String encoding = this.format.getEncoding();
        if (!this.format.isSuppressDeclaration()) {
            if (encoding.equals(UrlUtils.UTF8)) {
                this.writer.write("<?xml version=\"1.0\"");
                if (!this.format.isOmitEncoding()) {
                    this.writer.write(" encoding=\"UTF-8\"");
                }
                this.writer.write("?>");
            } else {
                this.writer.write("<?xml version=\"1.0\"");
                if (!this.format.isOmitEncoding()) {
                    this.writer.write(new StringBuffer().append(" encoding=\"").append(encoding).append("\"").toString());
                }
                this.writer.write("?>");
            }
            if (this.format.isNewLineAfterDeclaration()) {
                println();
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void writeClose(String qualifiedName) throws IOException {
        this.writer.write("</");
        this.writer.write(qualifiedName);
        this.writer.write(">");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void writeEmptyElementClose(String qualifiedName) throws IOException {
        if (!this.format.isExpandEmptyElements()) {
            this.writer.write("/>");
            return;
        }
        this.writer.write("></");
        this.writer.write(qualifiedName);
        this.writer.write(">");
    }

    protected boolean isExpandEmptyElements() {
        return this.format.isExpandEmptyElements();
    }

    protected String escapeElementEntities(String text) {
        char[] block = null;
        int last = 0;
        int size = text.length();
        int i = 0;
        while (i < size) {
            String entity = null;
            char c = text.charAt(i);
            switch (c) {
                case '\t':
                case '\n':
                case '\r':
                    if (this.preserve) {
                        entity = String.valueOf(c);
                        break;
                    }
                    break;
                case '&':
                    entity = "&amp;";
                    break;
                case '<':
                    entity = "&lt;";
                    break;
                case '>':
                    entity = "&gt;";
                    break;
                default:
                    if (c < ' ' || shouldEncodeChar(c)) {
                        entity = new StringBuffer().append("&#").append((int) c).append(";").toString();
                        break;
                    }
                    break;
            }
            if (entity != null) {
                if (block == null) {
                    block = text.toCharArray();
                }
                this.buffer.append(block, last, i - last);
                this.buffer.append(entity);
                last = i + 1;
            }
            i++;
        }
        if (last != 0) {
            if (last < size) {
                if (block == null) {
                    block = text.toCharArray();
                }
                this.buffer.append(block, last, i - last);
            }
            String answer = this.buffer.toString();
            this.buffer.setLength(0);
            return answer;
        }
        return text;
    }

    protected void writeEscapeAttributeEntities(String txt) throws IOException {
        if (txt != null) {
            String escapedText = escapeAttributeEntities(txt);
            this.writer.write(escapedText);
        }
    }

    protected String escapeAttributeEntities(String text) {
        char quote = this.format.getAttributeQuoteCharacter();
        char[] block = null;
        int last = 0;
        int size = text.length();
        int i = 0;
        while (i < size) {
            String entity = null;
            char c = text.charAt(i);
            switch (c) {
                case '\t':
                case '\n':
                case '\r':
                    break;
                case '\"':
                    if (quote == '\"') {
                        entity = "&quot;";
                        break;
                    }
                    break;
                case '&':
                    entity = "&amp;";
                    break;
                case '\'':
                    if (quote == '\'') {
                        entity = "&apos;";
                        break;
                    }
                    break;
                case '<':
                    entity = "&lt;";
                    break;
                case '>':
                    entity = "&gt;";
                    break;
                default:
                    if (c < ' ' || shouldEncodeChar(c)) {
                        entity = new StringBuffer().append("&#").append((int) c).append(";").toString();
                        break;
                    }
                    break;
            }
            if (entity != null) {
                if (block == null) {
                    block = text.toCharArray();
                }
                this.buffer.append(block, last, i - last);
                this.buffer.append(entity);
                last = i + 1;
            }
            i++;
        }
        if (last != 0) {
            if (last < size) {
                if (block == null) {
                    block = text.toCharArray();
                }
                this.buffer.append(block, last, i - last);
            }
            String answer = this.buffer.toString();
            this.buffer.setLength(0);
            return answer;
        }
        return text;
    }

    protected boolean shouldEncodeChar(char c) {
        int max = getMaximumAllowedCharacter();
        return max > 0 && c > max;
    }

    protected int defaultMaximumAllowedCharacter() {
        String encoding = this.format.getEncoding();
        return (encoding == null || !encoding.equals("US-ASCII")) ? -1 : 127;
    }

    protected boolean isNamespaceDeclaration(Namespace ns) {
        if (ns != null && ns != Namespace.XML_NAMESPACE) {
            String uri = ns.getURI();
            if (uri != null && !this.namespaceStack.contains(ns)) {
                return true;
            }
        }
        return false;
    }

    protected void handleException(IOException e) throws SAXException {
        throw new SAXException(e);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public OutputFormat getOutputFormat() {
        return this.format;
    }

    public boolean resolveEntityRefs() {
        return this.resolveEntityRefs;
    }

    public void setResolveEntityRefs(boolean resolve) {
        this.resolveEntityRefs = resolve;
    }
}
