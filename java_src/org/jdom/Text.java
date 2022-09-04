package org.jdom;
/* loaded from: classes2.dex */
public class Text extends Content {
    private static final String CVS_ID = "@(#) $RCSfile: Text.java,v $ $Revision: 1.24 $ $Date: 2004/02/27 11:32:57 $ $Name: jdom_1_0 $";
    static final String EMPTY_STRING = "";
    protected String value;

    /* JADX INFO: Access modifiers changed from: protected */
    public Text() {
    }

    public Text(String str) {
        setText(str);
    }

    public String getText() {
        return this.value;
    }

    public String getTextTrim() {
        return getText().trim();
    }

    public String getTextNormalize() {
        return normalizeString(getText());
    }

    public static String normalizeString(String str) {
        if (str == null) {
            return "";
        }
        char[] c = str.toCharArray();
        char[] n = new char[c.length];
        boolean white = true;
        int pos = 0;
        for (int i = 0; i < c.length; i++) {
            if (" \t\n\r".indexOf(c[i]) != -1) {
                if (!white) {
                    n[pos] = ' ';
                    white = true;
                    pos++;
                }
            } else {
                n[pos] = c[i];
                white = false;
                pos++;
            }
        }
        if (white && pos > 0) {
            pos--;
        }
        return new String(n, 0, pos);
    }

    public Text setText(String str) {
        if (str == null) {
            this.value = "";
        } else {
            String reason = Verifier.checkCharacterData(str);
            if (reason != null) {
                throw new IllegalDataException(str, "character content", reason);
            }
            this.value = str;
        }
        return this;
    }

    public void append(String str) {
        if (str == null) {
            return;
        }
        String reason = Verifier.checkCharacterData(str);
        if (reason != null) {
            throw new IllegalDataException(str, "character content", reason);
        }
        if (str == "") {
            this.value = str;
        } else {
            this.value = new StringBuffer(String.valueOf(this.value)).append(str).toString();
        }
    }

    public void append(Text text) {
        if (text == null) {
            return;
        }
        this.value = new StringBuffer(String.valueOf(this.value)).append(text.getText()).toString();
    }

    @Override // org.jdom.Content
    public String getValue() {
        return this.value;
    }

    public String toString() {
        return new StringBuffer(64).append("[Text: ").append(getText()).append("]").toString();
    }

    @Override // org.jdom.Content, org.jdom.Parent
    public Object clone() {
        Text text = (Text) super.clone();
        text.value = this.value;
        return text;
    }
}
