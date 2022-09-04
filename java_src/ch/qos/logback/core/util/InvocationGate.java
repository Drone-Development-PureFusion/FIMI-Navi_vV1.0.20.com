package ch.qos.logback.core.util;
/* loaded from: classes.dex */
public class InvocationGate {
    private static final int MAX_MASK = 65535;
    private static final long thresholdForMaskIncrease = 100;
    private volatile long mask = 15;
    private volatile long lastMaskCheck = System.currentTimeMillis();
    private long invocationCounter = 0;
    private final long thresholdForMaskDecrease = 800;

    public boolean skipFurtherWork() {
        long j = this.invocationCounter;
        this.invocationCounter = 1 + j;
        return (j & this.mask) != this.mask;
    }

    public void updateMaskIfNecessary(long j) {
        long j2 = j - this.lastMaskCheck;
        this.lastMaskCheck = j;
        if (j2 < thresholdForMaskIncrease && this.mask < 65535) {
            this.mask = (this.mask << 1) | 1;
        } else if (j2 <= 800) {
        } else {
            this.mask >>>= 2;
        }
    }
}
