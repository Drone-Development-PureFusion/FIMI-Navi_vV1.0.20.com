package org.tensorflow.contrib.android;
/* loaded from: classes2.dex */
public class RunStats implements AutoCloseable {
    private static byte[] fullTraceRunOptions = {8, 3};
    private long nativeHandle = allocate();

    private static native void add(long j, byte[] bArr);

    private static native long allocate();

    private static native void delete(long j);

    private static native String summary(long j);

    public static byte[] runOptions() {
        return fullTraceRunOptions;
    }

    @Override // java.lang.AutoCloseable
    public void close() {
        if (this.nativeHandle != 0) {
            delete(this.nativeHandle);
        }
        this.nativeHandle = 0L;
    }

    public synchronized void add(byte[] runMetadata) {
        add(this.nativeHandle, runMetadata);
    }

    public synchronized String summary() {
        return summary(this.nativeHandle);
    }
}
