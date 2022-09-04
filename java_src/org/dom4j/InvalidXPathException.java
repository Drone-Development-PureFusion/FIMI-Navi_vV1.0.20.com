package org.dom4j;
/* loaded from: classes2.dex */
public class InvalidXPathException extends IllegalArgumentException {
    private static final long serialVersionUID = 3257009869058881592L;

    public InvalidXPathException(String xpath) {
        super(new StringBuffer().append("Invalid XPath expression: ").append(xpath).toString());
    }

    public InvalidXPathException(String xpath, String reason) {
        super(new StringBuffer().append("Invalid XPath expression: ").append(xpath).append(" ").append(reason).toString());
    }

    public InvalidXPathException(String xpath, Throwable t) {
        super(new StringBuffer().append("Invalid XPath expression: '").append(xpath).append("'. Caused by: ").append(t.getMessage()).toString());
    }
}
