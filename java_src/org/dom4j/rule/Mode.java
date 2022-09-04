package org.dom4j.rule;

import java.util.HashMap;
import java.util.Map;
import org.dom4j.Attribute;
import org.dom4j.Document;
import org.dom4j.Element;
import org.dom4j.Node;
/* loaded from: classes2.dex */
public class Mode {
    private Map attributeNameRuleSets;
    private Map elementNameRuleSets;
    private RuleSet[] ruleSets = new RuleSet[14];

    public void fireRule(Node node) throws Exception {
        Rule rule;
        Action action;
        if (node != null && (rule = getMatchingRule(node)) != null && (action = rule.getAction()) != null) {
            action.run(node);
        }
    }

    public void applyTemplates(Element element) throws Exception {
        int size = element.attributeCount();
        for (int i = 0; i < size; i++) {
            Attribute attribute = element.attribute(i);
            fireRule(attribute);
        }
        int size2 = element.nodeCount();
        for (int i2 = 0; i2 < size2; i2++) {
            Node node = element.node(i2);
            fireRule(node);
        }
    }

    public void applyTemplates(Document document) throws Exception {
        int size = document.nodeCount();
        for (int i = 0; i < size; i++) {
            Node node = document.node(i);
            fireRule(node);
        }
    }

    public void addRule(Rule rule) {
        int matchType = rule.getMatchType();
        String name = rule.getMatchesNodeName();
        if (name != null) {
            if (matchType == 1) {
                this.elementNameRuleSets = addToNameMap(this.elementNameRuleSets, name, rule);
            } else if (matchType == 2) {
                this.attributeNameRuleSets = addToNameMap(this.attributeNameRuleSets, name, rule);
            }
        }
        if (matchType >= 14) {
            matchType = 0;
        }
        if (matchType == 0) {
            int size = this.ruleSets.length;
            for (int i = 1; i < size; i++) {
                RuleSet ruleSet = this.ruleSets[i];
                if (ruleSet != null) {
                    ruleSet.addRule(rule);
                }
            }
        }
        getRuleSet(matchType).addRule(rule);
    }

    public void removeRule(Rule rule) {
        int matchType = rule.getMatchType();
        String name = rule.getMatchesNodeName();
        if (name != null) {
            if (matchType == 1) {
                removeFromNameMap(this.elementNameRuleSets, name, rule);
            } else if (matchType == 2) {
                removeFromNameMap(this.attributeNameRuleSets, name, rule);
            }
        }
        if (matchType >= 14) {
            matchType = 0;
        }
        getRuleSet(matchType).removeRule(rule);
        if (matchType != 0) {
            getRuleSet(0).removeRule(rule);
        }
    }

    public Rule getMatchingRule(Node node) {
        Rule answer;
        RuleSet ruleSet;
        Rule answer2;
        int matchType = node.getNodeType();
        if (matchType == 1) {
            if (this.elementNameRuleSets != null) {
                String name = node.getName();
                RuleSet ruleSet2 = (RuleSet) this.elementNameRuleSets.get(name);
                if (ruleSet2 != null && (answer2 = ruleSet2.getMatchingRule(node)) != null) {
                    return answer2;
                }
            }
        } else if (matchType == 2 && this.attributeNameRuleSets != null) {
            String name2 = node.getName();
            RuleSet ruleSet3 = (RuleSet) this.attributeNameRuleSets.get(name2);
            if (ruleSet3 != null && (answer = ruleSet3.getMatchingRule(node)) != null) {
                return answer;
            }
        }
        if (matchType < 0 || matchType >= this.ruleSets.length) {
            matchType = 0;
        }
        Rule answer3 = null;
        RuleSet ruleSet4 = this.ruleSets[matchType];
        if (ruleSet4 != null) {
            answer3 = ruleSet4.getMatchingRule(node);
        }
        if (answer3 == null && matchType != 0 && (ruleSet = this.ruleSets[0]) != null) {
            return ruleSet.getMatchingRule(node);
        }
        return answer3;
    }

    protected RuleSet getRuleSet(int matchType) {
        RuleSet allRules;
        RuleSet ruleSet = this.ruleSets[matchType];
        if (ruleSet == null) {
            ruleSet = new RuleSet();
            this.ruleSets[matchType] = ruleSet;
            if (matchType != 0 && (allRules = this.ruleSets[0]) != null) {
                ruleSet.addAll(allRules);
            }
        }
        return ruleSet;
    }

    protected Map addToNameMap(Map map, String name, Rule rule) {
        if (map == null) {
            map = new HashMap();
        }
        RuleSet ruleSet = (RuleSet) map.get(name);
        if (ruleSet == null) {
            ruleSet = new RuleSet();
            map.put(name, ruleSet);
        }
        ruleSet.addRule(rule);
        return map;
    }

    protected void removeFromNameMap(Map map, String name, Rule rule) {
        RuleSet ruleSet;
        if (map != null && (ruleSet = (RuleSet) map.get(name)) != null) {
            ruleSet.removeRule(rule);
        }
    }
}
