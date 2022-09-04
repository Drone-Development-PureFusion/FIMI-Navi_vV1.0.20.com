package org.tensorflow.lite;

import java.io.File;
import java.nio.ByteBuffer;
import java.nio.MappedByteBuffer;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
public final class Interpreter implements AutoCloseable {
    NativeInterpreterWrapper wrapper;

    public Interpreter(File modelFile) {
        if (modelFile != null) {
            this.wrapper = new NativeInterpreterWrapper(modelFile.getAbsolutePath());
        }
    }

    public Interpreter(File modelFile, int numThreads) {
        if (modelFile != null) {
            this.wrapper = new NativeInterpreterWrapper(modelFile.getAbsolutePath(), numThreads);
        }
    }

    public Interpreter(ByteBuffer byteBuffer) {
        this.wrapper = new NativeInterpreterWrapper(byteBuffer);
    }

    public Interpreter(ByteBuffer byteBuffer, int numThreads) {
        this.wrapper = new NativeInterpreterWrapper(byteBuffer, numThreads);
    }

    public Interpreter(MappedByteBuffer mappedByteBuffer) {
        this.wrapper = new NativeInterpreterWrapper(mappedByteBuffer);
    }

    public Interpreter(MappedByteBuffer mappedByteBuffer, int numThreads) {
        this.wrapper = new NativeInterpreterWrapper(mappedByteBuffer, numThreads);
    }

    public void run(Object input, Object output) {
        Object[] inputs = {input};
        Map<Integer, Object> outputs = new HashMap<>();
        outputs.put(0, output);
        runForMultipleInputsOutputs(inputs, outputs);
    }

    public void runForMultipleInputsOutputs(Object[] inputs, Map<Integer, Object> outputs) {
        if (this.wrapper == null) {
            throw new IllegalStateException("Internal error: The Interpreter has already been closed.");
        }
        this.wrapper.run(inputs, outputs);
    }

    public void resizeInput(int idx, int[] dims) {
        if (this.wrapper == null) {
            throw new IllegalStateException("Internal error: The Interpreter has already been closed.");
        }
        this.wrapper.resizeInput(idx, dims);
    }

    public int getInputIndex(String opName) {
        if (this.wrapper == null) {
            throw new IllegalStateException("Internal error: The Interpreter has already been closed.");
        }
        return this.wrapper.getInputIndex(opName);
    }

    public int getOutputIndex(String opName) {
        if (this.wrapper == null) {
            throw new IllegalStateException("Internal error: The Interpreter has already been closed.");
        }
        return this.wrapper.getOutputIndex(opName);
    }

    public Long getLastNativeInferenceDurationNanoseconds() {
        if (this.wrapper == null) {
            throw new IllegalStateException("Internal error: The interpreter has already been closed.");
        }
        return this.wrapper.getLastNativeInferenceDurationNanoseconds();
    }

    public void setUseNNAPI(boolean useNNAPI) {
        if (this.wrapper != null) {
            this.wrapper.setUseNNAPI(useNNAPI);
            return;
        }
        throw new IllegalStateException("Internal error: NativeInterpreterWrapper has already been closed.");
    }

    public void setNumThreads(int numThreads) {
        if (this.wrapper == null) {
            throw new IllegalStateException("The interpreter has already been closed.");
        }
        this.wrapper.setNumThreads(numThreads);
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        if (this.wrapper != null) {
            this.wrapper.close();
            this.wrapper = null;
        }
    }

    protected void finalize() throws Throwable {
        try {
            close();
        } finally {
            super.finalize();
        }
    }
}
