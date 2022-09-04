package org.dom4j;

import com.fimi.kernel.animutils.IOUtils;
import org.dom4j.tree.AbstractNode;
import org.dom4j.tree.DefaultNamespace;
import org.dom4j.tree.NamespaceCache;
/* loaded from: classes2.dex */
public class Namespace extends AbstractNode {
    private int hashCode;
    private String prefix;
    private String uri;
    protected static final NamespaceCache CACHE = new NamespaceCache();
    public static final Namespace XML_NAMESPACE = CACHE.get("xml", "http://www.w3.org/XML/1998/namespace");
    public static final Namespace NO_NAMESPACE = CACHE.get("", "");

    public Namespace(String prefix, String uri) {
        this.prefix = prefix == null ? "" : prefix;
        this.uri = uri == null ? "" : uri;
    }

    public static Namespace get(String prefix, String uri) {
        return CACHE.get(prefix, uri);
    }

    public static Namespace get(String uri) {
        return CACHE.get(uri);
    }

    @Override // org.dom4j.tree.AbstractNode, org.dom4j.Node
    public short getNodeType() {
        return (short) 13;
    }

    public int hashCode() {
        if (this.hashCode == 0) {
            this.hashCode = createHashCode();
        }
        return this.hashCode;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int createHashCode() {
        int result = this.uri.hashCode() ^ this.prefix.hashCode();
        if (result == 0) {
            return 47806;
        }
        return result;
    }

    public boolean equals(Object object) {
        if (this == object) {
            return true;
        }
        if (object instanceof Namespace) {
            Namespace that = (Namespace) object;
            if (hashCode() == that.hashCode()) {
                return this.uri.equals(that.getURI()) && this.prefix.equals(that.getPrefix());
            }
        }
        return false;
    }

    @Override // org.dom4j.tree.AbstractNode, org.dom4j.Node
    public String getText() {
        return this.uri;
    }

    @Override // org.dom4j.tree.AbstractNode, org.dom4j.Node
    public String getStringValue() {
        return this.uri;
    }

    public String getPrefix() {
        return this.prefix;
    }

    public String getURI() {
        return this.uri;
    }

    public String getXPathNameStep() {
        return (this.prefix == null || "".equals(this.prefix)) ? "namespace::*[name()='']" : new StringBuffer().append("namespace::").append(this.prefix).toString();
    }

    @Override // org.dom4j.Node
    public String getPath(Element context) {
        StringBuffer path = new StringBuffer(10);
        Element parent = getParent();
        if (parent != null && parent != context) {
            path.append(parent.getPath(context));
            path.append(IOUtils.DIR_SEPARATOR_UNIX);
        }
        path.append(getXPathNameStep());
        return path.toString();
    }

    @Override // org.dom4j.Node
    public String getUniquePath(Element context) {
        StringBuffer path = new StringBuffer(10);
        Element parent = getParent();
        if (parent != null && parent != context) {
            path.append(parent.getUniquePath(context));
            path.append(IOUtils.DIR_SEPARATOR_UNIX);
        }
        path.append(getXPathNameStep());
        return path.toString();
    }

    public String toString() {
        return new StringBuffer().append(super.toString()).append(" [Namespace: prefix ").append(getPrefix()).append(" mapped to URI \"").append(getURI()).append("\"]").toString();
    }

    @Override // org.dom4j.Node
    public String asXML() {
        StringBuffer asxml = new StringBuffer(10);
        String pref = getPrefix();
        if (pref != null && pref.length() > 0) {
            asxml.append("xmlns:");
            asxml.append(pref);
            asxml.append("=\"");
        } else {
            asxml.append("xmlns=\"");
        }
        asxml.append(getURI());
        asxml.append("\"");
        return asxml.toString();
    }

    @Override // org.dom4j.Node
    public void accept(Visitor visitor) {
        visitor.visit(this);
    }

    @Override // org.dom4j.tree.AbstractNode
    protected Node createXPathResult(Element parent) {
        return new DefaultNamespace(parent, getPrefix(), getURI());
    }
}
