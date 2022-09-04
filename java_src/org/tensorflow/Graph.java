package org.tensorflow;

import java.util.Iterator;
/* loaded from: classes2.dex */
public final class Graph implements AutoCloseable {
    private long nativeHandle;
    private final Object nativeHandleLock;
    private int refcount;

    private static native long[] addGradients(long j, String str, long[] jArr, int[] iArr, long[] jArr2, int[] iArr2, long[] jArr3, int[] iArr3);

    private static native long allocate();

    private static native void delete(long j);

    private static native void importGraphDef(long j, byte[] bArr, String str) throws IllegalArgumentException;

    /* JADX INFO: Access modifiers changed from: private */
    public static native long[] nextOperation(long j, int i);

    private static native long operation(long j, String str);

    private static native byte[] toGraphDef(long j);

    static /* synthetic */ int access$206(Graph x0) {
        int i = x0.refcount - 1;
        x0.refcount = i;
        return i;
    }

    static /* synthetic */ int access$208(Graph x0) {
        int i = x0.refcount;
        x0.refcount = i + 1;
        return i;
    }

    public Graph() {
        this.nativeHandleLock = new Object();
        this.refcount = 0;
        this.nativeHandle = allocate();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Graph(long nativeHandle) {
        this.nativeHandleLock = new Object();
        this.refcount = 0;
        this.nativeHandle = nativeHandle;
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        synchronized (this.nativeHandleLock) {
            if (this.nativeHandle != 0) {
                while (this.refcount > 0) {
                    try {
                        this.nativeHandleLock.wait();
                    } catch (InterruptedException e) {
                        Thread.currentThread().interrupt();
                        return;
                    }
                }
                delete(this.nativeHandle);
                this.nativeHandle = 0L;
            }
        }
    }

    public Operation operation(String name) {
        Operation operation;
        synchronized (this.nativeHandleLock) {
            long oph = operation(this.nativeHandle, name);
            operation = oph == 0 ? null : new Operation(this, oph);
        }
        return operation;
    }

    public Iterator<Operation> operations() {
        return new OperationIterator(this);
    }

    public OperationBuilder opBuilder(String type, String name) {
        return new OperationBuilder(this, type, name);
    }

    public void importGraphDef(byte[] graphDef) throws IllegalArgumentException {
        importGraphDef(graphDef, "");
    }

    public void importGraphDef(byte[] graphDef, String prefix) throws IllegalArgumentException {
        if (graphDef == null || prefix == null) {
            throw new IllegalArgumentException("graphDef and prefix cannot be null");
        }
        synchronized (this.nativeHandleLock) {
            importGraphDef(this.nativeHandle, graphDef, prefix);
        }
    }

    public byte[] toGraphDef() {
        byte[] graphDef;
        synchronized (this.nativeHandleLock) {
            graphDef = toGraphDef(this.nativeHandle);
        }
        return graphDef;
    }

    public Output<?>[] addGradients(String prefix, Output<?>[] y, Output<?>[] x, Output<?>[] dx) {
        Output<?>[] dy = new Output[x.length];
        long[] yHandles = new long[y.length];
        int[] yIndices = new int[y.length];
        long[] xHandles = new long[x.length];
        int[] xIndices = new int[x.length];
        long[] dxHandles = null;
        int[] dxIndices = null;
        Reference ref = ref();
        th = null;
        for (int i = 0; i < y.length; i++) {
            try {
                yHandles[i] = y[i].m2op().getUnsafeNativeHandle();
                yIndices[i] = y[i].index();
            } catch (Throwable th) {
                try {
                    throw th;
                } finally {
                    if (ref != null) {
                        if (th != null) {
                            try {
                                ref.close();
                            } catch (Throwable th2) {
                                th.addSuppressed(th2);
                            }
                        } else {
                            ref.close();
                        }
                    }
                }
            }
        }
        for (int i2 = 0; i2 < x.length; i2++) {
            xHandles[i2] = x[i2].m2op().getUnsafeNativeHandle();
            xIndices[i2] = x[i2].index();
        }
        if (dx != null && dx.length > 0) {
            dxHandles = new long[dx.length];
            dxIndices = new int[dx.length];
            for (int i3 = 0; i3 < dx.length; i3++) {
                dxHandles[i3] = dx[i3].m2op().getUnsafeNativeHandle();
                dxIndices[i3] = dx[i3].index();
            }
        }
        long[] dyHandlesAndIndices = addGradients(ref.nativeHandle(), prefix, yHandles, yIndices, xHandles, xIndices, dxHandles, dxIndices);
        int ndy = dyHandlesAndIndices.length >> 1;
        if (ndy != dy.length) {
            throw new IllegalStateException(String.valueOf(ndy) + " gradients were added to the graph when " + dy.length + " were expected");
        }
        int i4 = 0;
        int j = ndy;
        while (i4 < ndy) {
            Operation op = new Operation(this, dyHandlesAndIndices[i4]);
            dy[i4] = new Output<>(op, (int) dyHandlesAndIndices[j]);
            i4++;
            j++;
        }
        return dy;
    }

    public Output<?>[] addGradients(Output<?> y, Output<?>[] x) {
        return addGradients(null, new Output[]{y}, x, null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public class Reference implements AutoCloseable {
        private boolean active;
        final /* synthetic */ Graph this$0;

        private Reference(Graph this$0) {
            boolean z = true;
            this.this$0 = this$0;
            synchronized (this$0.nativeHandleLock) {
                this.active = this$0.nativeHandle == 0 ? false : z;
                if (!this.active) {
                    throw new IllegalStateException("close() has been called on the Graph");
                }
                this.active = true;
                Graph.access$208(this$0);
            }
        }

        @Override // java.lang.AutoCloseable
        public void close() {
            synchronized (this.this$0.nativeHandleLock) {
                if (this.active) {
                    this.active = false;
                    if (Graph.access$206(this.this$0) == 0) {
                        this.this$0.nativeHandleLock.notifyAll();
                    }
                }
            }
        }

        public long nativeHandle() {
            long j;
            synchronized (this.this$0.nativeHandleLock) {
                j = this.active ? this.this$0.nativeHandle : 0L;
            }
            return j;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Reference ref() {
        return new Reference();
    }

    /* loaded from: classes2.dex */
    private static final class OperationIterator implements Iterator<Operation> {
        private final Graph graph;
        private Operation operation = null;
        private int position = 0;

        OperationIterator(Graph g) {
            this.graph = g;
            advance();
        }

        private final void advance() {
            Reference reference = this.graph.ref();
            this.operation = null;
            try {
                long[] nativeReturn = Graph.nextOperation(reference.nativeHandle(), this.position);
                if (nativeReturn != null && nativeReturn[0] != 0) {
                    this.operation = new Operation(this.graph, nativeReturn[0]);
                    this.position = (int) nativeReturn[1];
                }
            } finally {
                reference.close();
            }
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.operation != null;
        }

        @Override // java.util.Iterator
        public Operation next() {
            Operation rhett = this.operation;
            advance();
            return rhett;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException("remove() is unsupported.");
        }
    }

    static {
        TensorFlow.init();
    }
}
