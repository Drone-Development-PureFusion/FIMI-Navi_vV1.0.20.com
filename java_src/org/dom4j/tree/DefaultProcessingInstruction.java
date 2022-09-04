package org.dom4j.tree;

import java.util.Map;
import org.dom4j.Element;
/* loaded from: classes2.dex */
public class DefaultProcessingInstruction extends FlyweightProcessingInstruction {
    private Element parent;

    public DefaultProcessingInstruction(String target, Map values) {
        super(target, values);
    }

    public DefaultProcessingInstruction(String target, String values) {
        super(target, values);
    }

    public DefaultProcessingInstruction(Element parent, String target, String values) {
        super(target, values);
        this.parent = parent;
    }

    @Override // org.dom4j.tree.FlyweightProcessingInstruction, org.dom4j.ProcessingInstruction
    public void setTarget(String target) {
        this.target = target;
    }

    @Override // org.dom4j.tree.AbstractNode, org.dom4j.Node
    public void setText(String text) {
        this.text = text;
        this.values = parseValues(text);
    }

    @Override // org.dom4j.tree.AbstractProcessingInstruction, org.dom4j.ProcessingInstruction
    public void setValues(Map values) {
        this.values = values;
        this.text = toString(values);
    }

    @Override // org.dom4j.tree.AbstractProcessingInstruction, org.dom4j.ProcessingInstruction
    public void setValue(String name, String value) {
        this.values.put(name, value);
    }

    @Override // org.dom4j.tree.AbstractNode, org.dom4j.Node
    public Element getParent() {
        return this.parent;
    }

    @Override // org.dom4j.tree.AbstractNode, org.dom4j.Node
    public void setParent(Element parent) {
        this.parent = parent;
    }

    @Override // org.dom4j.tree.AbstractNode, org.dom4j.Node
    public boolean supportsParent() {
        return true;
    }

    @Override // org.dom4j.tree.AbstractNode, org.dom4j.Node
    public boolean isReadOnly() {
        return false;
    }
}
