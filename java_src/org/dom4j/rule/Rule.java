package org.dom4j.rule;

import org.dom4j.Node;
/* loaded from: classes2.dex */
public class Rule implements Comparable {
    private Action action;
    private int appearenceCount;
    private int importPrecedence;
    private String mode;
    private Pattern pattern;
    private double priority;

    public Rule() {
        this.priority = 0.5d;
    }

    public Rule(Pattern pattern) {
        this.pattern = pattern;
        this.priority = pattern.getPriority();
    }

    public Rule(Pattern pattern, Action action) {
        this(pattern);
        this.action = action;
    }

    public Rule(Rule that, Pattern pattern) {
        this.mode = that.mode;
        this.importPrecedence = that.importPrecedence;
        this.priority = that.priority;
        this.appearenceCount = that.appearenceCount;
        this.action = that.action;
        this.pattern = pattern;
    }

    public boolean equals(Object that) {
        return (that instanceof Rule) && compareTo((Rule) that) == 0;
    }

    public int hashCode() {
        return this.importPrecedence + this.appearenceCount;
    }

    @Override // java.lang.Comparable
    public int compareTo(Object that) {
        return that instanceof Rule ? compareTo((Rule) that) : getClass().getName().compareTo(that.getClass().getName());
    }

    public int compareTo(Rule that) {
        int answer = this.importPrecedence - that.importPrecedence;
        if (answer == 0) {
            int answer2 = (int) Math.round(this.priority - that.priority);
            if (answer2 == 0) {
                return this.appearenceCount - that.appearenceCount;
            }
            return answer2;
        }
        return answer;
    }

    public String toString() {
        return new StringBuffer().append(super.toString()).append("[ pattern: ").append(getPattern()).append(" action: ").append(getAction()).append(" ]").toString();
    }

    public final boolean matches(Node node) {
        return this.pattern.matches(node);
    }

    public Rule[] getUnionRules() {
        Pattern[] patterns = this.pattern.getUnionPatterns();
        if (patterns == null) {
            return null;
        }
        int size = patterns.length;
        Rule[] answer = new Rule[size];
        for (int i = 0; i < size; i++) {
            answer[i] = new Rule(this, patterns[i]);
        }
        return answer;
    }

    public final short getMatchType() {
        return this.pattern.getMatchType();
    }

    public final String getMatchesNodeName() {
        return this.pattern.getMatchesNodeName();
    }

    public String getMode() {
        return this.mode;
    }

    public void setMode(String mode) {
        this.mode = mode;
    }

    public int getImportPrecedence() {
        return this.importPrecedence;
    }

    public void setImportPrecedence(int importPrecedence) {
        this.importPrecedence = importPrecedence;
    }

    public double getPriority() {
        return this.priority;
    }

    public void setPriority(double priority) {
        this.priority = priority;
    }

    public int getAppearenceCount() {
        return this.appearenceCount;
    }

    public void setAppearenceCount(int appearenceCount) {
        this.appearenceCount = appearenceCount;
    }

    public Pattern getPattern() {
        return this.pattern;
    }

    public void setPattern(Pattern pattern) {
        this.pattern = pattern;
    }

    public Action getAction() {
        return this.action;
    }

    public void setAction(Action action) {
        this.action = action;
    }
}
