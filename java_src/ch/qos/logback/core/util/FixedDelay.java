package ch.qos.logback.core.util;
/* loaded from: classes.dex */
public class FixedDelay implements DelayStrategy {
    private long nextDelay;
    private final long subsequentDelay;

    public FixedDelay(int i) {
        this(i, i);
    }

    public FixedDelay(long j, long j2) {
        new String();
        this.nextDelay = j;
        this.subsequentDelay = j2;
    }

    @Override // ch.qos.logback.core.util.DelayStrategy
    public long nextDelay() {
        long j = this.nextDelay;
        this.nextDelay = this.subsequentDelay;
        return j;
    }
}
