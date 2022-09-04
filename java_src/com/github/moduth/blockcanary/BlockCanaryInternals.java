package com.github.moduth.blockcanary;

import android.os.Environment;
import android.os.Looper;
import com.github.moduth.blockcanary.LooperMonitor;
import com.github.moduth.blockcanary.internal.BlockInfo;
import java.io.File;
import java.io.FilenameFilter;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;
/* loaded from: classes2.dex */
public final class BlockCanaryInternals {
    private static BlockCanaryContext sContext;
    private static BlockCanaryInternals sInstance;
    LooperMonitor monitor;
    private List<BlockInterceptor> mInterceptorChain = new LinkedList();
    StackSampler stackSampler = new StackSampler(Looper.getMainLooper().getThread(), sContext.provideDumpInterval());
    CpuSampler cpuSampler = new CpuSampler(sContext.provideDumpInterval());

    public BlockCanaryInternals() {
        setMonitor(new LooperMonitor(new LooperMonitor.BlockListener() { // from class: com.github.moduth.blockcanary.BlockCanaryInternals.1
            @Override // com.github.moduth.blockcanary.LooperMonitor.BlockListener
            public void onBlockEvent(long realTimeStart, long realTimeEnd, long threadTimeStart, long threadTimeEnd) {
                ArrayList<String> threadStackEntries = BlockCanaryInternals.this.stackSampler.getThreadStackEntries(realTimeStart, realTimeEnd);
                if (!threadStackEntries.isEmpty()) {
                    BlockInfo blockInfo = BlockInfo.newInstance().setMainThreadTimeCost(realTimeStart, realTimeEnd, threadTimeStart, threadTimeEnd).setCpuBusyFlag(BlockCanaryInternals.this.cpuSampler.isCpuBusy(realTimeStart, realTimeEnd)).setRecentCpuRate(BlockCanaryInternals.this.cpuSampler.getCpuRateInfo()).setThreadStackEntries(threadStackEntries).flushString();
                    LogWriter.save(blockInfo.toString());
                    if (BlockCanaryInternals.this.mInterceptorChain.size() != 0) {
                        for (BlockInterceptor interceptor : BlockCanaryInternals.this.mInterceptorChain) {
                            interceptor.onBlock(BlockCanaryInternals.getContext().provideContext(), blockInfo);
                        }
                    }
                }
            }
        }, getContext().provideBlockThreshold(), getContext().stopWhenDebugging()));
        LogWriter.cleanObsolete();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static BlockCanaryInternals getInstance() {
        if (sInstance == null) {
            synchronized (BlockCanaryInternals.class) {
                if (sInstance == null) {
                    sInstance = new BlockCanaryInternals();
                }
            }
        }
        return sInstance;
    }

    public static void setContext(BlockCanaryContext context) {
        sContext = context;
    }

    public static BlockCanaryContext getContext() {
        return sContext;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void addBlockInterceptor(BlockInterceptor blockInterceptor) {
        this.mInterceptorChain.add(blockInterceptor);
    }

    private void setMonitor(LooperMonitor looperPrinter) {
        this.monitor = looperPrinter;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long getSampleDelay() {
        return getContext().provideBlockThreshold() * 0.8f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static String getPath() {
        String state = Environment.getExternalStorageState();
        String logPath = getContext() == null ? "" : getContext().providePath();
        if ("mounted".equals(state) && Environment.getExternalStorageDirectory().canWrite()) {
            return Environment.getExternalStorageDirectory().getPath() + logPath;
        }
        return Environment.getDataDirectory().getAbsolutePath() + getContext().providePath();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static File detectedBlockDirectory() {
        File directory = new File(getPath());
        if (!directory.exists()) {
            directory.mkdirs();
        }
        return directory;
    }

    public static File[] getLogFiles() {
        File f = detectedBlockDirectory();
        if (!f.exists() || !f.isDirectory()) {
            return null;
        }
        return f.listFiles(new BlockLogFileFilter());
    }

    /* loaded from: classes2.dex */
    private static class BlockLogFileFilter implements FilenameFilter {
        private String TYPE = ".log";

        BlockLogFileFilter() {
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File dir, String filename) {
            return filename.endsWith(this.TYPE);
        }
    }
}
