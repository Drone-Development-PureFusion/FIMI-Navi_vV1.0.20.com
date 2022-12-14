package com.googlecode.mp4parser;

import com.googlecode.mp4parser.util.CastUtils;
import com.googlecode.mp4parser.util.Logger;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.WritableByteChannel;
/* loaded from: classes2.dex */
public class FileDataSourceViaHeapImpl implements DataSource {
    private static Logger LOG = Logger.getLogger(FileDataSourceViaHeapImpl.class);

    /* renamed from: fc */
    FileChannel f265fc;
    String filename;

    public FileDataSourceViaHeapImpl(File f) throws FileNotFoundException {
        this.f265fc = new FileInputStream(f).getChannel();
        this.filename = f.getName();
    }

    public FileDataSourceViaHeapImpl(String f) throws FileNotFoundException {
        File file = new File(f);
        this.f265fc = new FileInputStream(file).getChannel();
        this.filename = file.getName();
    }

    public FileDataSourceViaHeapImpl(FileChannel fc) {
        this.f265fc = fc;
        this.filename = "unknown";
    }

    public FileDataSourceViaHeapImpl(FileChannel fc, String filename) {
        this.f265fc = fc;
        this.filename = filename;
    }

    @Override // com.googlecode.mp4parser.DataSource
    public synchronized int read(ByteBuffer byteBuffer) throws IOException {
        return this.f265fc.read(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.DataSource
    public synchronized long size() throws IOException {
        return this.f265fc.size();
    }

    @Override // com.googlecode.mp4parser.DataSource
    public synchronized long position() throws IOException {
        return this.f265fc.position();
    }

    @Override // com.googlecode.mp4parser.DataSource
    public synchronized void position(long nuPos) throws IOException {
        this.f265fc.position(nuPos);
    }

    @Override // com.googlecode.mp4parser.DataSource
    public synchronized long transferTo(long startPosition, long count, WritableByteChannel sink) throws IOException {
        return this.f265fc.transferTo(startPosition, count, sink);
    }

    @Override // com.googlecode.mp4parser.DataSource
    public synchronized ByteBuffer map(long startPosition, long size) throws IOException {
        ByteBuffer bb;
        bb = ByteBuffer.allocate(CastUtils.l2i(size));
        this.f265fc.read(bb, startPosition);
        return (ByteBuffer) bb.rewind();
    }

    @Override // com.googlecode.mp4parser.DataSource, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f265fc.close();
    }

    public String toString() {
        return this.filename;
    }
}
