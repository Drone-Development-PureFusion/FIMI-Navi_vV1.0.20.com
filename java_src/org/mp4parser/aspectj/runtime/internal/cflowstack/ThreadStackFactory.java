package org.mp4parser.aspectj.runtime.internal.cflowstack;
/* loaded from: classes2.dex */
public interface ThreadStackFactory {
    ThreadCounter getNewThreadCounter();

    ThreadStack getNewThreadStack();
}
