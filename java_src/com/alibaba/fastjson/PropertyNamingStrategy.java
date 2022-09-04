package com.alibaba.fastjson;

import ch.qos.logback.core.CoreConstants;
/* loaded from: classes.dex */
public enum PropertyNamingStrategy {
    CamelCase,
    PascalCase,
    SnakeCase,
    KebabCase;

    public String translate(String propertyName) {
        switch (this) {
            case SnakeCase:
                StringBuilder buf = new StringBuilder();
                for (int i = 0; i < propertyName.length(); i++) {
                    char ch2 = propertyName.charAt(i);
                    if (ch2 >= 'A' && ch2 <= 'Z') {
                        char ch_ucase = (char) (ch2 + ' ');
                        if (i > 0) {
                            buf.append('_');
                        }
                        buf.append(ch_ucase);
                    } else {
                        buf.append(ch2);
                    }
                }
                return buf.toString();
            case KebabCase:
                StringBuilder buf2 = new StringBuilder();
                for (int i2 = 0; i2 < propertyName.length(); i2++) {
                    char ch3 = propertyName.charAt(i2);
                    if (ch3 >= 'A' && ch3 <= 'Z') {
                        char ch_ucase2 = (char) (ch3 + ' ');
                        if (i2 > 0) {
                            buf2.append(CoreConstants.DASH_CHAR);
                        }
                        buf2.append(ch_ucase2);
                    } else {
                        buf2.append(ch3);
                    }
                }
                return buf2.toString();
            case PascalCase:
                char ch4 = propertyName.charAt(0);
                if (ch4 >= 'a' && ch4 <= 'z') {
                    char[] chars = propertyName.toCharArray();
                    chars[0] = (char) (chars[0] - ' ');
                    return new String(chars);
                }
                return propertyName;
            case CamelCase:
                char ch5 = propertyName.charAt(0);
                if (ch5 >= 'A' && ch5 <= 'Z') {
                    char[] chars2 = propertyName.toCharArray();
                    chars2[0] = (char) (chars2[0] + ' ');
                    return new String(chars2);
                }
                return propertyName;
            default:
                return propertyName;
        }
    }
}
