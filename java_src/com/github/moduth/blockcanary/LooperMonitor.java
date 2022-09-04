package com.github.moduth.blockcanary;

import android.os.Debug;
import android.os.SystemClock;
import android.util.Printer;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class LooperMonitor implements Printer {
    private static final int DEFAULT_BLOCK_THRESHOLD_MILLIS = 3000;
    private BlockListener mBlockListener;
    private long mBlockThresholdMillis;
    private final boolean mStopWhenDebugging;
    private long mStartTimestamp = 0;
    private long mStartThreadTimestamp = 0;
    private boolean mPrintingStarted = false;

    /* loaded from: classes2.dex */
    public interface BlockListener {
        void onBlockEvent(long j, long j2, long j3, long j4);
    }

    public LooperMonitor(BlockListener blockListener, long blockThresholdMillis, boolean stopWhenDebugging) {
        this.mBlockThresholdMillis = 3000L;
        this.mBlockListener = null;
        if (blockListener == null) {
            throw new IllegalArgumentException("blockListener should not be null.");
        }
        this.mBlockListener = blockListener;
        this.mBlockThresholdMillis = blockThresholdMillis;
        this.mStopWhenDebugging = stopWhenDebugging;
    }

    @Override // android.util.Printer
    public void println(String x) {
        if (!this.mStopWhenDebugging || !Debug.isDebuggerConnected()) {
            if (!this.mPrintingStarted) {
                this.mStartTimestamp = System.currentTimeMillis();
                this.mStartThreadTimestamp = SystemClock.currentThreadTimeMillis();
                this.mPrintingStarted = true;
                startDump();
                return;
            }
            long endTime = System.currentTimeMillis();
            this.mPrintingStarted = false;
            if (isBlock(endTime)) {
                notifyBlockEvent(endTime);
            }
            stopDump();
        }
    }

    private boolean isBlock(long endTime) {
        return endTime - this.mStartTimestamp > this.mBlockThresholdMillis;
    }

    private void notifyBlockEvent(final long endTime) {
        final long startTime = this.mStartTimestamp;
        final long startThreadTime = this.mStartThreadTimestamp;
        final long endThreadTime = SystemClock.currentThreadTimeMillis();
        HandlerThreadFactory.getWriteLogThreadHandler().post(new Runnable() { // from class: com.github.moduth.blockcanary.LooperMonitor.1
            @Override // java.lang.Runnable
            public void run() {
                LooperMonitor.this.mBlockListener.onBlockEvent(startTime, endTime, startThreadTime, endThreadTime);
            }
        });
    }

    private void startDump() {
        if (BlockCanaryInternals.getInstance().stackSampler != null) {
            BlockCanaryInternals.getInstance().stackSampler.start();
        }
        if (BlockCanaryInternals.getInstance().cpuSampler != null) {
            BlockCanaryInternals.getInstance().cpuSampler.start();
        }
    }

    private void stopDump() {
        if (BlockCanaryInternals.getInstance().stackSampler != null) {
            BlockCanaryInternals.getInstance().stackSampler.stop();
        }
        if (BlockCanaryInternals.getInstance().cpuSampler != null) {
            BlockCanaryInternals.getInstance().cpuSampler.stop();
        }
    }
}
