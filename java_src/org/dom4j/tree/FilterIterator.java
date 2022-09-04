package org.dom4j.tree;

import java.util.Iterator;
import java.util.NoSuchElementException;
/* loaded from: classes2.dex */
public abstract class FilterIterator implements Iterator {
    private boolean first = true;
    private Object next;
    protected Iterator proxy;

    protected abstract boolean matches(Object obj);

    public FilterIterator(Iterator proxy) {
        this.proxy = proxy;
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        if (this.first) {
            this.next = findNext();
            this.first = false;
        }
        return this.next != null;
    }

    @Override // java.util.Iterator
    public Object next() throws NoSuchElementException {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        Object answer = this.next;
        this.next = findNext();
        return answer;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException();
    }

    protected Object findNext() {
        if (this.proxy != null) {
            while (this.proxy.hasNext()) {
                Object nextObject = this.proxy.next();
                if (nextObject != null && matches(nextObject)) {
                    return nextObject;
                }
            }
            this.proxy = null;
        }
        return null;
    }
}
