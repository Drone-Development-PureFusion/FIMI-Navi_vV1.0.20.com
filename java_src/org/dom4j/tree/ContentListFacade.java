package org.dom4j.tree;

import java.util.AbstractList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.dom4j.IllegalAddException;
import org.dom4j.Node;
/* loaded from: classes2.dex */
public class ContentListFacade extends AbstractList {
    private AbstractBranch branch;
    private List branchContent;

    public ContentListFacade(AbstractBranch branch, List branchContent) {
        this.branch = branch;
        this.branchContent = branchContent;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(Object object) {
        this.branch.childAdded(asNode(object));
        return this.branchContent.add(object);
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int index, Object object) {
        this.branch.childAdded(asNode(object));
        this.branchContent.add(index, object);
    }

    @Override // java.util.AbstractList, java.util.List
    public Object set(int index, Object object) {
        this.branch.childAdded(asNode(object));
        return this.branchContent.set(index, object);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object object) {
        this.branch.childRemoved(asNode(object));
        return this.branchContent.remove(object);
    }

    @Override // java.util.AbstractList, java.util.List
    public Object remove(int index) {
        Object object = this.branchContent.remove(index);
        if (object != null) {
            this.branch.childRemoved(asNode(object));
        }
        return object;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection collection) {
        int count = this.branchContent.size();
        for (Object obj : collection) {
            add(obj);
            count++;
        }
        return count == this.branchContent.size();
    }

    @Override // java.util.AbstractList, java.util.List
    public boolean addAll(int index, Collection collection) {
        int count = this.branchContent.size();
        for (Object obj : collection) {
            add(index, obj);
            count--;
            index++;
        }
        return count == this.branchContent.size();
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        Iterator iter = iterator();
        while (iter.hasNext()) {
            Object object = iter.next();
            this.branch.childRemoved(asNode(object));
        }
        this.branchContent.clear();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean removeAll(Collection c) {
        for (Object object : c) {
            this.branch.childRemoved(asNode(object));
        }
        return this.branchContent.removeAll(c);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.branchContent.size();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean isEmpty() {
        return this.branchContent.isEmpty();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean contains(Object o) {
        return this.branchContent.contains(o);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public Object[] toArray() {
        return this.branchContent.toArray();
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public Object[] toArray(Object[] a) {
        return this.branchContent.toArray(a);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean containsAll(Collection c) {
        return this.branchContent.containsAll(c);
    }

    @Override // java.util.AbstractList, java.util.List
    public Object get(int index) {
        return this.branchContent.get(index);
    }

    @Override // java.util.AbstractList, java.util.List
    public int indexOf(Object o) {
        return this.branchContent.indexOf(o);
    }

    @Override // java.util.AbstractList, java.util.List
    public int lastIndexOf(Object o) {
        return this.branchContent.lastIndexOf(o);
    }

    protected Node asNode(Object object) {
        if (object instanceof Node) {
            return (Node) object;
        }
        throw new IllegalAddException(new StringBuffer().append("This list must contain instances of Node. Invalid type: ").append(object).toString());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public List getBackingList() {
        return this.branchContent;
    }
}
