package com.github.moduth.blockcanary;

import android.os.Handler;
import android.os.HandlerThread;
/* loaded from: classes2.dex */
final class HandlerThreadFactory {
    private static HandlerThreadWrapper sLoopThread = new HandlerThreadWrapper("loop");
    private static HandlerThreadWrapper sWriteLogThread = new HandlerThreadWrapper("writer");

    private HandlerThreadFactory() {
        throw new InstantiationError("Must not instantiate this class");
    }

    public static Handler getTimerThreadHandler() {
        return sLoopThread.getHandler();
    }

    public static Handler getWriteLogThreadHandler() {
        return sWriteLogThread.getHandler();
    }

    /* loaded from: classes2.dex */
    private static class HandlerThreadWrapper {
        private Handler handler;

        public HandlerThreadWrapper(String threadName) {
            this.handler = null;
            HandlerThread handlerThread = new HandlerThread("BlockCanary-" + threadName);
            handlerThread.start();
            this.handler = new Handler(handlerThread.getLooper());
        }

        public Handler getHandler() {
            return this.handler;
        }
    }
}
