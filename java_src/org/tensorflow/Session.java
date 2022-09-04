package org.tensorflow;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.tensorflow.Graph;
/* loaded from: classes2.dex */
public final class Session implements AutoCloseable {
    private final Graph graph;
    private final Graph.Reference graphRef;
    private long nativeHandle;
    private final Object nativeHandleLock;
    private int numActiveRuns;

    /* loaded from: classes2.dex */
    public static final class Run {
        public byte[] metadata;
        public List<Tensor<?>> outputs;
    }

    private static native long allocate(long j);

    private static native long allocate2(long j, String str, byte[] bArr);

    private static native void delete(long j);

    /* JADX INFO: Access modifiers changed from: private */
    public static native byte[] run(long j, byte[] bArr, long[] jArr, long[] jArr2, int[] iArr, long[] jArr3, int[] iArr2, long[] jArr4, boolean z, long[] jArr5);

    static /* synthetic */ int access$304(Session x0) {
        int i = x0.numActiveRuns + 1;
        x0.numActiveRuns = i;
        return i;
    }

    static /* synthetic */ int access$306(Session x0) {
        int i = x0.numActiveRuns - 1;
        x0.numActiveRuns = i;
        return i;
    }

    public Session(Graph g) {
        this(g, (byte[]) null);
    }

    public Session(Graph g, byte[] config) {
        this.nativeHandleLock = new Object();
        this.graph = g;
        Graph.Reference r = g.ref();
        try {
            this.nativeHandle = config == null ? allocate(r.nativeHandle()) : allocate2(r.nativeHandle(), null, config);
            this.graphRef = g.ref();
        } finally {
            r.close();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Session(Graph g, long nativeHandle) {
        this.nativeHandleLock = new Object();
        this.graph = g;
        this.nativeHandle = nativeHandle;
        this.graphRef = g.ref();
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        this.graphRef.close();
        synchronized (this.nativeHandleLock) {
            if (this.nativeHandle != 0) {
                while (this.numActiveRuns > 0) {
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

    /* loaded from: classes2.dex */
    public final class Runner {
        private ArrayList<Output<?>> inputs = new ArrayList<>();
        private ArrayList<Tensor<?>> inputTensors = new ArrayList<>();
        private ArrayList<Output<?>> outputs = new ArrayList<>();
        private ArrayList<Operation> targets = new ArrayList<>();
        private byte[] runOptions = null;

        public Runner() {
        }

        public Runner feed(String operation, Tensor<?> t) {
            return feed(parseOutput(operation), t);
        }

        public Runner feed(String operation, int index, Tensor<?> t) {
            Operation op = operationByName(operation);
            if (op != null) {
                this.inputs.add(op.output(index));
                this.inputTensors.add(t);
            }
            return this;
        }

        public Runner feed(Output<?> o, Tensor<?> t) {
            this.inputs.add(o);
            this.inputTensors.add(t);
            return this;
        }

        public Runner fetch(String operation) {
            return fetch(parseOutput(operation));
        }

        public Runner fetch(String operation, int index) {
            Operation op = operationByName(operation);
            if (op != null) {
                this.outputs.add(op.output(index));
            }
            return this;
        }

        public Runner fetch(Output<?> output) {
            this.outputs.add(output);
            return this;
        }

        public Runner fetch(Operand<?> operand) {
            return fetch(operand.asOutput());
        }

        public Runner addTarget(String operation) {
            Operation op = operationByName(operation);
            if (op != null) {
                this.targets.add(op);
            }
            return this;
        }

        public Runner addTarget(Operation operation) {
            this.targets.add(operation);
            return this;
        }

        public Runner addTarget(Operand<?> operand) {
            return addTarget(operand.asOutput().m2op());
        }

        public Runner setOptions(byte[] options) {
            this.runOptions = options;
            return this;
        }

        public List<Tensor<?>> run() {
            return runHelper(false).outputs;
        }

        public Run runAndFetchMetadata() {
            return runHelper(true);
        }

        private Run runHelper(boolean wantMetadata) {
            long[] inputTensorHandles = new long[this.inputTensors.size()];
            long[] inputOpHandles = new long[this.inputs.size()];
            int[] inputOpIndices = new int[this.inputs.size()];
            long[] outputOpHandles = new long[this.outputs.size()];
            int[] outputOpIndices = new int[this.outputs.size()];
            long[] targetOpHandles = new long[this.targets.size()];
            long[] outputTensorHandles = new long[this.outputs.size()];
            int idx = 0;
            Iterator<Tensor<?>> it = this.inputTensors.iterator();
            while (it.hasNext()) {
                Tensor<?> t = it.next();
                inputTensorHandles[idx] = t.getNativeHandle();
                idx++;
            }
            int idx2 = 0;
            Iterator<Output<?>> it2 = this.inputs.iterator();
            while (it2.hasNext()) {
                Output<?> o = it2.next();
                inputOpHandles[idx2] = o.m2op().getUnsafeNativeHandle();
                inputOpIndices[idx2] = o.index();
                idx2++;
            }
            int idx3 = 0;
            Iterator<Output<?>> it3 = this.outputs.iterator();
            while (it3.hasNext()) {
                Output<?> o2 = it3.next();
                outputOpHandles[idx3] = o2.m2op().getUnsafeNativeHandle();
                outputOpIndices[idx3] = o2.index();
                idx3++;
            }
            int idx4 = 0;
            Iterator<Operation> it4 = this.targets.iterator();
            while (it4.hasNext()) {
                Operation op = it4.next();
                targetOpHandles[idx4] = op.getUnsafeNativeHandle();
                idx4++;
            }
            Reference runRef = new Reference();
            try {
                byte[] metadata = Session.run(Session.this.nativeHandle, this.runOptions, inputTensorHandles, inputOpHandles, inputOpIndices, outputOpHandles, outputOpIndices, targetOpHandles, wantMetadata, outputTensorHandles);
                runRef.close();
                List<Tensor<?>> outputs = new ArrayList<>();
                for (long h : outputTensorHandles) {
                    try {
                        outputs.add(Tensor.fromHandle(h));
                    } catch (Exception e) {
                        for (Tensor<?> t2 : outputs) {
                            t2.close();
                        }
                        outputs.clear();
                        throw e;
                    }
                }
                Run ret = new Run();
                ret.outputs = outputs;
                ret.metadata = metadata;
                return ret;
            } catch (Throwable th) {
                runRef.close();
                throw th;
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* loaded from: classes2.dex */
        public class Reference implements AutoCloseable {
            public Reference() {
                synchronized (Session.this.nativeHandleLock) {
                    if (Session.this.nativeHandle == 0) {
                        throw new IllegalStateException("run() cannot be called on the Session after close()");
                    }
                    Session.access$304(Session.this);
                }
            }

            @Override // java.lang.AutoCloseable
            public void close() {
                synchronized (Session.this.nativeHandleLock) {
                    if (Session.this.nativeHandle != 0) {
                        if (Session.access$306(Session.this) == 0) {
                            Session.this.nativeHandleLock.notifyAll();
                        }
                    }
                }
            }
        }

        private Operation operationByName(String opName) {
            Operation op = Session.this.graph.operation(opName);
            if (op == null) {
                throw new IllegalArgumentException("No Operation named [" + opName + "] in the Graph");
            }
            return op;
        }

        private Output<?> parseOutput(String opName) {
            int colon = opName.lastIndexOf(58);
            if (colon == -1 || colon == opName.length() - 1) {
                return new Output<>(operationByName(opName), 0);
            }
            try {
                String op = opName.substring(0, colon);
                int index = Integer.parseInt(opName.substring(colon + 1));
                return new Output<>(operationByName(op), index);
            } catch (NumberFormatException e) {
                return new Output<>(operationByName(opName), 0);
            }
        }
    }

    public Runner runner() {
        return new Runner();
    }
}
