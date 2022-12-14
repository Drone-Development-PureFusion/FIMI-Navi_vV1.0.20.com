package okio;

import com.facebook.common.time.Clock;
import com.facebook.imageutils.JfifUtil;
import com.fimi.host.HostConstants;
import com.fimi.x8sdk.command.FcCollection;
import com.fimi.x8sdk.command.X8GimbalCollection;
import java.io.EOFException;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.nio.charset.Charset;
import java.security.InvalidKeyException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import javax.annotation.Nullable;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
/* loaded from: classes.dex */
public final class Buffer implements BufferedSource, BufferedSink, Cloneable {
    private static final byte[] DIGITS = {48, 49, 50, 51, 52, 53, FcCollection.MSG_LOCK_MOTOR_STATE, 55, FcCollection.MSG_SET_AUTO_PHOTO_EXCUTE, FcCollection.MSG_SET_AUTO_PHOTO_PAUSE, FcCollection.MSG_SET_FOLLOW_CLOSE, FcCollection.MSG_SET_FOLLOW_NOTITY_FC, FcCollection.MSG_SET_SCREW_START, FcCollection.MSG_SET_SCREW_PAUSE, FcCollection.MSG_SET_SCREW_RESUME, FcCollection.MSG_SET_SCREW_EXITE};
    static final int REPLACEMENT_CHARACTER = 65533;
    @Nullable
    Segment head;
    long size;

    public long size() {
        return this.size;
    }

    @Override // okio.BufferedSource, okio.BufferedSink
    public Buffer buffer() {
        return this;
    }

    @Override // okio.BufferedSink
    public OutputStream outputStream() {
        return new OutputStream() { // from class: okio.Buffer.1
            @Override // java.io.OutputStream
            public void write(int b) {
                Buffer.this.mo1891writeByte((int) ((byte) b));
            }

            @Override // java.io.OutputStream
            public void write(byte[] data, int offset, int byteCount) {
                Buffer.this.mo1890write(data, offset, byteCount);
            }

            @Override // java.io.OutputStream, java.io.Flushable
            public void flush() {
            }

            @Override // java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }

            public String toString() {
                return Buffer.this + ".outputStream()";
            }
        };
    }

    @Override // okio.BufferedSink
    /* renamed from: emitCompleteSegments */
    public Buffer mo1887emitCompleteSegments() {
        return this;
    }

    @Override // okio.BufferedSink
    public BufferedSink emit() {
        return this;
    }

    @Override // okio.BufferedSource
    public boolean exhausted() {
        return this.size == 0;
    }

    @Override // okio.BufferedSource
    public void require(long byteCount) throws EOFException {
        if (this.size < byteCount) {
            throw new EOFException();
        }
    }

    @Override // okio.BufferedSource
    public boolean request(long byteCount) {
        return this.size >= byteCount;
    }

    @Override // okio.BufferedSource
    public InputStream inputStream() {
        return new InputStream() { // from class: okio.Buffer.2
            @Override // java.io.InputStream
            public int read() {
                if (Buffer.this.size > 0) {
                    return Buffer.this.readByte() & 255;
                }
                return -1;
            }

            @Override // java.io.InputStream
            public int read(byte[] sink, int offset, int byteCount) {
                return Buffer.this.read(sink, offset, byteCount);
            }

            @Override // java.io.InputStream
            public int available() {
                return (int) Math.min(Buffer.this.size, 2147483647L);
            }

            @Override // java.io.InputStream, java.io.Closeable, java.lang.AutoCloseable
            public void close() {
            }

            public String toString() {
                return Buffer.this + ".inputStream()";
            }
        };
    }

    public Buffer copyTo(OutputStream out) throws IOException {
        return copyTo(out, 0L, this.size);
    }

    public Buffer copyTo(OutputStream out, long offset, long byteCount) throws IOException {
        if (out == null) {
            throw new IllegalArgumentException("out == null");
        }
        Util.checkOffsetAndCount(this.size, offset, byteCount);
        if (byteCount != 0) {
            Segment s = this.head;
            while (offset >= s.limit - s.pos) {
                offset -= s.limit - s.pos;
                s = s.next;
            }
            while (byteCount > 0) {
                int pos = (int) (s.pos + offset);
                int toCopy = (int) Math.min(s.limit - pos, byteCount);
                out.write(s.data, pos, toCopy);
                byteCount -= toCopy;
                offset = 0;
                s = s.next;
            }
        }
        return this;
    }

    public Buffer copyTo(Buffer out, long offset, long byteCount) {
        if (out == null) {
            throw new IllegalArgumentException("out == null");
        }
        Util.checkOffsetAndCount(this.size, offset, byteCount);
        if (byteCount != 0) {
            out.size += byteCount;
            Segment s = this.head;
            while (offset >= s.limit - s.pos) {
                offset -= s.limit - s.pos;
                s = s.next;
            }
            while (byteCount > 0) {
                Segment copy = new Segment(s);
                copy.pos = (int) (copy.pos + offset);
                copy.limit = Math.min(copy.pos + ((int) byteCount), copy.limit);
                if (out.head == null) {
                    copy.prev = copy;
                    copy.next = copy;
                    out.head = copy;
                } else {
                    out.head.prev.push(copy);
                }
                byteCount -= copy.limit - copy.pos;
                offset = 0;
                s = s.next;
            }
        }
        return this;
    }

    public Buffer writeTo(OutputStream out) throws IOException {
        return writeTo(out, this.size);
    }

    public Buffer writeTo(OutputStream out, long byteCount) throws IOException {
        if (out == null) {
            throw new IllegalArgumentException("out == null");
        }
        Util.checkOffsetAndCount(this.size, 0L, byteCount);
        Segment s = this.head;
        while (byteCount > 0) {
            int toCopy = (int) Math.min(byteCount, s.limit - s.pos);
            out.write(s.data, s.pos, toCopy);
            s.pos += toCopy;
            this.size -= toCopy;
            byteCount -= toCopy;
            if (s.pos == s.limit) {
                Segment toRecycle = s;
                s = toRecycle.pop();
                this.head = s;
                SegmentPool.recycle(toRecycle);
            }
        }
        return this;
    }

    public Buffer readFrom(InputStream in) throws IOException {
        readFrom(in, Clock.MAX_TIME, true);
        return this;
    }

    public Buffer readFrom(InputStream in, long byteCount) throws IOException {
        if (byteCount < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + byteCount);
        }
        readFrom(in, byteCount, false);
        return this;
    }

    private void readFrom(InputStream in, long byteCount, boolean forever) throws IOException {
        if (in == null) {
            throw new IllegalArgumentException("in == null");
        }
        while (true) {
            if (byteCount > 0 || forever) {
                Segment tail = writableSegment(1);
                int maxToCopy = (int) Math.min(byteCount, 8192 - tail.limit);
                int bytesRead = in.read(tail.data, tail.limit, maxToCopy);
                if (bytesRead == -1) {
                    if (!forever) {
                        throw new EOFException();
                    }
                    return;
                }
                tail.limit += bytesRead;
                this.size += bytesRead;
                byteCount -= bytesRead;
            } else {
                return;
            }
        }
    }

    public long completeSegmentByteCount() {
        long result = this.size;
        if (result == 0) {
            return 0L;
        }
        Segment tail = this.head.prev;
        if (tail.limit < 8192 && tail.owner) {
            result -= tail.limit - tail.pos;
        }
        return result;
    }

    @Override // okio.BufferedSource
    public byte readByte() {
        if (this.size == 0) {
            throw new IllegalStateException("size == 0");
        }
        Segment segment = this.head;
        int pos = segment.pos;
        int limit = segment.limit;
        byte[] data = segment.data;
        int pos2 = pos + 1;
        byte b = data[pos];
        this.size--;
        if (pos2 == limit) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
        } else {
            segment.pos = pos2;
        }
        return b;
    }

    public byte getByte(long pos) {
        Util.checkOffsetAndCount(this.size, pos, 1L);
        Segment s = this.head;
        while (true) {
            int segmentByteCount = s.limit - s.pos;
            if (pos < segmentByteCount) {
                return s.data[s.pos + ((int) pos)];
            }
            pos -= segmentByteCount;
            s = s.next;
        }
    }

    @Override // okio.BufferedSource
    public short readShort() {
        if (this.size < 2) {
            throw new IllegalStateException("size < 2: " + this.size);
        }
        Segment segment = this.head;
        int pos = segment.pos;
        int limit = segment.limit;
        if (limit - pos < 2) {
            int s = ((readByte() & 255) << 8) | (readByte() & 255);
            return (short) s;
        }
        byte[] data = segment.data;
        int pos2 = pos + 1;
        int pos3 = pos2 + 1;
        int s2 = ((data[pos] & 255) << 8) | (data[pos2] & 255);
        this.size -= 2;
        if (pos3 == limit) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
        } else {
            segment.pos = pos3;
        }
        return (short) s2;
    }

    @Override // okio.BufferedSource
    public int readInt() {
        if (this.size < 4) {
            throw new IllegalStateException("size < 4: " + this.size);
        }
        Segment segment = this.head;
        int pos = segment.pos;
        int limit = segment.limit;
        if (limit - pos < 4) {
            return ((readByte() & 255) << 24) | ((readByte() & 255) << 16) | ((readByte() & 255) << 8) | (readByte() & 255);
        }
        byte[] data = segment.data;
        int pos2 = pos + 1;
        int pos3 = pos2 + 1;
        int pos4 = pos3 + 1;
        int pos5 = pos4 + 1;
        int i = ((data[pos] & 255) << 24) | ((data[pos2] & 255) << 16) | ((data[pos3] & 255) << 8) | (data[pos4] & 255);
        this.size -= 4;
        if (pos5 == limit) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
            return i;
        }
        segment.pos = pos5;
        return i;
    }

    @Override // okio.BufferedSource
    public long readLong() {
        int pos;
        int pos2;
        int pos3;
        int pos4;
        int pos5;
        int pos6;
        int pos7;
        if (this.size < 8) {
            throw new IllegalStateException("size < 8: " + this.size);
        }
        Segment segment = this.head;
        int pos8 = segment.pos;
        int limit = segment.limit;
        if (limit - pos8 < 8) {
            return ((readInt() & 4294967295L) << 32) | (readInt() & 4294967295L);
        }
        byte[] data = segment.data;
        int pos9 = pos8 + 1 + 1 + 1 + 1 + 1 + 1 + 1 + 1;
        long j = ((data[pos8] & 255) << 56) | ((data[pos] & 255) << 48) | ((data[pos2] & 255) << 40) | ((data[pos3] & 255) << 32) | ((data[pos4] & 255) << 24) | ((data[pos5] & 255) << 16) | ((data[pos6] & 255) << 8) | (data[pos7] & 255);
        this.size -= 8;
        if (pos9 == limit) {
            this.head = segment.pop();
            SegmentPool.recycle(segment);
            return j;
        }
        segment.pos = pos9;
        return j;
    }

    @Override // okio.BufferedSource
    public short readShortLe() {
        return Util.reverseBytesShort(readShort());
    }

    @Override // okio.BufferedSource
    public int readIntLe() {
        return Util.reverseBytesInt(readInt());
    }

    @Override // okio.BufferedSource
    public long readLongLe() {
        return Util.reverseBytesLong(readLong());
    }

    /* JADX WARN: Removed duplicated region for block: B:38:0x00c7  */
    /* JADX WARN: Removed duplicated region for block: B:40:0x00d6  */
    /* JADX WARN: Removed duplicated region for block: B:48:0x00de A[EDGE_INSN: B:48:0x00de->B:43:0x00de ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:49:0x00f4  */
    @Override // okio.BufferedSource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public long readDecimalLong() {
        if (this.size == 0) {
            throw new IllegalStateException("size == 0");
        }
        long value = 0;
        int seen = 0;
        boolean negative = false;
        boolean done = false;
        long overflowDigit = -7;
        do {
            Segment segment = this.head;
            byte[] data = segment.data;
            int pos = segment.pos;
            int limit = segment.limit;
            while (pos < limit) {
                byte b = data[pos];
                if (b >= 48 && b <= 57) {
                    int digit = 48 - b;
                    if (value < -922337203685477580L || (value == -922337203685477580L && digit < overflowDigit)) {
                        Buffer buffer = new Buffer().mo1892writeDecimalLong(value).mo1891writeByte((int) b);
                        if (!negative) {
                            buffer.readByte();
                        }
                        throw new NumberFormatException("Number too large: " + buffer.readUtf8());
                    }
                    value = (value * 10) + digit;
                } else if (b == 45 && seen == 0) {
                    negative = true;
                    overflowDigit--;
                } else if (seen == 0) {
                    throw new NumberFormatException("Expected leading [0-9] or '-' character but was 0x" + Integer.toHexString(b));
                } else {
                    done = true;
                    if (pos != limit) {
                        this.head = segment.pop();
                        SegmentPool.recycle(segment);
                    } else {
                        segment.pos = pos;
                    }
                    if (!done) {
                        break;
                    }
                }
                pos++;
                seen++;
            }
            if (pos != limit) {
            }
            if (!done) {
            }
        } while (this.head != null);
        this.size -= seen;
        return negative ? value : -value;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x009d  */
    /* JADX WARN: Removed duplicated region for block: B:36:0x00aa  */
    /* JADX WARN: Removed duplicated region for block: B:41:0x00b0 A[EDGE_INSN: B:41:0x00b0->B:39:0x00b0 ?: BREAK  , SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x00c8  */
    @Override // okio.BufferedSource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public long readHexadecimalUnsignedLong() {
        int digit;
        if (this.size == 0) {
            throw new IllegalStateException("size == 0");
        }
        long value = 0;
        int seen = 0;
        boolean done = false;
        do {
            Segment segment = this.head;
            byte[] data = segment.data;
            int pos = segment.pos;
            int limit = segment.limit;
            while (pos < limit) {
                byte b = data[pos];
                if (b >= 48 && b <= 57) {
                    digit = b - 48;
                } else if (b >= 97 && b <= 102) {
                    digit = (b - 97) + 10;
                } else if (b >= 65 && b <= 70) {
                    digit = (b - 65) + 10;
                } else if (seen == 0) {
                    throw new NumberFormatException("Expected leading [0-9a-fA-F] character but was 0x" + Integer.toHexString(b));
                } else {
                    done = true;
                    if (pos != limit) {
                        this.head = segment.pop();
                        SegmentPool.recycle(segment);
                    } else {
                        segment.pos = pos;
                    }
                    if (!done) {
                        break;
                    }
                }
                if (((-1152921504606846976L) & value) != 0) {
                    Buffer buffer = new Buffer().mo1893writeHexadecimalUnsignedLong(value).mo1891writeByte((int) b);
                    throw new NumberFormatException("Number too large: " + buffer.readUtf8());
                }
                value = (value << 4) | digit;
                pos++;
                seen++;
            }
            if (pos != limit) {
            }
            if (!done) {
            }
        } while (this.head != null);
        this.size -= seen;
        return value;
    }

    @Override // okio.BufferedSource
    public ByteString readByteString() {
        return new ByteString(readByteArray());
    }

    @Override // okio.BufferedSource
    public ByteString readByteString(long byteCount) throws EOFException {
        return new ByteString(readByteArray(byteCount));
    }

    @Override // okio.BufferedSource
    public int select(Options options) {
        Segment s = this.head;
        if (s == null) {
            return options.indexOf(ByteString.EMPTY);
        }
        ByteString[] byteStrings = options.byteStrings;
        int listSize = byteStrings.length;
        for (int i = 0; i < listSize; i++) {
            ByteString b = byteStrings[i];
            if (this.size >= b.size() && rangeEquals(s, s.pos, b, 0, b.size())) {
                try {
                    skip(b.size());
                    return i;
                } catch (EOFException e) {
                    throw new AssertionError(e);
                }
            }
        }
        return -1;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int selectPrefix(Options options) {
        Segment s = this.head;
        ByteString[] byteStrings = options.byteStrings;
        int i = 0;
        int listSize = byteStrings.length;
        while (i < listSize) {
            ByteString b = byteStrings[i];
            int bytesLimit = (int) Math.min(this.size, b.size());
            if (bytesLimit != 0 && !rangeEquals(s, s.pos, b, 0, bytesLimit)) {
                i++;
            } else {
                return i;
            }
        }
        return -1;
    }

    @Override // okio.BufferedSource
    public void readFully(Buffer sink, long byteCount) throws EOFException {
        if (this.size < byteCount) {
            sink.write(this, this.size);
            throw new EOFException();
        } else {
            sink.write(this, byteCount);
        }
    }

    @Override // okio.BufferedSource
    public long readAll(Sink sink) throws IOException {
        long byteCount = this.size;
        if (byteCount > 0) {
            sink.write(this, byteCount);
        }
        return byteCount;
    }

    @Override // okio.BufferedSource
    public String readUtf8() {
        try {
            return readString(this.size, Util.UTF_8);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    @Override // okio.BufferedSource
    public String readUtf8(long byteCount) throws EOFException {
        return readString(byteCount, Util.UTF_8);
    }

    @Override // okio.BufferedSource
    public String readString(Charset charset) {
        try {
            return readString(this.size, charset);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    @Override // okio.BufferedSource
    public String readString(long byteCount, Charset charset) throws EOFException {
        Util.checkOffsetAndCount(this.size, 0L, byteCount);
        if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        }
        if (byteCount > 2147483647L) {
            throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + byteCount);
        }
        if (byteCount == 0) {
            return "";
        }
        Segment s = this.head;
        if (s.pos + byteCount > s.limit) {
            return new String(readByteArray(byteCount), charset);
        }
        String str = new String(s.data, s.pos, (int) byteCount, charset);
        s.pos = (int) (s.pos + byteCount);
        this.size -= byteCount;
        if (s.pos == s.limit) {
            this.head = s.pop();
            SegmentPool.recycle(s);
            return str;
        }
        return str;
    }

    @Override // okio.BufferedSource
    @Nullable
    public String readUtf8Line() throws EOFException {
        long newline = indexOf((byte) 10);
        if (newline == -1) {
            if (this.size == 0) {
                return null;
            }
            return readUtf8(this.size);
        }
        return readUtf8Line(newline);
    }

    @Override // okio.BufferedSource
    public String readUtf8LineStrict() throws EOFException {
        return readUtf8LineStrict(Clock.MAX_TIME);
    }

    @Override // okio.BufferedSource
    public String readUtf8LineStrict(long limit) throws EOFException {
        if (limit < 0) {
            throw new IllegalArgumentException("limit < 0: " + limit);
        }
        long scanLength = limit == Clock.MAX_TIME ? Clock.MAX_TIME : limit + 1;
        long newline = indexOf((byte) 10, 0L, scanLength);
        if (newline != -1) {
            return readUtf8Line(newline);
        }
        if (scanLength < size() && getByte(scanLength - 1) == 13 && getByte(scanLength) == 10) {
            return readUtf8Line(scanLength);
        }
        Buffer data = new Buffer();
        copyTo(data, 0L, Math.min(32L, size()));
        throw new EOFException("\\n not found: limit=" + Math.min(size(), limit) + " content=" + data.readByteString().hex() + (char) 8230);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public String readUtf8Line(long newline) throws EOFException {
        if (newline > 0 && getByte(newline - 1) == 13) {
            String result = readUtf8(newline - 1);
            skip(2L);
            return result;
        }
        String result2 = readUtf8(newline);
        skip(1L);
        return result2;
    }

    @Override // okio.BufferedSource
    public int readUtf8CodePoint() throws EOFException {
        int codePoint;
        int byteCount;
        int min;
        if (this.size == 0) {
            throw new EOFException();
        }
        byte b0 = getByte(0L);
        if ((b0 & 128) == 0) {
            codePoint = b0 & Byte.MAX_VALUE;
            byteCount = 1;
            min = 0;
        } else if ((b0 & 224) == 192) {
            codePoint = b0 & X8GimbalCollection.MSG_ID_GET_GIMBAL_GAIN;
            byteCount = 2;
            min = 128;
        } else if ((b0 & 240) == 224) {
            codePoint = b0 & 15;
            byteCount = 3;
            min = 2048;
        } else if ((b0 & 248) == 240) {
            codePoint = b0 & 7;
            byteCount = 4;
            min = 65536;
        } else {
            skip(1L);
            return REPLACEMENT_CHARACTER;
        }
        if (this.size < byteCount) {
            throw new EOFException("size < " + byteCount + ": " + this.size + " (to read code point prefixed 0x" + Integer.toHexString(b0) + ")");
        }
        for (int i = 1; i < byteCount; i++) {
            byte b = getByte(i);
            if ((b & 192) == 128) {
                codePoint = (codePoint << 6) | (b & 63);
            } else {
                skip(i);
                return REPLACEMENT_CHARACTER;
            }
        }
        skip(byteCount);
        return codePoint > 1114111 ? REPLACEMENT_CHARACTER : ((codePoint < 55296 || codePoint > 57343) && codePoint >= min) ? codePoint : REPLACEMENT_CHARACTER;
    }

    @Override // okio.BufferedSource
    public byte[] readByteArray() {
        try {
            return readByteArray(this.size);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    @Override // okio.BufferedSource
    public byte[] readByteArray(long byteCount) throws EOFException {
        Util.checkOffsetAndCount(this.size, 0L, byteCount);
        if (byteCount > 2147483647L) {
            throw new IllegalArgumentException("byteCount > Integer.MAX_VALUE: " + byteCount);
        }
        byte[] result = new byte[(int) byteCount];
        readFully(result);
        return result;
    }

    @Override // okio.BufferedSource
    public int read(byte[] sink) {
        return read(sink, 0, sink.length);
    }

    @Override // okio.BufferedSource
    public void readFully(byte[] sink) throws EOFException {
        int offset = 0;
        while (offset < sink.length) {
            int read = read(sink, offset, sink.length - offset);
            if (read == -1) {
                throw new EOFException();
            }
            offset += read;
        }
    }

    @Override // okio.BufferedSource
    public int read(byte[] sink, int offset, int byteCount) {
        Util.checkOffsetAndCount(sink.length, offset, byteCount);
        Segment s = this.head;
        if (s == null) {
            return -1;
        }
        int toCopy = Math.min(byteCount, s.limit - s.pos);
        System.arraycopy(s.data, s.pos, sink, offset, toCopy);
        s.pos += toCopy;
        this.size -= toCopy;
        if (s.pos == s.limit) {
            this.head = s.pop();
            SegmentPool.recycle(s);
            return toCopy;
        }
        return toCopy;
    }

    public void clear() {
        try {
            skip(this.size);
        } catch (EOFException e) {
            throw new AssertionError(e);
        }
    }

    @Override // okio.BufferedSource
    public void skip(long byteCount) throws EOFException {
        while (byteCount > 0) {
            if (this.head == null) {
                throw new EOFException();
            }
            int toSkip = (int) Math.min(byteCount, this.head.limit - this.head.pos);
            this.size -= toSkip;
            byteCount -= toSkip;
            this.head.pos += toSkip;
            if (this.head.pos == this.head.limit) {
                Segment toRecycle = this.head;
                this.head = toRecycle.pop();
                SegmentPool.recycle(toRecycle);
            }
        }
    }

    @Override // okio.BufferedSink
    /* renamed from: write */
    public Buffer mo1888write(ByteString byteString) {
        if (byteString == null) {
            throw new IllegalArgumentException("byteString == null");
        }
        byteString.write(this);
        return this;
    }

    @Override // okio.BufferedSink
    /* renamed from: writeUtf8 */
    public Buffer mo1902writeUtf8(String string) {
        return mo1903writeUtf8(string, 0, string.length());
    }

    @Override // okio.BufferedSink
    /* renamed from: writeUtf8 */
    public Buffer mo1903writeUtf8(String string, int beginIndex, int endIndex) {
        if (string == null) {
            throw new IllegalArgumentException("string == null");
        }
        if (beginIndex < 0) {
            throw new IllegalArgumentException("beginIndex < 0: " + beginIndex);
        }
        if (endIndex < beginIndex) {
            throw new IllegalArgumentException("endIndex < beginIndex: " + endIndex + " < " + beginIndex);
        }
        if (endIndex > string.length()) {
            throw new IllegalArgumentException("endIndex > string.length: " + endIndex + " > " + string.length());
        }
        int i = beginIndex;
        while (true) {
            int i2 = i;
            if (i2 < endIndex) {
                int c = string.charAt(i2);
                if (c < 128) {
                    Segment tail = writableSegment(1);
                    byte[] data = tail.data;
                    int segmentOffset = tail.limit - i2;
                    int runLimit = Math.min(endIndex, 8192 - segmentOffset);
                    data[segmentOffset + i2] = (byte) c;
                    int i3 = i2 + 1;
                    while (i3 < runLimit) {
                        int c2 = string.charAt(i3);
                        if (c2 >= 128) {
                            break;
                        }
                        data[segmentOffset + i3] = (byte) c2;
                        i3++;
                    }
                    int runSize = (i3 + segmentOffset) - tail.limit;
                    tail.limit += runSize;
                    this.size += runSize;
                    i = i3;
                } else if (c < 2048) {
                    mo1891writeByte((c >> 6) | JfifUtil.MARKER_SOFn);
                    mo1891writeByte((c & 63) | 128);
                    i = i2 + 1;
                } else if (c < 55296 || c > 57343) {
                    mo1891writeByte((c >> 12) | 224);
                    mo1891writeByte(((c >> 6) & 63) | 128);
                    mo1891writeByte((c & 63) | 128);
                    i = i2 + 1;
                } else {
                    int low = i2 + 1 < endIndex ? string.charAt(i2 + 1) : 0;
                    if (c > 56319 || low < 56320 || low > 57343) {
                        mo1891writeByte(63);
                        i = i2 + 1;
                    } else {
                        int codePoint = 65536 + ((((-55297) & c) << 10) | ((-56321) & low));
                        mo1891writeByte((codePoint >> 18) | 240);
                        mo1891writeByte(((codePoint >> 12) & 63) | 128);
                        mo1891writeByte(((codePoint >> 6) & 63) | 128);
                        mo1891writeByte((codePoint & 63) | 128);
                        i = i2 + 2;
                    }
                }
            } else {
                return this;
            }
        }
    }

    @Override // okio.BufferedSink
    /* renamed from: writeUtf8CodePoint */
    public Buffer mo1904writeUtf8CodePoint(int codePoint) {
        if (codePoint < 128) {
            mo1891writeByte(codePoint);
        } else if (codePoint < 2048) {
            mo1891writeByte((codePoint >> 6) | JfifUtil.MARKER_SOFn);
            mo1891writeByte((codePoint & 63) | 128);
        } else if (codePoint < 65536) {
            if (codePoint >= 55296 && codePoint <= 57343) {
                mo1891writeByte(63);
            } else {
                mo1891writeByte((codePoint >> 12) | 224);
                mo1891writeByte(((codePoint >> 6) & 63) | 128);
                mo1891writeByte((codePoint & 63) | 128);
            }
        } else if (codePoint <= 1114111) {
            mo1891writeByte((codePoint >> 18) | 240);
            mo1891writeByte(((codePoint >> 12) & 63) | 128);
            mo1891writeByte(((codePoint >> 6) & 63) | 128);
            mo1891writeByte((codePoint & 63) | 128);
        } else {
            throw new IllegalArgumentException("Unexpected code point: " + Integer.toHexString(codePoint));
        }
        return this;
    }

    @Override // okio.BufferedSink
    /* renamed from: writeString */
    public Buffer mo1901writeString(String string, Charset charset) {
        return mo1900writeString(string, 0, string.length(), charset);
    }

    @Override // okio.BufferedSink
    /* renamed from: writeString */
    public Buffer mo1900writeString(String string, int beginIndex, int endIndex, Charset charset) {
        if (string == null) {
            throw new IllegalArgumentException("string == null");
        }
        if (beginIndex < 0) {
            throw new IllegalAccessError("beginIndex < 0: " + beginIndex);
        }
        if (endIndex < beginIndex) {
            throw new IllegalArgumentException("endIndex < beginIndex: " + endIndex + " < " + beginIndex);
        }
        if (endIndex > string.length()) {
            throw new IllegalArgumentException("endIndex > string.length: " + endIndex + " > " + string.length());
        }
        if (charset == null) {
            throw new IllegalArgumentException("charset == null");
        }
        if (charset.equals(Util.UTF_8)) {
            return mo1903writeUtf8(string, beginIndex, endIndex);
        }
        byte[] data = string.substring(beginIndex, endIndex).getBytes(charset);
        return mo1890write(data, 0, data.length);
    }

    @Override // okio.BufferedSink
    /* renamed from: write */
    public Buffer mo1889write(byte[] source) {
        if (source == null) {
            throw new IllegalArgumentException("source == null");
        }
        return mo1890write(source, 0, source.length);
    }

    @Override // okio.BufferedSink
    /* renamed from: write */
    public Buffer mo1890write(byte[] source, int offset, int byteCount) {
        if (source == null) {
            throw new IllegalArgumentException("source == null");
        }
        Util.checkOffsetAndCount(source.length, offset, byteCount);
        int limit = offset + byteCount;
        while (offset < limit) {
            Segment tail = writableSegment(1);
            int toCopy = Math.min(limit - offset, 8192 - tail.limit);
            System.arraycopy(source, offset, tail.data, tail.limit, toCopy);
            offset += toCopy;
            tail.limit += toCopy;
        }
        this.size += byteCount;
        return this;
    }

    @Override // okio.BufferedSink
    public long writeAll(Source source) throws IOException {
        if (source == null) {
            throw new IllegalArgumentException("source == null");
        }
        long totalBytesRead = 0;
        while (true) {
            long readCount = source.read(this, 8192L);
            if (readCount != -1) {
                totalBytesRead += readCount;
            } else {
                return totalBytesRead;
            }
        }
    }

    @Override // okio.BufferedSink
    public BufferedSink write(Source source, long byteCount) throws IOException {
        while (byteCount > 0) {
            long read = source.read(this, byteCount);
            if (read == -1) {
                throw new EOFException();
            }
            byteCount -= read;
        }
        return this;
    }

    @Override // okio.BufferedSink
    /* renamed from: writeByte */
    public Buffer mo1891writeByte(int b) {
        Segment tail = writableSegment(1);
        byte[] bArr = tail.data;
        int i = tail.limit;
        tail.limit = i + 1;
        bArr[i] = (byte) b;
        this.size++;
        return this;
    }

    @Override // okio.BufferedSink
    /* renamed from: writeShort */
    public Buffer mo1898writeShort(int s) {
        Segment tail = writableSegment(2);
        byte[] data = tail.data;
        int limit = tail.limit;
        int limit2 = limit + 1;
        data[limit] = (byte) ((s >>> 8) & 255);
        data[limit2] = (byte) (s & 255);
        tail.limit = limit2 + 1;
        this.size += 2;
        return this;
    }

    @Override // okio.BufferedSink
    /* renamed from: writeShortLe */
    public Buffer mo1899writeShortLe(int s) {
        return mo1898writeShort((int) Util.reverseBytesShort((short) s));
    }

    @Override // okio.BufferedSink
    /* renamed from: writeInt */
    public Buffer mo1894writeInt(int i) {
        Segment tail = writableSegment(4);
        byte[] data = tail.data;
        int limit = tail.limit;
        int limit2 = limit + 1;
        data[limit] = (byte) ((i >>> 24) & 255);
        int limit3 = limit2 + 1;
        data[limit2] = (byte) ((i >>> 16) & 255);
        int limit4 = limit3 + 1;
        data[limit3] = (byte) ((i >>> 8) & 255);
        data[limit4] = (byte) (i & 255);
        tail.limit = limit4 + 1;
        this.size += 4;
        return this;
    }

    @Override // okio.BufferedSink
    /* renamed from: writeIntLe */
    public Buffer mo1895writeIntLe(int i) {
        return mo1894writeInt(Util.reverseBytesInt(i));
    }

    @Override // okio.BufferedSink
    /* renamed from: writeLong */
    public Buffer mo1896writeLong(long v) {
        Segment tail = writableSegment(8);
        byte[] data = tail.data;
        int limit = tail.limit;
        int limit2 = limit + 1;
        data[limit] = (byte) ((v >>> 56) & 255);
        int limit3 = limit2 + 1;
        data[limit2] = (byte) ((v >>> 48) & 255);
        int limit4 = limit3 + 1;
        data[limit3] = (byte) ((v >>> 40) & 255);
        int limit5 = limit4 + 1;
        data[limit4] = (byte) ((v >>> 32) & 255);
        int limit6 = limit5 + 1;
        data[limit5] = (byte) ((v >>> 24) & 255);
        int limit7 = limit6 + 1;
        data[limit6] = (byte) ((v >>> 16) & 255);
        int limit8 = limit7 + 1;
        data[limit7] = (byte) ((v >>> 8) & 255);
        data[limit8] = (byte) (v & 255);
        tail.limit = limit8 + 1;
        this.size += 8;
        return this;
    }

    @Override // okio.BufferedSink
    /* renamed from: writeLongLe */
    public Buffer mo1897writeLongLe(long v) {
        return mo1896writeLong(Util.reverseBytesLong(v));
    }

    @Override // okio.BufferedSink
    /* renamed from: writeDecimalLong */
    public Buffer mo1892writeDecimalLong(long v) {
        int width;
        if (v == 0) {
            return mo1891writeByte(48);
        }
        boolean negative = false;
        if (v < 0) {
            v = -v;
            if (v < 0) {
                return mo1902writeUtf8("-9223372036854775808");
            }
            negative = true;
        }
        if (v < 100000000) {
            if (v < 10000) {
                if (v < 100) {
                    width = v < 10 ? 1 : 2;
                } else {
                    width = v < 1000 ? 3 : 4;
                }
            } else if (v < 1000000) {
                width = v < 100000 ? 5 : 6;
            } else {
                width = v < 10000000 ? 7 : 8;
            }
        } else if (v < 1000000000000L) {
            if (v < 10000000000L) {
                width = v < 1000000000 ? 9 : 10;
            } else {
                width = v < 100000000000L ? 11 : 12;
            }
        } else if (v < 1000000000000000L) {
            if (v < 10000000000000L) {
                width = 13;
            } else {
                width = v < 100000000000000L ? 14 : 15;
            }
        } else if (v < 100000000000000000L) {
            width = v < 10000000000000000L ? 16 : 17;
        } else {
            width = v < 1000000000000000000L ? 18 : 19;
        }
        if (negative) {
            width++;
        }
        Segment tail = writableSegment(width);
        byte[] data = tail.data;
        int pos = tail.limit + width;
        while (v != 0) {
            int digit = (int) (v % 10);
            pos--;
            data[pos] = DIGITS[digit];
            v /= 10;
        }
        if (negative) {
            data[pos - 1] = 45;
        }
        tail.limit += width;
        this.size += width;
        return this;
    }

    @Override // okio.BufferedSink
    /* renamed from: writeHexadecimalUnsignedLong */
    public Buffer mo1893writeHexadecimalUnsignedLong(long v) {
        if (v == 0) {
            return mo1891writeByte(48);
        }
        int width = (Long.numberOfTrailingZeros(Long.highestOneBit(v)) / 4) + 1;
        Segment tail = writableSegment(width);
        byte[] data = tail.data;
        int start = tail.limit;
        for (int pos = (tail.limit + width) - 1; pos >= start; pos--) {
            data[pos] = DIGITS[(int) (15 & v)];
            v >>>= 4;
        }
        tail.limit += width;
        this.size += width;
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Segment writableSegment(int minimumCapacity) {
        if (minimumCapacity < 1 || minimumCapacity > 8192) {
            throw new IllegalArgumentException();
        }
        if (this.head == null) {
            this.head = SegmentPool.take();
            Segment segment = this.head;
            Segment segment2 = this.head;
            Segment segment3 = this.head;
            segment2.prev = segment3;
            segment.next = segment3;
            return segment3;
        }
        Segment tail = this.head.prev;
        if (tail.limit + minimumCapacity > 8192 || !tail.owner) {
            return tail.push(SegmentPool.take());
        }
        return tail;
    }

    @Override // okio.Sink
    public void write(Buffer source, long byteCount) {
        if (source == null) {
            throw new IllegalArgumentException("source == null");
        }
        if (source == this) {
            throw new IllegalArgumentException("source == this");
        }
        Util.checkOffsetAndCount(source.size, 0L, byteCount);
        while (byteCount > 0) {
            if (byteCount < source.head.limit - source.head.pos) {
                Segment tail = this.head != null ? this.head.prev : null;
                if (tail != null && tail.owner) {
                    if ((byteCount + tail.limit) - (tail.shared ? 0 : tail.pos) <= 8192) {
                        source.head.writeTo(tail, (int) byteCount);
                        source.size -= byteCount;
                        this.size += byteCount;
                        return;
                    }
                }
                source.head = source.head.split((int) byteCount);
            }
            Segment segmentToMove = source.head;
            long movedByteCount = segmentToMove.limit - segmentToMove.pos;
            source.head = segmentToMove.pop();
            if (this.head == null) {
                this.head = segmentToMove;
                Segment segment = this.head;
                Segment segment2 = this.head;
                Segment segment3 = this.head;
                segment2.prev = segment3;
                segment.next = segment3;
            } else {
                this.head.prev.push(segmentToMove).compact();
            }
            source.size -= movedByteCount;
            this.size += movedByteCount;
            byteCount -= movedByteCount;
        }
    }

    @Override // okio.Source
    public long read(Buffer sink, long byteCount) {
        if (sink == null) {
            throw new IllegalArgumentException("sink == null");
        }
        if (byteCount < 0) {
            throw new IllegalArgumentException("byteCount < 0: " + byteCount);
        }
        if (this.size == 0) {
            return -1L;
        }
        if (byteCount > this.size) {
            byteCount = this.size;
        }
        sink.write(this, byteCount);
        return byteCount;
    }

    @Override // okio.BufferedSource
    public long indexOf(byte b) {
        return indexOf(b, 0L, Clock.MAX_TIME);
    }

    @Override // okio.BufferedSource
    public long indexOf(byte b, long fromIndex) {
        return indexOf(b, fromIndex, Clock.MAX_TIME);
    }

    /* JADX WARN: Removed duplicated region for block: B:25:0x008d  */
    @Override // okio.BufferedSource
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public long indexOf(byte b, long fromIndex, long toIndex) {
        Segment s;
        long offset;
        if (fromIndex < 0 || toIndex < fromIndex) {
            throw new IllegalArgumentException(String.format("size=%s fromIndex=%s toIndex=%s", Long.valueOf(this.size), Long.valueOf(fromIndex), Long.valueOf(toIndex)));
        }
        if (toIndex > this.size) {
            toIndex = this.size;
        }
        if (fromIndex == toIndex || (s = this.head) == null) {
            return -1L;
        }
        if (this.size - fromIndex < fromIndex) {
            offset = this.size;
            while (offset > fromIndex) {
                s = s.prev;
                offset -= s.limit - s.pos;
            }
        } else {
            offset = 0;
            while (true) {
                long nextOffset = offset + (s.limit - s.pos);
                if (nextOffset < fromIndex) {
                    s = s.next;
                    offset = nextOffset;
                }
            }
            while (offset < toIndex) {
                byte[] data = s.data;
                int limit = (int) Math.min(s.limit, (s.pos + toIndex) - offset);
                for (int pos = (int) ((s.pos + fromIndex) - offset); pos < limit; pos++) {
                    if (data[pos] == b) {
                        return (pos - s.pos) + offset;
                    }
                }
                offset += s.limit - s.pos;
                fromIndex = offset;
                s = s.next;
            }
            return -1L;
        }
        while (offset < toIndex) {
        }
        return -1L;
    }

    @Override // okio.BufferedSource
    public long indexOf(ByteString bytes) throws IOException {
        return indexOf(bytes, 0L);
    }

    @Override // okio.BufferedSource
    public long indexOf(ByteString bytes, long fromIndex) throws IOException {
        long offset;
        if (bytes.size() == 0) {
            throw new IllegalArgumentException("bytes is empty");
        }
        if (fromIndex < 0) {
            throw new IllegalArgumentException("fromIndex < 0");
        }
        Segment s = this.head;
        if (s == null) {
            return -1L;
        }
        if (this.size - fromIndex < fromIndex) {
            offset = this.size;
            while (offset > fromIndex) {
                s = s.prev;
                offset -= s.limit - s.pos;
            }
        } else {
            offset = 0;
            while (true) {
                long nextOffset = offset + (s.limit - s.pos);
                if (nextOffset >= fromIndex) {
                    break;
                }
                s = s.next;
                offset = nextOffset;
            }
        }
        byte b0 = bytes.getByte(0);
        int bytesSize = bytes.size();
        long resultLimit = (this.size - bytesSize) + 1;
        while (offset < resultLimit) {
            byte[] data = s.data;
            int segmentLimit = (int) Math.min(s.limit, (s.pos + resultLimit) - offset);
            for (int pos = (int) ((s.pos + fromIndex) - offset); pos < segmentLimit; pos++) {
                if (data[pos] == b0 && rangeEquals(s, pos + 1, bytes, 1, bytesSize)) {
                    return (pos - s.pos) + offset;
                }
            }
            offset += s.limit - s.pos;
            fromIndex = offset;
            s = s.next;
        }
        return -1L;
    }

    @Override // okio.BufferedSource
    public long indexOfElement(ByteString targetBytes) {
        return indexOfElement(targetBytes, 0L);
    }

    @Override // okio.BufferedSource
    public long indexOfElement(ByteString targetBytes, long fromIndex) {
        long offset;
        if (fromIndex < 0) {
            throw new IllegalArgumentException("fromIndex < 0");
        }
        Segment s = this.head;
        if (s == null) {
            return -1L;
        }
        if (this.size - fromIndex < fromIndex) {
            offset = this.size;
            while (offset > fromIndex) {
                s = s.prev;
                offset -= s.limit - s.pos;
            }
        } else {
            offset = 0;
            while (true) {
                long nextOffset = offset + (s.limit - s.pos);
                if (nextOffset >= fromIndex) {
                    break;
                }
                s = s.next;
                offset = nextOffset;
            }
        }
        if (targetBytes.size() == 2) {
            int b0 = targetBytes.getByte(0);
            int b1 = targetBytes.getByte(1);
            while (offset < this.size) {
                byte[] data = s.data;
                int limit = s.limit;
                for (int pos = (int) ((s.pos + fromIndex) - offset); pos < limit; pos++) {
                    int b = data[pos];
                    if (b == b0 || b == b1) {
                        return (pos - s.pos) + offset;
                    }
                }
                offset += s.limit - s.pos;
                fromIndex = offset;
                s = s.next;
            }
        } else {
            byte[] targetByteArray = targetBytes.internalArray();
            while (offset < this.size) {
                byte[] data2 = s.data;
                int limit2 = s.limit;
                for (int pos2 = (int) ((s.pos + fromIndex) - offset); pos2 < limit2; pos2++) {
                    byte b2 = data2[pos2];
                    for (byte t : targetByteArray) {
                        if (b2 == t) {
                            return (pos2 - s.pos) + offset;
                        }
                    }
                }
                offset += s.limit - s.pos;
                fromIndex = offset;
                s = s.next;
            }
        }
        return -1L;
    }

    @Override // okio.BufferedSource
    public boolean rangeEquals(long offset, ByteString bytes) {
        return rangeEquals(offset, bytes, 0, bytes.size());
    }

    @Override // okio.BufferedSource
    public boolean rangeEquals(long offset, ByteString bytes, int bytesOffset, int byteCount) {
        if (offset < 0 || bytesOffset < 0 || byteCount < 0 || this.size - offset < byteCount || bytes.size() - bytesOffset < byteCount) {
            return false;
        }
        for (int i = 0; i < byteCount; i++) {
            if (getByte(i + offset) != bytes.getByte(bytesOffset + i)) {
                return false;
            }
        }
        return true;
    }

    private boolean rangeEquals(Segment segment, int segmentPos, ByteString bytes, int bytesOffset, int bytesLimit) {
        int segmentLimit = segment.limit;
        byte[] data = segment.data;
        for (int i = bytesOffset; i < bytesLimit; i++) {
            if (segmentPos == segmentLimit) {
                segment = segment.next;
                data = segment.data;
                segmentPos = segment.pos;
                segmentLimit = segment.limit;
            }
            if (data[segmentPos] != bytes.getByte(i)) {
                return false;
            }
            segmentPos++;
        }
        return true;
    }

    @Override // okio.BufferedSink, okio.Sink, java.io.Flushable
    public void flush() {
    }

    @Override // okio.Source, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
    }

    @Override // okio.Source
    public Timeout timeout() {
        return Timeout.NONE;
    }

    List<Integer> segmentSizes() {
        if (this.head == null) {
            return Collections.emptyList();
        }
        List<Integer> result = new ArrayList<>();
        result.add(Integer.valueOf(this.head.limit - this.head.pos));
        for (Segment s = this.head.next; s != this.head; s = s.next) {
            result.add(Integer.valueOf(s.limit - s.pos));
        }
        return result;
    }

    public ByteString md5() {
        return digest("MD5");
    }

    public ByteString sha1() {
        return digest("SHA-1");
    }

    public ByteString sha256() {
        return digest("SHA-256");
    }

    public ByteString sha512() {
        return digest("SHA-512");
    }

    private ByteString digest(String algorithm) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(algorithm);
            if (this.head != null) {
                messageDigest.update(this.head.data, this.head.pos, this.head.limit - this.head.pos);
                for (Segment s = this.head.next; s != this.head; s = s.next) {
                    messageDigest.update(s.data, s.pos, s.limit - s.pos);
                }
            }
            return ByteString.m32of(messageDigest.digest());
        } catch (NoSuchAlgorithmException e) {
            throw new AssertionError();
        }
    }

    public ByteString hmacSha1(ByteString key) {
        return hmac(HostConstants.OAUTH_MAC_ALGORITHM, key);
    }

    public ByteString hmacSha256(ByteString key) {
        return hmac("HmacSHA256", key);
    }

    public ByteString hmacSha512(ByteString key) {
        return hmac("HmacSHA512", key);
    }

    private ByteString hmac(String algorithm, ByteString key) {
        try {
            Mac mac = Mac.getInstance(algorithm);
            mac.init(new SecretKeySpec(key.toByteArray(), algorithm));
            if (this.head != null) {
                mac.update(this.head.data, this.head.pos, this.head.limit - this.head.pos);
                for (Segment s = this.head.next; s != this.head; s = s.next) {
                    mac.update(s.data, s.pos, s.limit - s.pos);
                }
            }
            return ByteString.m32of(mac.doFinal());
        } catch (InvalidKeyException e) {
            throw new IllegalArgumentException(e);
        } catch (NoSuchAlgorithmException e2) {
            throw new AssertionError();
        }
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x006c, code lost:
        if (r8 != r11.limit) goto L36;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x006e, code lost:
        r11 = r11.next;
        r5 = r11.pos;
     */
    /* JADX WARN: Code restructure failed: missing block: B:30:0x0074, code lost:
        if (r10 != r12.limit) goto L34;
     */
    /* JADX WARN: Code restructure failed: missing block: B:31:0x0076, code lost:
        r12 = r12.next;
        r9 = r12.pos;
     */
    /* JADX WARN: Code restructure failed: missing block: B:33:0x007a, code lost:
        r6 = r6 + r2;
     */
    /* JADX WARN: Code restructure failed: missing block: B:34:0x007e, code lost:
        r9 = r10;
     */
    /* JADX WARN: Code restructure failed: missing block: B:36:0x0080, code lost:
        r5 = r8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (!(o instanceof Buffer)) {
            return false;
        }
        Buffer that = (Buffer) o;
        if (this.size != that.size) {
            return false;
        }
        if (this.size == 0) {
            return true;
        }
        Segment sa = this.head;
        Segment sb = that.head;
        int posA = sa.pos;
        int posB = sb.pos;
        long pos = 0;
        while (pos < this.size) {
            long count = Math.min(sa.limit - posA, sb.limit - posB);
            int i = 0;
            while (true) {
                int posB2 = posB;
                int posA2 = posA;
                if (i >= count) {
                    break;
                }
                posA = posA2 + 1;
                posB = posB2 + 1;
                if (sa.data[posA2] != sb.data[posB2]) {
                    return false;
                }
                i++;
            }
        }
        return true;
    }

    public int hashCode() {
        Segment s = this.head;
        if (s == null) {
            return 0;
        }
        int result = 1;
        do {
            int limit = s.limit;
            for (int pos = s.pos; pos < limit; pos++) {
                result = (result * 31) + s.data[pos];
            }
            s = s.next;
        } while (s != this.head);
        return result;
    }

    public String toString() {
        return snapshot().toString();
    }

    public Buffer clone() {
        Buffer result = new Buffer();
        if (this.size != 0) {
            result.head = new Segment(this.head);
            Segment segment = result.head;
            Segment segment2 = result.head;
            Segment segment3 = result.head;
            segment2.prev = segment3;
            segment.next = segment3;
            for (Segment s = this.head.next; s != this.head; s = s.next) {
                result.head.prev.push(new Segment(s));
            }
            result.size = this.size;
        }
        return result;
    }

    public ByteString snapshot() {
        if (this.size > 2147483647L) {
            throw new IllegalArgumentException("size > Integer.MAX_VALUE: " + this.size);
        }
        return snapshot((int) this.size);
    }

    public ByteString snapshot(int byteCount) {
        return byteCount == 0 ? ByteString.EMPTY : new SegmentedByteString(this, byteCount);
    }
}
