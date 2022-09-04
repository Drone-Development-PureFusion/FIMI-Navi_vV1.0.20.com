package p021rx.internal.util.unsafe;

import p021rx.internal.util.atomic.LinkedQueueNode;
/* renamed from: rx.internal.util.unsafe.SpscLinkedQueue */
/* loaded from: classes2.dex */
public final class SpscLinkedQueue<E> extends BaseLinkedQueue<E> {
    public SpscLinkedQueue() {
        spProducerNode(new LinkedQueueNode<>());
        spConsumerNode(this.producerNode);
        this.consumerNode.soNext(null);
    }

    @Override // java.util.Queue
    public boolean offer(E nextValue) {
        if (nextValue == null) {
            throw new NullPointerException("null elements not allowed");
        }
        LinkedQueueNode<E> nextNode = new LinkedQueueNode<>(nextValue);
        this.producerNode.soNext(nextNode);
        this.producerNode = nextNode;
        return true;
    }

    @Override // java.util.Queue
    public E poll() {
        LinkedQueueNode<E> nextNode = this.consumerNode.lvNext();
        if (nextNode != null) {
            E nextValue = nextNode.getAndNullValue();
            this.consumerNode = nextNode;
            return nextValue;
        }
        return null;
    }

    @Override // java.util.Queue
    public E peek() {
        LinkedQueueNode<E> nextNode = this.consumerNode.lvNext();
        if (nextNode != null) {
            return nextNode.lpValue();
        }
        return null;
    }
}
