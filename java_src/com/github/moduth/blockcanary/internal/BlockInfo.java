package com.github.moduth.blockcanary.internal;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.os.Build;
import android.telephony.TelephonyManager;
import android.util.Log;
import com.github.moduth.blockcanary.BlockCanaryInternals;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Locale;
/* loaded from: classes2.dex */
public class BlockInfo {
    private static final String EMPTY_IMEI = "empty_imei";
    public static final String KEY_API = "api-level";
    public static final String KEY_CPU_BUSY = "cpu-busy";
    public static final String KEY_CPU_CORE = "cpu-core";
    public static final String KEY_CPU_RATE = "cpu-rate";
    public static final String KEY_FREE_MEMORY = "freeMemory";
    public static final String KEY_IMEI = "imei";
    public static final String KEY_MODEL = "model";
    public static final String KEY_NETWORK = "network";
    public static final String KEY_PROCESS = "process";
    public static final String KEY_QUA = "qua";
    public static final String KEY_STACK = "stack";
    public static final String KEY_THREAD_TIME_COST = "thread-time";
    public static final String KEY_TIME_COST = "time";
    public static final String KEY_TIME_COST_END = "time-end";
    public static final String KEY_TIME_COST_START = "time-start";
    public static final String KEY_TOTAL_MEMORY = "totalMemory";
    public static final String KEY_UID = "uid";
    public static final String KEY_VERSION_CODE = "versionCode";
    public static final String KEY_VERSION_NAME = "versionName";

    /* renamed from: KV */
    public static final String f261KV = " = ";
    public static final String NEW_INSTANCE_METHOD = "newInstance: ";
    public static final String SEPARATOR = "\r\n";
    private static final String TAG = "BlockInfo";
    public static String sApiLevel;
    public static int sCpuCoreNum;
    public static String sImei;
    public boolean cpuBusy;
    public String cpuRateInfo;
    public String freeMemory;
    public String model;
    public String network;
    public String processName;
    public String qualifier;
    public long threadTimeCost;
    public long timeCost;
    public String timeEnd;
    public String timeStart;
    public String totalMemory;
    public String uid;
    public int versionCode;
    public static final SimpleDateFormat TIME_FORMATTER = new SimpleDateFormat("MM-dd HH:mm:ss.SSS", Locale.US);
    public static String sModel = Build.MODEL;
    public static String sQualifier = BlockCanaryInternals.getContext().provideQualifier();
    public String apiLevel = "";
    public String imei = "";
    public int cpuCoreNum = -1;
    public String versionName = "";
    public ArrayList<String> threadStackEntries = new ArrayList<>();
    private StringBuilder basicSb = new StringBuilder();
    private StringBuilder cpuSb = new StringBuilder();
    private StringBuilder timeSb = new StringBuilder();
    private StringBuilder stackSb = new StringBuilder();

    static {
        sApiLevel = "";
        sImei = "";
        sCpuCoreNum = -1;
        sCpuCoreNum = PerformanceUtils.getNumCores();
        sApiLevel = Build.VERSION.SDK_INT + " " + Build.VERSION.RELEASE;
        try {
            TelephonyManager telephonyManager = (TelephonyManager) BlockCanaryInternals.getContext().provideContext().getSystemService("phone");
            sImei = telephonyManager.getDeviceId();
        } catch (Exception exception) {
            Log.e(TAG, NEW_INSTANCE_METHOD, exception);
            sImei = EMPTY_IMEI;
        }
    }

    public static BlockInfo newInstance() {
        BlockInfo blockInfo = new BlockInfo();
        Context context = BlockCanaryInternals.getContext().provideContext();
        if (blockInfo.versionName == null || blockInfo.versionName.length() == 0) {
            try {
                PackageInfo info = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
                blockInfo.versionCode = info.versionCode;
                blockInfo.versionName = info.versionName;
            } catch (Throwable e) {
                Log.e(TAG, NEW_INSTANCE_METHOD, e);
            }
        }
        blockInfo.cpuCoreNum = sCpuCoreNum;
        blockInfo.model = sModel;
        blockInfo.apiLevel = sApiLevel;
        blockInfo.qualifier = sQualifier;
        blockInfo.imei = sImei;
        blockInfo.uid = BlockCanaryInternals.getContext().provideUid();
        blockInfo.processName = ProcessUtils.myProcessName();
        blockInfo.network = BlockCanaryInternals.getContext().provideNetworkType();
        blockInfo.freeMemory = String.valueOf(PerformanceUtils.getFreeMemory());
        blockInfo.totalMemory = String.valueOf(PerformanceUtils.getTotalMemory());
        return blockInfo;
    }

    public BlockInfo setCpuBusyFlag(boolean busy) {
        this.cpuBusy = busy;
        return this;
    }

    public BlockInfo setRecentCpuRate(String info) {
        this.cpuRateInfo = info;
        return this;
    }

    public BlockInfo setThreadStackEntries(ArrayList<String> threadStackEntries) {
        this.threadStackEntries = threadStackEntries;
        return this;
    }

    public BlockInfo setMainThreadTimeCost(long realTimeStart, long realTimeEnd, long threadTimeStart, long threadTimeEnd) {
        this.timeCost = realTimeEnd - realTimeStart;
        this.threadTimeCost = threadTimeEnd - threadTimeStart;
        this.timeStart = TIME_FORMATTER.format(Long.valueOf(realTimeStart));
        this.timeEnd = TIME_FORMATTER.format(Long.valueOf(realTimeEnd));
        return this;
    }

    public BlockInfo flushString() {
        this.basicSb.append(KEY_QUA).append(f261KV).append(this.qualifier).append("\r\n");
        this.basicSb.append(KEY_VERSION_NAME).append(f261KV).append(this.versionName).append("\r\n");
        this.basicSb.append(KEY_VERSION_CODE).append(f261KV).append(this.versionCode).append("\r\n");
        this.basicSb.append(KEY_IMEI).append(f261KV).append(this.imei).append("\r\n");
        this.basicSb.append(KEY_UID).append(f261KV).append(this.uid).append("\r\n");
        this.basicSb.append(KEY_NETWORK).append(f261KV).append(this.network).append("\r\n");
        this.basicSb.append(KEY_MODEL).append(f261KV).append(this.model).append("\r\n");
        this.basicSb.append(KEY_API).append(f261KV).append(this.apiLevel).append("\r\n");
        this.basicSb.append(KEY_CPU_CORE).append(f261KV).append(this.cpuCoreNum).append("\r\n");
        this.basicSb.append(KEY_PROCESS).append(f261KV).append(this.processName).append("\r\n");
        this.basicSb.append(KEY_FREE_MEMORY).append(f261KV).append(this.freeMemory).append("\r\n");
        this.basicSb.append(KEY_TOTAL_MEMORY).append(f261KV).append(this.totalMemory).append("\r\n");
        this.timeSb.append(KEY_TIME_COST).append(f261KV).append(this.timeCost).append("\r\n");
        this.timeSb.append(KEY_THREAD_TIME_COST).append(f261KV).append(this.threadTimeCost).append("\r\n");
        this.timeSb.append(KEY_TIME_COST_START).append(f261KV).append(this.timeStart).append("\r\n");
        this.timeSb.append(KEY_TIME_COST_END).append(f261KV).append(this.timeEnd).append("\r\n");
        this.cpuSb.append(KEY_CPU_BUSY).append(f261KV).append(this.cpuBusy).append("\r\n");
        this.cpuSb.append(KEY_CPU_RATE).append(f261KV).append(this.cpuRateInfo).append("\r\n");
        if (this.threadStackEntries != null && !this.threadStackEntries.isEmpty()) {
            StringBuilder temp = new StringBuilder();
            Iterator<String> it = this.threadStackEntries.iterator();
            while (it.hasNext()) {
                String s = it.next();
                temp.append(s);
                temp.append("\r\n");
            }
            this.stackSb.append(KEY_STACK).append(f261KV).append(temp.toString()).append("\r\n");
        }
        return this;
    }

    public String getBasicString() {
        return this.basicSb.toString();
    }

    public String getCpuString() {
        return this.cpuSb.toString();
    }

    public String getTimeString() {
        return this.timeSb.toString();
    }

    public String toString() {
        return String.valueOf(this.basicSb) + ((Object) this.timeSb) + ((Object) this.cpuSb) + ((Object) this.stackSb);
    }
}
