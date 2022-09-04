package org.dom4j.tree;

import java.util.Iterator;
import org.dom4j.Element;
/* loaded from: classes2.dex */
public class ElementNameIterator extends FilterIterator {
    private String name;

    public ElementNameIterator(Iterator proxy, String name) {
        super(proxy);
        this.name = name;
    }

    @Override // org.dom4j.tree.FilterIterator
    protected boolean matches(Object object) {
        if (object instanceof Element) {
            Element element = (Element) object;
            return this.name.equals(element.getName());
        }
        return false;
    }
}
