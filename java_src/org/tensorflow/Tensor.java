package org.tensorflow;

import java.lang.reflect.Array;
import java.nio.Buffer;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.DoubleBuffer;
import java.nio.FloatBuffer;
import java.nio.IntBuffer;
import java.nio.LongBuffer;
import java.util.Arrays;
import java.util.HashMap;
/* loaded from: classes2.dex */
public final class Tensor<T> implements AutoCloseable {
    private static HashMap<Class<?>, DataType> classDataTypes = new HashMap<>();
    private DataType dtype;
    private long nativeHandle;
    private long[] shapeCopy = null;

    private static native long allocate(int i, long[] jArr, long j);

    private static native long allocateNonScalarBytes(long[] jArr, Object[] objArr);

    private static native long allocateScalarBytes(byte[] bArr);

    private static native ByteBuffer buffer(long j);

    private static native void delete(long j);

    private static native int dtype(long j);

    private static native void readNDArray(long j, Object obj);

    private static native boolean scalarBoolean(long j);

    private static native byte[] scalarBytes(long j);

    private static native double scalarDouble(long j);

    private static native float scalarFloat(long j);

    private static native int scalarInt(long j);

    private static native long scalarLong(long j);

    private static native void setValue(long j, Object obj);

    private static native long[] shape(long j);

    public static <T> Tensor<T> create(Object obj, Class<T> type) {
        DataType dtype = DataType.fromClass(type);
        if (!objectCompatWithType(obj, dtype)) {
            throw new IllegalArgumentException("DataType of object does not match T (expected " + dtype + ", got " + dataTypeOf(obj) + ")");
        }
        return (Tensor<T>) create(obj, dtype);
    }

    public static Tensor<?> create(Object obj) {
        return create(obj, dataTypeOf(obj));
    }

    private static Tensor<?> create(Object obj, DataType dtype) {
        Tensor<?> t = new Tensor<>(dtype);
        ((Tensor) t).shapeCopy = new long[numDimensions(obj, dtype)];
        fillShape(obj, 0, ((Tensor) t).shapeCopy);
        if (((Tensor) t).dtype != DataType.STRING) {
            int byteSize = elemByteSize(((Tensor) t).dtype) * numElements(((Tensor) t).shapeCopy);
            ((Tensor) t).nativeHandle = allocate(((Tensor) t).dtype.m4c(), ((Tensor) t).shapeCopy, byteSize);
            setValue(((Tensor) t).nativeHandle, obj);
        } else if (((Tensor) t).shapeCopy.length != 0) {
            ((Tensor) t).nativeHandle = allocateNonScalarBytes(((Tensor) t).shapeCopy, (Object[]) obj);
        } else {
            ((Tensor) t).nativeHandle = allocateScalarBytes((byte[]) obj);
        }
        return t;
    }

    public static Tensor<Integer> create(long[] shape, IntBuffer data) {
        Tensor<Integer> t = allocateForBuffer(DataType.INT32, shape, data.remaining());
        t.buffer().asIntBuffer().put(data);
        return t;
    }

    public static Tensor<Float> create(long[] shape, FloatBuffer data) {
        Tensor<Float> t = allocateForBuffer(DataType.FLOAT, shape, data.remaining());
        t.buffer().asFloatBuffer().put(data);
        return t;
    }

    public static Tensor<Double> create(long[] shape, DoubleBuffer data) {
        Tensor<Double> t = allocateForBuffer(DataType.DOUBLE, shape, data.remaining());
        t.buffer().asDoubleBuffer().put(data);
        return t;
    }

    public static Tensor<Long> create(long[] shape, LongBuffer data) {
        Tensor<Long> t = allocateForBuffer(DataType.INT64, shape, data.remaining());
        t.buffer().asLongBuffer().put(data);
        return t;
    }

    public static <T> Tensor<T> create(Class<T> type, long[] shape, ByteBuffer data) {
        Tensor<T> ret = (Tensor<T>) create(DataType.fromClass(type), shape, data);
        return ret;
    }

    private static Tensor<?> create(DataType dtype, long[] shape, ByteBuffer data) {
        int nremaining;
        if (dtype != DataType.STRING) {
            int elemBytes = elemByteSize(dtype);
            if (data.remaining() % elemBytes != 0) {
                throw new IllegalArgumentException(String.format("ByteBuffer with %d bytes is not compatible with a %s Tensor (%d bytes/element)", Integer.valueOf(data.remaining()), dtype.toString(), Integer.valueOf(elemBytes)));
            }
            nremaining = data.remaining() / elemBytes;
        } else {
            nremaining = data.remaining();
        }
        Tensor<?> t = allocateForBuffer(dtype, shape, nremaining);
        t.buffer().put(data);
        return t;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <U> Tensor<U> expect(Class<U> type) {
        DataType dt = DataType.fromClass(type);
        if (!dt.equals(this.dtype)) {
            throw new IllegalArgumentException("Cannot cast from tensor of " + this.dtype + " to tensor of " + dt);
        }
        return this;
    }

    private static <T> Tensor<T> allocateForBuffer(DataType dataType, long[] shape, int nBuffered) {
        int nbytes;
        int nflattened = numElements(shape);
        if (dataType != DataType.STRING) {
            if (nBuffered != nflattened) {
                throw incompatibleBuffer(nBuffered, shape);
            }
            nbytes = nflattened * elemByteSize(dataType);
        } else {
            nbytes = nBuffered;
        }
        Tensor<T> t = new Tensor<>(dataType);
        ((Tensor) t).shapeCopy = Arrays.copyOf(shape, shape.length);
        ((Tensor) t).nativeHandle = allocate(((Tensor) t).dtype.m4c(), ((Tensor) t).shapeCopy, nbytes);
        return t;
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        if (this.nativeHandle != 0) {
            delete(this.nativeHandle);
            this.nativeHandle = 0L;
        }
    }

    public DataType dataType() {
        return this.dtype;
    }

    public int numDimensions() {
        return this.shapeCopy.length;
    }

    public int numBytes() {
        return buffer().remaining();
    }

    public int numElements() {
        return numElements(this.shapeCopy);
    }

    public long[] shape() {
        return this.shapeCopy;
    }

    public float floatValue() {
        return scalarFloat(this.nativeHandle);
    }

    public double doubleValue() {
        return scalarDouble(this.nativeHandle);
    }

    public int intValue() {
        return scalarInt(this.nativeHandle);
    }

    public long longValue() {
        return scalarLong(this.nativeHandle);
    }

    public boolean booleanValue() {
        return scalarBoolean(this.nativeHandle);
    }

    public byte[] bytesValue() {
        return scalarBytes(this.nativeHandle);
    }

    public <U> U copyTo(U dst) {
        throwExceptionIfTypeIsIncompatible(dst);
        readNDArray(this.nativeHandle, dst);
        return dst;
    }

    public void writeTo(IntBuffer dst) {
        if (this.dtype != DataType.INT32) {
            throw incompatibleBuffer(dst, this.dtype);
        }
        ByteBuffer src = buffer();
        dst.put(src.asIntBuffer());
    }

    public void writeTo(FloatBuffer dst) {
        if (this.dtype != DataType.FLOAT) {
            throw incompatibleBuffer(dst, this.dtype);
        }
        ByteBuffer src = buffer();
        dst.put(src.asFloatBuffer());
    }

    public void writeTo(DoubleBuffer dst) {
        if (this.dtype != DataType.DOUBLE) {
            throw incompatibleBuffer(dst, this.dtype);
        }
        ByteBuffer src = buffer();
        dst.put(src.asDoubleBuffer());
    }

    public void writeTo(LongBuffer dst) {
        if (this.dtype != DataType.INT64) {
            throw incompatibleBuffer(dst, this.dtype);
        }
        ByteBuffer src = buffer();
        dst.put(src.asLongBuffer());
    }

    public void writeTo(ByteBuffer dst) {
        ByteBuffer src = buffer();
        dst.put(src);
    }

    public String toString() {
        return String.format("%s tensor with shape %s", this.dtype.toString(), Arrays.toString(shape()));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Tensor<?> fromHandle(long handle) {
        Tensor<?> t = new Tensor<>(DataType.fromC(dtype(handle)));
        ((Tensor) t).shapeCopy = shape(handle);
        ((Tensor) t).nativeHandle = handle;
        return t;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getNativeHandle() {
        return this.nativeHandle;
    }

    private Tensor(DataType t) {
        this.dtype = t;
    }

    private ByteBuffer buffer() {
        return buffer(this.nativeHandle).order(ByteOrder.nativeOrder());
    }

    private static IllegalArgumentException incompatibleBuffer(Buffer buf, DataType dataType) {
        return new IllegalArgumentException(String.format("cannot use %s with Tensor of type %s", buf.getClass().getName(), dataType));
    }

    private static IllegalArgumentException incompatibleBuffer(int numElements, long[] shape) {
        return new IllegalArgumentException(String.format("buffer with %d elements is not compatible with a Tensor with shape %s", Integer.valueOf(numElements), Arrays.toString(shape)));
    }

    private static int numElements(long[] shape) {
        int n = 1;
        for (long j : shape) {
            n *= (int) j;
        }
        return n;
    }

    private static int elemByteSize(DataType dataType) {
        int size = dataType.byteSize();
        if (size < 0) {
            throw new IllegalArgumentException("STRING tensors do not have a fixed element size");
        }
        return size;
    }

    private static void throwExceptionIfNotByteOfByteArrays(Object array) {
        if (!array.getClass().getName().equals("[[B")) {
            throw new IllegalArgumentException("object cannot be converted to a Tensor as it includes an array with null elements");
        }
    }

    static {
        classDataTypes.put(Integer.TYPE, DataType.INT32);
        classDataTypes.put(Integer.class, DataType.INT32);
        classDataTypes.put(Long.TYPE, DataType.INT64);
        classDataTypes.put(Long.class, DataType.INT64);
        classDataTypes.put(Float.TYPE, DataType.FLOAT);
        classDataTypes.put(Float.class, DataType.FLOAT);
        classDataTypes.put(Double.TYPE, DataType.DOUBLE);
        classDataTypes.put(Double.class, DataType.DOUBLE);
        classDataTypes.put(Byte.TYPE, DataType.STRING);
        classDataTypes.put(Byte.class, DataType.STRING);
        classDataTypes.put(Boolean.TYPE, DataType.BOOL);
        classDataTypes.put(Boolean.class, DataType.BOOL);
        TensorFlow.init();
    }

    private static Class<?> baseObjType(Object o) {
        Class<?> c = o.getClass();
        while (c.isArray()) {
            c = c.getComponentType();
        }
        return c;
    }

    private static DataType dataTypeOf(Object o) {
        Class<?> c = baseObjType(o);
        return dataTypeFromClass(c);
    }

    private static DataType dataTypeFromClass(Class<?> c) {
        DataType ret = classDataTypes.get(c);
        if (ret != null) {
            return ret;
        }
        throw new IllegalArgumentException("cannot create Tensors of type " + c.getName());
    }

    private static int numDimensions(Object o, DataType dtype) {
        int ret = numArrayDimensions(o);
        if (dtype == DataType.STRING && ret > 0) {
            return ret - 1;
        }
        return ret;
    }

    private static int numArrayDimensions(Object o) {
        Class<?> c = o.getClass();
        int i = 0;
        while (c.isArray()) {
            c = c.getComponentType();
            i++;
        }
        return i;
    }

    private static void fillShape(Object o, int dim, long[] shape) {
        if (shape != null && dim != shape.length) {
            int len = Array.getLength(o);
            if (len == 0) {
                throw new IllegalArgumentException("cannot create Tensors with a 0 dimension");
            }
            if (shape[dim] == 0) {
                shape[dim] = len;
            } else if (shape[dim] != len) {
                throw new IllegalArgumentException(String.format("mismatched lengths (%d and %d) in dimension %d", Long.valueOf(shape[dim]), Integer.valueOf(len), Integer.valueOf(dim)));
            }
            for (int i = 0; i < len; i++) {
                fillShape(Array.get(o, i), dim + 1, shape);
            }
        }
    }

    private static boolean objectCompatWithType(Object obj, DataType dtype) {
        Class<?> c = baseObjType(obj);
        DataType dto = dataTypeFromClass(c);
        int nd = numDimensions(obj, dto);
        if (!c.isPrimitive() && c != String.class && nd != 0) {
            throw new IllegalArgumentException("cannot create non-scalar Tensors from arrays of boxed values");
        }
        if (dto.equals(dtype)) {
            return true;
        }
        return dto == DataType.STRING && dtype == DataType.UINT8;
    }

    private void throwExceptionIfTypeIsIncompatible(Object o) {
        int rank = numDimensions();
        int oRank = numDimensions(o, this.dtype);
        if (oRank != rank) {
            throw new IllegalArgumentException(String.format("cannot copy Tensor with %d dimensions into an object with %d", Integer.valueOf(rank), Integer.valueOf(oRank)));
        }
        if (!objectCompatWithType(o, this.dtype)) {
            throw new IllegalArgumentException(String.format("cannot copy Tensor with DataType %s into an object of type %s", this.dtype.toString(), o.getClass().getName()));
        }
        long[] oShape = new long[rank];
        fillShape(o, 0, oShape);
        for (int i = 0; i < oShape.length; i++) {
            if (oShape[i] != shape()[i]) {
                throw new IllegalArgumentException(String.format("cannot copy Tensor with shape %s into object with shape %s", Arrays.toString(shape()), Arrays.toString(oShape)));
            }
        }
    }
}
