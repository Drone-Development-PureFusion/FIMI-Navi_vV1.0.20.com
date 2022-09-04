package org.mp4parser.aspectj.runtime.internal.cflowstack;
/* loaded from: classes2.dex */
public interface ThreadCounter {
    void dec();

    void inc();

    boolean isNotZero();

    void removeThreadCounter();
}
