package com.googlecode.mp4parser.authoring.builder;

import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
/* loaded from: classes2.dex */
public class ByteBufferHelper {
    /* JADX WARN: Code restructure failed: missing block: B:17:0x0086, code lost:
        if ((r0 instanceof java.nio.MappedByteBuffer) == false) goto L30;
     */
    /* JADX WARN: Code restructure failed: missing block: B:19:0x008e, code lost:
        if ((r3.get(r1) instanceof java.nio.MappedByteBuffer) == false) goto L29;
     */
    /* JADX WARN: Code restructure failed: missing block: B:21:0x00a9, code lost:
        if (r3.get(r1).limit() != (r3.get(r1).capacity() - r0.capacity())) goto L22;
     */
    /* JADX WARN: Code restructure failed: missing block: B:27:0x00ab, code lost:
        r4 = r3.get(r1);
        r4.limit(r0.limit() + r4.limit());
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public static List<ByteBuffer> mergeAdjacentBuffers(List<ByteBuffer> samples) {
        ArrayList<ByteBuffer> nuSamples = new ArrayList<>(samples.size());
        Iterator<ByteBuffer> it = samples.iterator();
        while (it.hasNext()) {
            ByteBuffer buffer = it.next();
            int lastIndex = nuSamples.size() - 1;
            if (lastIndex >= 0 && buffer.hasArray() && nuSamples.get(lastIndex).hasArray() && buffer.array() == nuSamples.get(lastIndex).array()) {
                if (nuSamples.get(lastIndex).limit() + nuSamples.get(lastIndex).arrayOffset() == buffer.arrayOffset()) {
                    ByteBuffer oldBuffer = nuSamples.remove(lastIndex);
                    ByteBuffer nu = ByteBuffer.wrap(buffer.array(), oldBuffer.arrayOffset(), oldBuffer.limit() + buffer.limit()).slice();
                    nuSamples.add(nu);
                }
            }
            buffer.reset();
            nuSamples.add(buffer);
        }
        return nuSamples;
    }
}
