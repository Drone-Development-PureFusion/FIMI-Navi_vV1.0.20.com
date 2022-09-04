package ch.qos.logback.repackage.brut.androlib.res.xml;

import ch.qos.logback.core.CoreConstants;
import java.lang.Character;
import java.util.ArrayList;
import java.util.List;
/* loaded from: classes.dex */
public final class ResXmlEncoders {
    public static String encodeAsResXmlAttr(String str) {
        if (str.isEmpty()) {
            return str;
        }
        char[] charArray = str.toCharArray();
        StringBuilder sb = new StringBuilder(str.length() + 10);
        switch (charArray[0]) {
            case '#':
            case '?':
            case '@':
                sb.append('\\');
                break;
        }
        for (char c : charArray) {
            switch (c) {
                case '\n':
                    sb.append("\\n");
                    continue;
                case '\"':
                    sb.append("&quot;");
                    continue;
                case '\\':
                    sb.append('\\');
                    break;
                default:
                    if (!isPrintableChar(c)) {
                        sb.append(String.format("\\u%04x", Integer.valueOf(c)));
                        continue;
                    }
                    break;
            }
            sb.append(c);
        }
        return sb.toString();
    }

    public static String encodeAsXmlValue(String str) {
        if (str.isEmpty()) {
            return str;
        }
        char[] charArray = str.toCharArray();
        StringBuilder sb = new StringBuilder(str.length() + 10);
        switch (charArray[0]) {
            case '#':
            case '?':
            case '@':
                sb.append('\\');
                break;
        }
        boolean z = true;
        boolean z2 = false;
        int i = 0;
        boolean z3 = false;
        for (char c : charArray) {
            if (!z3) {
                if (c != ' ') {
                    switch (c) {
                        case '\n':
                        case '\'':
                            z = false;
                            z2 = true;
                            break;
                        case '\"':
                            sb.append('\\');
                            z = false;
                            break;
                        case '<':
                            if (z2) {
                                sb.insert(i, CoreConstants.DOUBLE_QUOTE_CHAR).append(CoreConstants.DOUBLE_QUOTE_CHAR);
                                z = false;
                                z3 = true;
                                break;
                            } else {
                                z = false;
                                z3 = true;
                                break;
                            }
                        case '\\':
                            sb.append('\\');
                            z = false;
                            break;
                        default:
                            if (isPrintableChar(c)) {
                                z = false;
                                break;
                            } else {
                                sb.append(String.format("\\u%04x", Integer.valueOf(c)));
                                z = false;
                                continue;
                            }
                    }
                } else {
                    if (z) {
                        z2 = true;
                    }
                    z = true;
                }
            } else if (c == '>') {
                i = sb.length() + 1;
                z2 = false;
                z3 = false;
            }
            sb.append(c);
        }
        if (z2 || z) {
            sb.insert(i, CoreConstants.DOUBLE_QUOTE_CHAR).append(CoreConstants.DOUBLE_QUOTE_CHAR);
        }
        return sb.toString();
    }

    public static String enumerateNonPositionalSubstitutions(String str) {
        List<Integer> findNonPositionalSubstitutions = findNonPositionalSubstitutions(str, -1);
        if (findNonPositionalSubstitutions.size() < 2) {
            return str;
        }
        StringBuilder sb = new StringBuilder();
        int i = 0;
        int i2 = 0;
        for (Integer num : findNonPositionalSubstitutions) {
            Integer valueOf = Integer.valueOf(num.intValue() + 1);
            int i3 = i + 1;
            sb.append(str.substring(i2, valueOf.intValue())).append(i3).append(CoreConstants.DOLLAR);
            i2 = valueOf.intValue();
            i = i3;
        }
        sb.append(str.substring(i2));
        return sb.toString();
    }

    public static String escapeXmlChars(String str) {
        return str.replace("&", "&amp;").replace("<", "&lt;");
    }

    private static List<Integer> findNonPositionalSubstitutions(String str, int i) {
        char charAt;
        int i2 = 0;
        int length = str.length();
        ArrayList arrayList = new ArrayList();
        int i3 = 0;
        while (true) {
            int indexOf = str.indexOf(37, i2);
            int i4 = indexOf + 1;
            if (i4 == 0 || i4 == length) {
                break;
            }
            i2 = i4 + 1;
            char charAt2 = str.charAt(i4);
            if (charAt2 != '%') {
                if (charAt2 >= '0' && charAt2 <= '9' && i2 < length) {
                    do {
                        int i5 = i2;
                        i2 = i5 + 1;
                        charAt = str.charAt(i5);
                        if (charAt < '0' || charAt > '9') {
                            break;
                        }
                    } while (i2 < length);
                    if (charAt == '$') {
                    }
                }
                arrayList.add(Integer.valueOf(indexOf));
                if (i != -1 && (i3 = i3 + 1) >= i) {
                    break;
                }
            }
        }
        return arrayList;
    }

    public static boolean hasMultipleNonPositionalSubstitutions(String str) {
        return findNonPositionalSubstitutions(str, 2).size() > 1;
    }

    private static boolean isPrintableChar(char c) {
        Character.UnicodeBlock of = Character.UnicodeBlock.of(c);
        return (Character.isISOControl(c) || c == 65535 || of == null || of == Character.UnicodeBlock.SPECIALS) ? false : true;
    }
}
