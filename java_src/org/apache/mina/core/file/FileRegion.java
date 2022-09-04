package org.apache.mina.core.file;

import java.nio.channels.FileChannel;
/* loaded from: classes2.dex */
public interface FileRegion {
    FileChannel getFileChannel();

    String getFilename();

    long getPosition();

    long getRemainingBytes();

    long getWrittenBytes();

    void update(long j);
}
