package org.dom4j;
/* loaded from: classes2.dex */
public class XPathException extends RuntimeException {
    private String xpath;

    public XPathException(String xpath) {
        super(new StringBuffer().append("Exception occurred evaluting XPath: ").append(xpath).toString());
        this.xpath = xpath;
    }

    public XPathException(String xpath, String reason) {
        super(new StringBuffer().append("Exception occurred evaluting XPath: ").append(xpath).append(" ").append(reason).toString());
        this.xpath = xpath;
    }

    public XPathException(String xpath, Exception e) {
        super(new StringBuffer().append("Exception occurred evaluting XPath: ").append(xpath).append(". Exception: ").append(e.getMessage()).toString());
        this.xpath = xpath;
    }

    public String getXPath() {
        return this.xpath;
    }
}
