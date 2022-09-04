package org.dom4j.tree;

import java.util.Iterator;
/* loaded from: classes2.dex */
public class SingleIterator implements Iterator {
    private boolean first = true;
    private Object object;

    public SingleIterator(Object object) {
        this.object = object;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.first;
    }

    @Override // java.util.Iterator
    public Object next() {
        Object answer = this.object;
        this.object = null;
        this.first = false;
        return answer;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("remove() is not supported by this iterator");
    }
}
