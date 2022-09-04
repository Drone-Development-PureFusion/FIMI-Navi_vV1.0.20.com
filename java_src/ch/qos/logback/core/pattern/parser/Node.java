package ch.qos.logback.core.pattern.parser;
/* loaded from: classes.dex */
public class Node {
    static final int COMPOSITE_KEYWORD = 2;
    static final int LITERAL = 0;
    static final int SIMPLE_KEYWORD = 1;
    Node next;
    final int type;
    final Object value;

    /* JADX INFO: Access modifiers changed from: package-private */
    public Node(int i) {
        this(i, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Node(int i, Object obj) {
        this.type = i;
        this.value = obj;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof Node)) {
            return false;
        }
        Node node = (Node) obj;
        if (this.type == node.type && (this.value == null ? node.value == null : this.value.equals(node.value))) {
            if (this.next != null) {
                if (this.next.equals(node.next)) {
                    return true;
                }
            } else if (node.next == null) {
                return true;
            }
        }
        return false;
    }

    public Node getNext() {
        return this.next;
    }

    public int getType() {
        return this.type;
    }

    public Object getValue() {
        return this.value;
    }

    public int hashCode() {
        return (this.value != null ? this.value.hashCode() : 0) + (this.type * 31);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String printNext() {
        return this.next != null ? " -> " + this.next : "";
    }

    public void setNext(Node node) {
        this.next = node;
    }

    public String toString() {
        StringBuffer stringBuffer = new StringBuffer();
        switch (this.type) {
            case 0:
                stringBuffer.append("LITERAL(" + this.value + ")");
                break;
            default:
                stringBuffer.append(super.toString());
                break;
        }
        stringBuffer.append(printNext());
        return stringBuffer.toString();
    }
}
