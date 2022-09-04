package org.jdom;

import java.io.Serializable;
import java.util.AbstractList;
import java.util.Collection;
import java.util.ConcurrentModificationException;
import java.util.Iterator;
import java.util.List;
import java.util.ListIterator;
import java.util.NoSuchElementException;
import org.jdom.filter.Filter;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class ContentList extends AbstractList implements Serializable {
    private static final int ADD = 5;
    private static final int CREATE = 0;
    private static final String CVS_ID = "@(#) $RCSfile: ContentList.java,v $ $Revision: 1.39 $ $Date: 2004/02/28 03:30:27 $ $Name: jdom_1_0 $";
    private static final int HASNEXT = 2;
    private static final int HASPREV = 1;
    private static final int INITIAL_ARRAY_SIZE = 5;
    private static final int NEXT = 4;
    private static final int PREV = 3;
    private static final int REMOVE = 6;
    private Content[] elementData;
    private Parent parent;
    private int size;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ContentList(Parent parent) {
        this.parent = parent;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void uncheckedAddContent(Content c) {
        c.parent = this.parent;
        ensureCapacity(this.size + 1);
        Content[] contentArr = this.elementData;
        int i = this.size;
        this.size = i + 1;
        contentArr[i] = c;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int index, Object obj) {
        if (obj == null) {
            throw new IllegalAddException("Cannot add null object");
        }
        if (obj instanceof Content) {
            add(index, (Content) obj);
            return;
        }
        throw new IllegalAddException(new StringBuffer("Class ").append(obj.getClass().getName()).append(" is of unrecognized type and cannot be added").toString());
    }

    private void documentCanContain(int index, Content child) throws IllegalAddException {
        if (child instanceof Element) {
            if (indexOfFirstElement() >= 0) {
                throw new IllegalAddException("Cannot add a second root element, only one is allowed");
            }
            if (indexOfDocType() > index) {
                throw new IllegalAddException("A root element cannot be added before the DocType");
            }
        }
        if (child instanceof DocType) {
            if (indexOfDocType() >= 0) {
                throw new IllegalAddException("Cannot add a second doctype, only one is allowed");
            }
            int firstElt = indexOfFirstElement();
            if (firstElt != -1 && firstElt < index) {
                throw new IllegalAddException("A DocType cannot be added after the root element");
            }
        }
        if (child instanceof CDATA) {
            throw new IllegalAddException("A CDATA is not allowed at the document root");
        }
        if (child instanceof Text) {
            throw new IllegalAddException("A Text is not allowed at the document root");
        }
        if (!(child instanceof EntityRef)) {
            return;
        }
        throw new IllegalAddException("An EntityRef is not allowed at the document root");
    }

    private static void elementCanContain(int index, Content child) throws IllegalAddException {
        if (!(child instanceof DocType)) {
            return;
        }
        throw new IllegalAddException("A DocType is not allowed except at the document level");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void add(int index, Content child) {
        if (child == null) {
            throw new IllegalAddException("Cannot add null object");
        }
        if (this.parent instanceof Document) {
            documentCanContain(index, child);
        } else {
            elementCanContain(index, child);
        }
        if (child.getParent() != null) {
            Parent p = child.getParent();
            if (p instanceof Document) {
                throw new IllegalAddException((Element) child, "The Content already has an existing parent document");
            }
            throw new IllegalAddException(new StringBuffer("The Content already has an existing parent \"").append(((Element) p).getQualifiedName()).append("\"").toString());
        } else if (child == this.parent) {
            throw new IllegalAddException("The Element cannot be added to itself");
        } else {
            if ((this.parent instanceof Element) && (child instanceof Element) && ((Element) child).isAncestor((Element) this.parent)) {
                throw new IllegalAddException("The Element cannot be added as a descendent of itself");
            }
            if (index < 0 || index > this.size) {
                throw new IndexOutOfBoundsException(new StringBuffer("Index: ").append(index).append(" Size: ").append(size()).toString());
            }
            child.setParent(this.parent);
            ensureCapacity(this.size + 1);
            if (index == this.size) {
                Content[] contentArr = this.elementData;
                int i = this.size;
                this.size = i + 1;
                contentArr[i] = child;
            } else {
                System.arraycopy(this.elementData, index, this.elementData, index + 1, this.size - index);
                this.elementData[index] = child;
                this.size++;
            }
            ((AbstractList) this).modCount++;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection collection) {
        return addAll(size(), collection);
    }

    @Override // java.util.AbstractList, java.util.List
    public boolean addAll(int index, Collection collection) {
        if (index < 0 || index > this.size) {
            throw new IndexOutOfBoundsException(new StringBuffer("Index: ").append(index).append(" Size: ").append(size()).toString());
        }
        if (collection == null || collection.size() == 0) {
            return false;
        }
        ensureCapacity(size() + collection.size());
        int count = 0;
        try {
            for (Object obj : collection) {
                add(index + count, obj);
                count++;
            }
            return true;
        } catch (RuntimeException exception) {
            for (int i = 0; i < count; i++) {
                remove(index);
            }
            throw exception;
        }
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        if (this.elementData != null) {
            for (int i = 0; i < this.size; i++) {
                Content obj = this.elementData[i];
                removeParent(obj);
            }
            this.elementData = null;
            this.size = 0;
        }
        ((AbstractList) this).modCount++;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void clearAndSet(Collection collection) {
        Content[] old = this.elementData;
        int oldSize = this.size;
        this.elementData = null;
        this.size = 0;
        if (collection != null && collection.size() != 0) {
            ensureCapacity(collection.size());
            try {
                addAll(0, collection);
            } catch (RuntimeException exception) {
                this.elementData = old;
                this.size = oldSize;
                throw exception;
            }
        }
        if (old != null) {
            for (int i = 0; i < oldSize; i++) {
                removeParent(old[i]);
            }
        }
        ((AbstractList) this).modCount++;
    }

    void ensureCapacity(int minCapacity) {
        if (this.elementData == null) {
            this.elementData = new Content[Math.max(minCapacity, 5)];
            return;
        }
        int oldCapacity = this.elementData.length;
        if (minCapacity <= oldCapacity) {
            return;
        }
        Object[] oldData = this.elementData;
        int newCapacity = ((oldCapacity * 3) / 2) + 1;
        if (newCapacity < minCapacity) {
            newCapacity = minCapacity;
        }
        this.elementData = new Content[newCapacity];
        System.arraycopy(oldData, 0, this.elementData, 0, this.size);
    }

    @Override // java.util.AbstractList, java.util.List
    public Object get(int index) {
        if (index < 0 || index >= this.size) {
            throw new IndexOutOfBoundsException(new StringBuffer("Index: ").append(index).append(" Size: ").append(size()).toString());
        }
        return this.elementData[index];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public List getView(Filter filter) {
        return new FilterList(this, filter);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int indexOfFirstElement() {
        if (this.elementData != null) {
            for (int i = 0; i < this.size; i++) {
                if (this.elementData[i] instanceof Element) {
                    return i;
                }
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int indexOfDocType() {
        if (this.elementData != null) {
            for (int i = 0; i < this.size; i++) {
                if (this.elementData[i] instanceof DocType) {
                    return i;
                }
            }
        }
        return -1;
    }

    @Override // java.util.AbstractList, java.util.List
    public Object remove(int index) {
        if (index < 0 || index >= this.size) {
            throw new IndexOutOfBoundsException(new StringBuffer("Index: ").append(index).append(" Size: ").append(size()).toString());
        }
        Content old = this.elementData[index];
        removeParent(old);
        int numMoved = (this.size - index) - 1;
        if (numMoved > 0) {
            System.arraycopy(this.elementData, index + 1, this.elementData, index, numMoved);
        }
        Content[] contentArr = this.elementData;
        int i = this.size - 1;
        this.size = i;
        contentArr[i] = null;
        ((AbstractList) this).modCount++;
        return old;
    }

    private static void removeParent(Content c) {
        c.setParent(null);
    }

    @Override // java.util.AbstractList, java.util.List
    public Object set(int index, Object obj) {
        int docTypeIndex;
        int root;
        if (index < 0 || index >= this.size) {
            throw new IndexOutOfBoundsException(new StringBuffer("Index: ").append(index).append(" Size: ").append(size()).toString());
        }
        if ((obj instanceof Element) && (this.parent instanceof Document) && (root = indexOfFirstElement()) >= 0 && root != index) {
            throw new IllegalAddException("Cannot add a second root element, only one is allowed");
        }
        if ((obj instanceof DocType) && (this.parent instanceof Document) && (docTypeIndex = indexOfDocType()) >= 0 && docTypeIndex != index) {
            throw new IllegalAddException("Cannot add a second doctype, only one is allowed");
        }
        Object old = remove(index);
        try {
            add(index, obj);
            return old;
        } catch (RuntimeException exception) {
            add(index, old);
            throw exception;
        }
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.size;
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        return super.toString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int getModCount() {
        return ((AbstractList) this).modCount;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class FilterList extends AbstractList implements Serializable {
        int count = 0;
        int expected = -1;
        Filter filter;
        private final ContentList this$0;

        FilterList(ContentList this$0, Filter filter) {
            this.this$0 = this$0;
            this.filter = filter;
        }

        @Override // java.util.AbstractList, java.util.List
        public void add(int index, Object obj) {
            if (this.filter.matches(obj)) {
                int adjusted = getAdjustedIndex(index);
                this.this$0.add(adjusted, obj);
                this.expected++;
                this.count++;
                return;
            }
            throw new IllegalAddException(new StringBuffer("Filter won't allow the ").append(obj.getClass().getName()).append(" '").append(obj).append("' to be added to the list").toString());
        }

        @Override // java.util.AbstractList, java.util.List
        public Object get(int index) {
            int adjusted = getAdjustedIndex(index);
            return this.this$0.get(adjusted);
        }

        @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.List
        public Iterator iterator() {
            return new FilterListIterator(this.this$0, this.filter, 0);
        }

        @Override // java.util.AbstractList, java.util.List
        public ListIterator listIterator() {
            return new FilterListIterator(this.this$0, this.filter, 0);
        }

        @Override // java.util.AbstractList, java.util.List
        public ListIterator listIterator(int index) {
            return new FilterListIterator(this.this$0, this.filter, index);
        }

        @Override // java.util.AbstractList, java.util.List
        public Object remove(int index) {
            int adjusted = getAdjustedIndex(index);
            Object old = this.this$0.get(adjusted);
            if (this.filter.matches(old)) {
                Object old2 = this.this$0.remove(adjusted);
                this.expected++;
                this.count--;
                return old2;
            }
            throw new IllegalAddException(new StringBuffer("Filter won't allow the ").append(old.getClass().getName()).append(" '").append(old).append("' (index ").append(index).append(") to be removed").toString());
        }

        @Override // java.util.AbstractList, java.util.List
        public Object set(int index, Object obj) {
            if (this.filter.matches(obj)) {
                int adjusted = getAdjustedIndex(index);
                Object old = this.this$0.get(adjusted);
                if (!this.filter.matches(old)) {
                    throw new IllegalAddException(new StringBuffer("Filter won't allow the ").append(old.getClass().getName()).append(" '").append(old).append("' (index ").append(index).append(") to be removed").toString());
                }
                Object old2 = this.this$0.set(adjusted, obj);
                this.expected += 2;
                return old2;
            }
            throw new IllegalAddException(new StringBuffer("Filter won't allow index ").append(index).append(" to be set to ").append(obj.getClass().getName()).toString());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            if (this.expected == this.this$0.getModCount()) {
                return this.count;
            }
            this.count = 0;
            for (int i = 0; i < this.this$0.size(); i++) {
                Content obj = this.this$0.elementData[i];
                if (this.filter.matches(obj)) {
                    this.count++;
                }
            }
            this.expected = this.this$0.getModCount();
            return this.count;
        }

        private final int getAdjustedIndex(int index) {
            int adjusted = 0;
            for (int i = 0; i < this.this$0.size; i++) {
                Content obj = this.this$0.elementData[i];
                if (this.filter.matches(obj)) {
                    if (index != adjusted) {
                        adjusted++;
                    } else {
                        return i;
                    }
                }
            }
            if (index == adjusted) {
                int i2 = this.this$0.size;
                return i2;
            }
            int i3 = this.this$0.size + 1;
            return i3;
        }
    }

    /* loaded from: classes2.dex */
    class FilterListIterator implements ListIterator {
        int cursor;
        int expected;
        Filter filter;
        int initialCursor;
        int last = -1;
        int lastOperation = 0;
        private final ContentList this$0;

        FilterListIterator(ContentList this$0, Filter filter, int start) {
            this.this$0 = this$0;
            this.filter = filter;
            this.initialCursor = initializeCursor(start);
            this.expected = this$0.getModCount();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public boolean hasNext() {
            checkConcurrentModification();
            switch (this.lastOperation) {
                case 0:
                    this.cursor = this.initialCursor;
                    break;
                case 1:
                    this.cursor = moveForward(this.cursor + 1);
                    break;
                case 2:
                    break;
                case 3:
                    this.cursor = this.last;
                    break;
                case 4:
                case 5:
                    this.cursor = moveForward(this.last + 1);
                    break;
                case 6:
                    this.cursor = moveForward(this.last);
                    break;
                default:
                    throw new IllegalStateException("Unknown operation");
            }
            if (this.lastOperation != 0) {
                this.lastOperation = 2;
            }
            return this.cursor < this.this$0.size();
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public Object next() {
            checkConcurrentModification();
            if (hasNext()) {
                this.last = this.cursor;
                this.lastOperation = 4;
                return this.this$0.get(this.last);
            }
            this.last = this.this$0.size();
            throw new NoSuchElementException();
        }

        @Override // java.util.ListIterator
        public boolean hasPrevious() {
            checkConcurrentModification();
            switch (this.lastOperation) {
                case 0:
                    this.cursor = this.initialCursor;
                    int size = this.this$0.size();
                    if (this.cursor >= size) {
                        this.cursor = moveBackward(size - 1);
                        break;
                    }
                    break;
                case 1:
                    break;
                case 2:
                    this.cursor = moveBackward(this.cursor - 1);
                    break;
                case 3:
                case 6:
                    this.cursor = moveBackward(this.last - 1);
                    break;
                case 4:
                case 5:
                    this.cursor = this.last;
                    break;
                default:
                    throw new IllegalStateException("Unknown operation");
            }
            if (this.lastOperation != 0) {
                this.lastOperation = 1;
            }
            return this.cursor >= 0;
        }

        @Override // java.util.ListIterator
        public Object previous() {
            checkConcurrentModification();
            if (hasPrevious()) {
                this.last = this.cursor;
                this.lastOperation = 3;
                return this.this$0.get(this.last);
            }
            this.last = -1;
            throw new NoSuchElementException();
        }

        @Override // java.util.ListIterator
        public int nextIndex() {
            checkConcurrentModification();
            hasNext();
            int count = 0;
            int i = 0;
            while (true) {
                if (i >= this.this$0.size()) {
                    this.expected = this.this$0.getModCount();
                    break;
                }
                if (this.filter.matches(this.this$0.get(i))) {
                    if (i == this.cursor) {
                        break;
                    }
                    count++;
                }
                i++;
            }
            return count;
        }

        @Override // java.util.ListIterator
        public int previousIndex() {
            checkConcurrentModification();
            if (hasPrevious()) {
                int count = 0;
                for (int i = 0; i < this.this$0.size(); i++) {
                    if (this.filter.matches(this.this$0.get(i))) {
                        if (i == this.cursor) {
                            return count;
                        }
                        count++;
                    }
                }
            }
            return -1;
        }

        @Override // java.util.ListIterator
        public void add(Object obj) {
            checkConcurrentModification();
            if (this.filter.matches(obj)) {
                this.last = this.cursor + 1;
                this.this$0.add(this.last, obj);
                this.expected = this.this$0.getModCount();
                this.lastOperation = 5;
                return;
            }
            throw new IllegalAddException(new StringBuffer("Filter won't allow add of ").append(obj.getClass().getName()).toString());
        }

        @Override // java.util.ListIterator, java.util.Iterator
        public void remove() {
            checkConcurrentModification();
            if (this.last < 0 || this.lastOperation == 6) {
                throw new IllegalStateException("no preceeding call to prev() or next()");
            }
            if (this.lastOperation == 5) {
                throw new IllegalStateException("cannot call remove() after add()");
            }
            Object old = this.this$0.get(this.last);
            if (this.filter.matches(old)) {
                this.this$0.remove(this.last);
                this.expected = this.this$0.getModCount();
                this.lastOperation = 6;
                return;
            }
            throw new IllegalAddException(new StringBuffer("Filter won't allow ").append(old.getClass().getName()).append(" (index ").append(this.last).append(") to be removed").toString());
        }

        @Override // java.util.ListIterator
        public void set(Object obj) {
            checkConcurrentModification();
            if (this.lastOperation == 5 || this.lastOperation == 6) {
                throw new IllegalStateException("cannot call set() after add() or remove()");
            }
            if (this.last < 0) {
                throw new IllegalStateException("no preceeding call to prev() or next()");
            }
            if (this.filter.matches(obj)) {
                Object old = this.this$0.get(this.last);
                if (!this.filter.matches(old)) {
                    throw new IllegalAddException(new StringBuffer("Filter won't allow ").append(old.getClass().getName()).append(" (index ").append(this.last).append(") to be removed").toString());
                }
                this.this$0.set(this.last, obj);
                this.expected = this.this$0.getModCount();
                return;
            }
            throw new IllegalAddException(new StringBuffer("Filter won't allow index ").append(this.last).append(" to be set to ").append(obj.getClass().getName()).toString());
        }

        private int initializeCursor(int start) {
            if (start < 0) {
                throw new IndexOutOfBoundsException(new StringBuffer("Index: ").append(start).toString());
            }
            int count = 0;
            for (int i = 0; i < this.this$0.size(); i++) {
                Object obj = this.this$0.get(i);
                if (this.filter.matches(obj)) {
                    if (start != count) {
                        count++;
                    } else {
                        return i;
                    }
                }
            }
            if (start > count) {
                throw new IndexOutOfBoundsException(new StringBuffer("Index: ").append(start).append(" Size: ").append(count).toString());
            }
            int i2 = this.this$0.size();
            return i2;
        }

        private int moveForward(int start) {
            if (start < 0) {
                start = 0;
            }
            for (int i = start; i < this.this$0.size(); i++) {
                Object obj = this.this$0.get(i);
                if (this.filter.matches(obj)) {
                    return i;
                }
            }
            int i2 = this.this$0.size();
            return i2;
        }

        private int moveBackward(int start) {
            if (start >= this.this$0.size()) {
                start = this.this$0.size() - 1;
            }
            for (int i = start; i >= 0; i--) {
                Object obj = this.this$0.get(i);
                if (this.filter.matches(obj)) {
                    return i;
                }
            }
            return -1;
        }

        private void checkConcurrentModification() {
            if (this.expected == this.this$0.getModCount()) {
                return;
            }
            throw new ConcurrentModificationException();
        }
    }
}
