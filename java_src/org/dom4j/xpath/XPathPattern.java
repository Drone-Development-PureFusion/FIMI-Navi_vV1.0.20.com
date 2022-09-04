package org.dom4j.xpath;

import java.util.ArrayList;
import org.dom4j.InvalidXPathException;
import org.dom4j.Node;
import org.dom4j.XPathException;
import org.dom4j.rule.Pattern;
import org.jaxen.Context;
import org.jaxen.ContextSupport;
import org.jaxen.JaxenException;
import org.jaxen.SimpleNamespaceContext;
import org.jaxen.SimpleVariableContext;
import org.jaxen.VariableContext;
import org.jaxen.XPathFunctionContext;
import org.jaxen.dom4j.DocumentNavigator;
import org.jaxen.pattern.PatternParser;
import org.jaxen.saxpath.SAXPathException;
/* loaded from: classes2.dex */
public class XPathPattern implements Pattern {
    private Context context = new Context(getContextSupport());
    private org.jaxen.pattern.Pattern pattern;
    private String text;

    public XPathPattern(org.jaxen.pattern.Pattern pattern) {
        this.pattern = pattern;
        this.text = pattern.getText();
    }

    public XPathPattern(String text) {
        this.text = text;
        try {
            this.pattern = PatternParser.parse(text);
        } catch (SAXPathException e) {
            throw new InvalidXPathException(text, e.getMessage());
        } catch (Throwable t) {
            throw new InvalidXPathException(text, t);
        }
    }

    @Override // org.dom4j.rule.Pattern, org.dom4j.NodeFilter
    public boolean matches(Node node) {
        try {
            ArrayList list = new ArrayList(1);
            list.add(node);
            this.context.setNodeSet(list);
            return this.pattern.matches(node, this.context);
        } catch (JaxenException e) {
            handleJaxenException(e);
            return false;
        }
    }

    public String getText() {
        return this.text;
    }

    @Override // org.dom4j.rule.Pattern
    public double getPriority() {
        return this.pattern.getPriority();
    }

    @Override // org.dom4j.rule.Pattern
    public Pattern[] getUnionPatterns() {
        org.jaxen.pattern.Pattern[] patterns = this.pattern.getUnionPatterns();
        if (patterns != null) {
            int size = patterns.length;
            XPathPattern[] answer = new XPathPattern[size];
            for (int i = 0; i < size; i++) {
                answer[i] = new XPathPattern(patterns[i]);
            }
            return answer;
        }
        return null;
    }

    @Override // org.dom4j.rule.Pattern
    public short getMatchType() {
        return this.pattern.getMatchType();
    }

    @Override // org.dom4j.rule.Pattern
    public String getMatchesNodeName() {
        return this.pattern.getMatchesNodeName();
    }

    public void setVariableContext(VariableContext variableContext) {
        this.context.getContextSupport().setVariableContext(variableContext);
    }

    public String toString() {
        return new StringBuffer().append("[XPathPattern: text: ").append(this.text).append(" Pattern: ").append(this.pattern).append("]").toString();
    }

    protected ContextSupport getContextSupport() {
        return new ContextSupport(new SimpleNamespaceContext(), XPathFunctionContext.getInstance(), new SimpleVariableContext(), DocumentNavigator.getInstance());
    }

    protected void handleJaxenException(JaxenException exception) throws XPathException {
        throw new XPathException(this.text, (Exception) exception);
    }
}
