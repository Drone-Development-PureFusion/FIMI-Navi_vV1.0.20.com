package ch.qos.logback.core.helpers;
/* loaded from: classes.dex */
public class Transform {
    private static final String CDATA_EMBEDED_END = "]]>]]&gt;<![CDATA[";
    private static final String CDATA_END = "]]>";
    private static final int CDATA_END_LEN = CDATA_END.length();
    private static final String CDATA_PSEUDO_END = "]]&gt;";
    private static final String CDATA_START = "<![CDATA[";

    public static void appendEscapingCDATA(StringBuilder sb, String str) {
        if (str == null) {
            return;
        }
        int indexOf = str.indexOf(CDATA_END);
        if (indexOf < 0) {
            sb.append(str);
            return;
        }
        int i = 0;
        while (indexOf > -1) {
            sb.append(str.substring(i, indexOf));
            sb.append(CDATA_EMBEDED_END);
            i = CDATA_END_LEN + indexOf;
            if (i >= str.length()) {
                return;
            }
            indexOf = str.indexOf(CDATA_END, i);
        }
        sb.append(str.substring(i));
    }

    public static String escapeTags(String str) {
        return (str == null || str.length() == 0) ? str : (str.indexOf("<") == -1 && str.indexOf(">") == -1) ? str : escapeTags(new StringBuffer(str));
    }

    public static String escapeTags(StringBuffer stringBuffer) {
        for (int i = 0; i < stringBuffer.length(); i++) {
            char charAt = stringBuffer.charAt(i);
            if (charAt == '<') {
                stringBuffer.replace(i, i + 1, "&lt;");
            } else if (charAt == '>') {
                stringBuffer.replace(i, i + 1, "&gt;");
            }
        }
        return stringBuffer.toString();
    }
}
