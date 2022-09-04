package ch.qos.logback.core.pattern.parser;

import ch.qos.logback.core.pattern.FormatInfo;
/* loaded from: classes.dex */
public class FormattingNode extends Node {
    FormatInfo formatInfo;

    FormattingNode(int i) {
        super(i);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public FormattingNode(int i, Object obj) {
        super(i, obj);
    }

    @Override // ch.qos.logback.core.pattern.parser.Node
    public boolean equals(Object obj) {
        if (super.equals(obj) && (obj instanceof FormattingNode)) {
            FormattingNode formattingNode = (FormattingNode) obj;
            return this.formatInfo != null ? this.formatInfo.equals(formattingNode.formatInfo) : formattingNode.formatInfo == null;
        }
        return false;
    }

    public FormatInfo getFormatInfo() {
        return this.formatInfo;
    }

    @Override // ch.qos.logback.core.pattern.parser.Node
    public int hashCode() {
        return (this.formatInfo != null ? this.formatInfo.hashCode() : 0) + (super.hashCode() * 31);
    }

    public void setFormatInfo(FormatInfo formatInfo) {
        this.formatInfo = formatInfo;
    }
}
