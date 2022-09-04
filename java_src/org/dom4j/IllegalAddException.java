package org.dom4j;
/* loaded from: classes2.dex */
public class IllegalAddException extends IllegalArgumentException {
    public IllegalAddException(String reason) {
        super(reason);
    }

    public IllegalAddException(Element parent, Node node, String reason) {
        super(new StringBuffer().append("The node \"").append(node.toString()).append("\" could not be added to the element \"").append(parent.getQualifiedName()).append("\" because: ").append(reason).toString());
    }

    public IllegalAddException(Branch parent, Node node, String reason) {
        super(new StringBuffer().append("The node \"").append(node.toString()).append("\" could not be added to the branch \"").append(parent.getName()).append("\" because: ").append(reason).toString());
    }
}
