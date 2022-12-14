package p021rx.internal.util.unsafe;

import p021rx.internal.util.atomic.LinkedQueueNode;
/* compiled from: BaseLinkedQueue.java */
/* renamed from: rx.internal.util.unsafe.BaseLinkedQueueConsumerNodeRef */
/* loaded from: classes2.dex */
abstract class BaseLinkedQueueConsumerNodeRef<E> extends BaseLinkedQueuePad1<E> {
    protected static final long C_NODE_OFFSET = UnsafeAccess.addressOf(BaseLinkedQueueConsumerNodeRef.class, "consumerNode");
    protected LinkedQueueNode<E> consumerNode;

    /* JADX INFO: Access modifiers changed from: protected */
    public final void spConsumerNode(LinkedQueueNode<E> node) {
        this.consumerNode = node;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final LinkedQueueNode<E> lvConsumerNode() {
        return (LinkedQueueNode) UnsafeAccess.UNSAFE.getObjectVolatile(this, C_NODE_OFFSET);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final LinkedQueueNode<E> lpConsumerNode() {
        return this.consumerNode;
    }
}
