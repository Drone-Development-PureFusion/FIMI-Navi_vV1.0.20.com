package org.jdom;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.NoSuchElementException;
/* loaded from: classes2.dex */
class DescendantIterator implements Iterator {
    private static final String CVS_ID = "@(#) $RCSfile: DescendantIterator.java,v $ $Revision: 1.5 $ $Date: 2004/02/27 11:32:57 $ $Name: jdom_1_0 $";
    private Iterator iterator;
    private Iterator nextIterator;
    private List stack = new ArrayList();

    /* JADX INFO: Access modifiers changed from: package-private */
    public DescendantIterator(Parent parent) {
        if (parent == null) {
            throw new IllegalArgumentException("parent parameter was null");
        }
        this.iterator = parent.getContent().iterator();
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        if (this.iterator == null || !this.iterator.hasNext()) {
            return (this.nextIterator != null && this.nextIterator.hasNext()) || stackHasAnyNext();
        }
        return true;
    }

    @Override // java.util.Iterator
    public Object next() {
        if (!hasNext()) {
            throw new NoSuchElementException();
        }
        if (this.nextIterator != null) {
            push(this.iterator);
            this.iterator = this.nextIterator;
            this.nextIterator = null;
        }
        while (!this.iterator.hasNext()) {
            if (this.stack.size() > 0) {
                this.iterator = pop();
            } else {
                throw new NoSuchElementException("Somehow we lost our iterator");
            }
        }
        Content child = (Content) this.iterator.next();
        if (child instanceof Element) {
            this.nextIterator = ((Element) child).getContent().iterator();
        }
        return child;
    }

    @Override // java.util.Iterator
    public void remove() {
        this.iterator.remove();
    }

    private Iterator pop() {
        int stackSize = this.stack.size();
        if (stackSize == 0) {
            throw new NoSuchElementException("empty stack");
        }
        return (Iterator) this.stack.remove(stackSize - 1);
    }

    private void push(Iterator itr) {
        this.stack.add(itr);
    }

    private boolean stackHasAnyNext() {
        int size = this.stack.size();
        for (int i = 0; i < size; i++) {
            Iterator itr = (Iterator) this.stack.get(i);
            if (itr.hasNext()) {
                return true;
            }
        }
        return false;
    }
}
