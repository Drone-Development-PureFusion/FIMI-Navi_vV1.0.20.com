package org.dom4j.tree;

import java.util.Iterator;
import org.dom4j.Element;
/* loaded from: classes2.dex */
public class ElementIterator extends FilterIterator {
    public ElementIterator(Iterator proxy) {
        super(proxy);
    }

    @Override // org.dom4j.tree.FilterIterator
    protected boolean matches(Object element) {
        return element instanceof Element;
    }
}
