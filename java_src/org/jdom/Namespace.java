package org.jdom;

import java.util.HashMap;
/* loaded from: classes2.dex */
public final class Namespace {
    private static final String CVS_ID = "@(#) $RCSfile: Namespace.java,v $ $Revision: 1.41 $ $Date: 2004/02/27 11:32:57 $ $Name: jdom_1_0 $";
    public static final Namespace NO_NAMESPACE = new Namespace("", "");
    public static final Namespace XML_NAMESPACE = new Namespace("xml", "http://www.w3.org/XML/1998/namespace");
    private static HashMap namespaces = new HashMap();
    private String prefix;
    private String uri;

    static {
        namespaces.put("&", NO_NAMESPACE);
        namespaces.put("xml&http://www.w3.org/XML/1998/namespace", XML_NAMESPACE);
    }

    public static Namespace getNamespace(String prefix, String uri) {
        if (prefix == null || prefix.trim().equals("")) {
            prefix = "";
        }
        if (uri == null || uri.trim().equals("")) {
            uri = "";
        }
        String lookup = new StringBuffer(64).append(prefix).append('&').append(uri).toString();
        Namespace preexisting = (Namespace) namespaces.get(lookup);
        if (preexisting == null) {
            String reason = Verifier.checkNamespacePrefix(prefix);
            if (reason != null) {
                throw new IllegalNameException(prefix, "Namespace prefix", reason);
            }
            String reason2 = Verifier.checkNamespaceURI(uri);
            if (reason2 != null) {
                throw new IllegalNameException(uri, "Namespace URI", reason2);
            }
            if (!prefix.equals("") && uri.equals("")) {
                throw new IllegalNameException("", "namespace", "Namespace URIs must be non-null and non-empty Strings");
            }
            if (prefix.equals("xml")) {
                throw new IllegalNameException(prefix, "Namespace prefix", "The xml prefix can only be bound to http://www.w3.org/XML/1998/namespace");
            }
            if (uri.equals("http://www.w3.org/XML/1998/namespace")) {
                throw new IllegalNameException(uri, "Namespace URI", "The http://www.w3.org/XML/1998/namespace must be bound to the xml prefix.");
            }
            Namespace ns = new Namespace(prefix, uri);
            namespaces.put(lookup, ns);
            return ns;
        }
        return preexisting;
    }

    public static Namespace getNamespace(String uri) {
        return getNamespace("", uri);
    }

    private Namespace(String prefix, String uri) {
        this.prefix = prefix;
        this.uri = uri;
    }

    public String getPrefix() {
        return this.prefix;
    }

    public String getURI() {
        return this.uri;
    }

    public boolean equals(Object ob) {
        if (this == ob) {
            return true;
        }
        if (ob instanceof Namespace) {
            return this.uri.equals(((Namespace) ob).uri);
        }
        return false;
    }

    public String toString() {
        return new StringBuffer("[Namespace: prefix \"").append(this.prefix).append("\" is mapped to URI \"").append(this.uri).append("\"]").toString();
    }

    public int hashCode() {
        return this.uri.hashCode();
    }
}
