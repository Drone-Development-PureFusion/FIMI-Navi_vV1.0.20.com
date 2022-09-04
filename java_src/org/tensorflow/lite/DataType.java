package org.tensorflow.lite;
/* loaded from: classes2.dex */
enum DataType {
    FLOAT32(1),
    INT32(2),
    UINT8(3),
    INT64(4);
    
    private static final DataType[] values = values();
    private final int value;

    DataType(int value) {
        this.value = value;
    }

    int getNumber() {
        return this.value;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static DataType fromNumber(int c) {
        DataType[] dataTypeArr;
        for (DataType t : values) {
            if (t.value == c) {
                return t;
            }
        }
        throw new IllegalArgumentException("DataType error: DataType " + c + " is not recognized in Java (version " + TensorFlowLite.version() + ")");
    }

    int elemByteSize() {
        switch (this) {
            case FLOAT32:
            case INT32:
                return 4;
            case UINT8:
                return 1;
            case INT64:
                return 8;
            default:
                throw new IllegalArgumentException("DataType error: DataType " + this + " is not supported yet");
        }
    }

    String toStringName() {
        switch (this) {
            case FLOAT32:
                return "float";
            case INT32:
                return "int";
            case UINT8:
                return "byte";
            case INT64:
                return "long";
            default:
                throw new IllegalArgumentException("DataType error: DataType " + this + " is not supported yet");
        }
    }
}
