package org.dom4j.xpath;

import java.io.Serializable;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import org.dom4j.InvalidXPathException;
import org.dom4j.Node;
import org.dom4j.NodeFilter;
import org.dom4j.XPath;
import org.dom4j.XPathException;
import org.jaxen.FunctionContext;
import org.jaxen.JaxenException;
import org.jaxen.NamespaceContext;
import org.jaxen.SimpleNamespaceContext;
import org.jaxen.VariableContext;
import org.jaxen.dom4j.Dom4jXPath;
/* loaded from: classes2.dex */
public class DefaultXPath implements XPath, NodeFilter, Serializable {
    private NamespaceContext namespaceContext;
    private String text;
    private org.jaxen.XPath xpath;

    public DefaultXPath(String text) throws InvalidXPathException {
        this.text = text;
        this.xpath = parse(text);
    }

    public String toString() {
        return new StringBuffer().append("[XPath: ").append(this.xpath).append("]").toString();
    }

    @Override // org.dom4j.XPath
    public String getText() {
        return this.text;
    }

    @Override // org.dom4j.XPath
    public FunctionContext getFunctionContext() {
        return this.xpath.getFunctionContext();
    }

    @Override // org.dom4j.XPath
    public void setFunctionContext(FunctionContext functionContext) {
        this.xpath.setFunctionContext(functionContext);
    }

    @Override // org.dom4j.XPath
    public NamespaceContext getNamespaceContext() {
        return this.namespaceContext;
    }

    @Override // org.dom4j.XPath
    public void setNamespaceURIs(Map map) {
        setNamespaceContext(new SimpleNamespaceContext(map));
    }

    @Override // org.dom4j.XPath
    public void setNamespaceContext(NamespaceContext namespaceContext) {
        this.namespaceContext = namespaceContext;
        this.xpath.setNamespaceContext(namespaceContext);
    }

    @Override // org.dom4j.XPath
    public VariableContext getVariableContext() {
        return this.xpath.getVariableContext();
    }

    @Override // org.dom4j.XPath
    public void setVariableContext(VariableContext variableContext) {
        this.xpath.setVariableContext(variableContext);
    }

    @Override // org.dom4j.XPath
    public Object evaluate(Object context) {
        try {
            setNSContext(context);
            List answer = this.xpath.selectNodes(context);
            if (answer != null && answer.size() == 1) {
                return answer.get(0);
            }
            return answer;
        } catch (JaxenException e) {
            handleJaxenException(e);
            return null;
        }
    }

    @Override // org.dom4j.XPath
    public Object selectObject(Object context) {
        return evaluate(context);
    }

    @Override // org.dom4j.XPath
    public List selectNodes(Object context) {
        try {
            setNSContext(context);
            return this.xpath.selectNodes(context);
        } catch (JaxenException e) {
            handleJaxenException(e);
            return Collections.EMPTY_LIST;
        }
    }

    @Override // org.dom4j.XPath
    public List selectNodes(Object context, XPath sortXPath) {
        List answer = selectNodes(context);
        sortXPath.sort(answer);
        return answer;
    }

    @Override // org.dom4j.XPath
    public List selectNodes(Object context, XPath sortXPath, boolean distinct) {
        List answer = selectNodes(context);
        sortXPath.sort(answer, distinct);
        return answer;
    }

    @Override // org.dom4j.XPath
    public Node selectSingleNode(Object context) {
        try {
            setNSContext(context);
            Object answer = this.xpath.selectSingleNode(context);
            if (answer instanceof Node) {
                return (Node) answer;
            }
            if (answer != null) {
                throw new XPathException(new StringBuffer().append("The result of the XPath expression is not a Node. It was: ").append(answer).append(" of type: ").append(answer.getClass().getName()).toString());
            }
            return null;
        } catch (JaxenException e) {
            handleJaxenException(e);
            return null;
        }
    }

    @Override // org.dom4j.XPath
    public String valueOf(Object context) {
        try {
            setNSContext(context);
            return this.xpath.stringValueOf(context);
        } catch (JaxenException e) {
            handleJaxenException(e);
            return "";
        }
    }

    @Override // org.dom4j.XPath
    public Number numberValueOf(Object context) {
        try {
            setNSContext(context);
            return this.xpath.numberValueOf(context);
        } catch (JaxenException e) {
            handleJaxenException(e);
            return null;
        }
    }

    @Override // org.dom4j.XPath
    public boolean booleanValueOf(Object context) {
        try {
            setNSContext(context);
            return this.xpath.booleanValueOf(context);
        } catch (JaxenException e) {
            handleJaxenException(e);
            return false;
        }
    }

    @Override // org.dom4j.XPath
    public void sort(List list) {
        sort(list, false);
    }

    @Override // org.dom4j.XPath
    public void sort(List list, boolean distinct) {
        if (list != null && !list.isEmpty()) {
            int size = list.size();
            HashMap sortValues = new HashMap(size);
            for (int i = 0; i < size; i++) {
                Object object = list.get(i);
                if (object instanceof Node) {
                    Node node = (Node) object;
                    Object expression = getCompareValue(node);
                    sortValues.put(node, expression);
                }
            }
            sort(list, sortValues);
            if (distinct) {
                removeDuplicates(list, sortValues);
            }
        }
    }

    @Override // org.dom4j.XPath, org.dom4j.NodeFilter
    public boolean matches(Node node) {
        boolean z = false;
        try {
            setNSContext(node);
            List answer = this.xpath.selectNodes(node);
            if (answer != null && answer.size() > 0) {
                Object item = answer.get(0);
                if (item instanceof Boolean) {
                    z = ((Boolean) item).booleanValue();
                } else {
                    z = answer.contains(node);
                }
            }
        } catch (JaxenException e) {
            handleJaxenException(e);
        }
        return z;
    }

    protected void sort(List list, Map sortValues) {
        Collections.sort(list, new Comparator(this, sortValues) { // from class: org.dom4j.xpath.DefaultXPath.1
            private final DefaultXPath this$0;
            private final Map val$sortValues;

            {
                this.this$0 = this;
                this.val$sortValues = sortValues;
            }

            @Override // java.util.Comparator
            public int compare(Object o1, Object o2) {
                Object o12 = this.val$sortValues.get(o1);
                Object o22 = this.val$sortValues.get(o2);
                if (o12 == o22) {
                    return 0;
                }
                if (o12 instanceof Comparable) {
                    Comparable c1 = (Comparable) o12;
                    return c1.compareTo(o22);
                } else if (o12 == null) {
                    return 1;
                } else {
                    return (o22 != null && o12.equals(o22)) ? 0 : -1;
                }
            }
        });
    }

    protected void removeDuplicates(List list, Map sortValues) {
        HashSet distinctValues = new HashSet();
        Iterator iter = list.iterator();
        while (iter.hasNext()) {
            Object node = iter.next();
            Object value = sortValues.get(node);
            if (distinctValues.contains(value)) {
                iter.remove();
            } else {
                distinctValues.add(value);
            }
        }
    }

    protected Object getCompareValue(Node node) {
        return valueOf(node);
    }

    protected static org.jaxen.XPath parse(String text) {
        try {
            return new Dom4jXPath(text);
        } catch (JaxenException e) {
            throw new InvalidXPathException(text, e.getMessage());
        } catch (Throwable t) {
            throw new InvalidXPathException(text, t);
        }
    }

    protected void setNSContext(Object context) {
        if (this.namespaceContext == null) {
            this.xpath.setNamespaceContext(DefaultNamespaceContext.create(context));
        }
    }

    protected void handleJaxenException(JaxenException exception) throws XPathException {
        throw new XPathException(this.text, (Exception) exception);
    }
}
