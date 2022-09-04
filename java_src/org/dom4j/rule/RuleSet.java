package org.dom4j.rule;

import java.util.ArrayList;
import java.util.Collections;
import org.dom4j.Node;
/* loaded from: classes2.dex */
public class RuleSet {
    private Rule[] ruleArray;
    private ArrayList rules = new ArrayList();

    public String toString() {
        return new StringBuffer().append(super.toString()).append(" [RuleSet: ").append(this.rules).append(" ]").toString();
    }

    public Rule getMatchingRule(Node node) {
        Rule[] matches = getRuleArray();
        for (int i = matches.length - 1; i >= 0; i--) {
            Rule rule = matches[i];
            if (rule.matches(node)) {
                return rule;
            }
        }
        return null;
    }

    public void addRule(Rule rule) {
        this.rules.add(rule);
        this.ruleArray = null;
    }

    public void removeRule(Rule rule) {
        this.rules.remove(rule);
        this.ruleArray = null;
    }

    public void addAll(RuleSet that) {
        this.rules.addAll(that.rules);
        this.ruleArray = null;
    }

    protected Rule[] getRuleArray() {
        if (this.ruleArray == null) {
            Collections.sort(this.rules);
            int size = this.rules.size();
            this.ruleArray = new Rule[size];
            this.rules.toArray(this.ruleArray);
        }
        return this.ruleArray;
    }
}
