package okhttp3.internal.cache2;

import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import okhttp3.internal.Util;
import okio.Buffer;
import okio.ByteString;
import okio.Source;
import okio.Timeout;
/* loaded from: classes2.dex */
final class Relay {
    private static final long FILE_HEADER_SIZE = 32;
    static final ByteString PREFIX_CLEAN = ByteString.encodeUtf8("OkHttp cache v1\n");
    static final ByteString PREFIX_DIRTY = ByteString.encodeUtf8("OkHttp DIRTY :(\n");
    private static final int SOURCE_FILE = 2;
    private static final int SOURCE_UPSTREAM = 1;
    final long bufferMaxSize;
    boolean complete;
    RandomAccessFile file;
    private final ByteString metadata;
    int sourceCount;
    Source upstream;
    long upstreamPos;
    Thread upstreamReader;
    final Buffer upstreamBuffer = new Buffer();
    final Buffer buffer = new Buffer();

    private Relay(RandomAccessFile file, Source upstream, long upstreamPos, ByteString metadata, long bufferMaxSize) {
        this.file = file;
        this.upstream = upstream;
        this.complete = upstream == null;
        this.upstreamPos = upstreamPos;
        this.metadata = metadata;
        this.bufferMaxSize = bufferMaxSize;
    }

    public static Relay edit(File file, Source upstream, ByteString metadata, long bufferMaxSize) throws IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
        Relay result = new Relay(randomAccessFile, upstream, 0L, metadata, bufferMaxSize);
        randomAccessFile.setLength(0L);
        result.writeHeader(PREFIX_DIRTY, -1L, -1L);
        return result;
    }

    public static Relay read(File file) throws IOException {
        RandomAccessFile randomAccessFile = new RandomAccessFile(file, "rw");
        FileOperator fileOperator = new FileOperator(randomAccessFile.getChannel());
        Buffer header = new Buffer();
        fileOperator.read(0L, header, 32L);
        ByteString prefix = header.readByteString(PREFIX_CLEAN.size());
        if (!prefix.equals(PREFIX_CLEAN)) {
            throw new IOException("unreadable cache file");
        }
        long upstreamSize = header.readLong();
        long metadataSize = header.readLong();
        Buffer metadataBuffer = new Buffer();
        fileOperator.read(32 + upstreamSize, metadataBuffer, metadataSize);
        ByteString metadata = metadataBuffer.readByteString();
        return new Relay(randomAccessFile, null, upstreamSize, metadata, 0L);
    }

    private void writeHeader(ByteString prefix, long upstreamSize, long metadataSize) throws IOException {
        Buffer header = new Buffer();
        header.mo1888write(prefix);
        header.mo1896writeLong(upstreamSize);
        header.mo1896writeLong(metadataSize);
        if (header.size() != 32) {
            throw new IllegalArgumentException();
        }
        FileOperator fileOperator = new FileOperator(this.file.getChannel());
        fileOperator.write(0L, header, 32L);
    }

    private void writeMetadata(long upstreamSize) throws IOException {
        Buffer metadataBuffer = new Buffer();
        metadataBuffer.mo1888write(this.metadata);
        FileOperator fileOperator = new FileOperator(this.file.getChannel());
        fileOperator.write(32 + upstreamSize, metadataBuffer, this.metadata.size());
    }

    void commit(long upstreamSize) throws IOException {
        writeMetadata(upstreamSize);
        this.file.getChannel().force(false);
        writeHeader(PREFIX_CLEAN, upstreamSize, this.metadata.size());
        this.file.getChannel().force(false);
        synchronized (this) {
            this.complete = true;
        }
        Util.closeQuietly(this.upstream);
        this.upstream = null;
    }

    boolean isClosed() {
        return this.file == null;
    }

    public ByteString metadata() {
        return this.metadata;
    }

    public Source newSource() {
        synchronized (this) {
            if (this.file == null) {
                return null;
            }
            this.sourceCount++;
            return new RelaySource();
        }
    }

    /* loaded from: classes2.dex */
    class RelaySource implements Source {
        private FileOperator fileOperator;
        private long sourcePos;
        private final Timeout timeout = new Timeout();

        RelaySource() {
            this.fileOperator = new FileOperator(Relay.this.file.getChannel());
        }

        /* JADX WARN: Code restructure failed: missing block: B:20:0x0056, code lost:
            if (r24 != 2) goto L23;
         */
        /* JADX WARN: Code restructure failed: missing block: B:21:0x0058, code lost:
            r8 = java.lang.Math.min(r30, r0 - r28.sourcePos);
            r28.fileOperator.read(32 + r28.sourcePos, r29, r8);
            r28.sourcePos += r8;
         */
        /* JADX WARN: Code restructure failed: missing block: B:22:?, code lost:
            return r8;
         */
        /* JADX WARN: Code restructure failed: missing block: B:24:0x00c0, code lost:
            r20 = r28.this$0.upstream.read(r28.this$0.upstreamBuffer, r28.this$0.bufferMaxSize);
         */
        /* JADX WARN: Code restructure failed: missing block: B:25:0x00da, code lost:
            if (r20 != (-1)) goto L38;
         */
        /* JADX WARN: Code restructure failed: missing block: B:26:0x00dc, code lost:
            r28.this$0.commit(r0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:27:0x00e5, code lost:
            r5 = r28.this$0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:28:0x00eb, code lost:
            monitor-enter(r5);
         */
        /* JADX WARN: Code restructure failed: missing block: B:30:0x00ec, code lost:
            r28.this$0.upstreamReader = null;
            r28.this$0.notifyAll();
         */
        /* JADX WARN: Code restructure failed: missing block: B:31:0x00fa, code lost:
            monitor-exit(r5);
         */
        /* JADX WARN: Code restructure failed: missing block: B:33:?, code lost:
            return -1;
         */
        /* JADX WARN: Code restructure failed: missing block: B:38:0x0100, code lost:
            r14 = java.lang.Math.min(r20, r30);
            r28.this$0.upstreamBuffer.copyTo(r29, 0, r14);
            r28.sourcePos += r14;
            r28.fileOperator.write(32 + r0, r28.this$0.upstreamBuffer.clone(), r20);
            r5 = r28.this$0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:39:0x0139, code lost:
            monitor-enter(r5);
         */
        /* JADX WARN: Code restructure failed: missing block: B:40:0x013a, code lost:
            r28.this$0.buffer.write(r28.this$0.upstreamBuffer, r20);
         */
        /* JADX WARN: Code restructure failed: missing block: B:41:0x015d, code lost:
            if (r28.this$0.buffer.size() <= r28.this$0.bufferMaxSize) goto L43;
         */
        /* JADX WARN: Code restructure failed: missing block: B:42:0x015f, code lost:
            r28.this$0.buffer.skip(r28.this$0.buffer.size() - r28.this$0.bufferMaxSize);
         */
        /* JADX WARN: Code restructure failed: missing block: B:43:0x0179, code lost:
            r28.this$0.upstreamPos += r20;
         */
        /* JADX WARN: Code restructure failed: missing block: B:44:0x0183, code lost:
            monitor-exit(r5);
         */
        /* JADX WARN: Code restructure failed: missing block: B:45:0x0184, code lost:
            r5 = r28.this$0;
         */
        /* JADX WARN: Code restructure failed: missing block: B:46:0x0188, code lost:
            monitor-enter(r5);
         */
        /* JADX WARN: Code restructure failed: missing block: B:48:0x0189, code lost:
            r28.this$0.upstreamReader = null;
            r28.this$0.notifyAll();
         */
        /* JADX WARN: Code restructure failed: missing block: B:49:0x0197, code lost:
            monitor-exit(r5);
         */
        /* JADX WARN: Code restructure failed: missing block: B:51:?, code lost:
            return r14;
         */
        /* JADX WARN: Code restructure failed: missing block: B:56:0x019e, code lost:
            r4 = move-exception;
         */
        /* JADX WARN: Code restructure failed: missing block: B:58:0x01a3, code lost:
            monitor-enter(r28.this$0);
         */
        /* JADX WARN: Code restructure failed: missing block: B:60:0x01a4, code lost:
            r28.this$0.upstreamReader = null;
            r28.this$0.notifyAll();
         */
        /* JADX WARN: Code restructure failed: missing block: B:62:0x01b3, code lost:
            throw r4;
         */
        @Override // okio.Source
        /*
            Code decompiled incorrectly, please refer to instructions dump.
        */
        public long read(Buffer sink, long byteCount) throws IOException {
            int source;
            if (this.fileOperator == null) {
                throw new IllegalStateException("closed");
            }
            synchronized (Relay.this) {
                while (true) {
                    long j = this.sourcePos;
                    long upstreamPos = Relay.this.upstreamPos;
                    if (j == upstreamPos) {
                        if (!Relay.this.complete) {
                            if (Relay.this.upstreamReader != null) {
                                this.timeout.waitUntilNotified(Relay.this);
                            } else {
                                Relay.this.upstreamReader = Thread.currentThread();
                                source = 1;
                                break;
                            }
                        } else {
                            return -1L;
                        }
                    } else {
                        long bufferPos = upstreamPos - Relay.this.buffer.size();
                        if (this.sourcePos < bufferPos) {
                            source = 2;
                        } else {
                            long bytesToRead = Math.min(byteCount, upstreamPos - this.sourcePos);
                            Relay.this.buffer.copyTo(sink, this.sourcePos - bufferPos, bytesToRead);
                            this.sourcePos += bytesToRead;
                            return bytesToRead;
                        }
                    }
                }
            }
        }

        @Override // okio.Source
        public Timeout timeout() {
            return this.timeout;
        }

        @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            if (this.fileOperator != null) {
                this.fileOperator = null;
                RandomAccessFile fileToClose = null;
                synchronized (Relay.this) {
                    Relay relay = Relay.this;
                    relay.sourceCount--;
                    if (Relay.this.sourceCount == 0) {
                        fileToClose = Relay.this.file;
                        Relay.this.file = null;
                    }
                }
                if (fileToClose != null) {
                    Util.closeQuietly(fileToClose);
                }
            }
        }
    }
}
