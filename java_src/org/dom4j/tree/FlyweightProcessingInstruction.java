package org.dom4j.tree;

import java.util.Collections;
import java.util.Map;
import org.dom4j.Element;
import org.dom4j.Node;
/* loaded from: classes2.dex */
public class FlyweightProcessingInstruction extends AbstractProcessingInstruction {
    protected String target;
    protected String text;
    protected Map values;

    public FlyweightProcessingInstruction() {
    }

    public FlyweightProcessingInstruction(String target, Map values) {
        this.target = target;
        this.values = values;
        this.text = toString(values);
    }

    public FlyweightProcessingInstruction(String target, String text) {
        this.target = target;
        this.text = text;
        this.values = parseValues(text);
    }

    @Override // org.dom4j.ProcessingInstruction
    public String getTarget() {
        return this.target;
    }

    public void setTarget(String target) {
        throw new UnsupportedOperationException("This PI is read-only and cannot be modified");
    }

    @Override // org.dom4j.tree.AbstractNode, org.dom4j.Node
    public String getText() {
        return this.text;
    }

    @Override // org.dom4j.ProcessingInstruction
    public String getValue(String name) {
        String answer = (String) this.values.get(name);
        if (answer == null) {
            return "";
        }
        return answer;
    }

    @Override // org.dom4j.ProcessingInstruction
    public Map getValues() {
        return Collections.unmodifiableMap(this.values);
    }

    @Override // org.dom4j.tree.AbstractNode
    protected Node createXPathResult(Element parent) {
        return new DefaultProcessingInstruction(parent, getTarget(), getText());
    }
}
