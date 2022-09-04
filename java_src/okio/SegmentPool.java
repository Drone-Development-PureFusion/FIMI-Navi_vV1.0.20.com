package okio;

import javax.annotation.Nullable;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class SegmentPool {
    static final long MAX_SIZE = 65536;
    static long byteCount;
    @Nullable
    static Segment next;

    private SegmentPool() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static Segment take() {
        synchronized (SegmentPool.class) {
            if (next != null) {
                Segment result = next;
                next = result.next;
                result.next = null;
                byteCount -= 8192;
                return result;
            }
            return new Segment();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void recycle(Segment segment) {
        if (segment.next == null && segment.prev == null) {
            if (!segment.shared) {
                synchronized (SegmentPool.class) {
                    if (byteCount + 8192 <= 65536) {
                        byteCount += 8192;
                        segment.next = next;
                        segment.limit = 0;
                        segment.pos = 0;
                        next = segment;
                    }
                }
                return;
            }
            return;
        }
        throw new IllegalArgumentException();
    }
}
