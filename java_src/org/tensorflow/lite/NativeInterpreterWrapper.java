package org.tensorflow.lite;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.MappedByteBuffer;
import java.util.Arrays;
import java.util.HashMap;
import java.util.Map;
/* loaded from: classes2.dex */
final class NativeInterpreterWrapper implements AutoCloseable {
    private static final int ERROR_BUFFER_SIZE = 512;
    private long errorHandle;
    private long inferenceDurationNanoseconds;
    private final Tensor[] inputTensors;
    private Map<String, Integer> inputsIndexes;
    private long interpreterHandle;
    private boolean isMemoryAllocated;
    private ByteBuffer modelByteBuffer;
    private long modelHandle;
    private final Tensor[] outputTensors;
    private Map<String, Integer> outputsIndexes;

    private static native long allocateTensors(long j, long j2);

    private static native long createErrorReporter(int i);

    private static native long createInterpreter(long j, long j2, int i);

    private static native long createModel(String str, long j);

    private static native long createModelWithBuffer(ByteBuffer byteBuffer, long j);

    private static native void delete(long j, long j2, long j3);

    private static native int getInputCount(long j);

    private static native String[] getInputNames(long j);

    private static native long getInputTensor(long j, int i);

    private static native int getOutputCount(long j);

    private static native int getOutputDataType(long j, int i);

    private static native String[] getOutputNames(long j);

    private static native float getOutputQuantizationScale(long j, int i);

    private static native int getOutputQuantizationZeroPoint(long j, int i);

    private static native long getOutputTensor(long j, int i);

    private static native void numThreads(long j, int i);

    private static native boolean resizeInput(long j, long j2, int i, int[] iArr);

    private static native boolean run(long j, long j2);

    private static native void useNNAPI(long j, boolean z);

    /* JADX INFO: Access modifiers changed from: package-private */
    public NativeInterpreterWrapper(String modelPath) {
        this(modelPath, -1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public NativeInterpreterWrapper(String modelPath, int numThreads) {
        this.inferenceDurationNanoseconds = -1L;
        this.isMemoryAllocated = false;
        this.errorHandle = createErrorReporter(512);
        this.modelHandle = createModel(modelPath, this.errorHandle);
        this.interpreterHandle = createInterpreter(this.modelHandle, this.errorHandle, numThreads);
        this.isMemoryAllocated = true;
        this.inputTensors = new Tensor[getInputCount(this.interpreterHandle)];
        this.outputTensors = new Tensor[getOutputCount(this.interpreterHandle)];
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public NativeInterpreterWrapper(ByteBuffer byteBuffer) {
        this(byteBuffer, -1);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public NativeInterpreterWrapper(ByteBuffer buffer, int numThreads) {
        this.inferenceDurationNanoseconds = -1L;
        this.isMemoryAllocated = false;
        if (buffer == null || (!(buffer instanceof MappedByteBuffer) && (!buffer.isDirect() || buffer.order() != ByteOrder.nativeOrder()))) {
            throw new IllegalArgumentException("Model ByteBuffer should be either a MappedByteBuffer of the model file, or a direct ByteBuffer using ByteOrder.nativeOrder() which contains bytes of model content.");
        }
        this.modelByteBuffer = buffer;
        this.errorHandle = createErrorReporter(512);
        this.modelHandle = createModelWithBuffer(this.modelByteBuffer, this.errorHandle);
        this.interpreterHandle = createInterpreter(this.modelHandle, this.errorHandle, numThreads);
        this.isMemoryAllocated = true;
        this.inputTensors = new Tensor[getInputCount(this.interpreterHandle)];
        this.outputTensors = new Tensor[getOutputCount(this.interpreterHandle)];
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        delete(this.errorHandle, this.modelHandle, this.interpreterHandle);
        this.errorHandle = 0L;
        this.modelHandle = 0L;
        this.interpreterHandle = 0L;
        this.modelByteBuffer = null;
        this.inputsIndexes = null;
        this.outputsIndexes = null;
        this.isMemoryAllocated = false;
        Arrays.fill(this.inputTensors, (Object) null);
        Arrays.fill(this.outputTensors, (Object) null);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void run(Object[] inputs, Map<Integer, Object> outputs) {
        this.inferenceDurationNanoseconds = -1L;
        if (inputs == null || inputs.length == 0) {
            throw new IllegalArgumentException("Input error: Inputs should not be null or empty.");
        }
        if (outputs == null || outputs.isEmpty()) {
            throw new IllegalArgumentException("Input error: Outputs should not be null or empty.");
        }
        for (int i = 0; i < inputs.length; i++) {
            Tensor tensor = getInputTensor(i);
            int[] newShape = tensor.getInputShapeIfDifferent(inputs[i]);
            if (newShape != null) {
                resizeInput(i, newShape);
            }
        }
        if (!this.isMemoryAllocated) {
            allocateTensors(this.interpreterHandle, this.errorHandle);
            this.isMemoryAllocated = true;
            Arrays.fill(this.outputTensors, (Object) null);
        }
        for (int i2 = 0; i2 < inputs.length; i2++) {
            getInputTensor(i2).setTo(inputs[i2]);
        }
        long inferenceStartNanos = System.nanoTime();
        run(this.interpreterHandle, this.errorHandle);
        long inferenceDurationNanoseconds = System.nanoTime() - inferenceStartNanos;
        for (Map.Entry<Integer, Object> output : outputs.entrySet()) {
            getOutputTensor(output.getKey().intValue()).copyTo(output.getValue());
        }
        this.inferenceDurationNanoseconds = inferenceDurationNanoseconds;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void resizeInput(int idx, int[] dims) {
        if (resizeInput(this.interpreterHandle, this.errorHandle, idx, dims)) {
            this.isMemoryAllocated = false;
            this.inputTensors[idx] = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setUseNNAPI(boolean useNNAPI) {
        useNNAPI(this.interpreterHandle, useNNAPI);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setNumThreads(int numThreads) {
        numThreads(this.interpreterHandle, numThreads);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getInputIndex(String name) {
        if (this.inputsIndexes == null) {
            String[] names = getInputNames(this.interpreterHandle);
            this.inputsIndexes = new HashMap();
            if (names != null) {
                for (int i = 0; i < names.length; i++) {
                    this.inputsIndexes.put(names[i], Integer.valueOf(i));
                }
            }
        }
        if (this.inputsIndexes.containsKey(name)) {
            return this.inputsIndexes.get(name).intValue();
        }
        throw new IllegalArgumentException(String.format("Input error: '%s' is not a valid name for any input. Names of inputs and their indexes are %s", name, this.inputsIndexes.toString()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int getOutputIndex(String name) {
        if (this.outputsIndexes == null) {
            String[] names = getOutputNames(this.interpreterHandle);
            this.outputsIndexes = new HashMap();
            if (names != null) {
                for (int i = 0; i < names.length; i++) {
                    this.outputsIndexes.put(names[i], Integer.valueOf(i));
                }
            }
        }
        if (this.outputsIndexes.containsKey(name)) {
            return this.outputsIndexes.get(name).intValue();
        }
        throw new IllegalArgumentException(String.format("Input error: '%s' is not a valid name for any output. Names of outputs and their indexes are %s", name, this.outputsIndexes.toString()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Long getLastNativeInferenceDurationNanoseconds() {
        if (this.inferenceDurationNanoseconds < 0) {
            return null;
        }
        return Long.valueOf(this.inferenceDurationNanoseconds);
    }

    int getOutputQuantizationZeroPoint(int index) {
        return getOutputQuantizationZeroPoint(this.interpreterHandle, index);
    }

    float getOutputQuantizationScale(int index) {
        return getOutputQuantizationScale(this.interpreterHandle, index);
    }

    Tensor getInputTensor(int index) {
        if (index < 0 || index >= this.inputTensors.length) {
            throw new IllegalArgumentException("Invalid input Tensor index: " + index);
        }
        Tensor inputTensor = this.inputTensors[index];
        if (inputTensor == null) {
            Tensor[] tensorArr = this.inputTensors;
            Tensor inputTensor2 = Tensor.fromHandle(getInputTensor(this.interpreterHandle, index));
            tensorArr[index] = inputTensor2;
            return inputTensor2;
        }
        return inputTensor;
    }

    Tensor getOutputTensor(int index) {
        if (index < 0 || index >= this.outputTensors.length) {
            throw new IllegalArgumentException("Invalid output Tensor index: " + index);
        }
        Tensor outputTensor = this.outputTensors[index];
        if (outputTensor == null) {
            Tensor[] tensorArr = this.outputTensors;
            Tensor outputTensor2 = Tensor.fromHandle(getOutputTensor(this.interpreterHandle, index));
            tensorArr[index] = outputTensor2;
            return outputTensor2;
        }
        return outputTensor;
    }

    static {
        TensorFlowLite.init();
    }
}
