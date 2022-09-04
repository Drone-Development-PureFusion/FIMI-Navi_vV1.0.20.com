package ch.qos.logback.core.pattern.parser;
/* loaded from: classes.dex */
public class CompositeNode extends SimpleKeywordNode {
    Node childNode;

    /* JADX INFO: Access modifiers changed from: package-private */
    public CompositeNode(String str) {
        super(2, str);
    }

    @Override // ch.qos.logback.core.pattern.parser.SimpleKeywordNode, ch.qos.logback.core.pattern.parser.FormattingNode, ch.qos.logback.core.pattern.parser.Node
    public boolean equals(Object obj) {
        if (super.equals(obj) && (obj instanceof CompositeNode)) {
            CompositeNode compositeNode = (CompositeNode) obj;
            return this.childNode != null ? this.childNode.equals(compositeNode.childNode) : compositeNode.childNode == null;
        }
        return false;
    }

    public Node getChildNode() {
        return this.childNode;
    }

    @Override // ch.qos.logback.core.pattern.parser.SimpleKeywordNode, ch.qos.logback.core.pattern.parser.FormattingNode, ch.qos.logback.core.pattern.parser.Node
    public int hashCode() {
        return super.hashCode();
    }

    public void setChildNode(Node node) {
        this.childNode = node;
    }

    @Override // ch.qos.logback.core.pattern.parser.SimpleKeywordNode, ch.qos.logback.core.pattern.parser.Node
    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        if (this.childNode != null) {
            stringBuffer.append("CompositeNode(" + this.childNode + ")");
        } else {
            stringBuffer.append("CompositeNode(no child)");
        }
        stringBuffer.append(printNext());
        return stringBuffer.toString();
    }
}
