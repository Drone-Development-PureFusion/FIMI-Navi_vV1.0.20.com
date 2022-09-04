package com.github.moduth.blockcanary;

import com.github.moduth.blockcanary.internal.BlockInfo;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.Map;
/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes2.dex */
public class CpuSampler extends AbstractSampler {
    private static final int BUFFER_SIZE = 1000;
    private static final int MAX_ENTRY_COUNT = 10;
    private static final String TAG = "CpuSampler";
    private final LinkedHashMap<Long, String> mCpuInfoEntries = new LinkedHashMap<>();
    private int mPid = 0;
    private long mUserLast = 0;
    private long mSystemLast = 0;
    private long mIdleLast = 0;
    private long mIoWaitLast = 0;
    private long mTotalLast = 0;
    private long mAppCpuTimeLast = 0;
    private final int BUSY_TIME = (int) (((float) this.mSampleInterval) * 1.2f);

    public CpuSampler(long sampleInterval) {
        super(sampleInterval);
    }

    @Override // com.github.moduth.blockcanary.AbstractSampler
    public void start() {
        super.start();
        reset();
    }

    public String getCpuRateInfo() {
        StringBuilder sb = new StringBuilder();
        synchronized (this.mCpuInfoEntries) {
            for (Map.Entry<Long, String> entry : this.mCpuInfoEntries.entrySet()) {
                long time = entry.getKey().longValue();
                sb.append(BlockInfo.TIME_FORMATTER.format(Long.valueOf(time))).append(' ').append(entry.getValue()).append("\r\n");
            }
        }
        return sb.toString();
    }

    public boolean isCpuBusy(long start, long end) {
        if (end - start > this.mSampleInterval) {
            long s = start - this.mSampleInterval;
            long e = start + this.mSampleInterval;
            long last = 0;
            synchronized (this.mCpuInfoEntries) {
                for (Map.Entry<Long, String> entry : this.mCpuInfoEntries.entrySet()) {
                    long time = entry.getKey().longValue();
                    if (s < time && time < e) {
                        if (last != 0 && time - last > this.BUSY_TIME) {
                            return true;
                        }
                        last = time;
                    }
                }
            }
        }
        return false;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: BlockProcessor
        jadx.core.utils.exceptions.JadxRuntimeException: Found unreachable blocks
        	at jadx.core.dex.visitors.blocks.DominatorTree.sortBlocks(DominatorTree.java:40)
        	at jadx.core.dex.visitors.blocks.DominatorTree.compute(DominatorTree.java:25)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.computeDominators(BlockProcessor.java:203)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.processBlocksTree(BlockProcessor.java:46)
        	at jadx.core.dex.visitors.blocks.BlockProcessor.visit(BlockProcessor.java:40)
        */
    @Override // com.github.moduth.blockcanary.AbstractSampler
    protected void doSample() {
        /*
            r12 = this;
            r1 = 0
            r5 = 0
            java.io.BufferedReader r2 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> L76
            java.io.InputStreamReader r8 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> L76
            java.io.FileInputStream r9 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> L76
            java.lang.String r10 = "/proc/stat"
            r9.<init>(r10)     // Catch: java.lang.Throwable -> L76
            r8.<init>(r9)     // Catch: java.lang.Throwable -> L76
            r9 = 1000(0x3e8, float:1.401E-42)
            r2.<init>(r8, r9)     // Catch: java.lang.Throwable -> L76
            java.lang.String r0 = r2.readLine()     // Catch: java.lang.Throwable -> Lae
            if (r0 != 0) goto L1d
            java.lang.String r0 = ""
        L1d:
            int r8 = r12.mPid     // Catch: java.lang.Throwable -> Lae
            if (r8 != 0) goto L27
            int r8 = android.os.Process.myPid()     // Catch: java.lang.Throwable -> Lae
            r12.mPid = r8     // Catch: java.lang.Throwable -> Lae
        L27:
            java.io.BufferedReader r6 = new java.io.BufferedReader     // Catch: java.lang.Throwable -> Lae
            java.io.InputStreamReader r8 = new java.io.InputStreamReader     // Catch: java.lang.Throwable -> Lae
            java.io.FileInputStream r9 = new java.io.FileInputStream     // Catch: java.lang.Throwable -> Lae
            java.lang.StringBuilder r10 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lae
            r10.<init>()     // Catch: java.lang.Throwable -> Lae
            java.lang.String r11 = "/proc/"
            java.lang.StringBuilder r10 = r10.append(r11)     // Catch: java.lang.Throwable -> Lae
            int r11 = r12.mPid     // Catch: java.lang.Throwable -> Lae
            java.lang.StringBuilder r10 = r10.append(r11)     // Catch: java.lang.Throwable -> Lae
            java.lang.String r11 = "/stat"
            java.lang.StringBuilder r10 = r10.append(r11)     // Catch: java.lang.Throwable -> Lae
            java.lang.String r10 = r10.toString()     // Catch: java.lang.Throwable -> Lae
            r9.<init>(r10)     // Catch: java.lang.Throwable -> Lae
            r8.<init>(r9)     // Catch: java.lang.Throwable -> Lae
            r9 = 1000(0x3e8, float:1.401E-42)
            r6.<init>(r8, r9)     // Catch: java.lang.Throwable -> Lae
            java.lang.String r4 = r6.readLine()     // Catch: java.lang.Throwable -> Lb1
            if (r4 != 0) goto L5b
            java.lang.String r4 = ""
        L5b:
            r12.parse(r0, r4)     // Catch: java.lang.Throwable -> Lb1
            if (r2 == 0) goto L63
            r2.close()     // Catch: java.io.IOException -> L6b
        L63:
            if (r6 == 0) goto L68
            r6.close()     // Catch: java.io.IOException -> L6b
        L68:
            r5 = r6
            r1 = r2
        L6a:
            return
        L6b:
            r3 = move-exception
            java.lang.String r8 = "CpuSampler"
            java.lang.String r9 = "doSample: "
            android.util.Log.e(r8, r9, r3)
            r5 = r6
            r1 = r2
            goto L6a
        L76:
            r7 = move-exception
        L77:
            java.lang.String r8 = "CpuSampler"
            java.lang.String r9 = "doSample: "
            android.util.Log.e(r8, r9, r7)     // Catch: java.lang.Throwable -> L92
            if (r1 == 0) goto L83
            r1.close()     // Catch: java.io.IOException -> L89
        L83:
            if (r5 == 0) goto L6a
            r5.close()     // Catch: java.io.IOException -> L89
            goto L6a
        L89:
            r3 = move-exception
            java.lang.String r8 = "CpuSampler"
            java.lang.String r9 = "doSample: "
            android.util.Log.e(r8, r9, r3)
            goto L6a
        L92:
            r8 = move-exception
        L93:
            if (r1 == 0) goto L98
            r1.close()     // Catch: java.io.IOException -> L9e
        L98:
            if (r5 == 0) goto L9d
            r5.close()     // Catch: java.io.IOException -> L9e
        L9d:
            throw r8
        L9e:
            r3 = move-exception
            java.lang.String r9 = "CpuSampler"
            java.lang.String r10 = "doSample: "
            android.util.Log.e(r9, r10, r3)
            goto L9d
        La7:
            r8 = move-exception
            r1 = r2
            goto L93
        Laa:
            r8 = move-exception
            r5 = r6
            r1 = r2
            goto L93
        Lae:
            r7 = move-exception
            r1 = r2
            goto L77
        Lb1:
            r7 = move-exception
            r5 = r6
            r1 = r2
            goto L77
        */
        throw new UnsupportedOperationException("Method not decompiled: com.github.moduth.blockcanary.CpuSampler.doSample():void");
    }

    private void reset() {
        this.mUserLast = 0L;
        this.mSystemLast = 0L;
        this.mIdleLast = 0L;
        this.mIoWaitLast = 0L;
        this.mTotalLast = 0L;
        this.mAppCpuTimeLast = 0L;
    }

    private void parse(String cpuRate, String pidCpuRate) {
        String[] cpuInfoArray = cpuRate.split(" ");
        if (cpuInfoArray.length >= 9) {
            long user = Long.parseLong(cpuInfoArray[2]);
            long nice = Long.parseLong(cpuInfoArray[3]);
            long system = Long.parseLong(cpuInfoArray[4]);
            long idle = Long.parseLong(cpuInfoArray[5]);
            long ioWait = Long.parseLong(cpuInfoArray[6]);
            long total = user + nice + system + idle + ioWait + Long.parseLong(cpuInfoArray[7]) + Long.parseLong(cpuInfoArray[8]);
            String[] pidCpuInfoList = pidCpuRate.split(" ");
            if (pidCpuInfoList.length >= 17) {
                long appCpuTime = Long.parseLong(pidCpuInfoList[13]) + Long.parseLong(pidCpuInfoList[14]) + Long.parseLong(pidCpuInfoList[15]) + Long.parseLong(pidCpuInfoList[16]);
                if (this.mTotalLast != 0) {
                    StringBuilder stringBuilder = new StringBuilder();
                    long idleTime = idle - this.mIdleLast;
                    long totalTime = total - this.mTotalLast;
                    stringBuilder.append("cpu:").append(((totalTime - idleTime) * 100) / totalTime).append("% ").append("app:").append(((appCpuTime - this.mAppCpuTimeLast) * 100) / totalTime).append("% ").append("[").append("user:").append(((user - this.mUserLast) * 100) / totalTime).append("% ").append("system:").append(((system - this.mSystemLast) * 100) / totalTime).append("% ").append("ioWait:").append(((ioWait - this.mIoWaitLast) * 100) / totalTime).append("% ]");
                    synchronized (this.mCpuInfoEntries) {
                        this.mCpuInfoEntries.put(Long.valueOf(System.currentTimeMillis()), stringBuilder.toString());
                        if (this.mCpuInfoEntries.size() > 10) {
                            Iterator<Map.Entry<Long, String>> it = this.mCpuInfoEntries.entrySet().iterator();
                            if (it.hasNext()) {
                                Map.Entry<Long, String> entry = it.next();
                                Long key = entry.getKey();
                                this.mCpuInfoEntries.remove(key);
                            }
                        }
                    }
                }
                this.mUserLast = user;
                this.mSystemLast = system;
                this.mIdleLast = idle;
                this.mIoWaitLast = ioWait;
                this.mTotalLast = total;
                this.mAppCpuTimeLast = appCpuTime;
            }
        }
    }
}
