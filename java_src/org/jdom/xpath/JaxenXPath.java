package org.jdom.xpath;

import java.util.List;
import org.jaxen.JaxenException;
import org.jaxen.SimpleNamespaceContext;
import org.jaxen.SimpleVariableContext;
import org.jaxen.jdom.JDOMXPath;
import org.jdom.Attribute;
import org.jdom.Content;
import org.jdom.Document;
import org.jdom.Element;
import org.jdom.JDOMException;
import org.jdom.Namespace;
/* loaded from: classes2.dex */
class JaxenXPath extends XPath {
    private static final String CVS_ID = "@(#) $RCSfile: JaxenXPath.java,v $ $Revision: 1.19 $ $Date: 2004/09/03 07:27:39 $ $Name: jdom_1_0 $";
    private Object currentContext;
    private transient JDOMXPath xPath;

    public JaxenXPath(String expr) throws JDOMException {
        setXPath(expr);
    }

    @Override // org.jdom.xpath.XPath
    public List selectNodes(Object context) throws JDOMException {
        try {
            try {
                this.currentContext = context;
                return this.xPath.selectNodes(context);
            } catch (JaxenException ex1) {
                throw new JDOMException(new StringBuffer("XPath error while evaluating \"").append(this.xPath.toString()).append("\": ").append(ex1.getMessage()).toString(), ex1);
            }
        } finally {
            this.currentContext = null;
        }
    }

    @Override // org.jdom.xpath.XPath
    public Object selectSingleNode(Object context) throws JDOMException {
        try {
            try {
                this.currentContext = context;
                return this.xPath.selectSingleNode(context);
            } catch (JaxenException ex1) {
                throw new JDOMException(new StringBuffer("XPath error while evaluating \"").append(this.xPath.toString()).append("\": ").append(ex1.getMessage()).toString(), ex1);
            }
        } finally {
            this.currentContext = null;
        }
    }

    @Override // org.jdom.xpath.XPath
    public String valueOf(Object context) throws JDOMException {
        try {
            try {
                this.currentContext = context;
                return this.xPath.stringValueOf(context);
            } catch (JaxenException ex1) {
                throw new JDOMException(new StringBuffer("XPath error while evaluating \"").append(this.xPath.toString()).append("\": ").append(ex1.getMessage()).toString(), ex1);
            }
        } finally {
            this.currentContext = null;
        }
    }

    @Override // org.jdom.xpath.XPath
    public Number numberValueOf(Object context) throws JDOMException {
        try {
            try {
                this.currentContext = context;
                return this.xPath.numberValueOf(context);
            } catch (JaxenException ex1) {
                throw new JDOMException(new StringBuffer("XPath error while evaluating \"").append(this.xPath.toString()).append("\": ").append(ex1.getMessage()).toString(), ex1);
            }
        } finally {
            this.currentContext = null;
        }
    }

    @Override // org.jdom.xpath.XPath
    public void setVariable(String name, Object value) throws IllegalArgumentException {
        SimpleVariableContext variableContext = this.xPath.getVariableContext();
        if (!(variableContext instanceof SimpleVariableContext)) {
            return;
        }
        variableContext.setVariableValue((String) null, name, value);
    }

    @Override // org.jdom.xpath.XPath
    public void addNamespace(Namespace namespace) {
        try {
            this.xPath.addNamespace(namespace.getPrefix(), namespace.getURI());
        } catch (JaxenException e) {
        }
    }

    @Override // org.jdom.xpath.XPath
    public String getXPath() {
        return this.xPath.toString();
    }

    private void setXPath(String expr) throws JDOMException {
        try {
            this.xPath = new JDOMXPath(expr);
            this.xPath.setNamespaceContext(new NSContext(this));
        } catch (Exception ex1) {
            throw new JDOMException(new StringBuffer("Invalid XPath expression: \"").append(expr).append("\"").toString(), ex1);
        }
    }

    public String toString() {
        return this.xPath.toString();
    }

    public boolean equals(Object o) {
        if (o instanceof JaxenXPath) {
            JaxenXPath x = (JaxenXPath) o;
            return super.equals(o) && this.xPath.toString().equals(x.xPath.toString());
        }
        return false;
    }

    public int hashCode() {
        return this.xPath.hashCode();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes2.dex */
    public class NSContext extends SimpleNamespaceContext {
        private final JaxenXPath this$0;

        public NSContext(JaxenXPath this$0) {
            this.this$0 = this$0;
        }

        public String translateNamespacePrefixToUri(String prefix) {
            Object ctx;
            Namespace ns;
            if (prefix == null || prefix.length() == 0) {
                return null;
            }
            String uri = super.translateNamespacePrefixToUri(prefix);
            if (uri == null && (ctx = this.this$0.currentContext) != null) {
                Element elt = null;
                if (ctx instanceof Element) {
                    elt = (Element) ctx;
                } else if (ctx instanceof Attribute) {
                    elt = ((Attribute) ctx).getParent();
                } else if (ctx instanceof Content) {
                    elt = ((Content) ctx).getParentElement();
                } else if (ctx instanceof Document) {
                    elt = ((Document) ctx).getRootElement();
                }
                if (elt != null && (ns = elt.getNamespace(prefix)) != null) {
                    return ns.getURI();
                }
                return uri;
            }
            return uri;
        }
    }
}
