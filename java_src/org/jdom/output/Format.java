package org.jdom.output;

import java.lang.reflect.Method;
/* loaded from: classes2.dex */
public class Format implements Cloneable {
    private static final String CVS_ID = "@(#) $RCSfile: Format.java,v $ $Revision: 1.10 $ $Date: 2004/09/07 06:37:20 $ $Name: jdom_1_0 $";
    private static final String STANDARD_ENCODING = "UTF-8";
    private static final String STANDARD_INDENT = "  ";
    private static final String STANDARD_LINE_SEPARATOR = "\r\n";
    static Class class$java$lang$String;
    String indent = null;
    String lineSeparator = "\r\n";
    String encoding = "UTF-8";
    boolean omitDeclaration = false;
    boolean omitEncoding = false;
    boolean expandEmptyElements = false;
    boolean ignoreTrAXEscapingPIs = false;
    TextMode mode = TextMode.PRESERVE;
    EscapeStrategy escapeStrategy = new DefaultEscapeStrategy(this, this.encoding);

    static Class class$(String class$) {
        try {
            return Class.forName(class$);
        } catch (ClassNotFoundException forName) {
            throw new NoClassDefFoundError(forName.getMessage());
        }
    }

    public static Format getRawFormat() {
        return new Format();
    }

    public static Format getPrettyFormat() {
        Format f = new Format();
        f.setIndent(STANDARD_INDENT);
        f.setTextMode(TextMode.TRIM);
        return f;
    }

    public static Format getCompactFormat() {
        Format f = new Format();
        f.setTextMode(TextMode.NORMALIZE);
        return f;
    }

    private Format() {
    }

    public Format setEscapeStrategy(EscapeStrategy strategy) {
        this.escapeStrategy = strategy;
        return this;
    }

    public EscapeStrategy getEscapeStrategy() {
        return this.escapeStrategy;
    }

    public Format setLineSeparator(String separator) {
        this.lineSeparator = separator;
        return this;
    }

    public String getLineSeparator() {
        return this.lineSeparator;
    }

    public Format setOmitEncoding(boolean omitEncoding) {
        this.omitEncoding = omitEncoding;
        return this;
    }

    public boolean getOmitEncoding() {
        return this.omitEncoding;
    }

    public Format setOmitDeclaration(boolean omitDeclaration) {
        this.omitDeclaration = omitDeclaration;
        return this;
    }

    public boolean getOmitDeclaration() {
        return this.omitDeclaration;
    }

    public Format setExpandEmptyElements(boolean expandEmptyElements) {
        this.expandEmptyElements = expandEmptyElements;
        return this;
    }

    public boolean getExpandEmptyElements() {
        return this.expandEmptyElements;
    }

    public void setIgnoreTrAXEscapingPIs(boolean ignoreTrAXEscapingPIs) {
        this.ignoreTrAXEscapingPIs = ignoreTrAXEscapingPIs;
    }

    public boolean getIgnoreTrAXEscapingPIs() {
        return this.ignoreTrAXEscapingPIs;
    }

    public Format setTextMode(TextMode mode) {
        this.mode = mode;
        return this;
    }

    public TextMode getTextMode() {
        return this.mode;
    }

    public Format setIndent(String indent) {
        if ("".equals(indent)) {
            indent = null;
        }
        this.indent = indent;
        return this;
    }

    public String getIndent() {
        return this.indent;
    }

    public Format setEncoding(String encoding) {
        this.encoding = encoding;
        this.escapeStrategy = new DefaultEscapeStrategy(this, encoding);
        return this;
    }

    public String getEncoding() {
        return this.encoding;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Object clone() {
        try {
            Format format = (Format) super.clone();
            return format;
        } catch (CloneNotSupportedException e) {
            return null;
        }
    }

    /* loaded from: classes2.dex */
    class DefaultEscapeStrategy implements EscapeStrategy {
        private int bits;
        Method canEncode;
        Object encoder;
        private final Format this$0;

        public DefaultEscapeStrategy(Format this$0, String encoding) {
            Class<?> class$;
            this.this$0 = this$0;
            if ("UTF-8".equalsIgnoreCase(encoding) || "UTF-16".equalsIgnoreCase(encoding)) {
                this.bits = 16;
            } else if ("ISO-8859-1".equalsIgnoreCase(encoding) || "Latin1".equalsIgnoreCase(encoding)) {
                this.bits = 8;
            } else if ("US-ASCII".equalsIgnoreCase(encoding) || "ASCII".equalsIgnoreCase(encoding)) {
                this.bits = 7;
            } else {
                this.bits = 0;
                try {
                    Class charsetClass = Class.forName("java.nio.charset.Charset");
                    Class encoderClass = Class.forName("java.nio.charset.CharsetEncoder");
                    Class<?>[] clsArr = new Class[1];
                    if (Format.class$java$lang$String != null) {
                        class$ = Format.class$java$lang$String;
                    } else {
                        class$ = Format.class$("java.lang.String");
                        Format.class$java$lang$String = class$;
                    }
                    clsArr[0] = class$;
                    Method forName = charsetClass.getMethod("forName", clsArr);
                    Object charsetObj = forName.invoke(null, encoding);
                    Method newEncoder = charsetClass.getMethod("newEncoder", null);
                    this.encoder = newEncoder.invoke(charsetObj, null);
                    this.canEncode = encoderClass.getMethod("canEncode", Character.TYPE);
                } catch (Exception e) {
                }
            }
        }

        @Override // org.jdom.output.EscapeStrategy
        public boolean shouldEscape(char ch2) {
            if (this.bits == 16) {
                return false;
            }
            if (this.bits == 8) {
                return ch2 > 255;
            } else if (this.bits == 7) {
                return ch2 > 127;
            } else if (this.canEncode == null || this.encoder == null) {
                return false;
            } else {
                try {
                    Boolean val = (Boolean) this.canEncode.invoke(this.encoder, new Character(ch2));
                    return !val.booleanValue();
                } catch (Exception e) {
                    return false;
                }
            }
        }
    }

    /* loaded from: classes2.dex */
    public static class TextMode {
        private final String name;
        public static final TextMode PRESERVE = new TextMode("PRESERVE");
        public static final TextMode TRIM = new TextMode("TRIM");
        public static final TextMode NORMALIZE = new TextMode("NORMALIZE");
        public static final TextMode TRIM_FULL_WHITE = new TextMode("TRIM_FULL_WHITE");

        private TextMode(String name) {
            this.name = name;
        }

        public String toString() {
            return this.name;
        }
    }
}
