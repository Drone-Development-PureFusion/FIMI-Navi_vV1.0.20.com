package ch.qos.logback.core.recovery;
/* loaded from: classes.dex */
public class RecoveryCoordinator {
    public static final long BACKOFF_COEFFICIENT_MIN = 20;
    private long backOffCoefficient = 20;
    private long currentTime = UNSET;
    long next = System.currentTimeMillis() + getBackoffCoefficient();
    static long BACKOFF_COEFFICIENT_MAX = 327680;
    private static long UNSET = -1;

    private long getBackoffCoefficient() {
        long j = this.backOffCoefficient;
        if (this.backOffCoefficient < BACKOFF_COEFFICIENT_MAX) {
            this.backOffCoefficient *= 4;
        }
        return j;
    }

    private long getCurrentTime() {
        return this.currentTime != UNSET ? this.currentTime : System.currentTimeMillis();
    }

    public boolean isTooSoon() {
        long currentTime = getCurrentTime();
        if (currentTime > this.next) {
            this.next = currentTime + getBackoffCoefficient();
            return false;
        }
        return true;
    }

    void setCurrentTime(long j) {
        this.currentTime = j;
    }
}
