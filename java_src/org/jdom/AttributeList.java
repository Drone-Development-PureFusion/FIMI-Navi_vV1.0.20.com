package org.jdom;

import java.io.Serializable;
import java.util.AbstractList;
import java.util.Collection;
import java.util.List;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class AttributeList extends AbstractList implements List, Serializable {
    private static final String CVS_ID = "@(#) $RCSfile: AttributeList.java,v $ $Revision: 1.23 $ $Date: 2004/02/28 03:30:27 $ $Name: jdom_1_0 $";
    private static final int INITIAL_ARRAY_SIZE = 5;
    private Attribute[] elementData;
    private Element parent;
    private int size;

    private AttributeList() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public AttributeList(Element parent) {
        this.parent = parent;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void uncheckedAddAttribute(Attribute a) {
        a.parent = this.parent;
        ensureCapacity(this.size + 1);
        Attribute[] attributeArr = this.elementData;
        int i = this.size;
        this.size = i + 1;
        attributeArr[i] = a;
        ((AbstractList) this).modCount++;
    }

    @Override // java.util.AbstractList, java.util.AbstractCollection, java.util.Collection, java.util.List
    public boolean add(Object obj) {
        if (obj instanceof Attribute) {
            Attribute attribute = (Attribute) obj;
            int duplicate = indexOfDuplicate(attribute);
            if (duplicate < 0) {
                add(size(), attribute);
                return true;
            }
            set(duplicate, attribute);
            return true;
        } else if (obj == null) {
            throw new IllegalAddException("Cannot add null attribute");
        } else {
            throw new IllegalAddException(new StringBuffer("Class ").append(obj.getClass().getName()).append(" is not an attribute").toString());
        }
    }

    @Override // java.util.AbstractList, java.util.List
    public void add(int index, Object obj) {
        if (obj instanceof Attribute) {
            Attribute attribute = (Attribute) obj;
            int duplicate = indexOfDuplicate(attribute);
            if (duplicate >= 0) {
                throw new IllegalAddException("Cannot add duplicate attribute");
            }
            add(index, attribute);
            ((AbstractList) this).modCount++;
        } else if (obj == null) {
            throw new IllegalAddException("Cannot add null attribute");
        } else {
            throw new IllegalAddException(new StringBuffer("Class ").append(obj.getClass().getName()).append(" is not an attribute").toString());
        }
    }

    void add(int index, Attribute attribute) {
        if (attribute.getParent() != null) {
            throw new IllegalAddException(new StringBuffer("The attribute already has an existing parent \"").append(attribute.getParent().getQualifiedName()).append("\"").toString());
        }
        String reason = Verifier.checkNamespaceCollision(attribute, this.parent);
        if (reason != null) {
            throw new IllegalAddException(this.parent, attribute, reason);
        }
        if (index < 0 || index > this.size) {
            throw new IndexOutOfBoundsException(new StringBuffer("Index: ").append(index).append(" Size: ").append(size()).toString());
        }
        attribute.setParent(this.parent);
        ensureCapacity(this.size + 1);
        if (index == this.size) {
            Attribute[] attributeArr = this.elementData;
            int i = this.size;
            this.size = i + 1;
            attributeArr[i] = attribute;
        } else {
            System.arraycopy(this.elementData, index, this.elementData, index + 1, this.size - index);
            this.elementData[index] = attribute;
            this.size++;
        }
        ((AbstractList) this).modCount++;
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
                Attribute attribute = this.elementData[i];
                attribute.setParent(null);
            }
            this.elementData = null;
            this.size = 0;
        }
        ((AbstractList) this).modCount++;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void clearAndSet(Collection collection) {
        Attribute[] old = this.elementData;
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
                Attribute attribute = old[i];
                attribute.setParent(null);
            }
        }
        ((AbstractList) this).modCount++;
    }

    private void ensureCapacity(int minCapacity) {
        if (this.elementData == null) {
            this.elementData = new Attribute[Math.max(minCapacity, 5)];
            return;
        }
        int oldCapacity = this.elementData.length;
        if (minCapacity <= oldCapacity) {
            return;
        }
        Attribute[] oldData = this.elementData;
        int newCapacity = ((oldCapacity * 3) / 2) + 1;
        if (newCapacity < minCapacity) {
            newCapacity = minCapacity;
        }
        this.elementData = new Attribute[newCapacity];
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
    public Object get(String name, Namespace namespace) {
        int index = indexOf(name, namespace);
        if (index < 0) {
            return null;
        }
        return this.elementData[index];
    }

    int indexOf(String name, Namespace namespace) {
        String uri = namespace.getURI();
        if (this.elementData != null) {
            for (int i = 0; i < this.size; i++) {
                Attribute old = this.elementData[i];
                String oldURI = old.getNamespaceURI();
                String oldName = old.getName();
                if (oldURI.equals(uri) && oldName.equals(name)) {
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
        Attribute old = this.elementData[index];
        old.setParent(null);
        int numMoved = (this.size - index) - 1;
        if (numMoved > 0) {
            System.arraycopy(this.elementData, index + 1, this.elementData, index, numMoved);
        }
        Attribute[] attributeArr = this.elementData;
        int i = this.size - 1;
        this.size = i;
        attributeArr[i] = null;
        ((AbstractList) this).modCount++;
        return old;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public boolean remove(String name, Namespace namespace) {
        int index = indexOf(name, namespace);
        if (index < 0) {
            return false;
        }
        remove(index);
        return true;
    }

    @Override // java.util.AbstractList, java.util.List
    public Object set(int index, Object obj) {
        if (obj instanceof Attribute) {
            Attribute attribute = (Attribute) obj;
            int duplicate = indexOfDuplicate(attribute);
            if (duplicate >= 0 && duplicate != index) {
                throw new IllegalAddException("Cannot set duplicate attribute");
            }
            return set(index, attribute);
        } else if (obj == null) {
            throw new IllegalAddException("Cannot add null attribute");
        } else {
            throw new IllegalAddException(new StringBuffer("Class ").append(obj.getClass().getName()).append(" is not an attribute").toString());
        }
    }

    Object set(int index, Attribute attribute) {
        if (index < 0 || index >= this.size) {
            throw new IndexOutOfBoundsException(new StringBuffer("Index: ").append(index).append(" Size: ").append(size()).toString());
        }
        if (attribute.getParent() != null) {
            throw new IllegalAddException(new StringBuffer("The attribute already has an existing parent \"").append(attribute.getParent().getQualifiedName()).append("\"").toString());
        }
        String reason = Verifier.checkNamespaceCollision(attribute, this.parent);
        if (reason != null) {
            throw new IllegalAddException(this.parent, attribute, reason);
        }
        Attribute old = this.elementData[index];
        old.setParent(null);
        this.elementData[index] = attribute;
        attribute.setParent(this.parent);
        return old;
    }

    private int indexOfDuplicate(Attribute attribute) {
        String name = attribute.getName();
        Namespace namespace = attribute.getNamespace();
        int duplicate = indexOf(name, namespace);
        return duplicate;
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public int size() {
        return this.size;
    }

    @Override // java.util.AbstractCollection
    public String toString() {
        return super.toString();
    }
}
