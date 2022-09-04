package ch.qos.logback.core.pattern.util;
/* loaded from: classes.dex */
public class RegularEscapeUtil implements IEscapeUtil {
    public static String basicEscape(String str) {
        int length = str.length();
        StringBuffer stringBuffer = new StringBuffer(length);
        int i = 0;
        while (i < length) {
            int i2 = i + 1;
            char charAt = str.charAt(i);
            if (charAt == '\\') {
                i = i2 + 1;
                charAt = str.charAt(i2);
                if (charAt == 'n') {
                    charAt = '\n';
                } else if (charAt == 'r') {
                    charAt = '\r';
                } else if (charAt == 't') {
                    charAt = '\t';
                } else if (charAt == 'f') {
                    charAt = '\f';
                }
            } else {
                i = i2;
            }
            stringBuffer.append(charAt);
        }
        return stringBuffer.toString();
    }

    @Override // ch.qos.logback.core.pattern.util.IEscapeUtil
    public void escape(String str, StringBuffer stringBuffer, char c, int i) {
        if (str.indexOf(c) >= 0) {
            stringBuffer.append(c);
            return;
        }
        switch (c) {
            case '\\':
                stringBuffer.append(c);
                return;
            case '_':
                return;
            case 'n':
                stringBuffer.append('\n');
                return;
            case 'r':
                stringBuffer.append('\r');
                return;
            case 't':
                stringBuffer.append('\t');
                return;
            default:
                throw new IllegalArgumentException("Illegal char '" + c + " at column " + i + ". Only \\\\, \\_" + formatEscapeCharsForListing(str) + ", \\t, \\n, \\r combinations are allowed as escape characters.");
        }
    }

    String formatEscapeCharsForListing(String str) {
        StringBuilder sb = new StringBuilder();
        for (int i = 0; i < str.length(); i++) {
            sb.append(", \\").append(str.charAt(i));
        }
        return sb.toString();
    }
}
