package org.tensorflow;

import java.util.HashMap;
import java.util.Map;
import org.tensorflow.types.UInt8;
/* loaded from: classes2.dex */
public enum DataType {
    FLOAT(1, 4),
    DOUBLE(2, 8),
    INT32(3, 4),
    UINT8(4, 1),
    STRING(7, -1),
    INT64(9, 8),
    BOOL(10, 1);
    
    private final int byteSize;
    private final int value;
    private static final DataType[] values = values();
    private static final Map<Class<?>, DataType> typeCodes = new HashMap();

    static {
        typeCodes.put(Float.class, FLOAT);
        typeCodes.put(Double.class, DOUBLE);
        typeCodes.put(Integer.class, INT32);
        typeCodes.put(UInt8.class, UINT8);
        typeCodes.put(Long.class, INT64);
        typeCodes.put(Boolean.class, BOOL);
        typeCodes.put(String.class, STRING);
    }

    DataType(int value, int byteSize) {
        this.value = value;
        this.byteSize = byteSize;
    }

    public int byteSize() {
        return this.byteSize;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* renamed from: c */
    public int m4c() {
        return this.value;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static DataType fromC(int c) {
        DataType[] dataTypeArr;
        for (DataType t : values) {
            if (t.value == c) {
                return t;
            }
        }
        throw new IllegalArgumentException("DataType " + c + " is not recognized in Java (version " + TensorFlow.version() + ")");
    }

    public static DataType fromClass(Class<?> c) {
        DataType dtype = typeCodes.get(c);
        if (dtype == null) {
            throw new IllegalArgumentException(c.getName() + " objects cannot be used as elements in a TensorFlow Tensor");
        }
        return dtype;
    }
}
