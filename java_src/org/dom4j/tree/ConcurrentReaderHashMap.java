package org.dom4j.tree;

import java.io.IOException;
import java.io.ObjectInputStream;
import java.io.ObjectOutputStream;
import java.io.Serializable;
import java.util.AbstractCollection;
import java.util.AbstractMap;
import java.util.AbstractSet;
import java.util.Collection;
import java.util.Enumeration;
import java.util.Iterator;
import java.util.Map;
import java.util.NoSuchElementException;
import java.util.Set;
/* loaded from: classes2.dex */
class ConcurrentReaderHashMap extends AbstractMap implements Map, Cloneable, Serializable {
    public static int DEFAULT_INITIAL_CAPACITY = 32;
    public static final float DEFAULT_LOAD_FACTOR = 0.75f;
    private static final int MAXIMUM_CAPACITY = 1073741824;
    private static final int MINIMUM_CAPACITY = 4;
    protected final BarrierLock barrierLock;
    protected transient int count;
    protected transient Set entrySet;
    protected transient Set keySet;
    protected transient Object lastWrite;
    protected float loadFactor;
    protected transient Entry[] table;
    protected int threshold;
    protected transient Collection values;

    /* renamed from: org.dom4j.tree.ConcurrentReaderHashMap$1 */
    /* loaded from: classes2.dex */
    static class C26551 {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes2.dex */
    public static class BarrierLock implements Serializable {
        protected BarrierLock() {
        }
    }

    protected final void recordModification(Object x) {
        synchronized (this.barrierLock) {
            this.lastWrite = x;
        }
    }

    protected final Entry[] getTableForReading() {
        Entry[] entryArr;
        synchronized (this.barrierLock) {
            entryArr = this.table;
        }
        return entryArr;
    }

    private int p2capacity(int initialCapacity) {
        if (initialCapacity > 1073741824 || initialCapacity < 0) {
            return 1073741824;
        }
        int result = 4;
        while (result < initialCapacity) {
            result <<= 1;
        }
        return result;
    }

    private static int hash(Object x) {
        int h = x.hashCode();
        return ((h << 7) - h) + (h >>> 9) + (h >>> 17);
    }

    /* renamed from: eq */
    protected boolean m29eq(Object x, Object y) {
        return x == y || x.equals(y);
    }

    public ConcurrentReaderHashMap(int initialCapacity, float loadFactor) {
        this.barrierLock = new BarrierLock();
        this.keySet = null;
        this.entrySet = null;
        this.values = null;
        if (loadFactor <= 0.0f) {
            throw new IllegalArgumentException(new StringBuffer().append("Illegal Load factor: ").append(loadFactor).toString());
        }
        this.loadFactor = loadFactor;
        int cap = p2capacity(initialCapacity);
        this.table = new Entry[cap];
        this.threshold = (int) (cap * loadFactor);
    }

    public ConcurrentReaderHashMap(int initialCapacity) {
        this(initialCapacity, 0.75f);
    }

    public ConcurrentReaderHashMap() {
        this(DEFAULT_INITIAL_CAPACITY, 0.75f);
    }

    public ConcurrentReaderHashMap(Map t) {
        this(Math.max(((int) (t.size() / 0.75f)) + 1, 16), 0.75f);
        putAll(t);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public synchronized int size() {
        return this.count;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public synchronized boolean isEmpty() {
        return this.count == 0;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Object get(Object key) {
        int hash = hash(key);
        Entry[] tab = this.table;
        int index = hash & (tab.length - 1);
        Entry first = tab[index];
        Entry e = first;
        while (true) {
            if (e == null) {
                Entry[] reread = getTableForReading();
                if (tab == reread && first == tab[index]) {
                    return null;
                }
                tab = reread;
                index = hash & (tab.length - 1);
                first = tab[index];
                e = first;
            } else if (e.hash == hash && m29eq(key, e.key)) {
                Object value = e.value;
                if (value != null) {
                    return value;
                }
                synchronized (this) {
                    tab = this.table;
                }
                index = hash & (tab.length - 1);
                first = tab[index];
                e = first;
            } else {
                e = e.next;
            }
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsKey(Object key) {
        return get(key) != null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Object put(Object key, Object value) {
        Object oldValue;
        if (value == null) {
            throw new NullPointerException();
        }
        int hash = hash(key);
        Entry[] tab = this.table;
        int index = hash & (tab.length - 1);
        Entry first = tab[index];
        Entry e = first;
        while (e != null && (e.hash != hash || !m29eq(key, e.key))) {
            e = e.next;
        }
        synchronized (this) {
            if (tab == this.table) {
                if (e == null) {
                    if (first == tab[index]) {
                        Entry newEntry = new Entry(hash, key, value, first);
                        tab[index] = newEntry;
                        int i = this.count + 1;
                        this.count = i;
                        if (i >= this.threshold) {
                            rehash();
                        } else {
                            recordModification(newEntry);
                        }
                        oldValue = null;
                    }
                } else {
                    oldValue = e.value;
                    if (first == tab[index] && oldValue != null) {
                        e.value = value;
                    }
                }
            }
            oldValue = sput(key, value, hash);
        }
        return oldValue;
    }

    protected Object sput(Object key, Object value, int hash) {
        Entry[] tab = this.table;
        int index = hash & (tab.length - 1);
        Entry first = tab[index];
        for (Entry e = first; e != null; e = e.next) {
            if (e.hash == hash && m29eq(key, e.key)) {
                Object obj = e.value;
                e.value = value;
                return obj;
            }
        }
        Entry newEntry = new Entry(hash, key, value, first);
        tab[index] = newEntry;
        int i = this.count + 1;
        this.count = i;
        if (i >= this.threshold) {
            rehash();
        } else {
            recordModification(newEntry);
        }
        return null;
    }

    protected void rehash() {
        Entry[] oldTable = this.table;
        int oldCapacity = oldTable.length;
        if (oldCapacity >= 1073741824) {
            this.threshold = Integer.MAX_VALUE;
            return;
        }
        int newCapacity = oldCapacity << 1;
        int mask = newCapacity - 1;
        this.threshold = (int) (newCapacity * this.loadFactor);
        Entry[] newTable = new Entry[newCapacity];
        for (Entry e : oldTable) {
            if (e != null) {
                int idx = e.hash & mask;
                Entry next = e.next;
                if (next == null) {
                    newTable[idx] = e;
                } else {
                    Entry lastRun = e;
                    int lastIdx = idx;
                    for (Entry last = next; last != null; last = last.next) {
                        int k = last.hash & mask;
                        if (k != lastIdx) {
                            lastIdx = k;
                            lastRun = last;
                        }
                    }
                    newTable[lastIdx] = lastRun;
                    for (Entry p = e; p != lastRun; p = p.next) {
                        int k2 = p.hash & mask;
                        newTable[k2] = new Entry(p.hash, p.key, p.value, newTable[k2]);
                    }
                }
            }
        }
        this.table = newTable;
        recordModification(newTable);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Object remove(Object key) {
        Object oldValue = null;
        int hash = hash(key);
        Entry[] tab = this.table;
        int index = hash & (tab.length - 1);
        Entry first = tab[index];
        Entry e = first;
        while (e != null && (e.hash != hash || !m29eq(key, e.key))) {
            e = e.next;
        }
        synchronized (this) {
            if (tab == this.table) {
                if (e == null) {
                    if (first == tab[index]) {
                    }
                } else {
                    oldValue = e.value;
                    if (first == tab[index] && oldValue != null) {
                        e.value = null;
                        this.count--;
                        Entry head = e.next;
                        Entry p = first;
                        Entry head2 = head;
                        while (p != e) {
                            Entry head3 = new Entry(p.hash, p.key, p.value, head2);
                            p = p.next;
                            head2 = head3;
                        }
                        tab[index] = head2;
                        recordModification(head2);
                    }
                }
            }
            oldValue = sremove(key, hash);
        }
        return oldValue;
    }

    protected Object sremove(Object key, int hash) {
        Entry[] tab = this.table;
        int index = hash & (tab.length - 1);
        Entry first = tab[index];
        for (Entry e = first; e != null; e = e.next) {
            if (e.hash == hash && m29eq(key, e.key)) {
                Object oldValue = e.value;
                e.value = null;
                this.count--;
                Entry head = e.next;
                Entry p = first;
                Entry head2 = head;
                while (p != e) {
                    Entry head3 = new Entry(p.hash, p.key, p.value, head2);
                    p = p.next;
                    head2 = head3;
                }
                tab[index] = head2;
                recordModification(head2);
                return oldValue;
            }
        }
        return null;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public boolean containsValue(Object value) {
        if (value == null) {
            throw new NullPointerException();
        }
        Entry[] tab = getTableForReading();
        for (Entry e : tab) {
            for (; e != null; e = e.next) {
                if (value.equals(e.value)) {
                    return true;
                }
            }
        }
        return false;
    }

    public boolean contains(Object value) {
        return containsValue(value);
    }

    @Override // java.util.AbstractMap, java.util.Map
    public synchronized void putAll(Map t) {
        int n = t.size();
        if (n != 0) {
            while (n >= this.threshold) {
                rehash();
            }
            for (Map.Entry entry : t.entrySet()) {
                Object key = entry.getKey();
                Object value = entry.getValue();
                put(key, value);
            }
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public synchronized void clear() {
        Entry[] tab = this.table;
        for (int i = 0; i < tab.length; i++) {
            for (Entry e = tab[i]; e != null; e = e.next) {
                e.value = null;
            }
            tab[i] = null;
        }
        this.count = 0;
        recordModification(tab);
    }

    @Override // java.util.AbstractMap
    public synchronized Object clone() {
        ConcurrentReaderHashMap t;
        try {
            t = (ConcurrentReaderHashMap) super.clone();
            t.keySet = null;
            t.entrySet = null;
            t.values = null;
            Entry[] tab = this.table;
            t.table = new Entry[tab.length];
            Entry[] ttab = t.table;
            for (int i = 0; i < tab.length; i++) {
                Entry e = tab[i];
                Entry first = null;
                while (e != null) {
                    Entry first2 = new Entry(e.hash, e.key, e.value, first);
                    e = e.next;
                    first = first2;
                }
                ttab[i] = first;
            }
        } catch (CloneNotSupportedException e2) {
            throw new InternalError();
        }
        return t;
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set keySet() {
        Set ks = this.keySet;
        if (ks != null) {
            return ks;
        }
        Set ks2 = new KeySet(this, null);
        this.keySet = ks2;
        return ks2;
    }

    /* loaded from: classes2.dex */
    private class KeySet extends AbstractSet {
        private final ConcurrentReaderHashMap this$0;

        private KeySet(ConcurrentReaderHashMap this$0) {
            this.this$0 = this$0;
        }

        KeySet(ConcurrentReaderHashMap x0, C26551 x1) {
            this(x0);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator iterator() {
            return new KeyIterator(this.this$0);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.this$0.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object o) {
            return this.this$0.containsKey(o);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object o) {
            return this.this$0.remove(o) != null;
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            this.this$0.clear();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Collection values() {
        Collection vs = this.values;
        if (vs != null) {
            return vs;
        }
        Collection vs2 = new Values(this, null);
        this.values = vs2;
        return vs2;
    }

    /* loaded from: classes2.dex */
    private class Values extends AbstractCollection {
        private final ConcurrentReaderHashMap this$0;

        private Values(ConcurrentReaderHashMap this$0) {
            this.this$0 = this$0;
        }

        Values(ConcurrentReaderHashMap x0, C26551 x1) {
            this(x0);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable
        public Iterator iterator() {
            return new ValueIterator(this.this$0);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public int size() {
            return this.this$0.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public boolean contains(Object o) {
            return this.this$0.containsValue(o);
        }

        @Override // java.util.AbstractCollection, java.util.Collection
        public void clear() {
            this.this$0.clear();
        }
    }

    @Override // java.util.AbstractMap, java.util.Map
    public Set entrySet() {
        Set es = this.entrySet;
        if (es != null) {
            return es;
        }
        Set es2 = new EntrySet(this, null);
        this.entrySet = es2;
        return es2;
    }

    /* loaded from: classes2.dex */
    private class EntrySet extends AbstractSet {
        private final ConcurrentReaderHashMap this$0;

        private EntrySet(ConcurrentReaderHashMap this$0) {
            this.this$0 = this$0;
        }

        EntrySet(ConcurrentReaderHashMap x0, C26551 x1) {
            this(x0);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.lang.Iterable, java.util.Set
        public Iterator iterator() {
            return new HashIterator(this.this$0);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean contains(Object o) {
            if (!(o instanceof Map.Entry)) {
                return false;
            }
            Map.Entry entry = (Map.Entry) o;
            Object v = this.this$0.get(entry.getKey());
            return v != null && v.equals(entry.getValue());
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public boolean remove(Object o) {
            if (!(o instanceof Map.Entry)) {
                return false;
            }
            return this.this$0.findAndRemoveEntry((Map.Entry) o);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public int size() {
            return this.this$0.size();
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.Set
        public void clear() {
            this.this$0.clear();
        }
    }

    protected synchronized boolean findAndRemoveEntry(Map.Entry entry) {
        boolean z;
        Object key = entry.getKey();
        Object v = get(key);
        if (v == null || !v.equals(entry.getValue())) {
            z = false;
        } else {
            remove(key);
            z = true;
        }
        return z;
    }

    public Enumeration keys() {
        return new KeyIterator(this);
    }

    public Enumeration elements() {
        return new ValueIterator(this);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    /* loaded from: classes2.dex */
    public static class Entry implements Map.Entry {
        protected final int hash;
        protected final Object key;
        protected final Entry next;
        protected volatile Object value;

        Entry(int hash, Object key, Object value, Entry next) {
            this.hash = hash;
            this.key = key;
            this.next = next;
            this.value = value;
        }

        @Override // java.util.Map.Entry
        public Object getKey() {
            return this.key;
        }

        @Override // java.util.Map.Entry
        public Object getValue() {
            return this.value;
        }

        @Override // java.util.Map.Entry
        public Object setValue(Object value) {
            if (value == null) {
                throw new NullPointerException();
            }
            Object oldValue = this.value;
            this.value = value;
            return oldValue;
        }

        @Override // java.util.Map.Entry
        public boolean equals(Object o) {
            if (!(o instanceof Map.Entry)) {
                return false;
            }
            Map.Entry e = (Map.Entry) o;
            return this.key.equals(e.getKey()) && this.value.equals(e.getValue());
        }

        @Override // java.util.Map.Entry
        public int hashCode() {
            return this.key.hashCode() ^ this.value.hashCode();
        }

        public String toString() {
            return new StringBuffer().append(this.key).append("=").append(this.value).toString();
        }
    }

    /* loaded from: classes2.dex */
    protected class HashIterator implements Iterator, Enumeration {
        protected Object currentKey;
        protected Object currentValue;
        protected int index;
        protected final Entry[] tab;
        private final ConcurrentReaderHashMap this$0;
        protected Entry entry = null;
        protected Entry lastReturned = null;

        protected HashIterator(ConcurrentReaderHashMap this$0) {
            this.this$0 = this$0;
            this.tab = this$0.getTableForReading();
            this.index = this.tab.length - 1;
        }

        @Override // java.util.Enumeration
        public boolean hasMoreElements() {
            return hasNext();
        }

        @Override // java.util.Enumeration
        public Object nextElement() {
            return next();
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            do {
                if (this.entry != null) {
                    Object v = this.entry.value;
                    if (v != null) {
                        this.currentKey = this.entry.key;
                        this.currentValue = v;
                        return true;
                    }
                    this.entry = this.entry.next;
                }
                while (this.entry == null && this.index >= 0) {
                    Entry[] entryArr = this.tab;
                    int i = this.index;
                    this.index = i - 1;
                    this.entry = entryArr[i];
                }
            } while (this.entry != null);
            this.currentValue = null;
            this.currentKey = null;
            return false;
        }

        protected Object returnValueOfNext() {
            return this.entry;
        }

        @Override // java.util.Iterator
        public Object next() {
            if (this.currentKey == null && !hasNext()) {
                throw new NoSuchElementException();
            }
            Object result = returnValueOfNext();
            this.lastReturned = this.entry;
            this.currentValue = null;
            this.currentKey = null;
            this.entry = this.entry.next;
            return result;
        }

        @Override // java.util.Iterator
        public void remove() {
            if (this.lastReturned == null) {
                throw new IllegalStateException();
            }
            this.this$0.remove(this.lastReturned.key);
            this.lastReturned = null;
        }
    }

    /* loaded from: classes2.dex */
    protected class KeyIterator extends HashIterator {
        private final ConcurrentReaderHashMap this$0;

        protected KeyIterator(ConcurrentReaderHashMap this$0) {
            super(this$0);
            this.this$0 = this$0;
        }

        @Override // org.dom4j.tree.ConcurrentReaderHashMap.HashIterator
        protected Object returnValueOfNext() {
            return this.currentKey;
        }
    }

    /* loaded from: classes2.dex */
    protected class ValueIterator extends HashIterator {
        private final ConcurrentReaderHashMap this$0;

        protected ValueIterator(ConcurrentReaderHashMap this$0) {
            super(this$0);
            this.this$0 = this$0;
        }

        @Override // org.dom4j.tree.ConcurrentReaderHashMap.HashIterator
        protected Object returnValueOfNext() {
            return this.currentValue;
        }
    }

    private synchronized void writeObject(ObjectOutputStream s) throws IOException {
        s.defaultWriteObject();
        s.writeInt(this.table.length);
        s.writeInt(this.count);
        for (int index = this.table.length - 1; index >= 0; index--) {
            for (Entry entry = this.table[index]; entry != null; entry = entry.next) {
                s.writeObject(entry.key);
                s.writeObject(entry.value);
            }
        }
    }

    private synchronized void readObject(ObjectInputStream s) throws IOException, ClassNotFoundException {
        s.defaultReadObject();
        int numBuckets = s.readInt();
        this.table = new Entry[numBuckets];
        int size = s.readInt();
        for (int i = 0; i < size; i++) {
            Object key = s.readObject();
            Object value = s.readObject();
            put(key, value);
        }
    }

    public synchronized int capacity() {
        return this.table.length;
    }

    public float loadFactor() {
        return this.loadFactor;
    }
}
