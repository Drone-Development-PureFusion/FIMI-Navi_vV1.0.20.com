package com.github.moduth.blockcanary.p016ui;

import android.util.Log;
import com.fimi.kernel.connect.tcp.SocketOption;
import com.github.moduth.blockcanary.internal.BlockInfo;
import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.InputStreamReader;
/* JADX INFO: Access modifiers changed from: package-private */
/* renamed from: com.github.moduth.blockcanary.ui.BlockInfoEx */
/* loaded from: classes2.dex */
public final class BlockInfoEx extends BlockInfo {
    private static final String TAG = "BlockInfoEx";
    public String concernStackString;
    public File logFile;

    BlockInfoEx() {
    }

    public static BlockInfoEx newInstance(File file) {
        BlockInfoEx blockInfo = new BlockInfoEx();
        blockInfo.logFile = file;
        BufferedReader reader = null;
        try {
            InputStreamReader in = new InputStreamReader(new FileInputStream(file), SocketOption.DEFAULT_CHARSET);
            BufferedReader reader2 = new BufferedReader(in);
            try {
                for (String line = reader2.readLine(); line != null; line = reader2.readLine()) {
                    if (line.startsWith(BlockInfo.KEY_QUA)) {
                        blockInfo.qualifier = line.split(BlockInfo.f261KV)[1];
                    } else if (line.startsWith(BlockInfo.KEY_MODEL)) {
                        blockInfo.model = line.split(BlockInfo.f261KV)[1];
                    } else if (line.startsWith(BlockInfo.KEY_API)) {
                        blockInfo.apiLevel = line.split(BlockInfo.f261KV)[1];
                    } else if (line.startsWith(BlockInfo.KEY_IMEI)) {
                        blockInfo.imei = line.split(BlockInfo.f261KV)[1];
                    } else if (line.startsWith(BlockInfo.KEY_CPU_CORE)) {
                        blockInfo.cpuCoreNum = Integer.valueOf(line.split(BlockInfo.f261KV)[1]).intValue();
                    } else if (line.startsWith(BlockInfo.KEY_UID)) {
                        blockInfo.uid = line.split(BlockInfo.f261KV)[1];
                    } else if (line.startsWith(BlockInfo.KEY_TIME_COST_START)) {
                        blockInfo.timeStart = line.split(BlockInfo.f261KV)[1];
                    } else if (line.startsWith(BlockInfo.KEY_TIME_COST_END)) {
                        blockInfo.timeEnd = line.split(BlockInfo.f261KV)[1];
                    } else if (line.startsWith(BlockInfo.KEY_TIME_COST)) {
                        blockInfo.timeCost = Long.valueOf(line.split(BlockInfo.f261KV)[1]).longValue();
                    } else if (line.startsWith(BlockInfo.KEY_THREAD_TIME_COST)) {
                        blockInfo.threadTimeCost = Long.valueOf(line.split(BlockInfo.f261KV)[1]).longValue();
                    } else if (line.startsWith(BlockInfo.KEY_PROCESS)) {
                        blockInfo.processName = line.split(BlockInfo.f261KV)[1];
                    } else if (line.startsWith(BlockInfo.KEY_VERSION_NAME)) {
                        blockInfo.versionName = line.split(BlockInfo.f261KV)[1];
                    } else if (line.startsWith(BlockInfo.KEY_VERSION_CODE)) {
                        blockInfo.versionCode = Integer.valueOf(line.split(BlockInfo.f261KV)[1]).intValue();
                    } else if (line.startsWith(BlockInfo.KEY_NETWORK)) {
                        blockInfo.network = line.split(BlockInfo.f261KV)[1];
                    } else if (line.startsWith(BlockInfo.KEY_TOTAL_MEMORY)) {
                        blockInfo.totalMemory = line.split(BlockInfo.f261KV)[1];
                    } else if (line.startsWith(BlockInfo.KEY_FREE_MEMORY)) {
                        blockInfo.freeMemory = line.split(BlockInfo.f261KV)[1];
                    } else if (line.startsWith(BlockInfo.KEY_CPU_BUSY)) {
                        blockInfo.cpuBusy = Boolean.valueOf(line.split(BlockInfo.f261KV)[1]).booleanValue();
                    } else if (line.startsWith(BlockInfo.KEY_CPU_RATE)) {
                        String[] split = line.split(BlockInfo.f261KV);
                        if (split.length > 1) {
                            StringBuilder cpuRateSb = new StringBuilder(split[1]);
                            cpuRateSb.append(line.split(BlockInfo.f261KV)[1]).append("\r\n");
                            for (String line2 = reader2.readLine(); line2 != null && !line2.equals(""); line2 = reader2.readLine()) {
                                cpuRateSb.append(line2).append("\r\n");
                            }
                            blockInfo.cpuRateInfo = cpuRateSb.toString();
                        }
                    } else if (line.startsWith(BlockInfo.KEY_STACK)) {
                        StringBuilder stackSb = new StringBuilder(line.split(BlockInfo.f261KV)[1]);
                        for (String line3 = reader2.readLine(); line3 != null; line3 = reader2.readLine()) {
                            if (!line3.equals("")) {
                                stackSb.append(line3).append("\r\n");
                            } else if (stackSb.length() > 0) {
                                blockInfo.threadStackEntries.add(stackSb.toString());
                                stackSb = new StringBuilder();
                            }
                        }
                    }
                }
                reader2.close();
                BufferedReader reader3 = null;
                if (0 != 0) {
                    try {
                        reader3.close();
                    } catch (Exception e) {
                        Log.e(TAG, BlockInfo.NEW_INSTANCE_METHOD, e);
                    }
                }
            } catch (Throwable th) {
                t = th;
                reader = reader2;
                try {
                    Log.e(TAG, BlockInfo.NEW_INSTANCE_METHOD, t);
                    blockInfo.flushString();
                    return blockInfo;
                } finally {
                    if (reader != null) {
                        try {
                            reader.close();
                        } catch (Exception e2) {
                            Log.e(TAG, BlockInfo.NEW_INSTANCE_METHOD, e2);
                        }
                    }
                }
            }
        } catch (Throwable th2) {
            t = th2;
        }
        blockInfo.flushString();
        return blockInfo;
    }
}
