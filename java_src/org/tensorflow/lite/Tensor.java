package org.tensorflow.lite;

import java.lang.reflect.Array;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.Arrays;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public final class Tensor {
    private final DataType dtype;
    private final long nativeHandle;
    private final int[] shapeCopy;

    private static native ByteBuffer buffer(long j);

    private static native int dtype(long j);

    private static native int numBytes(long j);

    private static native void readMultiDimensionalArray(long j, Object obj);

    private static native int[] shape(long j);

    private static native void writeDirectBuffer(long j, ByteBuffer byteBuffer);

    private static native void writeMultiDimensionalArray(long j, Object obj);

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Tensor fromHandle(long nativeHandle) {
        return new Tensor(nativeHandle);
    }

    public DataType dataType() {
        return this.dtype;
    }

    public int numBytes() {
        return numBytes(this.nativeHandle);
    }

    public int[] shape() {
        return this.shapeCopy;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void setTo(Object src) {
        throwExceptionIfTypeIsIncompatible(src);
        if (isByteBuffer(src)) {
            ByteBuffer srcBuffer = (ByteBuffer) src;
            if (srcBuffer.isDirect() && srcBuffer.order() == ByteOrder.nativeOrder()) {
                writeDirectBuffer(this.nativeHandle, srcBuffer);
                return;
            } else {
                buffer().put(srcBuffer);
                return;
            }
        }
        writeMultiDimensionalArray(this.nativeHandle, src);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Object copyTo(Object dst) {
        throwExceptionIfTypeIsIncompatible(dst);
        if (dst instanceof ByteBuffer) {
            ByteBuffer dstByteBuffer = (ByteBuffer) dst;
            dstByteBuffer.put(buffer());
        } else {
            readMultiDimensionalArray(this.nativeHandle, dst);
        }
        return dst;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int[] getInputShapeIfDifferent(Object input) {
        if (isByteBuffer(input)) {
            return null;
        }
        int[] inputShape = shapeOf(input);
        if (!Arrays.equals(this.shapeCopy, inputShape)) {
            return inputShape;
        }
        return null;
    }

    static DataType dataTypeOf(Object o) {
        if (o != null) {
            Class<?> c = o.getClass();
            while (c.isArray()) {
                c = c.getComponentType();
            }
            if (Float.TYPE.equals(c)) {
                return DataType.FLOAT32;
            }
            if (Integer.TYPE.equals(c)) {
                return DataType.INT32;
            }
            if (Byte.TYPE.equals(c)) {
                return DataType.UINT8;
            }
            if (Long.TYPE.equals(c)) {
                return DataType.INT64;
            }
        }
        throw new IllegalArgumentException("DataType error: cannot resolve DataType of " + o.getClass().getName());
    }

    static int[] shapeOf(Object o) {
        int size = numDimensions(o);
        int[] dimensions = new int[size];
        fillShape(o, 0, dimensions);
        return dimensions;
    }

    static int numDimensions(Object o) {
        if (o == null || !o.getClass().isArray()) {
            return 0;
        }
        if (Array.getLength(o) == 0) {
            throw new IllegalArgumentException("Array lengths cannot be 0.");
        }
        return numDimensions(Array.get(o, 0)) + 1;
    }

    static void fillShape(Object o, int dim, int[] shape) {
        if (shape != null && dim != shape.length) {
            int len = Array.getLength(o);
            if (shape[dim] == 0) {
                shape[dim] = len;
            } else if (shape[dim] != len) {
                throw new IllegalArgumentException(String.format("Mismatched lengths (%d and %d) in dimension %d", Integer.valueOf(shape[dim]), Integer.valueOf(len), Integer.valueOf(dim)));
            }
            for (int i = 0; i < len; i++) {
                fillShape(Array.get(o, i), dim + 1, shape);
            }
        }
    }

    private void throwExceptionIfTypeIsIncompatible(Object o) {
        if (isByteBuffer(o)) {
            ByteBuffer oBuffer = (ByteBuffer) o;
            if (oBuffer.capacity() != numBytes()) {
                throw new IllegalArgumentException(String.format("Cannot convert between a TensorFlowLite buffer with %d bytes and a ByteBuffer with %d bytes.", Integer.valueOf(numBytes()), Integer.valueOf(oBuffer.capacity())));
            }
            return;
        }
        DataType oType = dataTypeOf(o);
        if (oType != this.dtype) {
            throw new IllegalArgumentException(String.format("Cannot convert between a TensorFlowLite tensor with type %s and a Java object of type %s (which is compatible with the TensorFlowLite type %s).", this.dtype, o.getClass().getName(), oType));
        }
        int[] oShape = shapeOf(o);
        if (!Arrays.equals(oShape, this.shapeCopy)) {
            throw new IllegalArgumentException(String.format("Cannot copy between a TensorFlowLite tensor with shape %s and a Java object with shape %s.", Arrays.toString(this.shapeCopy), Arrays.toString(oShape)));
        }
    }

    private static boolean isByteBuffer(Object o) {
        return o instanceof ByteBuffer;
    }

    private Tensor(long nativeHandle) {
        this.nativeHandle = nativeHandle;
        this.dtype = DataType.fromNumber(dtype(nativeHandle));
        this.shapeCopy = shape(nativeHandle);
    }

    private ByteBuffer buffer() {
        return buffer(this.nativeHandle).order(ByteOrder.nativeOrder());
    }

    static {
        TensorFlowLite.init();
    }
}
