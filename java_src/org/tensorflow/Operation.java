package org.tensorflow;

import org.tensorflow.Graph;
/* loaded from: classes2.dex */
public final class Operation {
    private final Graph graph;
    private final long unsafeNativeHandle;

    private static native int dtype(long j, long j2, int i);

    private static native int inputListLength(long j, String str);

    private static native String name(long j);

    private static native int numOutputs(long j);

    private static native int outputListLength(long j, String str);

    private static native long[] shape(long j, long j2, int i);

    private static native String type(long j);

    /* JADX INFO: Access modifiers changed from: package-private */
    public Operation(Graph g, long unsafeNativeHandle) {
        this.graph = g;
        this.unsafeNativeHandle = unsafeNativeHandle;
    }

    public String name() {
        Graph.Reference r = this.graph.ref();
        try {
            return name(this.unsafeNativeHandle);
        } finally {
            r.close();
        }
    }

    public String type() {
        Graph.Reference r = this.graph.ref();
        try {
            return type(this.unsafeNativeHandle);
        } finally {
            r.close();
        }
    }

    public int numOutputs() {
        Graph.Reference r = this.graph.ref();
        try {
            return numOutputs(this.unsafeNativeHandle);
        } finally {
            r.close();
        }
    }

    public int outputListLength(String name) {
        Graph.Reference r = this.graph.ref();
        try {
            return outputListLength(this.unsafeNativeHandle, name);
        } finally {
            r.close();
        }
    }

    public Output<?>[] outputList(int idx, int length) {
        Output<?>[] outputs = new Output[length];
        for (int i = 0; i < length; i++) {
            outputs[i] = output(idx + i);
        }
        return outputs;
    }

    public <T> Output<T> output(int idx) {
        return new Output<>(this, idx);
    }

    public int hashCode() {
        return Long.valueOf(this.unsafeNativeHandle).hashCode();
    }

    public boolean equals(Object o) {
        boolean z = true;
        if (o == this) {
            return true;
        }
        if (!(o instanceof Operation)) {
            return false;
        }
        Operation that = (Operation) o;
        if (this.graph != that.graph) {
            return false;
        }
        Graph.Reference r = this.graph.ref();
        try {
            if (this.unsafeNativeHandle != that.unsafeNativeHandle) {
                z = false;
            }
            return z;
        } finally {
            r.close();
        }
    }

    public String toString() {
        return String.format("<%s '%s'>", type(), name());
    }

    public int inputListLength(String name) {
        Graph.Reference r = this.graph.ref();
        try {
            return inputListLength(this.unsafeNativeHandle, name);
        } finally {
            r.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getUnsafeNativeHandle() {
        return this.unsafeNativeHandle;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long[] shape(int output) {
        Graph.Reference r = this.graph.ref();
        try {
            return shape(r.nativeHandle(), this.unsafeNativeHandle, output);
        } finally {
            r.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public DataType dtype(int output) {
        Graph.Reference r = this.graph.ref();
        try {
            return DataType.fromC(dtype(r.nativeHandle(), this.unsafeNativeHandle, output));
        } finally {
            r.close();
        }
    }
}
