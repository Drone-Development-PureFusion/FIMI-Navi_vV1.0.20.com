package org.dom4j.rule.pattern;

import org.dom4j.Node;
import org.dom4j.NodeFilter;
import org.dom4j.rule.Pattern;
/* loaded from: classes2.dex */
public class DefaultPattern implements Pattern {
    private NodeFilter filter;

    public DefaultPattern(NodeFilter filter) {
        this.filter = filter;
    }

    @Override // org.dom4j.rule.Pattern, org.dom4j.NodeFilter
    public boolean matches(Node node) {
        return this.filter.matches(node);
    }

    @Override // org.dom4j.rule.Pattern
    public double getPriority() {
        return 0.5d;
    }

    @Override // org.dom4j.rule.Pattern
    public Pattern[] getUnionPatterns() {
        return null;
    }

    @Override // org.dom4j.rule.Pattern
    public short getMatchType() {
        return (short) 0;
    }

    @Override // org.dom4j.rule.Pattern
    public String getMatchesNodeName() {
        return null;
    }
}
