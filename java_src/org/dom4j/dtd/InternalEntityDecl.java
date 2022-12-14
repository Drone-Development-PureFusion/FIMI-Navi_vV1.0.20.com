package org.dom4j.dtd;
/* loaded from: classes2.dex */
public class InternalEntityDecl {
    private String name;
    private String value;

    public InternalEntityDecl() {
    }

    public InternalEntityDecl(String name, String value) {
        this.name = name;
        this.value = value;
    }

    public String getName() {
        return this.name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getValue() {
        return this.value;
    }

    public void setValue(String value) {
        this.value = value;
    }

    public String toString() {
        StringBuffer buffer = new StringBuffer("<!ENTITY ");
        if (this.name.startsWith("%")) {
            buffer.append("% ");
            buffer.append(this.name.substring(1));
        } else {
            buffer.append(this.name);
        }
        buffer.append(" \"");
        buffer.append(escapeEntityValue(this.value));
        buffer.append("\">");
        return buffer.toString();
    }

    private String escapeEntityValue(String text) {
        StringBuffer result = new StringBuffer();
        for (int i = 0; i < text.length(); i++) {
            char c = text.charAt(i);
            switch (c) {
                case '\"':
                    result.append("&#34;");
                    break;
                case '&':
                    result.append("&#38;#38;");
                    break;
                case '\'':
                    result.append("&#39;");
                    break;
                case '<':
                    result.append("&#38;#60;");
                    break;
                case '>':
                    result.append("&#62;");
                    break;
                default:
                    if (c < ' ') {
                        result.append(new StringBuffer().append("&#").append((int) c).append(";").toString());
                        break;
                    } else {
                        result.append(c);
                        break;
                    }
            }
        }
        return result.toString();
    }
}
