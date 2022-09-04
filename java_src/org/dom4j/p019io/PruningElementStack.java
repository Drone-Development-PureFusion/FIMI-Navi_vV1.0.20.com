package org.dom4j.p019io;

import org.dom4j.Element;
import org.dom4j.ElementHandler;
/* renamed from: org.dom4j.io.PruningElementStack */
/* loaded from: classes2.dex */
class PruningElementStack extends ElementStack {
    private ElementHandler elementHandler;
    private int matchingElementIndex;
    private String[] path;

    public PruningElementStack(String[] path, ElementHandler elementHandler) {
        this.path = path;
        this.elementHandler = elementHandler;
        checkPath();
    }

    public PruningElementStack(String[] path, ElementHandler elementHandler, int defaultCapacity) {
        super(defaultCapacity);
        this.path = path;
        this.elementHandler = elementHandler;
        checkPath();
    }

    @Override // org.dom4j.p019io.ElementStack
    public Element popElement() {
        Element answer = super.popElement();
        if (this.lastElementIndex == this.matchingElementIndex && this.lastElementIndex >= 0 && validElement(answer, this.lastElementIndex + 1)) {
            Element parent = null;
            int i = 0;
            while (true) {
                if (i > this.lastElementIndex) {
                    break;
                }
                parent = this.stack[i];
                if (validElement(parent, i)) {
                    i++;
                } else {
                    parent = null;
                    break;
                }
            }
            if (parent != null) {
                pathMatches(parent, answer);
            }
        }
        return answer;
    }

    protected void pathMatches(Element parent, Element selectedNode) {
        this.elementHandler.onEnd(this);
        parent.remove(selectedNode);
    }

    protected boolean validElement(Element element, int index) {
        String requiredName = this.path[index];
        String name = element.getName();
        if (requiredName == name) {
            return true;
        }
        if (requiredName != null && name != null) {
            return requiredName.equals(name);
        }
        return false;
    }

    private void checkPath() {
        if (this.path.length < 2) {
            throw new RuntimeException(new StringBuffer().append("Invalid path of length: ").append(this.path.length).append(" it must be greater than 2").toString());
        }
        this.matchingElementIndex = this.path.length - 2;
    }
}
