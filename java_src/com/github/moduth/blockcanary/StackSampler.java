package com.github.moduth.blockcanary;

import com.github.moduth.blockcanary.internal.BlockInfo;
import java.util.ArrayList;
import java.util.LinkedHashMap;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class StackSampler extends AbstractSampler {
    private static final int DEFAULT_MAX_ENTRY_COUNT = 100;
    private static final LinkedHashMap<Long, String> sStackMap = new LinkedHashMap<>();
    private Thread mCurrentThread;
    private int mMaxEntryCount;

    public StackSampler(Thread thread, long sampleIntervalMillis) {
        this(thread, 100, sampleIntervalMillis);
    }

    public StackSampler(Thread thread, int maxEntryCount, long sampleIntervalMillis) {
        super(sampleIntervalMillis);
        this.mMaxEntryCount = 100;
        this.mCurrentThread = thread;
        this.mMaxEntryCount = maxEntryCount;
    }

    public ArrayList<String> getThreadStackEntries(long startTime, long endTime) {
        ArrayList<String> result = new ArrayList<>();
        synchronized (sStackMap) {
            for (Long entryTime : sStackMap.keySet()) {
                if (startTime < entryTime.longValue() && entryTime.longValue() < endTime) {
                    result.add(BlockInfo.TIME_FORMATTER.format(entryTime) + "\r\n\r\n" + sStackMap.get(entryTime));
                }
            }
        }
        return result;
    }

    @Override // com.github.moduth.blockcanary.AbstractSampler
    protected void doSample() {
        StackTraceElement[] stackTrace;
        StringBuilder stringBuilder = new StringBuilder();
        for (StackTraceElement stackTraceElement : this.mCurrentThread.getStackTrace()) {
            stringBuilder.append(stackTraceElement.toString()).append("\r\n");
        }
        synchronized (sStackMap) {
            if (sStackMap.size() == this.mMaxEntryCount && this.mMaxEntryCount > 0) {
                sStackMap.remove(sStackMap.keySet().iterator().next());
            }
            sStackMap.put(Long.valueOf(System.currentTimeMillis()), stringBuilder.toString());
        }
    }
}
