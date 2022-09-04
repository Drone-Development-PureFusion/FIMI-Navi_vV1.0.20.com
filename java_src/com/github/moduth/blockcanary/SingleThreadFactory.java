package com.github.moduth.blockcanary;

import java.util.concurrent.ThreadFactory;
/* loaded from: classes2.dex */
final class SingleThreadFactory implements ThreadFactory {
    private final String threadName;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SingleThreadFactory(String threadName) {
        this.threadName = "BlockCanary-" + threadName;
    }

    @Override // java.util.concurrent.ThreadFactory
    public Thread newThread(Runnable runnable) {
        return new Thread(runnable, this.threadName);
    }
}
