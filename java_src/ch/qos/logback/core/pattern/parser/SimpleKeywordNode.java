package ch.qos.logback.core.pattern.parser;

import java.util.List;
/* loaded from: classes.dex */
public class SimpleKeywordNode extends FormattingNode {
    List<String> optionList;

    /* JADX INFO: Access modifiers changed from: protected */
    public SimpleKeywordNode(int i, Object obj) {
        super(i, obj);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public SimpleKeywordNode(Object obj) {
        super(1, obj);
    }

    @Override // ch.qos.logback.core.pattern.parser.FormattingNode, ch.qos.logback.core.pattern.parser.Node
    public boolean equals(Object obj) {
        if (super.equals(obj) && (obj instanceof SimpleKeywordNode)) {
            SimpleKeywordNode simpleKeywordNode = (SimpleKeywordNode) obj;
            return this.optionList != null ? this.optionList.equals(simpleKeywordNode.optionList) : simpleKeywordNode.optionList == null;
        }
        return false;
    }

    public List<String> getOptions() {
        return this.optionList;
    }

    @Override // ch.qos.logback.core.pattern.parser.FormattingNode, ch.qos.logback.core.pattern.parser.Node
    public int hashCode() {
        return super.hashCode();
    }

    public void setOptions(List<String> list) {
        this.optionList = list;
    }

    @Override // ch.qos.logback.core.pattern.parser.Node
    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        if (this.optionList == null) {
            stringBuffer.append("KeyWord(" + this.value + "," + this.formatInfo + ")");
        } else {
            stringBuffer.append("KeyWord(" + this.value + ", " + this.formatInfo + "," + this.optionList + ")");
        }
        stringBuffer.append(printNext());
        return stringBuffer.toString();
    }
}
