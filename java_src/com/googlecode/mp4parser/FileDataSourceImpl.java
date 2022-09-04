package com.googlecode.mp4parser;

import com.googlecode.mp4parser.util.Logger;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.WritableByteChannel;
/* loaded from: classes2.dex */
public class FileDataSourceImpl implements DataSource {
    private static Logger LOG = Logger.getLogger(FileDataSourceImpl.class);

    /* renamed from: fc */
    FileChannel f264fc;
    String filename;

    public FileDataSourceImpl(File f) throws FileNotFoundException {
        this.f264fc = new FileInputStream(f).getChannel();
        this.filename = f.getName();
    }

    public FileDataSourceImpl(String f) throws FileNotFoundException {
        File file = new File(f);
        this.f264fc = new FileInputStream(file).getChannel();
        this.filename = file.getName();
    }

    public FileDataSourceImpl(FileChannel fc) {
        this.f264fc = fc;
        this.filename = "unknown";
    }

    public FileDataSourceImpl(FileChannel fc, String filename) {
        this.f264fc = fc;
        this.filename = filename;
    }

    @Override // com.googlecode.mp4parser.DataSource
    public synchronized int read(ByteBuffer byteBuffer) throws IOException {
        return this.f264fc.read(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.DataSource
    public synchronized long size() throws IOException {
        return this.f264fc.size();
    }

    @Override // com.googlecode.mp4parser.DataSource
    public synchronized long position() throws IOException {
        return this.f264fc.position();
    }

    @Override // com.googlecode.mp4parser.DataSource
    public synchronized void position(long nuPos) throws IOException {
        this.f264fc.position(nuPos);
    }

    @Override // com.googlecode.mp4parser.DataSource
    public synchronized long transferTo(long startPosition, long count, WritableByteChannel sink) throws IOException {
        return this.f264fc.transferTo(startPosition, count, sink);
    }

    @Override // com.googlecode.mp4parser.DataSource
    public synchronized ByteBuffer map(long startPosition, long size) throws IOException {
        LOG.logDebug(String.valueOf(startPosition) + " " + size);
        return this.f264fc.map(FileChannel.MapMode.READ_ONLY, startPosition, size);
    }

    @Override // com.googlecode.mp4parser.DataSource, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f264fc.close();
    }

    public String toString() {
        return this.filename;
    }
}
