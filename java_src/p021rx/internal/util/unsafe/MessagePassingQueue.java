package p021rx.internal.util.unsafe;
/* renamed from: rx.internal.util.unsafe.MessagePassingQueue */
/* loaded from: classes2.dex */
interface MessagePassingQueue<M> {
    boolean isEmpty();

    boolean offer(M m);

    M peek();

    M poll();

    int size();
}
