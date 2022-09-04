package org.apache.mina.util;

import java.io.Serializable;
import java.util.Collection;
import java.util.Iterator;
import java.util.Queue;
/* loaded from: classes2.dex */
public class SynchronizedQueue<E> implements Queue<E>, Serializable {
    private static final long serialVersionUID = -1439242290701194806L;

    /* renamed from: q */
    private final Queue<E> f1479q;

    public SynchronizedQueue(Queue<E> q) {
        this.f1479q = q;
    }

    @Override // java.util.Queue, java.util.Collection
    public synchronized boolean add(E e) {
        return this.f1479q.add(e);
    }

    @Override // java.util.Queue
    public synchronized E element() {
        return this.f1479q.element();
    }

    @Override // java.util.Queue
    public synchronized boolean offer(E e) {
        return this.f1479q.offer(e);
    }

    @Override // java.util.Queue
    public synchronized E peek() {
        return this.f1479q.peek();
    }

    @Override // java.util.Queue
    public synchronized E poll() {
        return this.f1479q.poll();
    }

    @Override // java.util.Queue
    public synchronized E remove() {
        return this.f1479q.remove();
    }

    @Override // java.util.Collection
    public synchronized boolean addAll(Collection<? extends E> c) {
        return this.f1479q.addAll(c);
    }

    @Override // java.util.Collection
    public synchronized void clear() {
        this.f1479q.clear();
    }

    @Override // java.util.Collection
    public synchronized boolean contains(Object o) {
        return this.f1479q.contains(o);
    }

    @Override // java.util.Collection
    public synchronized boolean containsAll(Collection<?> c) {
        return this.f1479q.containsAll(c);
    }

    @Override // java.util.Collection
    public synchronized boolean isEmpty() {
        return this.f1479q.isEmpty();
    }

    @Override // java.util.Collection, java.lang.Iterable
    public synchronized Iterator<E> iterator() {
        return this.f1479q.iterator();
    }

    @Override // java.util.Collection
    public synchronized boolean remove(Object o) {
        return this.f1479q.remove(o);
    }

    @Override // java.util.Collection
    public synchronized boolean removeAll(Collection<?> c) {
        return this.f1479q.removeAll(c);
    }

    @Override // java.util.Collection
    public synchronized boolean retainAll(Collection<?> c) {
        return this.f1479q.retainAll(c);
    }

    @Override // java.util.Collection
    public synchronized int size() {
        return this.f1479q.size();
    }

    @Override // java.util.Collection
    public synchronized Object[] toArray() {
        return this.f1479q.toArray();
    }

    @Override // java.util.Collection
    public synchronized <T> T[] toArray(T[] a) {
        return (T[]) this.f1479q.toArray(a);
    }

    @Override // java.util.Collection
    public synchronized boolean equals(Object obj) {
        return this.f1479q.equals(obj);
    }

    @Override // java.util.Collection
    public synchronized int hashCode() {
        return this.f1479q.hashCode();
    }

    public synchronized String toString() {
        return this.f1479q.toString();
    }
}
