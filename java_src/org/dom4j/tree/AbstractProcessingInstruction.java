package org.dom4j.tree;

import java.io.IOException;
import java.io.Writer;
import java.util.HashMap;
import java.util.Map;
import java.util.StringTokenizer;
import org.dom4j.Element;
import org.dom4j.ProcessingInstruction;
import org.dom4j.Visitor;
/* loaded from: classes2.dex */
public abstract class AbstractProcessingInstruction extends AbstractNode implements ProcessingInstruction {
    @Override // org.dom4j.tree.AbstractNode, org.dom4j.Node
    public short getNodeType() {
        return (short) 7;
    }

    @Override // org.dom4j.Node
    public String getPath(Element context) {
        Element parent = getParent();
        return (parent == null || parent == context) ? "processing-instruction()" : new StringBuffer().append(parent.getPath(context)).append("/processing-instruction()").toString();
    }

    @Override // org.dom4j.Node
    public String getUniquePath(Element context) {
        Element parent = getParent();
        return (parent == null || parent == context) ? "processing-instruction()" : new StringBuffer().append(parent.getUniquePath(context)).append("/processing-instruction()").toString();
    }

    public String toString() {
        return new StringBuffer().append(super.toString()).append(" [ProcessingInstruction: &").append(getName()).append(";]").toString();
    }

    @Override // org.dom4j.Node
    public String asXML() {
        return new StringBuffer().append("<?").append(getName()).append(" ").append(getText()).append("?>").toString();
    }

    @Override // org.dom4j.tree.AbstractNode, org.dom4j.Node
    public void write(Writer writer) throws IOException {
        writer.write("<?");
        writer.write(getName());
        writer.write(" ");
        writer.write(getText());
        writer.write("?>");
    }

    @Override // org.dom4j.Node
    public void accept(Visitor visitor) {
        visitor.visit(this);
    }

    @Override // org.dom4j.ProcessingInstruction
    public void setValue(String name, String value) {
        throw new UnsupportedOperationException("This PI is read-only and cannot be modified");
    }

    @Override // org.dom4j.ProcessingInstruction
    public void setValues(Map data) {
        throw new UnsupportedOperationException("This PI is read-only and cannot be modified");
    }

    @Override // org.dom4j.tree.AbstractNode, org.dom4j.Node
    public String getName() {
        return getTarget();
    }

    @Override // org.dom4j.tree.AbstractNode, org.dom4j.Node
    public void setName(String name) {
        setTarget(name);
    }

    @Override // org.dom4j.ProcessingInstruction
    public boolean removeValue(String name) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public String toString(Map values) {
        StringBuffer buffer = new StringBuffer();
        for (Map.Entry entry : values.entrySet()) {
            String name = (String) entry.getKey();
            String value = (String) entry.getValue();
            buffer.append(name);
            buffer.append("=\"");
            buffer.append(value);
            buffer.append("\" ");
        }
        buffer.setLength(buffer.length() - 1);
        return buffer.toString();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public Map parseValues(String text) {
        Map data = new HashMap();
        StringTokenizer s = new StringTokenizer(text, " ='\"", true);
        while (s.hasMoreTokens()) {
            String name = getName(s);
            if (s.hasMoreTokens()) {
                String value = getValue(s);
                data.put(name, value);
            }
        }
        return data;
    }

    private String getName(StringTokenizer tokenizer) {
        StringBuffer name = new StringBuffer(tokenizer.nextToken());
        while (tokenizer.hasMoreTokens()) {
            String token = tokenizer.nextToken();
            if (token.equals("=")) {
                break;
            }
            name.append(token);
        }
        return name.toString().trim();
    }

    private String getValue(StringTokenizer tokenizer) {
        String token = tokenizer.nextToken();
        StringBuffer value = new StringBuffer();
        while (tokenizer.hasMoreTokens() && !token.equals("'") && !token.equals("\"")) {
            token = tokenizer.nextToken();
        }
        String quote = token;
        while (tokenizer.hasMoreTokens()) {
            String token2 = tokenizer.nextToken();
            if (quote.equals(token2)) {
                break;
            }
            value.append(token2);
        }
        return value.toString();
    }
}
