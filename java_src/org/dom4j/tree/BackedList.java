package org.dom4j.tree;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import org.dom4j.IllegalAddException;
import org.dom4j.Node;
/* loaded from: classes2.dex */
public class BackedList extends ArrayList {
    private AbstractBranch branch;
    private List branchContent;

    public BackedList(AbstractBranch branch, List branchContent) {
        this(branch, branchContent, branchContent.size());
    }

    public BackedList(AbstractBranch branch, List branchContent, int capacity) {
        super(capacity);
        this.branch = branch;
        this.branchContent = branchContent;
    }

    public BackedList(AbstractBranch branch, List branchContent, List initialContent) {
        super(initialContent);
        this.branch = branch;
        this.branchContent = branchContent;
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(Object object) {
        this.branch.addNode(asNode(object));
        return super.add(object);
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public void add(int index, Object object) {
        int realIndex;
        int size = size();
        if (index < 0) {
            throw new IndexOutOfBoundsException(new StringBuffer().append("Index value: ").append(index).append(" is less than zero").toString());
        }
        if (index > size) {
            throw new IndexOutOfBoundsException(new StringBuffer().append("Index value: ").append(index).append(" cannot be greater than ").append("the size: ").append(size).toString());
        }
        if (size == 0) {
            realIndex = this.branchContent.size();
        } else if (index < size) {
            realIndex = this.branchContent.indexOf(get(index));
        } else {
            realIndex = this.branchContent.indexOf(get(size - 1)) + 1;
        }
        this.branch.addNode(realIndex, asNode(object));
        super.add(index, object);
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public Object set(int index, Object object) {
        int realIndex = this.branchContent.indexOf(get(index));
        if (realIndex < 0) {
            realIndex = index == 0 ? 0 : Integer.MAX_VALUE;
        }
        if (realIndex < this.branchContent.size()) {
            this.branch.removeNode(asNode(get(index)));
            this.branch.addNode(realIndex, asNode(object));
        } else {
            this.branch.removeNode(asNode(get(index)));
            this.branch.addNode(asNode(object));
        }
        this.branch.childAdded(asNode(object));
        return super.set(index, object);
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean remove(Object object) {
        this.branch.removeNode(asNode(object));
        return super.remove(object);
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public Object remove(int index) {
        Object object = super.remove(index);
        if (object != null) {
            this.branch.removeNode(asNode(object));
        }
        return object;
    }

    @Override // java.util.ArrayList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean addAll(Collection collection) {
        ensureCapacity(size() + collection.size());
        int count = size();
        for (Object obj : collection) {
            add(obj);
            count--;
        }
        return count != 0;
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.List
    public boolean addAll(int index, Collection collection) {
        ensureCapacity(size() + collection.size());
        int count = size();
        for (Object obj : collection) {
            add(index, obj);
            count--;
            index++;
        }
        return count != 0;
    }

    @Override // java.util.ArrayList, java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public void clear() {
        Iterator iter = iterator();
        while (iter.hasNext()) {
            Object object = iter.next();
            this.branchContent.remove(object);
            this.branch.childRemoved(asNode(object));
        }
        super.clear();
    }

    public void addLocal(Object object) {
        super.add(object);
    }

    protected Node asNode(Object object) {
        if (object instanceof Node) {
            return (Node) object;
        }
        throw new IllegalAddException(new StringBuffer().append("This list must contain instances of Node. Invalid type: ").append(object).toString());
    }
}
