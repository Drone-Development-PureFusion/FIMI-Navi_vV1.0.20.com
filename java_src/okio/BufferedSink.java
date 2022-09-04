package okio;

import java.io.IOException;
import java.io.OutputStream;
import java.nio.charset.Charset;
/* loaded from: classes2.dex */
public interface BufferedSink extends Sink {
    Buffer buffer();

    BufferedSink emit() throws IOException;

    /* renamed from: emitCompleteSegments */
    BufferedSink mo1887emitCompleteSegments() throws IOException;

    @Override // okio.Sink, java.io.Flushable
    void flush() throws IOException;

    OutputStream outputStream();

    /* renamed from: write */
    BufferedSink mo1888write(ByteString byteString) throws IOException;

    BufferedSink write(Source source, long j) throws IOException;

    /* renamed from: write */
    BufferedSink mo1889write(byte[] bArr) throws IOException;

    /* renamed from: write */
    BufferedSink mo1890write(byte[] bArr, int i, int i2) throws IOException;

    long writeAll(Source source) throws IOException;

    /* renamed from: writeByte */
    BufferedSink mo1891writeByte(int i) throws IOException;

    /* renamed from: writeDecimalLong */
    BufferedSink mo1892writeDecimalLong(long j) throws IOException;

    /* renamed from: writeHexadecimalUnsignedLong */
    BufferedSink mo1893writeHexadecimalUnsignedLong(long j) throws IOException;

    /* renamed from: writeInt */
    BufferedSink mo1894writeInt(int i) throws IOException;

    /* renamed from: writeIntLe */
    BufferedSink mo1895writeIntLe(int i) throws IOException;

    /* renamed from: writeLong */
    BufferedSink mo1896writeLong(long j) throws IOException;

    /* renamed from: writeLongLe */
    BufferedSink mo1897writeLongLe(long j) throws IOException;

    /* renamed from: writeShort */
    BufferedSink mo1898writeShort(int i) throws IOException;

    /* renamed from: writeShortLe */
    BufferedSink mo1899writeShortLe(int i) throws IOException;

    /* renamed from: writeString */
    BufferedSink mo1900writeString(String str, int i, int i2, Charset charset) throws IOException;

    /* renamed from: writeString */
    BufferedSink mo1901writeString(String str, Charset charset) throws IOException;

    /* renamed from: writeUtf8 */
    BufferedSink mo1902writeUtf8(String str) throws IOException;

    /* renamed from: writeUtf8 */
    BufferedSink mo1903writeUtf8(String str, int i, int i2) throws IOException;

    /* renamed from: writeUtf8CodePoint */
    BufferedSink mo1904writeUtf8CodePoint(int i) throws IOException;
}
