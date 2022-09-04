package org.tensorflow;
/* loaded from: classes2.dex */
public final class Server implements AutoCloseable {
    private long nativeHandle;
    private int numJoining;

    private static native long allocate(byte[] bArr);

    private static native void delete(long j);

    private static native void join(long j);

    private static native void start(long j);

    private static native void stop(long j);

    public Server(byte[] serverDef) {
        this.nativeHandle = allocate(serverDef);
    }

    public synchronized void start() {
        start(this.nativeHandle);
    }

    public synchronized void stop() {
        stop(this.nativeHandle);
    }

    public void join() {
        long handle;
        synchronized (this) {
            handle = this.nativeHandle;
            if (handle != 0) {
                this.numJoining++;
            }
        }
        try {
            join(handle);
            synchronized (this) {
                if (handle != 0) {
                    this.numJoining--;
                }
                notifyAll();
            }
        } catch (Throwable th) {
            synchronized (this) {
                if (handle != 0) {
                    this.numJoining--;
                }
                notifyAll();
                throw th;
            }
        }
    }

    @Override // java.lang.AutoCloseable
    public synchronized void close() throws InterruptedException {
        stop();
        while (this.numJoining > 0) {
            wait();
        }
        delete(this.nativeHandle);
        this.nativeHandle = 0L;
    }

    static {
        TensorFlow.init();
    }
}
