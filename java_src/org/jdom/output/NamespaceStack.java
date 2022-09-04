package org.jdom.output;

import java.util.Stack;
import org.jdom.Namespace;
/* loaded from: classes2.dex */
class NamespaceStack {
    private static final String CVS_ID = "@(#) $RCSfile: NamespaceStack.java,v $ $Revision: 1.13 $ $Date: 2004/02/06 09:28:32 $ $Name: jdom_1_0 $";
    private Stack prefixes = new Stack();
    private Stack uris = new Stack();

    public void push(Namespace ns) {
        this.prefixes.push(ns.getPrefix());
        this.uris.push(ns.getURI());
    }

    public String pop() {
        String prefix = (String) this.prefixes.pop();
        this.uris.pop();
        return prefix;
    }

    public int size() {
        return this.prefixes.size();
    }

    public String getURI(String prefix) {
        int index = this.prefixes.lastIndexOf(prefix);
        if (index == -1) {
            return null;
        }
        return (String) this.uris.elementAt(index);
    }

    public String toString() {
        StringBuffer buf = new StringBuffer();
        String sep = System.getProperty("line.separator");
        buf.append(new StringBuffer("Stack: ").append(this.prefixes.size()).append(sep).toString());
        for (int i = 0; i < this.prefixes.size(); i++) {
            buf.append(new StringBuffer(String.valueOf(String.valueOf(this.prefixes.elementAt(i)))).append("&").append(this.uris.elementAt(i)).append(sep).toString());
        }
        return buf.toString();
    }
}
