package org.jdom.filter;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import org.jdom.Element;
import org.jdom.Namespace;
/* loaded from: classes2.dex */
public class ElementFilter extends AbstractFilter {
    private static final String CVS_ID = "@(#) $RCSfile: ElementFilter.java,v $ $Revision: 1.18 $ $Date: 2004/09/07 06:37:20 $ $Name: jdom_1_0 $";
    private String name;
    private transient Namespace namespace;

    public ElementFilter() {
    }

    public ElementFilter(String name) {
        this.name = name;
    }

    public ElementFilter(Namespace namespace) {
        this.namespace = namespace;
    }

    public ElementFilter(String name, Namespace namespace) {
        this.name = name;
        this.namespace = namespace;
    }

    @Override // org.jdom.filter.AbstractFilter, org.jdom.filter.Filter
    public boolean matches(Object obj) {
        if (obj instanceof Element) {
            Element el = (Element) obj;
            if (this.name != null && !this.name.equals(el.getName())) {
                return false;
            }
            return this.namespace == null || this.namespace.equals(el.getNamespace());
        }
        return false;
    }

    public boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof ElementFilter)) {
            return false;
        }
        ElementFilter filter = (ElementFilter) obj;
        if (this.name == null) {
            if (filter.name == null) {
                z = false;
            }
            return false;
        }
        z = !this.name.equals(filter.name);
        if (!z) {
            if (this.namespace == null) {
                if (filter.namespace == null) {
                    z2 = false;
                }
                return false;
            }
            z2 = !this.namespace.equals(filter.namespace);
            if (!z2) {
                return true;
            }
            return false;
        }
        return false;
    }

    public int hashCode() {
        int i = 0;
        int result = this.name != null ? this.name.hashCode() : 0;
        int i2 = result * 29;
        if (this.namespace != null) {
            i = this.namespace.hashCode();
        }
        int result2 = i2 + i;
        return result2;
    }

    private void writeObject(ObjectOutputStream out) throws IOException {
        out.defaultWriteObject();
        out.writeObject(this.namespace.getPrefix());
        out.writeObject(this.namespace.getURI());
    }

    private void readObject(ObjectInputStream in) throws IOException, ClassNotFoundException {
        in.defaultReadObject();
        this.namespace = Namespace.getNamespace((String) in.readObject(), (String) in.readObject());
    }
}
