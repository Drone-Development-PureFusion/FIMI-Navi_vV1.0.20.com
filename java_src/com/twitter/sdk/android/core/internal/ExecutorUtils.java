package com.twitter.sdk.android.core.internal;

import com.twitter.sdk.android.core.Twitter;
import java.util.Locale;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.ScheduledExecutorService;
import java.util.concurrent.ThreadFactory;
import java.util.concurrent.ThreadPoolExecutor;
import java.util.concurrent.TimeUnit;
import java.util.concurrent.atomic.AtomicLong;
/* loaded from: classes2.dex */
public final class ExecutorUtils {
    private static final long DEFAULT_TERMINATION_TIMEOUT = 1;
    private static final long KEEP_ALIVE = 1;
    private static final int CPU_COUNT = Runtime.getRuntime().availableProcessors();
    private static final int CORE_POOL_SIZE = CPU_COUNT + 1;
    private static final int MAXIMUM_POOL_SIZE = (CPU_COUNT * 2) + 1;

    private ExecutorUtils() {
    }

    public static ExecutorService buildThreadPoolExecutorService(String name) {
        ThreadFactory threadFactory = getNamedThreadFactory(name);
        ExecutorService executor = new ThreadPoolExecutor(CORE_POOL_SIZE, MAXIMUM_POOL_SIZE, 1L, TimeUnit.SECONDS, new LinkedBlockingQueue(), threadFactory);
        addDelayedShutdownHook(name, executor);
        return executor;
    }

    public static ScheduledExecutorService buildSingleThreadScheduledExecutorService(String name) {
        ThreadFactory threadFactory = getNamedThreadFactory(name);
        ScheduledExecutorService executor = Executors.newSingleThreadScheduledExecutor(threadFactory);
        addDelayedShutdownHook(name, executor);
        return executor;
    }

    static ThreadFactory getNamedThreadFactory(final String threadNameTemplate) {
        final AtomicLong count = new AtomicLong(1L);
        return new ThreadFactory() { // from class: com.twitter.sdk.android.core.internal.ExecutorUtils.1
            @Override // java.util.concurrent.ThreadFactory
            public Thread newThread(Runnable runnable) {
                Thread thread = Executors.defaultThreadFactory().newThread(runnable);
                thread.setName(threadNameTemplate + count.getAndIncrement());
                return thread;
            }
        };
    }

    static void addDelayedShutdownHook(String serviceName, ExecutorService service) {
        addDelayedShutdownHook(serviceName, service, 1L, TimeUnit.SECONDS);
    }

    static void addDelayedShutdownHook(final String serviceName, final ExecutorService service, final long terminationTimeout, final TimeUnit timeUnit) {
        Runtime.getRuntime().addShutdownHook(new Thread(new Runnable() { // from class: com.twitter.sdk.android.core.internal.ExecutorUtils.2
            @Override // java.lang.Runnable
            public void run() {
                try {
                    service.shutdown();
                    if (!service.awaitTermination(terminationTimeout, timeUnit)) {
                        Twitter.getLogger().mo1293d("Twitter", serviceName + " did not shutdown in the allocated time. Requesting immediate shutdown.");
                        service.shutdownNow();
                    }
                } catch (InterruptedException e) {
                    Twitter.getLogger().mo1293d("Twitter", String.format(Locale.US, "Interrupted while waiting for %s to shut down. Requesting immediate shutdown.", serviceName));
                    service.shutdownNow();
                }
            }
        }, "Twitter Shutdown Hook for " + serviceName));
    }
}
