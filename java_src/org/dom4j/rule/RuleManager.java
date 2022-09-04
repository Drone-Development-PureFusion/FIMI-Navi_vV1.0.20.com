package org.dom4j.rule;

import java.util.HashMap;
import org.dom4j.Document;
import org.dom4j.Element;
import org.dom4j.Node;
import org.dom4j.rule.pattern.NodeTypePattern;
/* loaded from: classes2.dex */
public class RuleManager {
    private int appearenceCount;
    private HashMap modes = new HashMap();
    private Action valueOfAction;

    public Mode getMode(String modeName) {
        Mode mode = (Mode) this.modes.get(modeName);
        if (mode == null) {
            Mode mode2 = createMode();
            this.modes.put(modeName, mode2);
            return mode2;
        }
        return mode;
    }

    public void addRule(Rule rule) {
        int i = this.appearenceCount + 1;
        this.appearenceCount = i;
        rule.setAppearenceCount(i);
        Mode mode = getMode(rule.getMode());
        Rule[] childRules = rule.getUnionRules();
        if (childRules != null) {
            for (Rule rule2 : childRules) {
                mode.addRule(rule2);
            }
            return;
        }
        mode.addRule(rule);
    }

    public void removeRule(Rule rule) {
        Mode mode = getMode(rule.getMode());
        Rule[] childRules = rule.getUnionRules();
        if (childRules != null) {
            for (Rule rule2 : childRules) {
                mode.removeRule(rule2);
            }
            return;
        }
        mode.removeRule(rule);
    }

    public Rule getMatchingRule(String modeName, Node node) {
        Mode mode = (Mode) this.modes.get(modeName);
        if (mode != null) {
            return mode.getMatchingRule(node);
        }
        System.out.println(new StringBuffer().append("Warning: No Mode for mode: ").append(mode).toString());
        return null;
    }

    public void clear() {
        this.modes.clear();
        this.appearenceCount = 0;
    }

    public Action getValueOfAction() {
        return this.valueOfAction;
    }

    public void setValueOfAction(Action valueOfAction) {
        this.valueOfAction = valueOfAction;
    }

    protected Mode createMode() {
        Mode mode = new Mode();
        addDefaultRules(mode);
        return mode;
    }

    protected void addDefaultRules(Mode mode) {
        Action applyTemplates = new Action(this, mode) { // from class: org.dom4j.rule.RuleManager.1
            private final RuleManager this$0;
            private final Mode val$mode;

            {
                this.this$0 = this;
                this.val$mode = mode;
            }

            @Override // org.dom4j.rule.Action
            public void run(Node node) throws Exception {
                if (node instanceof Element) {
                    this.val$mode.applyTemplates((Element) node);
                } else if (node instanceof Document) {
                    this.val$mode.applyTemplates((Document) node);
                }
            }
        };
        Action valueOf = getValueOfAction();
        addDefaultRule(mode, NodeTypePattern.ANY_DOCUMENT, applyTemplates);
        addDefaultRule(mode, NodeTypePattern.ANY_ELEMENT, applyTemplates);
        if (valueOf != null) {
            addDefaultRule(mode, NodeTypePattern.ANY_ATTRIBUTE, valueOf);
            addDefaultRule(mode, NodeTypePattern.ANY_TEXT, valueOf);
        }
    }

    protected void addDefaultRule(Mode mode, Pattern pattern, Action action) {
        Rule rule = createDefaultRule(pattern, action);
        mode.addRule(rule);
    }

    protected Rule createDefaultRule(Pattern pattern, Action action) {
        Rule rule = new Rule(pattern, action);
        rule.setImportPrecedence(-1);
        return rule;
    }
}
