package org.apache.mina.filter.executor;

import org.apache.mina.core.session.IoEvent;
/* loaded from: classes2.dex */
public interface IoEventSizeEstimator {
    int estimateSize(IoEvent ioEvent);
}
