package com.file.zip;
/* loaded from: classes.dex */
public final class ZipShort implements Cloneable {
    private static final int BYTE_1_MASK = 65280;
    private static final int BYTE_1_SHIFT = 8;
    private final int value;

    public ZipShort(int value) {
        this.value = value;
    }

    public ZipShort(byte[] bytes) {
        this(bytes, 0);
    }

    public ZipShort(byte[] bytes, int offset) {
        this.value = getValue(bytes, offset);
    }

    public byte[] getBytes() {
        byte[] result = {(byte) (this.value & 255), (byte) ((this.value & 65280) >> 8)};
        return result;
    }

    public int getValue() {
        return this.value;
    }

    public static byte[] getBytes(int value) {
        byte[] result = {(byte) (value & 255), (byte) ((65280 & value) >> 8)};
        return result;
    }

    public static int getValue(byte[] bytes, int offset) {
        int value = (bytes[offset + 1] << 8) & 65280;
        return value + (bytes[offset] & 255);
    }

    public static int getValue(byte[] bytes) {
        return getValue(bytes, 0);
    }

    public boolean equals(Object o) {
        return o != null && (o instanceof ZipShort) && this.value == ((ZipShort) o).getValue();
    }

    public int hashCode() {
        return this.value;
    }

    public Object clone() {
        try {
            return super.clone();
        } catch (CloneNotSupportedException cnfe) {
            throw new RuntimeException(cnfe);
        }
    }

    public String toString() {
        return "ZipShort value: " + this.value;
    }
}
