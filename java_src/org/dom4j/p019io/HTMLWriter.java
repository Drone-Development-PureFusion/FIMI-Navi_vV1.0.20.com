package org.dom4j.p019io;

import com.facebook.share.internal.ShareConstants;
import com.fimi.kernel.animutils.IOUtils;
import java.io.IOException;
import java.io.OutputStream;
import java.io.StringWriter;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.util.HashSet;
import java.util.Set;
import java.util.Stack;
import org.dom4j.AbstractC2649Entity;
import org.dom4j.Document;
import org.dom4j.DocumentException;
import org.dom4j.DocumentHelper;
import org.dom4j.Element;
import org.xml.sax.SAXException;
/* renamed from: org.dom4j.io.HTMLWriter */
/* loaded from: classes2.dex */
public class HTMLWriter extends XMLWriter {
    private HashSet omitElementCloseSet;
    private static String lineSeparator = System.getProperty("line.separator");
    protected static final HashSet DEFAULT_PREFORMATTED_TAGS = new HashSet();
    protected static final OutputFormat DEFAULT_HTML_FORMAT = new OutputFormat("  ", true);
    private Stack formatStack = new Stack();
    private String lastText = "";
    private int tagsOuput = 0;
    private int newLineAfterNTags = -1;
    private HashSet preformattedTags = DEFAULT_PREFORMATTED_TAGS;

    static {
        DEFAULT_PREFORMATTED_TAGS.add("PRE");
        DEFAULT_PREFORMATTED_TAGS.add("SCRIPT");
        DEFAULT_PREFORMATTED_TAGS.add("STYLE");
        DEFAULT_PREFORMATTED_TAGS.add("TEXTAREA");
        DEFAULT_HTML_FORMAT.setTrimText(true);
        DEFAULT_HTML_FORMAT.setSuppressDeclaration(true);
    }

    public HTMLWriter(Writer writer) {
        super(writer, DEFAULT_HTML_FORMAT);
    }

    public HTMLWriter(Writer writer, OutputFormat format) {
        super(writer, format);
    }

    public HTMLWriter() throws UnsupportedEncodingException {
        super(DEFAULT_HTML_FORMAT);
    }

    public HTMLWriter(OutputFormat format) throws UnsupportedEncodingException {
        super(format);
    }

    public HTMLWriter(OutputStream out) throws UnsupportedEncodingException {
        super(out, DEFAULT_HTML_FORMAT);
    }

    public HTMLWriter(OutputStream out, OutputFormat format) throws UnsupportedEncodingException {
        super(out, format);
    }

    @Override // org.dom4j.p019io.XMLWriter, org.xml.sax.ext.LexicalHandler
    public void startCDATA() throws SAXException {
    }

    @Override // org.dom4j.p019io.XMLWriter, org.xml.sax.ext.LexicalHandler
    public void endCDATA() throws SAXException {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.dom4j.p019io.XMLWriter
    public void writeCDATA(String text) throws IOException {
        if (getOutputFormat().isXHTML()) {
            super.writeCDATA(text);
        } else {
            this.writer.write(text);
        }
        this.lastOutputNodeType = 4;
    }

    @Override // org.dom4j.p019io.XMLWriter
    protected void writeEntity(AbstractC2649Entity entity) throws IOException {
        this.writer.write(entity.getText());
        this.lastOutputNodeType = 5;
    }

    @Override // org.dom4j.p019io.XMLWriter
    protected void writeDeclaration() throws IOException {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.dom4j.p019io.XMLWriter
    public void writeString(String text) throws IOException {
        if (text.equals(IOUtils.LINE_SEPARATOR_UNIX)) {
            if (!this.formatStack.empty()) {
                super.writeString(lineSeparator);
                return;
            }
            return;
        }
        this.lastText = text;
        if (this.formatStack.empty()) {
            super.writeString(text.trim());
        } else {
            super.writeString(text);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.dom4j.p019io.XMLWriter
    public void writeClose(String qualifiedName) throws IOException {
        if (!omitElementClose(qualifiedName)) {
            super.writeClose(qualifiedName);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.dom4j.p019io.XMLWriter
    public void writeEmptyElementClose(String qualifiedName) throws IOException {
        if (getOutputFormat().isXHTML()) {
            if (omitElementClose(qualifiedName)) {
                this.writer.write(" />");
            } else {
                super.writeEmptyElementClose(qualifiedName);
            }
        } else if (omitElementClose(qualifiedName)) {
            this.writer.write(">");
        } else {
            super.writeEmptyElementClose(qualifiedName);
        }
    }

    protected boolean omitElementClose(String qualifiedName) {
        return internalGetOmitElementCloseSet().contains(qualifiedName.toUpperCase());
    }

    private HashSet internalGetOmitElementCloseSet() {
        if (this.omitElementCloseSet == null) {
            this.omitElementCloseSet = new HashSet();
            loadOmitElementCloseSet(this.omitElementCloseSet);
        }
        return this.omitElementCloseSet;
    }

    protected void loadOmitElementCloseSet(Set set) {
        set.add("AREA");
        set.add("BASE");
        set.add("BR");
        set.add("COL");
        set.add("HR");
        set.add("IMG");
        set.add("INPUT");
        set.add(ShareConstants.CONTENT_URL);
        set.add("META");
        set.add("P");
        set.add("PARAM");
    }

    public Set getOmitElementCloseSet() {
        return (Set) internalGetOmitElementCloseSet().clone();
    }

    public void setOmitElementCloseSet(Set newSet) {
        this.omitElementCloseSet = new HashSet();
        if (newSet != null) {
            this.omitElementCloseSet = new HashSet();
            for (Object aTag : newSet) {
                if (aTag != null) {
                    this.omitElementCloseSet.add(aTag.toString().toUpperCase());
                }
            }
        }
    }

    public Set getPreformattedTags() {
        return (Set) this.preformattedTags.clone();
    }

    public void setPreformattedTags(Set newSet) {
        this.preformattedTags = new HashSet();
        if (newSet != null) {
            for (Object aTag : newSet) {
                if (aTag != null) {
                    this.preformattedTags.add(aTag.toString().toUpperCase());
                }
            }
        }
    }

    public boolean isPreformattedTag(String qualifiedName) {
        return this.preformattedTags != null && this.preformattedTags.contains(qualifiedName.toUpperCase());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // org.dom4j.p019io.XMLWriter
    public void writeElement(Element element) throws IOException {
        if (this.newLineAfterNTags == -1) {
            lazyInitNewLinesAfterNTags();
        }
        if (this.newLineAfterNTags > 0 && this.tagsOuput > 0 && this.tagsOuput % this.newLineAfterNTags == 0) {
            this.writer.write(lineSeparator);
        }
        this.tagsOuput++;
        String qualifiedName = element.getQualifiedName();
        String saveLastText = this.lastText;
        element.nodeCount();
        if (isPreformattedTag(qualifiedName)) {
            OutputFormat currentFormat = getOutputFormat();
            boolean saveNewlines = currentFormat.isNewlines();
            boolean saveTrimText = currentFormat.isTrimText();
            String currentIndent = currentFormat.getIndent();
            this.formatStack.push(new FormatState(this, saveNewlines, saveTrimText, currentIndent));
            try {
                super.writePrintln();
                if (saveLastText.trim().length() == 0 && currentIndent != null && currentIndent.length() > 0) {
                    this.writer.write(justSpaces(saveLastText));
                }
                currentFormat.setNewlines(false);
                currentFormat.setTrimText(false);
                currentFormat.setIndent("");
                super.writeElement(element);
                return;
            } finally {
                FormatState state = (FormatState) this.formatStack.pop();
                currentFormat.setNewlines(state.isNewlines());
                currentFormat.setTrimText(state.isTrimText());
                currentFormat.setIndent(state.getIndent());
            }
        }
        super.writeElement(element);
    }

    private String justSpaces(String text) {
        int size = text.length();
        StringBuffer res = new StringBuffer(size);
        for (int i = 0; i < size; i++) {
            char c = text.charAt(i);
            switch (c) {
                case '\n':
                case '\r':
                    break;
                case 11:
                case '\f':
                default:
                    res.append(c);
                    break;
            }
        }
        return res.toString();
    }

    private void lazyInitNewLinesAfterNTags() {
        if (getOutputFormat().isNewlines()) {
            this.newLineAfterNTags = 0;
        } else {
            this.newLineAfterNTags = getOutputFormat().getNewLineAfterNTags();
        }
    }

    public static String prettyPrintHTML(String html) throws IOException, UnsupportedEncodingException, DocumentException {
        return prettyPrintHTML(html, true, true, false, true);
    }

    public static String prettyPrintXHTML(String html) throws IOException, UnsupportedEncodingException, DocumentException {
        return prettyPrintHTML(html, true, true, true, false);
    }

    public static String prettyPrintHTML(String html, boolean newlines, boolean trim, boolean isXHTML, boolean expandEmpty) throws IOException, UnsupportedEncodingException, DocumentException {
        StringWriter sw = new StringWriter();
        OutputFormat format = OutputFormat.createPrettyPrint();
        format.setNewlines(newlines);
        format.setTrimText(trim);
        format.setXHTML(isXHTML);
        format.setExpandEmptyElements(expandEmpty);
        HTMLWriter writer = new HTMLWriter(sw, format);
        Document document = DocumentHelper.parseText(html);
        writer.write(document);
        writer.flush();
        return sw.toString();
    }

    /* renamed from: org.dom4j.io.HTMLWriter$FormatState */
    /* loaded from: classes2.dex */
    private class FormatState {
        private String indent;
        private boolean newlines;
        private final HTMLWriter this$0;
        private boolean trimText;

        public FormatState(HTMLWriter this$0, boolean newLines, boolean trimText, String indent) {
            this.this$0 = this$0;
            this.newlines = false;
            this.trimText = false;
            this.indent = "";
            this.newlines = newLines;
            this.trimText = trimText;
            this.indent = indent;
        }

        public boolean isNewlines() {
            return this.newlines;
        }

        public boolean isTrimText() {
            return this.trimText;
        }

        public String getIndent() {
            return this.indent;
        }
    }
}
