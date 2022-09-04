package org.dom4j.p019io;

import ch.qos.logback.core.CoreConstants;
import com.fimi.kernel.animutils.IOUtils;
import com.fimi.kernel.connect.tcp.SocketOption;
/* renamed from: org.dom4j.io.OutputFormat */
/* loaded from: classes2.dex */
public class OutputFormat implements Cloneable {
    protected static final String STANDARD_INDENT = "  ";
    private char attributeQuoteChar;
    private boolean doXHTML;
    private String encoding;
    private boolean expandEmptyElements;
    private String indent;
    private String lineSeparator;
    private boolean newLineAfterDeclaration;
    private int newLineAfterNTags;
    private boolean newlines;
    private boolean omitEncoding;
    private boolean padText;
    private boolean suppressDeclaration;
    private boolean trimText;

    public OutputFormat() {
        this.suppressDeclaration = false;
        this.newLineAfterDeclaration = true;
        this.encoding = SocketOption.DEFAULT_CHARSET;
        this.omitEncoding = false;
        this.indent = null;
        this.expandEmptyElements = false;
        this.newlines = false;
        this.lineSeparator = IOUtils.LINE_SEPARATOR_UNIX;
        this.trimText = false;
        this.padText = false;
        this.doXHTML = false;
        this.newLineAfterNTags = 0;
        this.attributeQuoteChar = CoreConstants.DOUBLE_QUOTE_CHAR;
    }

    public OutputFormat(String indent) {
        this.suppressDeclaration = false;
        this.newLineAfterDeclaration = true;
        this.encoding = SocketOption.DEFAULT_CHARSET;
        this.omitEncoding = false;
        this.indent = null;
        this.expandEmptyElements = false;
        this.newlines = false;
        this.lineSeparator = IOUtils.LINE_SEPARATOR_UNIX;
        this.trimText = false;
        this.padText = false;
        this.doXHTML = false;
        this.newLineAfterNTags = 0;
        this.attributeQuoteChar = CoreConstants.DOUBLE_QUOTE_CHAR;
        this.indent = indent;
    }

    public OutputFormat(String indent, boolean newlines) {
        this.suppressDeclaration = false;
        this.newLineAfterDeclaration = true;
        this.encoding = SocketOption.DEFAULT_CHARSET;
        this.omitEncoding = false;
        this.indent = null;
        this.expandEmptyElements = false;
        this.newlines = false;
        this.lineSeparator = IOUtils.LINE_SEPARATOR_UNIX;
        this.trimText = false;
        this.padText = false;
        this.doXHTML = false;
        this.newLineAfterNTags = 0;
        this.attributeQuoteChar = CoreConstants.DOUBLE_QUOTE_CHAR;
        this.indent = indent;
        this.newlines = newlines;
    }

    public OutputFormat(String indent, boolean newlines, String encoding) {
        this.suppressDeclaration = false;
        this.newLineAfterDeclaration = true;
        this.encoding = SocketOption.DEFAULT_CHARSET;
        this.omitEncoding = false;
        this.indent = null;
        this.expandEmptyElements = false;
        this.newlines = false;
        this.lineSeparator = IOUtils.LINE_SEPARATOR_UNIX;
        this.trimText = false;
        this.padText = false;
        this.doXHTML = false;
        this.newLineAfterNTags = 0;
        this.attributeQuoteChar = CoreConstants.DOUBLE_QUOTE_CHAR;
        this.indent = indent;
        this.newlines = newlines;
        this.encoding = encoding;
    }

    public String getLineSeparator() {
        return this.lineSeparator;
    }

    public void setLineSeparator(String separator) {
        this.lineSeparator = separator;
    }

    public boolean isNewlines() {
        return this.newlines;
    }

    public void setNewlines(boolean newlines) {
        this.newlines = newlines;
    }

    public String getEncoding() {
        return this.encoding;
    }

    public void setEncoding(String encoding) {
        if (encoding != null) {
            this.encoding = encoding;
        }
    }

    public boolean isOmitEncoding() {
        return this.omitEncoding;
    }

    public void setOmitEncoding(boolean omitEncoding) {
        this.omitEncoding = omitEncoding;
    }

    public void setSuppressDeclaration(boolean suppressDeclaration) {
        this.suppressDeclaration = suppressDeclaration;
    }

    public boolean isSuppressDeclaration() {
        return this.suppressDeclaration;
    }

    public void setNewLineAfterDeclaration(boolean newLineAfterDeclaration) {
        this.newLineAfterDeclaration = newLineAfterDeclaration;
    }

    public boolean isNewLineAfterDeclaration() {
        return this.newLineAfterDeclaration;
    }

    public boolean isExpandEmptyElements() {
        return this.expandEmptyElements;
    }

    public void setExpandEmptyElements(boolean expandEmptyElements) {
        this.expandEmptyElements = expandEmptyElements;
    }

    public boolean isTrimText() {
        return this.trimText;
    }

    public void setTrimText(boolean trimText) {
        this.trimText = trimText;
    }

    public boolean isPadText() {
        return this.padText;
    }

    public void setPadText(boolean padText) {
        this.padText = padText;
    }

    public String getIndent() {
        return this.indent;
    }

    public void setIndent(String indent) {
        if (indent != null && indent.length() <= 0) {
            indent = null;
        }
        this.indent = indent;
    }

    public void setIndent(boolean doIndent) {
        if (doIndent) {
            this.indent = STANDARD_INDENT;
        } else {
            this.indent = null;
        }
    }

    public void setIndentSize(int indentSize) {
        StringBuffer indentBuffer = new StringBuffer();
        for (int i = 0; i < indentSize; i++) {
            indentBuffer.append(" ");
        }
        this.indent = indentBuffer.toString();
    }

    public boolean isXHTML() {
        return this.doXHTML;
    }

    public void setXHTML(boolean xhtml) {
        this.doXHTML = xhtml;
    }

    public int getNewLineAfterNTags() {
        return this.newLineAfterNTags;
    }

    public void setNewLineAfterNTags(int tagCount) {
        this.newLineAfterNTags = tagCount;
    }

    public char getAttributeQuoteCharacter() {
        return this.attributeQuoteChar;
    }

    public void setAttributeQuoteCharacter(char quoteChar) {
        if (quoteChar == '\'' || quoteChar == '\"') {
            this.attributeQuoteChar = quoteChar;
            return;
        }
        throw new IllegalArgumentException(new StringBuffer().append("Invalid attribute quote character (").append(quoteChar).append(")").toString());
    }

    public int parseOptions(String[] args, int i) {
        int size = args.length;
        while (i < size) {
            if (args[i].equals("-suppressDeclaration")) {
                setSuppressDeclaration(true);
            } else if (args[i].equals("-omitEncoding")) {
                setOmitEncoding(true);
            } else if (args[i].equals("-indent")) {
                i++;
                setIndent(args[i]);
            } else if (args[i].equals("-indentSize")) {
                i++;
                setIndentSize(Integer.parseInt(args[i]));
            } else if (args[i].startsWith("-expandEmpty")) {
                setExpandEmptyElements(true);
            } else if (args[i].equals("-encoding")) {
                i++;
                setEncoding(args[i]);
            } else if (args[i].equals("-newlines")) {
                setNewlines(true);
            } else if (args[i].equals("-lineSeparator")) {
                i++;
                setLineSeparator(args[i]);
            } else if (args[i].equals("-trimText")) {
                setTrimText(true);
            } else if (args[i].equals("-padText")) {
                setPadText(true);
            } else if (!args[i].startsWith("-xhtml")) {
                break;
            } else {
                setXHTML(true);
            }
            i++;
        }
        return i;
    }

    public static OutputFormat createPrettyPrint() {
        OutputFormat format = new OutputFormat();
        format.setIndentSize(2);
        format.setNewlines(true);
        format.setTrimText(true);
        format.setPadText(true);
        return format;
    }

    public static OutputFormat createCompactFormat() {
        OutputFormat format = new OutputFormat();
        format.setIndent(false);
        format.setNewlines(false);
        format.setTrimText(true);
        return format;
    }
}
