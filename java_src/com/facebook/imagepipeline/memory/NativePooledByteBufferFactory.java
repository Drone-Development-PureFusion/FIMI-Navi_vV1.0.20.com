package com.facebook.imagepipeline.memory;

import com.facebook.common.internal.Preconditions;
import com.facebook.common.internal.Throwables;
import com.facebook.common.internal.VisibleForTesting;
import com.facebook.common.references.CloseableReference;
import java.io.IOException;
import java.io.InputStream;
import javax.annotation.concurrent.ThreadSafe;
@ThreadSafe
/* loaded from: classes.dex */
public class NativePooledByteBufferFactory implements PooledByteBufferFactory {
    private final NativeMemoryChunkPool mPool;
    private final PooledByteStreams mPooledByteStreams;

    public NativePooledByteBufferFactory(NativeMemoryChunkPool pool, PooledByteStreams pooledByteStreams) {
        this.mPool = pool;
        this.mPooledByteStreams = pooledByteStreams;
    }

    @Override // com.facebook.imagepipeline.memory.PooledByteBufferFactory
    /* renamed from: newByteBuffer */
    public NativePooledByteBuffer mo1683newByteBuffer(int size) {
        Preconditions.checkArgument(size > 0);
        CloseableReference<NativeMemoryChunk> chunkRef = CloseableReference.m1336of(this.mPool.get(size), this.mPool);
        try {
            return new NativePooledByteBuffer(chunkRef, size);
        } finally {
            chunkRef.close();
        }
    }

    @Override // com.facebook.imagepipeline.memory.PooledByteBufferFactory
    /* renamed from: newByteBuffer */
    public NativePooledByteBuffer mo1684newByteBuffer(InputStream inputStream) throws IOException {
        NativePooledByteBufferOutputStream outputStream = new NativePooledByteBufferOutputStream(this.mPool);
        try {
            return newByteBuf(inputStream, outputStream);
        } finally {
            outputStream.close();
        }
    }

    @Override // com.facebook.imagepipeline.memory.PooledByteBufferFactory
    /* renamed from: newByteBuffer */
    public NativePooledByteBuffer mo1686newByteBuffer(byte[] bytes) {
        NativePooledByteBufferOutputStream outputStream = new NativePooledByteBufferOutputStream(this.mPool, bytes.length);
        try {
            try {
                outputStream.write(bytes, 0, bytes.length);
                return outputStream.mo1689toByteBuffer();
            } catch (IOException ioe) {
                throw Throwables.propagate(ioe);
            }
        } finally {
            outputStream.close();
        }
    }

    @Override // com.facebook.imagepipeline.memory.PooledByteBufferFactory
    /* renamed from: newByteBuffer */
    public NativePooledByteBuffer mo1685newByteBuffer(InputStream inputStream, int initialCapacity) throws IOException {
        NativePooledByteBufferOutputStream outputStream = new NativePooledByteBufferOutputStream(this.mPool, initialCapacity);
        try {
            return newByteBuf(inputStream, outputStream);
        } finally {
            outputStream.close();
        }
    }

    @VisibleForTesting
    NativePooledByteBuffer newByteBuf(InputStream inputStream, NativePooledByteBufferOutputStream outputStream) throws IOException {
        this.mPooledByteStreams.copy(inputStream, outputStream);
        return outputStream.mo1689toByteBuffer();
    }

    @Override // com.facebook.imagepipeline.memory.PooledByteBufferFactory
    /* renamed from: newOutputStream */
    public NativePooledByteBufferOutputStream mo1687newOutputStream() {
        return new NativePooledByteBufferOutputStream(this.mPool);
    }

    @Override // com.facebook.imagepipeline.memory.PooledByteBufferFactory
    /* renamed from: newOutputStream */
    public NativePooledByteBufferOutputStream mo1688newOutputStream(int initialCapacity) {
        return new NativePooledByteBufferOutputStream(this.mPool, initialCapacity);
    }
}
