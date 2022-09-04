package com.github.moduth.blockcanary;

import android.content.Context;
import com.github.moduth.blockcanary.internal.BlockInfo;
import java.io.File;
import java.util.LinkedList;
import java.util.List;
/* loaded from: classes2.dex */
public class BlockCanaryContext implements BlockInterceptor {
    private static Context sApplicationContext;
    private static BlockCanaryContext sInstance = null;

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void init(Context context, BlockCanaryContext blockCanaryContext) {
        sApplicationContext = context;
        sInstance = blockCanaryContext;
    }

    public static BlockCanaryContext get() {
        if (sInstance == null) {
            throw new RuntimeException("BlockCanaryContext null");
        }
        return sInstance;
    }

    public Context provideContext() {
        return sApplicationContext;
    }

    public String provideQualifier() {
        return "unknown";
    }

    public String provideUid() {
        return BlockInfo.KEY_UID;
    }

    public String provideNetworkType() {
        return "unknown";
    }

    public int provideMonitorDuration() {
        return -1;
    }

    public int provideBlockThreshold() {
        return 1000;
    }

    public int provideDumpInterval() {
        return provideBlockThreshold();
    }

    public String providePath() {
        return "/blockcanary/";
    }

    public boolean displayNotification() {
        return true;
    }

    public boolean zip(File[] src, File dest) {
        return false;
    }

    public void upload(File zippedFile) {
        throw new UnsupportedOperationException();
    }

    public List<String> concernPackages() {
        return null;
    }

    public boolean filterNonConcernStack() {
        return false;
    }

    public List<String> provideWhiteList() {
        LinkedList<String> whiteList = new LinkedList<>();
        whiteList.add("org.chromium");
        return whiteList;
    }

    public boolean deleteFilesInWhiteList() {
        return true;
    }

    @Override // com.github.moduth.blockcanary.BlockInterceptor
    public void onBlock(Context context, BlockInfo blockInfo) {
    }

    public boolean stopWhenDebugging() {
        return true;
    }
}
