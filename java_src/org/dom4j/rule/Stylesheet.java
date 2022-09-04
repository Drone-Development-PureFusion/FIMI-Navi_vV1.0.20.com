package org.dom4j.rule;

import java.util.List;
import org.dom4j.Document;
import org.dom4j.Element;
import org.dom4j.Node;
import org.dom4j.XPath;
/* loaded from: classes2.dex */
public class Stylesheet {
    private String modeName;
    private RuleManager ruleManager = new RuleManager();

    public void addRule(Rule rule) {
        this.ruleManager.addRule(rule);
    }

    public void removeRule(Rule rule) {
        this.ruleManager.removeRule(rule);
    }

    public void run(Object input) throws Exception {
        run(input, this.modeName);
    }

    public void run(Object input, String mode) throws Exception {
        if (input instanceof Node) {
            run((Node) input, mode);
        } else if (input instanceof List) {
            run((List) input, mode);
        }
    }

    public void run(List list) throws Exception {
        run(list, this.modeName);
    }

    public void run(List list, String mode) throws Exception {
        int size = list.size();
        for (int i = 0; i < size; i++) {
            Object object = list.get(i);
            if (object instanceof Node) {
                run((Node) object, mode);
            }
        }
    }

    public void run(Node node) throws Exception {
        run(node, this.modeName);
    }

    public void run(Node node, String mode) throws Exception {
        Mode mod = this.ruleManager.getMode(mode);
        mod.fireRule(node);
    }

    public void applyTemplates(Object input, XPath xpath) throws Exception {
        applyTemplates(input, xpath, this.modeName);
    }

    public void applyTemplates(Object input, XPath xpath, String mode) throws Exception {
        Mode mod = this.ruleManager.getMode(mode);
        List<Node> list = xpath.selectNodes(input);
        for (Node current : list) {
            mod.fireRule(current);
        }
    }

    public void applyTemplates(Object input, org.jaxen.XPath xpath) throws Exception {
        applyTemplates(input, xpath, this.modeName);
    }

    public void applyTemplates(Object input, org.jaxen.XPath xpath, String mode) throws Exception {
        Mode mod = this.ruleManager.getMode(mode);
        List<Node> list = xpath.selectNodes(input);
        for (Node current : list) {
            mod.fireRule(current);
        }
    }

    public void applyTemplates(Object input) throws Exception {
        applyTemplates(input, this.modeName);
    }

    public void applyTemplates(Object input, String mode) throws Exception {
        Mode mod = this.ruleManager.getMode(mode);
        if (input instanceof Element) {
            Element element = (Element) input;
            int size = element.nodeCount();
            for (int i = 0; i < size; i++) {
                Node node = element.node(i);
                mod.fireRule(node);
            }
        } else if (input instanceof Document) {
            Document document = (Document) input;
            int size2 = document.nodeCount();
            for (int i2 = 0; i2 < size2; i2++) {
                Node node2 = document.node(i2);
                mod.fireRule(node2);
            }
        } else if (input instanceof List) {
            List list = (List) input;
            int size3 = list.size();
            for (int i3 = 0; i3 < size3; i3++) {
                Object object = list.get(i3);
                if (object instanceof Element) {
                    applyTemplates((Element) object, mode);
                } else if (object instanceof Document) {
                    applyTemplates((Document) object, mode);
                }
            }
        }
    }

    public void clear() {
        this.ruleManager.clear();
    }

    public String getModeName() {
        return this.modeName;
    }

    public void setModeName(String modeName) {
        this.modeName = modeName;
    }

    public Action getValueOfAction() {
        return this.ruleManager.getValueOfAction();
    }

    public void setValueOfAction(Action valueOfAction) {
        this.ruleManager.setValueOfAction(valueOfAction);
    }
}
