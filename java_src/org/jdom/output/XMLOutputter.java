package org.jdom.output;

import com.fimi.kernel.connect.tcp.SocketOption;
import com.twitter.sdk.android.core.internal.network.UrlUtils;
import java.io.BufferedOutputStream;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.util.List;
import org.jdom.Attribute;
import org.jdom.CDATA;
import org.jdom.Comment;
import org.jdom.DocType;
import org.jdom.Document;
import org.jdom.Element;
import org.jdom.EntityRef;
import org.jdom.Namespace;
import org.jdom.ProcessingInstruction;
import org.jdom.Text;
import org.jdom.output.Format;
/* loaded from: classes2.dex */
public class XMLOutputter implements Cloneable {
    private static final String CVS_ID = "@(#) $RCSfile: XMLOutputter.java,v $ $Revision: 1.112 $ $Date: 2004/09/01 06:08:18 $ $Name: jdom_1_0 $";
    protected static final Format preserveFormat = Format.getRawFormat();
    protected Format currentFormat;
    private boolean escapeOutput;
    private Format userFormat;

    public XMLOutputter() {
        this.userFormat = Format.getRawFormat();
        this.currentFormat = this.userFormat;
        this.escapeOutput = true;
    }

    public XMLOutputter(Format format) {
        this.userFormat = Format.getRawFormat();
        this.currentFormat = this.userFormat;
        this.escapeOutput = true;
        this.userFormat = (Format) format.clone();
        this.currentFormat = this.userFormat;
    }

    public XMLOutputter(XMLOutputter that) {
        this.userFormat = Format.getRawFormat();
        this.currentFormat = this.userFormat;
        this.escapeOutput = true;
        this.userFormat = (Format) that.userFormat.clone();
        this.currentFormat = this.userFormat;
    }

    public void setFormat(Format newFormat) {
        this.userFormat = (Format) newFormat.clone();
        this.currentFormat = this.userFormat;
    }

    public Format getFormat() {
        return (Format) this.userFormat.clone();
    }

    public void output(Document doc, OutputStream out) throws IOException {
        Writer writer = makeWriter(out);
        output(doc, writer);
    }

    public void output(DocType doctype, OutputStream out) throws IOException {
        Writer writer = makeWriter(out);
        output(doctype, writer);
    }

    public void output(Element element, OutputStream out) throws IOException {
        Writer writer = makeWriter(out);
        output(element, writer);
    }

    public void outputElementContent(Element element, OutputStream out) throws IOException {
        Writer writer = makeWriter(out);
        outputElementContent(element, writer);
    }

    public void output(List list, OutputStream out) throws IOException {
        Writer writer = makeWriter(out);
        output(list, writer);
    }

    public void output(CDATA cdata, OutputStream out) throws IOException {
        Writer writer = makeWriter(out);
        output(cdata, writer);
    }

    public void output(Text text, OutputStream out) throws IOException {
        Writer writer = makeWriter(out);
        output(text, writer);
    }

    public void output(Comment comment, OutputStream out) throws IOException {
        Writer writer = makeWriter(out);
        output(comment, writer);
    }

    public void output(ProcessingInstruction pi, OutputStream out) throws IOException {
        Writer writer = makeWriter(out);
        output(pi, writer);
    }

    public void output(EntityRef entity, OutputStream out) throws IOException {
        Writer writer = makeWriter(out);
        output(entity, writer);
    }

    private Writer makeWriter(OutputStream out) throws UnsupportedEncodingException {
        return makeWriter(out, this.userFormat.encoding);
    }

    private static Writer makeWriter(OutputStream out, String enc) throws UnsupportedEncodingException {
        if (SocketOption.DEFAULT_CHARSET.equals(enc)) {
            enc = UrlUtils.UTF8;
        }
        Writer writer = new BufferedWriter(new OutputStreamWriter(new BufferedOutputStream(out), enc));
        return writer;
    }

    public void output(Document doc, Writer out) throws IOException {
        printDeclaration(out, doc, this.userFormat.encoding);
        List content = doc.getContent();
        int size = content.size();
        for (int i = 0; i < size; i++) {
            Object obj = content.get(i);
            if (obj instanceof Element) {
                printElement(out, doc.getRootElement(), 0, createNamespaceStack());
            } else if (obj instanceof Comment) {
                printComment(out, (Comment) obj);
            } else if (obj instanceof ProcessingInstruction) {
                printProcessingInstruction(out, (ProcessingInstruction) obj);
            } else if (obj instanceof DocType) {
                printDocType(out, doc.getDocType());
                out.write(this.currentFormat.lineSeparator);
            }
            newline(out);
            indent(out, 0);
        }
        out.write(this.currentFormat.lineSeparator);
        out.flush();
    }

    public void output(DocType doctype, Writer out) throws IOException {
        printDocType(out, doctype);
        out.flush();
    }

    public void output(Element element, Writer out) throws IOException {
        printElement(out, element, 0, createNamespaceStack());
        out.flush();
    }

    public void outputElementContent(Element element, Writer out) throws IOException {
        List content = element.getContent();
        printContentRange(out, content, 0, content.size(), 0, createNamespaceStack());
        out.flush();
    }

    public void output(List list, Writer out) throws IOException {
        printContentRange(out, list, 0, list.size(), 0, createNamespaceStack());
        out.flush();
    }

    public void output(CDATA cdata, Writer out) throws IOException {
        printCDATA(out, cdata);
        out.flush();
    }

    public void output(Text text, Writer out) throws IOException {
        printText(out, text);
        out.flush();
    }

    public void output(Comment comment, Writer out) throws IOException {
        printComment(out, comment);
        out.flush();
    }

    public void output(ProcessingInstruction pi, Writer out) throws IOException {
        boolean currentEscapingPolicy = this.currentFormat.ignoreTrAXEscapingPIs;
        this.currentFormat.setIgnoreTrAXEscapingPIs(true);
        printProcessingInstruction(out, pi);
        this.currentFormat.setIgnoreTrAXEscapingPIs(currentEscapingPolicy);
        out.flush();
    }

    public void output(EntityRef entity, Writer out) throws IOException {
        printEntityRef(out, entity);
        out.flush();
    }

    public String outputString(Document doc) {
        StringWriter out = new StringWriter();
        try {
            output(doc, out);
        } catch (IOException e) {
        }
        return out.toString();
    }

    public String outputString(DocType doctype) {
        StringWriter out = new StringWriter();
        try {
            output(doctype, out);
        } catch (IOException e) {
        }
        return out.toString();
    }

    public String outputString(Element element) {
        StringWriter out = new StringWriter();
        try {
            output(element, out);
        } catch (IOException e) {
        }
        return out.toString();
    }

    public String outputString(List list) {
        StringWriter out = new StringWriter();
        try {
            output(list, out);
        } catch (IOException e) {
        }
        return out.toString();
    }

    public String outputString(CDATA cdata) {
        StringWriter out = new StringWriter();
        try {
            output(cdata, (Writer) out);
        } catch (IOException e) {
        }
        return out.toString();
    }

    public String outputString(Text text) {
        StringWriter out = new StringWriter();
        try {
            output(text, out);
        } catch (IOException e) {
        }
        return out.toString();
    }

    public String outputString(Comment comment) {
        StringWriter out = new StringWriter();
        try {
            output(comment, out);
        } catch (IOException e) {
        }
        return out.toString();
    }

    public String outputString(ProcessingInstruction pi) {
        StringWriter out = new StringWriter();
        try {
            output(pi, out);
        } catch (IOException e) {
        }
        return out.toString();
    }

    public String outputString(EntityRef entity) {
        StringWriter out = new StringWriter();
        try {
            output(entity, out);
        } catch (IOException e) {
        }
        return out.toString();
    }

    protected void printDeclaration(Writer out, Document doc, String encoding) throws IOException {
        if (this.userFormat.omitDeclaration) {
            return;
        }
        out.write("<?xml version=\"1.0\"");
        if (!this.userFormat.omitEncoding) {
            out.write(new StringBuffer(" encoding=\"").append(encoding).append("\"").toString());
        }
        out.write("?>");
        out.write(this.currentFormat.lineSeparator);
    }

    protected void printDocType(Writer out, DocType docType) throws IOException {
        String publicID = docType.getPublicID();
        String systemID = docType.getSystemID();
        String internalSubset = docType.getInternalSubset();
        boolean hasPublic = false;
        out.write("<!DOCTYPE ");
        out.write(docType.getElementName());
        if (publicID != null) {
            out.write(" PUBLIC \"");
            out.write(publicID);
            out.write("\"");
            hasPublic = true;
        }
        if (systemID != null) {
            if (!hasPublic) {
                out.write(" SYSTEM");
            }
            out.write(" \"");
            out.write(systemID);
            out.write("\"");
        }
        if (internalSubset != null && !internalSubset.equals("")) {
            out.write(" [");
            out.write(this.currentFormat.lineSeparator);
            out.write(docType.getInternalSubset());
            out.write("]");
        }
        out.write(">");
    }

    protected void printComment(Writer out, Comment comment) throws IOException {
        out.write("<!--");
        out.write(comment.getText());
        out.write("-->");
    }

    protected void printProcessingInstruction(Writer out, ProcessingInstruction pi) throws IOException {
        String target = pi.getTarget();
        boolean piProcessed = false;
        if (!this.currentFormat.ignoreTrAXEscapingPIs) {
            if (target.equals("javax.xml.transform.disable-output-escaping")) {
                this.escapeOutput = false;
                piProcessed = true;
            } else if (target.equals("javax.xml.transform.enable-output-escaping")) {
                this.escapeOutput = true;
                piProcessed = true;
            }
        }
        if (piProcessed) {
            return;
        }
        String rawData = pi.getData();
        if (!"".equals(rawData)) {
            out.write("<?");
            out.write(target);
            out.write(" ");
            out.write(rawData);
            out.write("?>");
            return;
        }
        out.write("<?");
        out.write(target);
        out.write("?>");
    }

    protected void printEntityRef(Writer out, EntityRef entity) throws IOException {
        out.write("&");
        out.write(entity.getName());
        out.write(";");
    }

    protected void printCDATA(Writer out, CDATA cdata) throws IOException {
        String str;
        if (this.currentFormat.mode == Format.TextMode.NORMALIZE) {
            str = cdata.getTextNormalize();
        } else {
            str = this.currentFormat.mode == Format.TextMode.TRIM ? cdata.getText().trim() : cdata.getText();
        }
        out.write("<![CDATA[");
        out.write(str);
        out.write("]]>");
    }

    protected void printText(Writer out, Text text) throws IOException {
        String str;
        if (this.currentFormat.mode == Format.TextMode.NORMALIZE) {
            str = text.getTextNormalize();
        } else {
            str = this.currentFormat.mode == Format.TextMode.TRIM ? text.getText().trim() : text.getText();
        }
        out.write(escapeElementEntities(str));
    }

    private void printString(Writer out, String str) throws IOException {
        if (this.currentFormat.mode == Format.TextMode.NORMALIZE) {
            str = Text.normalizeString(str);
        } else if (this.currentFormat.mode == Format.TextMode.TRIM) {
            str = str.trim();
        }
        out.write(escapeElementEntities(str));
    }

    protected void printElement(Writer out, Element element, int level, NamespaceStack namespaces) throws IOException {
        List attributes = element.getAttributes();
        List content = element.getContent();
        String space = null;
        if (attributes != null) {
            space = element.getAttributeValue("space", Namespace.XML_NAMESPACE);
        }
        Format previousFormat = this.currentFormat;
        if ("default".equals(space)) {
            this.currentFormat = this.userFormat;
        } else if ("preserve".equals(space)) {
            this.currentFormat = preserveFormat;
        }
        out.write("<");
        printQualifiedName(out, element);
        int previouslyDeclaredNamespaces = namespaces.size();
        printElementNamespace(out, element, namespaces);
        printAdditionalNamespaces(out, element, namespaces);
        if (attributes != null) {
            printAttributes(out, attributes, element, namespaces);
        }
        int start = skipLeadingWhite(content, 0);
        int size = content.size();
        if (start >= size) {
            if (this.currentFormat.expandEmptyElements) {
                out.write("></");
                printQualifiedName(out, element);
                out.write(">");
            } else {
                out.write(" />");
            }
        } else {
            out.write(">");
            if (nextNonText(content, start) < size) {
                newline(out);
                printContentRange(out, content, start, size, level + 1, namespaces);
                newline(out);
                indent(out, level);
            } else {
                printTextRange(out, content, start, size);
            }
            out.write("</");
            printQualifiedName(out, element);
            out.write(">");
        }
        while (namespaces.size() > previouslyDeclaredNamespaces) {
            namespaces.pop();
        }
        this.currentFormat = previousFormat;
    }

    private void printContentRange(Writer out, List content, int start, int end, int level, NamespaceStack namespaces) throws IOException {
        int index = start;
        while (index < end) {
            boolean firstNode = index == start;
            Object next = content.get(index);
            if ((next instanceof Text) || (next instanceof EntityRef)) {
                int first = skipLeadingWhite(content, index);
                index = nextNonText(content, first);
                if (first < index) {
                    if (!firstNode) {
                        newline(out);
                    }
                    indent(out, level);
                    printTextRange(out, content, first, index);
                }
            } else {
                if (!firstNode) {
                    newline(out);
                }
                indent(out, level);
                if (next instanceof Comment) {
                    printComment(out, (Comment) next);
                } else if (next instanceof Element) {
                    printElement(out, (Element) next, level, namespaces);
                } else if (next instanceof ProcessingInstruction) {
                    printProcessingInstruction(out, (ProcessingInstruction) next);
                }
                index++;
            }
        }
    }

    private void printTextRange(Writer out, List content, int start, int end) throws IOException {
        String next;
        String previous = null;
        int start2 = skipLeadingWhite(content, start);
        int size = content.size();
        if (start2 >= size) {
            return;
        }
        int end2 = skipTrailingWhite(content, end);
        for (int i = start2; i < end2; i++) {
            Object node = content.get(i);
            if (node instanceof Text) {
                next = ((Text) node).getText();
            } else if (node instanceof EntityRef) {
                next = new StringBuffer("&").append(((EntityRef) node).getValue()).append(";").toString();
            } else {
                throw new IllegalStateException("Should see only CDATA, Text, or EntityRef");
            }
            if (next != null && !"".equals(next)) {
                if (previous != null && ((this.currentFormat.mode == Format.TextMode.NORMALIZE || this.currentFormat.mode == Format.TextMode.TRIM) && (endsWithWhite(previous) || startsWithWhite(next)))) {
                    out.write(" ");
                }
                if (node instanceof CDATA) {
                    printCDATA(out, (CDATA) node);
                } else if (node instanceof EntityRef) {
                    printEntityRef(out, (EntityRef) node);
                } else {
                    printString(out, next);
                }
                previous = next;
            }
        }
    }

    private void printNamespace(Writer out, Namespace ns, NamespaceStack namespaces) throws IOException {
        String prefix = ns.getPrefix();
        String uri = ns.getURI();
        if (uri.equals(namespaces.getURI(prefix))) {
            return;
        }
        out.write(" xmlns");
        if (!prefix.equals("")) {
            out.write(":");
            out.write(prefix);
        }
        out.write("=\"");
        out.write(uri);
        out.write("\"");
        namespaces.push(ns);
    }

    protected void printAttributes(Writer out, List attributes, Element parent, NamespaceStack namespaces) throws IOException {
        for (int i = 0; i < attributes.size(); i++) {
            Attribute attribute = (Attribute) attributes.get(i);
            Namespace ns = attribute.getNamespace();
            if (ns != Namespace.NO_NAMESPACE && ns != Namespace.XML_NAMESPACE) {
                printNamespace(out, ns, namespaces);
            }
            out.write(" ");
            printQualifiedName(out, attribute);
            out.write("=");
            out.write("\"");
            out.write(escapeAttributeEntities(attribute.getValue()));
            out.write("\"");
        }
    }

    private void printElementNamespace(Writer out, Element element, NamespaceStack namespaces) throws IOException {
        Namespace ns = element.getNamespace();
        if (ns == Namespace.XML_NAMESPACE) {
            return;
        }
        if (ns == Namespace.NO_NAMESPACE && namespaces.getURI("") == null) {
            return;
        }
        printNamespace(out, ns, namespaces);
    }

    private void printAdditionalNamespaces(Writer out, Element element, NamespaceStack namespaces) throws IOException {
        List list = element.getAdditionalNamespaces();
        if (list == null) {
            return;
        }
        for (int i = 0; i < list.size(); i++) {
            Namespace additional = (Namespace) list.get(i);
            printNamespace(out, additional, namespaces);
        }
    }

    private void newline(Writer out) throws IOException {
        if (this.currentFormat.indent == null) {
            return;
        }
        out.write(this.currentFormat.lineSeparator);
    }

    private void indent(Writer out, int level) throws IOException {
        if (this.currentFormat.indent == null || this.currentFormat.indent.equals("")) {
            return;
        }
        for (int i = 0; i < level; i++) {
            out.write(this.currentFormat.indent);
        }
    }

    private int skipLeadingWhite(List content, int start) {
        if (start < 0) {
            start = 0;
        }
        int index = start;
        int size = content.size();
        if (this.currentFormat.mode == Format.TextMode.TRIM_FULL_WHITE || this.currentFormat.mode == Format.TextMode.NORMALIZE || this.currentFormat.mode == Format.TextMode.TRIM) {
            while (index < size) {
                if (!isAllWhitespace(content.get(index))) {
                    return index;
                }
                index++;
            }
        }
        return index;
    }

    private int skipTrailingWhite(List content, int start) {
        int size = content.size();
        if (start > size) {
            start = size;
        }
        int index = start;
        if (this.currentFormat.mode == Format.TextMode.TRIM_FULL_WHITE || this.currentFormat.mode == Format.TextMode.NORMALIZE || this.currentFormat.mode == Format.TextMode.TRIM) {
            while (index >= 0 && isAllWhitespace(content.get(index - 1))) {
                index--;
            }
        }
        return index;
    }

    private static int nextNonText(List content, int start) {
        if (start < 0) {
            start = 0;
        }
        int size = content.size();
        for (int index = start; index < size; index++) {
            Object node = content.get(index);
            if (!(node instanceof Text) && !(node instanceof EntityRef)) {
                return index;
            }
        }
        return size;
    }

    private boolean isAllWhitespace(Object obj) {
        String str;
        if (obj instanceof String) {
            str = (String) obj;
        } else if (obj instanceof Text) {
            str = ((Text) obj).getText();
        } else {
            if (obj instanceof EntityRef) {
            }
            return false;
        }
        for (int i = 0; i < str.length(); i++) {
            if (!isWhitespace(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    private boolean startsWithWhite(String str) {
        return str != null && str.length() > 0 && isWhitespace(str.charAt(0));
    }

    private boolean endsWithWhite(String str) {
        return str != null && str.length() > 0 && isWhitespace(str.charAt(str.length() + (-1)));
    }

    private static boolean isWhitespace(char c) {
        return c == ' ' || c == '\n' || c == '\t' || c == '\r';
    }

    public String escapeAttributeEntities(String str) {
        String entity;
        EscapeStrategy strategy = this.currentFormat.escapeStrategy;
        StringBuffer buffer = null;
        for (int i = 0; i < str.length(); i++) {
            char ch2 = str.charAt(i);
            switch (ch2) {
                case '\t':
                    entity = "&#x9;";
                    break;
                case '\n':
                    entity = "&#xA;";
                    break;
                case '\r':
                    entity = "&#xD;";
                    break;
                case '\"':
                    entity = "&quot;";
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
                    if (strategy.shouldEscape(ch2)) {
                        entity = new StringBuffer("&#x").append(Integer.toHexString(ch2)).append(";").toString();
                        break;
                    } else {
                        entity = null;
                        break;
                    }
            }
            if (buffer == null) {
                if (entity != null) {
                    buffer = new StringBuffer(str.length() + 20);
                    buffer.append(str.substring(0, i));
                    buffer.append(entity);
                }
            } else if (entity == null) {
                buffer.append(ch2);
            } else {
                buffer.append(entity);
            }
        }
        return buffer == null ? str : buffer.toString();
    }

    public String escapeElementEntities(String str) {
        String entity;
        if (this.escapeOutput) {
            EscapeStrategy strategy = this.currentFormat.escapeStrategy;
            StringBuffer buffer = null;
            for (int i = 0; i < str.length(); i++) {
                char ch2 = str.charAt(i);
                switch (ch2) {
                    case '\n':
                        entity = this.currentFormat.lineSeparator;
                        break;
                    case '\r':
                        entity = "&#xD;";
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
                        if (strategy.shouldEscape(ch2)) {
                            entity = new StringBuffer("&#x").append(Integer.toHexString(ch2)).append(";").toString();
                            break;
                        } else {
                            entity = null;
                            break;
                        }
                }
                if (buffer == null) {
                    if (entity != null) {
                        buffer = new StringBuffer(str.length() + 20);
                        buffer.append(str.substring(0, i));
                        buffer.append(entity);
                    }
                } else if (entity == null) {
                    buffer.append(ch2);
                } else {
                    buffer.append(entity);
                }
            }
            return buffer != null ? buffer.toString() : str;
        }
        return str;
    }

    public Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException e) {
            throw new RuntimeException(e.toString());
        }
    }

    public String toString() {
        StringBuffer buffer = new StringBuffer();
        for (int i = 0; i < this.userFormat.lineSeparator.length(); i++) {
            char ch2 = this.userFormat.lineSeparator.charAt(i);
            switch (ch2) {
                case '\t':
                    buffer.append("\\t");
                    break;
                case '\n':
                    buffer.append("\\n");
                    break;
                case 11:
                case '\f':
                default:
                    buffer.append(new StringBuffer("[").append((int) ch2).append("]").toString());
                    break;
                case '\r':
                    buffer.append("\\r");
                    break;
            }
        }
        return new StringBuffer("XMLOutputter[omitDeclaration = ").append(this.userFormat.omitDeclaration).append(", ").append("encoding = ").append(this.userFormat.encoding).append(", ").append("omitEncoding = ").append(this.userFormat.omitEncoding).append(", ").append("indent = '").append(this.userFormat.indent).append("'").append(", ").append("expandEmptyElements = ").append(this.userFormat.expandEmptyElements).append(", ").append("lineSeparator = '").append(buffer.toString()).append("', ").append("textMode = ").append(this.userFormat.mode).append("]").toString();
    }

    private NamespaceStack createNamespaceStack() {
        return new NamespaceStack(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes2.dex */
    public class NamespaceStack extends org.jdom.output.NamespaceStack {
        private final XMLOutputter this$0;

        protected NamespaceStack(XMLOutputter this$0) {
            this.this$0 = this$0;
        }
    }

    private void printQualifiedName(Writer out, Element e) throws IOException {
        if (e.getNamespace().getPrefix().length() == 0) {
            out.write(e.getName());
            return;
        }
        out.write(e.getNamespace().getPrefix());
        out.write(58);
        out.write(e.getName());
    }

    private void printQualifiedName(Writer out, Attribute a) throws IOException {
        String prefix = a.getNamespace().getPrefix();
        if (prefix != null && !prefix.equals("")) {
            out.write(prefix);
            out.write(58);
            out.write(a.getName());
            return;
        }
        out.write(a.getName());
    }
}
