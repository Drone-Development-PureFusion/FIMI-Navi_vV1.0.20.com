package p021rx.internal.util;

import java.util.concurrent.atomic.AtomicInteger;
import java.util.concurrent.atomic.AtomicIntegerArray;
import java.util.concurrent.atomic.AtomicReference;
import java.util.concurrent.atomic.AtomicReferenceArray;
import p021rx.Subscription;
import p021rx.functions.Func1;
/* renamed from: rx.internal.util.IndexedRingBuffer */
/* loaded from: classes2.dex */
public final class IndexedRingBuffer<E> implements Subscription {
    private static final ObjectPool<IndexedRingBuffer<?>> POOL = new ObjectPool<IndexedRingBuffer<?>>() { // from class: rx.internal.util.IndexedRingBuffer.1
        /* JADX INFO: Access modifiers changed from: protected */
        @Override // p021rx.internal.util.ObjectPool
        public IndexedRingBuffer<?> createObject() {
            return new IndexedRingBuffer<>();
        }
    };
    static final int SIZE;
    static int _size;
    private final ElementSection<E> elements = new ElementSection<>();
    private final IndexSection removed = new IndexSection();
    final AtomicInteger index = new AtomicInteger();
    final AtomicInteger removedIndex = new AtomicInteger();

    static {
        _size = 256;
        if (PlatformDependent.isAndroid()) {
            _size = 8;
        }
        String sizeFromProperty = System.getProperty("rx.indexed-ring-buffer.size");
        if (sizeFromProperty != null) {
            try {
                _size = Integer.parseInt(sizeFromProperty);
            } catch (Exception e) {
                System.err.println("Failed to set 'rx.indexed-ring-buffer.size' with value " + sizeFromProperty + " => " + e.getMessage());
            }
        }
        SIZE = _size;
    }

    public static <T> IndexedRingBuffer<T> getInstance() {
        return (IndexedRingBuffer<T>) POOL.borrowObject();
    }

    public void releaseToPool() {
        int maxIndex = this.index.get();
        int realIndex = 0;
        loop0: for (ElementSection<E> section = this.elements; section != null; section = section.next.get()) {
            int i = 0;
            while (i < SIZE) {
                if (realIndex >= maxIndex) {
                    break loop0;
                }
                section.array.set(i, null);
                i++;
                realIndex++;
            }
        }
        this.index.set(0);
        this.removedIndex.set(0);
        POOL.returnObject(this);
    }

    @Override // p021rx.Subscription
    public void unsubscribe() {
        releaseToPool();
    }

    IndexedRingBuffer() {
    }

    public int add(E e) {
        int i = getIndexForAdd();
        if (i < SIZE) {
            this.elements.array.set(i, e);
        } else {
            int sectionIndex = i % SIZE;
            getElementSection(i).array.set(sectionIndex, e);
        }
        return i;
    }

    public E remove(int index) {
        E e;
        if (index < SIZE) {
            e = this.elements.array.getAndSet(index, null);
        } else {
            int sectionIndex = index % SIZE;
            e = getElementSection(index).array.getAndSet(sectionIndex, null);
        }
        pushRemovedIndex(index);
        return e;
    }

    private IndexSection getIndexSection(int index) {
        if (index < SIZE) {
            return this.removed;
        }
        int numSections = index / SIZE;
        IndexSection a = this.removed;
        for (int i = 0; i < numSections; i++) {
            a = a.getNext();
        }
        return a;
    }

    private ElementSection<E> getElementSection(int index) {
        if (index < SIZE) {
            return this.elements;
        }
        int numSections = index / SIZE;
        ElementSection<E> a = this.elements;
        for (int i = 0; i < numSections; i++) {
            a = a.getNext();
        }
        return a;
    }

    private synchronized int getIndexForAdd() {
        int i;
        int ri = getIndexFromPreviouslyRemoved();
        if (ri >= 0) {
            if (ri < SIZE) {
                i = this.removed.getAndSet(ri, -1);
            } else {
                int sectionIndex = ri % SIZE;
                i = getIndexSection(ri).getAndSet(sectionIndex, -1);
            }
            if (i == this.index.get()) {
                this.index.getAndIncrement();
            }
        } else {
            i = this.index.getAndIncrement();
        }
        return i;
    }

    private synchronized int getIndexFromPreviouslyRemoved() {
        int i;
        while (true) {
            int currentRi = this.removedIndex.get();
            if (currentRi <= 0) {
                i = -1;
                break;
            } else if (this.removedIndex.compareAndSet(currentRi, currentRi - 1)) {
                i = currentRi - 1;
                break;
            }
        }
        return i;
    }

    private synchronized void pushRemovedIndex(int elementIndex) {
        int i = this.removedIndex.getAndIncrement();
        if (i < SIZE) {
            this.removed.set(i, elementIndex);
        } else {
            int sectionIndex = i % SIZE;
            getIndexSection(i).set(sectionIndex, elementIndex);
        }
    }

    @Override // p021rx.Subscription
    public boolean isUnsubscribed() {
        return false;
    }

    public int forEach(Func1<? super E, Boolean> action) {
        return forEach(action, 0);
    }

    public int forEach(Func1<? super E, Boolean> action, int startIndex) {
        int endedAt = forEach(action, startIndex, this.index.get());
        if (startIndex > 0 && endedAt == this.index.get()) {
            return forEach(action, 0, startIndex);
        }
        if (endedAt == this.index.get()) {
            return 0;
        }
        return endedAt;
    }

    private int forEach(Func1<? super E, Boolean> action, int startIndex, int endIndex) {
        int lastIndex = startIndex;
        int maxIndex = this.index.get();
        int realIndex = startIndex;
        ElementSection<E> section = this.elements;
        if (startIndex >= SIZE) {
            section = getElementSection(startIndex);
            startIndex %= SIZE;
        }
        loop0: while (section != null) {
            int i = startIndex;
            while (i < SIZE) {
                if (realIndex >= maxIndex || realIndex >= endIndex) {
                    break loop0;
                }
                Object obj = (E) section.array.get(i);
                if (obj != null) {
                    lastIndex = realIndex;
                    boolean continueLoop = action.mo1999call(obj).booleanValue();
                    if (!continueLoop) {
                        return lastIndex;
                    }
                }
                i++;
                realIndex++;
            }
            section = section.next.get();
            startIndex = 0;
        }
        return realIndex;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: rx.internal.util.IndexedRingBuffer$ElementSection */
    /* loaded from: classes2.dex */
    public static class ElementSection<E> {
        final AtomicReferenceArray<E> array = new AtomicReferenceArray<>(IndexedRingBuffer.SIZE);
        final AtomicReference<ElementSection<E>> next = new AtomicReference<>();

        ElementSection() {
        }

        ElementSection<E> getNext() {
            if (this.next.get() != null) {
                return this.next.get();
            }
            ElementSection<E> newSection = new ElementSection<>();
            return this.next.compareAndSet(null, newSection) ? newSection : this.next.get();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: rx.internal.util.IndexedRingBuffer$IndexSection */
    /* loaded from: classes2.dex */
    public static class IndexSection {
        private final AtomicIntegerArray unsafeArray = new AtomicIntegerArray(IndexedRingBuffer.SIZE);
        private final AtomicReference<IndexSection> _next = new AtomicReference<>();

        IndexSection() {
        }

        public int getAndSet(int expected, int newValue) {
            return this.unsafeArray.getAndSet(expected, newValue);
        }

        public void set(int i, int elementIndex) {
            this.unsafeArray.set(i, elementIndex);
        }

        IndexSection getNext() {
            if (this._next.get() != null) {
                return this._next.get();
            }
            IndexSection newSection = new IndexSection();
            return this._next.compareAndSet(null, newSection) ? newSection : this._next.get();
        }
    }
}
