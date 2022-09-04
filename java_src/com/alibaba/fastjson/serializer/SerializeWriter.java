package com.alibaba.fastjson.serializer;

import ch.qos.logback.core.CoreConstants;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONException;
import com.alibaba.fastjson.parser.JSONLexer;
import com.facebook.internal.ServerProtocol;
import com.fimi.kernel.animutils.IOUtils;
import com.fimi.kernel.connect.tcp.SocketOption;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.io.Writer;
import java.nio.charset.Charset;
/* loaded from: classes.dex */
public final class SerializeWriter extends Writer {
    public static final char[] DIGITS;
    protected char[] buf;
    protected int count;
    protected int features;
    protected final Writer writer;
    private static final ThreadLocal<char[]> bufLocal = new ThreadLocal<>();
    static final int[] sizeTable = {9, 99, 999, 9999, 99999, 999999, 9999999, 99999999, 999999999, Integer.MAX_VALUE};
    static final char[] digits = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z'};
    static final char[] DigitTens = {'0', '0', '0', '0', '0', '0', '0', '0', '0', '0', '1', '1', '1', '1', '1', '1', '1', '1', '1', '1', '2', '2', '2', '2', '2', '2', '2', '2', '2', '2', '3', '3', '3', '3', '3', '3', '3', '3', '3', '3', '4', '4', '4', '4', '4', '4', '4', '4', '4', '4', '5', '5', '5', '5', '5', '5', '5', '5', '5', '5', '6', '6', '6', '6', '6', '6', '6', '6', '6', '6', '7', '7', '7', '7', '7', '7', '7', '7', '7', '7', '8', '8', '8', '8', '8', '8', '8', '8', '8', '8', '9', '9', '9', '9', '9', '9', '9', '9', '9', '9'};
    static final char[] DigitOnes = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9'};
    static final char[] ascii_chars = {'0', '0', '0', '1', '0', '2', '0', '3', '0', '4', '0', '5', '0', '6', '0', '7', '0', '8', '0', '9', '0', 'A', '0', 'B', '0', 'C', '0', 'D', '0', 'E', '0', 'F', '1', '0', '1', '1', '1', '2', '1', '3', '1', '4', '1', '5', '1', '6', '1', '7', '1', '8', '1', '9', '1', 'A', '1', 'B', '1', 'C', '1', 'D', '1', 'E', '1', 'F', '2', '0', '2', '1', '2', '2', '2', '3', '2', '4', '2', '5', '2', '6', '2', '7', '2', '8', '2', '9', '2', 'A', '2', 'B', '2', 'C', '2', 'D', '2', 'E', '2', 'F'};
    static final byte[] specicalFlags_doubleQuotes = new byte[161];
    static final byte[] specicalFlags_singleQuotes = new byte[161];
    static final char[] replaceChars = new char[93];

    static {
        specicalFlags_doubleQuotes[0] = 4;
        specicalFlags_doubleQuotes[1] = 4;
        specicalFlags_doubleQuotes[2] = 4;
        specicalFlags_doubleQuotes[3] = 4;
        specicalFlags_doubleQuotes[4] = 4;
        specicalFlags_doubleQuotes[5] = 4;
        specicalFlags_doubleQuotes[6] = 4;
        specicalFlags_doubleQuotes[7] = 4;
        specicalFlags_doubleQuotes[8] = 1;
        specicalFlags_doubleQuotes[9] = 1;
        specicalFlags_doubleQuotes[10] = 1;
        specicalFlags_doubleQuotes[11] = 4;
        specicalFlags_doubleQuotes[12] = 1;
        specicalFlags_doubleQuotes[13] = 1;
        specicalFlags_doubleQuotes[34] = 1;
        specicalFlags_doubleQuotes[92] = 1;
        specicalFlags_singleQuotes[0] = 4;
        specicalFlags_singleQuotes[1] = 4;
        specicalFlags_singleQuotes[2] = 4;
        specicalFlags_singleQuotes[3] = 4;
        specicalFlags_singleQuotes[4] = 4;
        specicalFlags_singleQuotes[5] = 4;
        specicalFlags_singleQuotes[6] = 4;
        specicalFlags_singleQuotes[7] = 4;
        specicalFlags_singleQuotes[8] = 1;
        specicalFlags_singleQuotes[9] = 1;
        specicalFlags_singleQuotes[10] = 1;
        specicalFlags_singleQuotes[11] = 4;
        specicalFlags_singleQuotes[12] = 1;
        specicalFlags_singleQuotes[13] = 1;
        specicalFlags_singleQuotes[92] = 1;
        specicalFlags_singleQuotes[39] = 1;
        for (int i = 14; i <= 31; i++) {
            specicalFlags_doubleQuotes[i] = 4;
            specicalFlags_singleQuotes[i] = 4;
        }
        for (int i2 = 127; i2 < 160; i2++) {
            specicalFlags_doubleQuotes[i2] = 4;
            specicalFlags_singleQuotes[i2] = 4;
        }
        replaceChars[0] = '0';
        replaceChars[1] = '1';
        replaceChars[2] = '2';
        replaceChars[3] = '3';
        replaceChars[4] = '4';
        replaceChars[5] = '5';
        replaceChars[6] = '6';
        replaceChars[7] = '7';
        replaceChars[8] = 'b';
        replaceChars[9] = 't';
        replaceChars[10] = 'n';
        replaceChars[11] = 'v';
        replaceChars[12] = 'f';
        replaceChars[13] = 'r';
        replaceChars[34] = CoreConstants.DOUBLE_QUOTE_CHAR;
        replaceChars[39] = CoreConstants.SINGLE_QUOTE_CHAR;
        replaceChars[47] = IOUtils.DIR_SEPARATOR_UNIX;
        replaceChars[92] = '\\';
        DIGITS = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    }

    public SerializeWriter() {
        this((Writer) null);
    }

    public SerializeWriter(Writer writer) {
        this.writer = writer;
        this.features = JSON.DEFAULT_GENERATE_FEATURE;
        this.buf = bufLocal.get();
        if (bufLocal != null) {
            bufLocal.set(null);
        }
        if (this.buf == null) {
            this.buf = new char[1024];
        }
    }

    public SerializeWriter(SerializerFeature... features) {
        this(null, 0, features);
    }

    public SerializeWriter(Writer writer, int featuresValue, SerializerFeature[] features) {
        this.writer = writer;
        this.buf = bufLocal.get();
        if (this.buf != null) {
            bufLocal.set(null);
        }
        if (this.buf == null) {
            this.buf = new char[1024];
        }
        for (SerializerFeature feature : features) {
            featuresValue |= feature.mask;
        }
        this.features = featuresValue;
    }

    public SerializeWriter(int initialSize) {
        this(null, initialSize);
    }

    public SerializeWriter(Writer writer, int initialSize) {
        this.writer = writer;
        if (initialSize <= 0) {
            throw new IllegalArgumentException("Negative initial size: " + initialSize);
        }
        this.buf = new char[initialSize];
    }

    public void config(SerializerFeature feature, boolean state) {
        if (state) {
            this.features |= feature.mask;
        } else {
            this.features &= feature.mask ^ (-1);
        }
    }

    public boolean isEnabled(SerializerFeature feature) {
        return (this.features & feature.mask) != 0;
    }

    @Override // java.io.Writer
    public void write(int c) {
        int newcount = this.count + 1;
        if (newcount > this.buf.length) {
            if (this.writer == null) {
                expandCapacity(newcount);
            } else {
                flush();
                newcount = 1;
            }
        }
        this.buf[this.count] = (char) c;
        this.count = newcount;
    }

    @Override // java.io.Writer
    public void write(char[] c, int off, int len) {
        if (off < 0 || off > c.length || len < 0 || off + len > c.length || off + len < 0) {
            throw new IndexOutOfBoundsException();
        }
        if (len != 0) {
            int newcount = this.count + len;
            if (newcount > this.buf.length) {
                if (this.writer == null) {
                    expandCapacity(newcount);
                } else {
                    do {
                        int rest = this.buf.length - this.count;
                        System.arraycopy(c, off, this.buf, this.count, rest);
                        this.count = this.buf.length;
                        flush();
                        len -= rest;
                        off += rest;
                    } while (len > this.buf.length);
                    newcount = len;
                }
            }
            System.arraycopy(c, off, this.buf, this.count, len);
            this.count = newcount;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void expandCapacity(int minimumCapacity) {
        int newCapacity = ((this.buf.length * 3) / 2) + 1;
        if (newCapacity < minimumCapacity) {
            newCapacity = minimumCapacity;
        }
        char[] newValue = new char[newCapacity];
        System.arraycopy(this.buf, 0, newValue, 0, this.count);
        this.buf = newValue;
    }

    @Override // java.io.Writer
    public void write(String str, int off, int len) {
        int newcount = this.count + len;
        if (newcount > this.buf.length) {
            if (this.writer == null) {
                expandCapacity(newcount);
            } else {
                do {
                    int rest = this.buf.length - this.count;
                    str.getChars(off, off + rest, this.buf, this.count);
                    this.count = this.buf.length;
                    flush();
                    len -= rest;
                    off += rest;
                } while (len > this.buf.length);
                newcount = len;
            }
        }
        str.getChars(off, off + len, this.buf, this.count);
        this.count = newcount;
    }

    public void writeTo(Writer out) throws IOException {
        if (this.writer != null) {
            throw new UnsupportedOperationException("writer not null");
        }
        out.write(this.buf, 0, this.count);
    }

    public void writeTo(OutputStream out, String charsetName) throws IOException {
        writeTo(out, Charset.forName(charsetName));
    }

    public void writeTo(OutputStream out, Charset charset) throws IOException {
        if (this.writer != null) {
            throw new UnsupportedOperationException("writer not null");
        }
        byte[] bytes = new String(this.buf, 0, this.count).getBytes(charset.name());
        out.write(bytes);
    }

    @Override // java.io.Writer, java.lang.Appendable
    /* renamed from: append */
    public SerializeWriter mo1630append(CharSequence csq) {
        String s = csq == null ? "null" : csq.toString();
        write(s, 0, s.length());
        return this;
    }

    @Override // java.io.Writer, java.lang.Appendable
    /* renamed from: append */
    public SerializeWriter mo1631append(CharSequence csq, int start, int end) {
        if (csq == null) {
            csq = "null";
        }
        String s = csq.subSequence(start, end).toString();
        write(s, 0, s.length());
        return this;
    }

    @Override // java.io.Writer, java.lang.Appendable
    /* renamed from: append */
    public SerializeWriter mo1629append(char c) {
        write(c);
        return this;
    }

    public byte[] toBytes(String charsetName) {
        if (this.writer != null) {
            throw new UnsupportedOperationException("writer not null");
        }
        if (charsetName == null) {
            charsetName = SocketOption.DEFAULT_CHARSET;
        }
        try {
            return new String(this.buf, 0, this.count).getBytes(charsetName);
        } catch (UnsupportedEncodingException e) {
            throw new JSONException("toBytes error", e);
        }
    }

    public String toString() {
        return new String(this.buf, 0, this.count);
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public void close() {
        if (this.writer != null && this.count > 0) {
            flush();
        }
        if (this.buf.length <= 8192) {
            bufLocal.set(this.buf);
        }
        this.buf = null;
    }

    @Override // java.io.Writer
    public void write(String text) {
        if (text == null) {
            writeNull();
        } else {
            write(text, 0, text.length());
        }
    }

    public void writeInt(int i) {
        if (i == Integer.MIN_VALUE) {
            write("-2147483648");
            return;
        }
        int x = i < 0 ? -i : i;
        int j = 0;
        while (x > sizeTable[j]) {
            j++;
        }
        int size = j + 1;
        if (i < 0) {
            size++;
        }
        int newcount = this.count + size;
        if (newcount > this.buf.length) {
            if (this.writer == null) {
                expandCapacity(newcount);
            } else {
                char[] chars = new char[size];
                getChars(i, size, chars);
                write(chars, 0, chars.length);
                return;
            }
        }
        getChars(i, newcount, this.buf);
        this.count = newcount;
    }

    public void writeByteArray(byte[] bytes) {
        int bytesLen = bytes.length;
        boolean singleQuote = (this.features & SerializerFeature.UseSingleQuotes.mask) != 0;
        char quote = singleQuote ? CoreConstants.SINGLE_QUOTE_CHAR : CoreConstants.DOUBLE_QUOTE_CHAR;
        if (bytesLen == 0) {
            String emptyString = singleQuote ? "''" : "\"\"";
            write(emptyString);
            return;
        }
        char[] CA = JSONLexer.f53CA;
        int eLen = (bytesLen / 3) * 3;
        int charsLen = (((bytesLen - 1) / 3) + 1) << 2;
        int offset = this.count;
        int newcount = this.count + charsLen + 2;
        if (newcount > this.buf.length) {
            if (this.writer != null) {
                write(quote);
                int s = 0;
                while (true) {
                    int s2 = s;
                    if (s2 >= eLen) {
                        break;
                    }
                    int s3 = s2 + 1;
                    int s4 = s3 + 1;
                    s = s4 + 1;
                    int i = ((bytes[s2] & 255) << 16) | ((bytes[s3] & 255) << 8) | (bytes[s4] & 255);
                    write(CA[(i >>> 18) & 63]);
                    write(CA[(i >>> 12) & 63]);
                    write(CA[(i >>> 6) & 63]);
                    write(CA[i & 63]);
                }
                int left = bytesLen - eLen;
                if (left > 0) {
                    int i2 = ((bytes[eLen] & 255) << 10) | (left == 2 ? (bytes[bytesLen - 1] & 255) << 2 : 0);
                    write(CA[i2 >> 12]);
                    write(CA[(i2 >>> 6) & 63]);
                    write(left == 2 ? CA[i2 & 63] : '=');
                    write(61);
                }
                write(quote);
                return;
            }
            expandCapacity(newcount);
        }
        this.count = newcount;
        this.buf[offset] = quote;
        int s5 = 0;
        int d = offset + 1;
        while (true) {
            int s6 = s5;
            if (s6 >= eLen) {
                break;
            }
            int s7 = s6 + 1;
            int s8 = s7 + 1;
            s5 = s8 + 1;
            int i3 = ((bytes[s6] & 255) << 16) | ((bytes[s7] & 255) << 8) | (bytes[s8] & 255);
            int d2 = d + 1;
            this.buf[d] = CA[(i3 >>> 18) & 63];
            int d3 = d2 + 1;
            this.buf[d2] = CA[(i3 >>> 12) & 63];
            int d4 = d3 + 1;
            this.buf[d3] = CA[(i3 >>> 6) & 63];
            d = d4 + 1;
            this.buf[d4] = CA[i3 & 63];
        }
        int left2 = bytesLen - eLen;
        if (left2 > 0) {
            int i4 = ((bytes[eLen] & 255) << 10) | (left2 == 2 ? (bytes[bytesLen - 1] & 255) << 2 : 0);
            this.buf[newcount - 5] = CA[i4 >> 12];
            this.buf[newcount - 4] = CA[(i4 >>> 6) & 63];
            this.buf[newcount - 3] = left2 == 2 ? CA[i4 & 63] : '=';
            this.buf[newcount - 2] = '=';
        }
        this.buf[newcount - 1] = quote;
    }

    public void writeLong(long i) {
        if (i == Long.MIN_VALUE) {
            write("-9223372036854775808");
            return;
        }
        long val = i < 0 ? -i : i;
        int size = 0;
        long p = 10;
        int j = 1;
        while (true) {
            if (j >= 19) {
                break;
            } else if (val < p) {
                size = j;
                break;
            } else {
                p *= 10;
                j++;
            }
        }
        if (size == 0) {
            size = 19;
        }
        if (i < 0) {
            size++;
        }
        int newcount = this.count + size;
        if (newcount > this.buf.length) {
            if (this.writer == null) {
                expandCapacity(newcount);
            } else {
                char[] chars = new char[size];
                getChars(i, size, chars);
                write(chars, 0, chars.length);
                return;
            }
        }
        getChars(i, newcount, this.buf);
        this.count = newcount;
    }

    public void writeNull() {
        write("null");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void writeStringWithDoubleQuote(String text, char seperator, boolean checkSpecial) {
        boolean isSpecial;
        if (text == null) {
            writeNull();
            if (seperator != 0) {
                write(seperator);
                return;
            }
            return;
        }
        int len = text.length();
        int newcount = this.count + len + 2;
        if (seperator != 0) {
            newcount++;
        }
        if (newcount > this.buf.length) {
            if (this.writer != null) {
                write(34);
                for (int i = 0; i < text.length(); i++) {
                    char ch2 = text.charAt(i);
                    if ((this.features & SerializerFeature.BrowserCompatible.mask) != 0) {
                        if (ch2 == '\b' || ch2 == '\f' || ch2 == '\n' || ch2 == '\r' || ch2 == '\t' || ch2 == '\"' || ch2 == '/' || ch2 == '\\') {
                            write(92);
                            write(replaceChars[ch2]);
                        } else if (ch2 < ' ') {
                            write(92);
                            write(117);
                            write(48);
                            write(48);
                            write(ascii_chars[ch2 * 2]);
                            write(ascii_chars[(ch2 * 2) + 1]);
                        } else {
                            if (ch2 >= 127) {
                                write(92);
                                write(117);
                                write(DIGITS[(ch2 >>> '\f') & 15]);
                                write(DIGITS[(ch2 >>> '\b') & 15]);
                                write(DIGITS[(ch2 >>> 4) & 15]);
                                write(DIGITS[ch2 & 15]);
                            }
                            write(ch2);
                        }
                    } else {
                        if ((ch2 < specicalFlags_doubleQuotes.length && specicalFlags_doubleQuotes[ch2] != 0) || (ch2 == '/' && (this.features & SerializerFeature.WriteSlashAsSpecial.mask) != 0)) {
                            write(92);
                            write(replaceChars[ch2]);
                        }
                        write(ch2);
                    }
                }
                write(34);
                if (seperator != 0) {
                    write(seperator);
                    return;
                }
                return;
            }
            expandCapacity(newcount);
        }
        int start = this.count + 1;
        int end = start + len;
        this.buf[this.count] = CoreConstants.DOUBLE_QUOTE_CHAR;
        text.getChars(0, len, this.buf, start);
        this.count = newcount;
        if ((this.features & SerializerFeature.BrowserCompatible.mask) != 0) {
            int lastSpecialIndex = -1;
            for (int i2 = start; i2 < end; i2++) {
                char ch3 = this.buf[i2];
                if (ch3 == '\"' || ch3 == '/' || ch3 == '\\') {
                    lastSpecialIndex = i2;
                    newcount++;
                } else if (ch3 == '\b' || ch3 == '\f' || ch3 == '\n' || ch3 == '\r' || ch3 == '\t') {
                    lastSpecialIndex = i2;
                    newcount++;
                } else if (ch3 < ' ') {
                    lastSpecialIndex = i2;
                    newcount += 5;
                } else if (ch3 >= 127) {
                    lastSpecialIndex = i2;
                    newcount += 5;
                }
            }
            if (newcount > this.buf.length) {
                expandCapacity(newcount);
            }
            this.count = newcount;
            for (int i3 = lastSpecialIndex; i3 >= start; i3--) {
                char ch4 = this.buf[i3];
                if (ch4 == '\b' || ch4 == '\f' || ch4 == '\n' || ch4 == '\r' || ch4 == '\t') {
                    System.arraycopy(this.buf, i3 + 1, this.buf, i3 + 2, (end - i3) - 1);
                    this.buf[i3] = '\\';
                    this.buf[i3 + 1] = replaceChars[ch4];
                    end++;
                } else if (ch4 == '\"' || ch4 == '/' || ch4 == '\\') {
                    System.arraycopy(this.buf, i3 + 1, this.buf, i3 + 2, (end - i3) - 1);
                    this.buf[i3] = '\\';
                    this.buf[i3 + 1] = ch4;
                    end++;
                } else if (ch4 < ' ') {
                    System.arraycopy(this.buf, i3 + 1, this.buf, i3 + 6, (end - i3) - 1);
                    this.buf[i3] = '\\';
                    this.buf[i3 + 1] = 'u';
                    this.buf[i3 + 2] = '0';
                    this.buf[i3 + 3] = '0';
                    this.buf[i3 + 4] = ascii_chars[ch4 * 2];
                    this.buf[i3 + 5] = ascii_chars[(ch4 * 2) + 1];
                    end += 5;
                } else if (ch4 >= 127) {
                    System.arraycopy(this.buf, i3 + 1, this.buf, i3 + 6, (end - i3) - 1);
                    this.buf[i3] = '\\';
                    this.buf[i3 + 1] = 'u';
                    this.buf[i3 + 2] = DIGITS[(ch4 >>> '\f') & 15];
                    this.buf[i3 + 3] = DIGITS[(ch4 >>> '\b') & 15];
                    this.buf[i3 + 4] = DIGITS[(ch4 >>> 4) & 15];
                    this.buf[i3 + 5] = DIGITS[ch4 & 15];
                    end += 5;
                }
            }
            if (seperator != 0) {
                this.buf[this.count - 2] = CoreConstants.DOUBLE_QUOTE_CHAR;
                this.buf[this.count - 1] = seperator;
                return;
            }
            this.buf[this.count - 1] = CoreConstants.DOUBLE_QUOTE_CHAR;
            return;
        }
        int specialCount = 0;
        int lastSpecialIndex2 = -1;
        int firstSpecialIndex = -1;
        char lastSpecial = 0;
        if (checkSpecial) {
            for (int i4 = start; i4 < end; i4++) {
                char ch5 = this.buf[i4];
                if (ch5 == 8232) {
                    specialCount++;
                    lastSpecialIndex2 = i4;
                    lastSpecial = ch5;
                    newcount += 4;
                    if (firstSpecialIndex == -1) {
                        firstSpecialIndex = i4;
                    }
                } else if (ch5 >= ']') {
                    if (ch5 >= 127 && ch5 < 160) {
                        if (firstSpecialIndex == -1) {
                            firstSpecialIndex = i4;
                        }
                        specialCount++;
                        lastSpecialIndex2 = i4;
                        lastSpecial = ch5;
                        newcount += 4;
                    }
                } else {
                    if (ch5 == ' ') {
                        isSpecial = false;
                    } else if (ch5 == '/' && (this.features & SerializerFeature.WriteSlashAsSpecial.mask) != 0) {
                        isSpecial = true;
                    } else if (ch5 > '#' && ch5 != '\\') {
                        isSpecial = false;
                    } else if (ch5 <= 31 || ch5 == '\\' || ch5 == '\"') {
                        isSpecial = true;
                    } else {
                        isSpecial = false;
                    }
                    if (isSpecial) {
                        specialCount++;
                        lastSpecialIndex2 = i4;
                        lastSpecial = ch5;
                        if (ch5 < specicalFlags_doubleQuotes.length && specicalFlags_doubleQuotes[ch5] == 4) {
                            newcount += 4;
                        }
                        if (firstSpecialIndex == -1) {
                            firstSpecialIndex = i4;
                        }
                    }
                }
            }
            if (specialCount > 0) {
                int newcount2 = newcount + specialCount;
                if (newcount2 > this.buf.length) {
                    expandCapacity(newcount2);
                }
                this.count = newcount2;
                if (specialCount == 1) {
                    if (lastSpecial == 8232) {
                        int srcPos = lastSpecialIndex2 + 1;
                        int destPos = lastSpecialIndex2 + 6;
                        int LengthOfCopy = (end - lastSpecialIndex2) - 1;
                        System.arraycopy(this.buf, srcPos, this.buf, destPos, LengthOfCopy);
                        this.buf[lastSpecialIndex2] = '\\';
                        int lastSpecialIndex3 = lastSpecialIndex2 + 1;
                        this.buf[lastSpecialIndex3] = 'u';
                        int lastSpecialIndex4 = lastSpecialIndex3 + 1;
                        this.buf[lastSpecialIndex4] = '2';
                        int lastSpecialIndex5 = lastSpecialIndex4 + 1;
                        this.buf[lastSpecialIndex5] = '0';
                        int lastSpecialIndex6 = lastSpecialIndex5 + 1;
                        this.buf[lastSpecialIndex6] = '2';
                        this.buf[lastSpecialIndex6 + 1] = '8';
                    } else {
                        char ch6 = lastSpecial;
                        if (ch6 < specicalFlags_doubleQuotes.length && specicalFlags_doubleQuotes[ch6] == 4) {
                            int srcPos2 = lastSpecialIndex2 + 1;
                            int destPos2 = lastSpecialIndex2 + 6;
                            int LengthOfCopy2 = (end - lastSpecialIndex2) - 1;
                            System.arraycopy(this.buf, srcPos2, this.buf, destPos2, LengthOfCopy2);
                            int bufIndex = lastSpecialIndex2;
                            int bufIndex2 = bufIndex + 1;
                            this.buf[bufIndex] = '\\';
                            int bufIndex3 = bufIndex2 + 1;
                            this.buf[bufIndex2] = 'u';
                            int bufIndex4 = bufIndex3 + 1;
                            this.buf[bufIndex3] = DIGITS[(ch6 >>> '\f') & 15];
                            int bufIndex5 = bufIndex4 + 1;
                            this.buf[bufIndex4] = DIGITS[(ch6 >>> '\b') & 15];
                            int bufIndex6 = bufIndex5 + 1;
                            this.buf[bufIndex5] = DIGITS[(ch6 >>> 4) & 15];
                            int i5 = bufIndex6 + 1;
                            this.buf[bufIndex6] = DIGITS[ch6 & 15];
                        } else {
                            int srcPos3 = lastSpecialIndex2 + 1;
                            int destPos3 = lastSpecialIndex2 + 2;
                            int LengthOfCopy3 = (end - lastSpecialIndex2) - 1;
                            System.arraycopy(this.buf, srcPos3, this.buf, destPos3, LengthOfCopy3);
                            this.buf[lastSpecialIndex2] = '\\';
                            this.buf[lastSpecialIndex2 + 1] = replaceChars[ch6];
                        }
                    }
                } else if (specialCount > 1) {
                    int textIndex = firstSpecialIndex - start;
                    int bufIndex7 = firstSpecialIndex;
                    for (int i6 = textIndex; i6 < text.length(); i6++) {
                        char ch7 = text.charAt(i6);
                        if ((ch7 < specicalFlags_doubleQuotes.length && specicalFlags_doubleQuotes[ch7] != 0) || (ch7 == '/' && (this.features & SerializerFeature.WriteSlashAsSpecial.mask) != 0)) {
                            int bufIndex8 = bufIndex7 + 1;
                            this.buf[bufIndex7] = '\\';
                            if (specicalFlags_doubleQuotes[ch7] == 4) {
                                int bufIndex9 = bufIndex8 + 1;
                                this.buf[bufIndex8] = 'u';
                                int bufIndex10 = bufIndex9 + 1;
                                this.buf[bufIndex9] = DIGITS[(ch7 >>> '\f') & 15];
                                int bufIndex11 = bufIndex10 + 1;
                                this.buf[bufIndex10] = DIGITS[(ch7 >>> '\b') & 15];
                                int bufIndex12 = bufIndex11 + 1;
                                this.buf[bufIndex11] = DIGITS[(ch7 >>> 4) & 15];
                                bufIndex7 = bufIndex12 + 1;
                                this.buf[bufIndex12] = DIGITS[ch7 & 15];
                                end += 5;
                            } else {
                                bufIndex7 = bufIndex8 + 1;
                                this.buf[bufIndex8] = replaceChars[ch7];
                                end++;
                            }
                        } else if (ch7 == 8232) {
                            int bufIndex13 = bufIndex7 + 1;
                            this.buf[bufIndex7] = '\\';
                            int bufIndex14 = bufIndex13 + 1;
                            this.buf[bufIndex13] = 'u';
                            int bufIndex15 = bufIndex14 + 1;
                            this.buf[bufIndex14] = DIGITS[(ch7 >>> '\f') & 15];
                            int bufIndex16 = bufIndex15 + 1;
                            this.buf[bufIndex15] = DIGITS[(ch7 >>> '\b') & 15];
                            int bufIndex17 = bufIndex16 + 1;
                            this.buf[bufIndex16] = DIGITS[(ch7 >>> 4) & 15];
                            bufIndex7 = bufIndex17 + 1;
                            this.buf[bufIndex17] = DIGITS[ch7 & 15];
                            end += 5;
                        } else {
                            this.buf[bufIndex7] = ch7;
                            bufIndex7++;
                        }
                    }
                }
            }
        }
        if (seperator != 0) {
            this.buf[this.count - 2] = CoreConstants.DOUBLE_QUOTE_CHAR;
            this.buf[this.count - 1] = seperator;
            return;
        }
        this.buf[this.count - 1] = CoreConstants.DOUBLE_QUOTE_CHAR;
    }

    public void write(boolean value) {
        write(value ? ServerProtocol.DIALOG_RETURN_SCOPES_TRUE : "false");
    }

    public void writeString(String text) {
        if ((this.features & SerializerFeature.UseSingleQuotes.mask) != 0) {
            writeStringWithSingleQuote(text);
        } else {
            writeStringWithDoubleQuote(text, (char) 0, true);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void writeStringWithSingleQuote(String text) {
        if (text == null) {
            int newcount = this.count + 4;
            if (newcount > this.buf.length) {
                expandCapacity(newcount);
            }
            "null".getChars(0, 4, this.buf, this.count);
            this.count = newcount;
            return;
        }
        int len = text.length();
        int newcount2 = this.count + len + 2;
        if (newcount2 > this.buf.length) {
            if (this.writer != null) {
                write(39);
                for (int i = 0; i < text.length(); i++) {
                    char ch2 = text.charAt(i);
                    if (ch2 <= '\r' || ch2 == '\\' || ch2 == '\'' || (ch2 == '/' && (this.features & SerializerFeature.WriteSlashAsSpecial.mask) != 0)) {
                        write(92);
                        write(replaceChars[ch2]);
                    } else {
                        write(ch2);
                    }
                }
                write(39);
                return;
            }
            expandCapacity(newcount2);
        }
        int start = this.count + 1;
        int end = start + len;
        this.buf[this.count] = CoreConstants.SINGLE_QUOTE_CHAR;
        text.getChars(0, len, this.buf, start);
        this.count = newcount2;
        int specialCount = 0;
        int lastSpecialIndex = -1;
        char lastSpecial = 0;
        for (int i2 = start; i2 < end; i2++) {
            char ch3 = this.buf[i2];
            if (ch3 <= '\r' || ch3 == '\\' || ch3 == '\'' || (ch3 == '/' && (this.features & SerializerFeature.WriteSlashAsSpecial.mask) != 0)) {
                specialCount++;
                lastSpecialIndex = i2;
                lastSpecial = ch3;
            }
        }
        int newcount3 = newcount2 + specialCount;
        if (newcount3 > this.buf.length) {
            expandCapacity(newcount3);
        }
        this.count = newcount3;
        if (specialCount == 1) {
            System.arraycopy(this.buf, lastSpecialIndex + 1, this.buf, lastSpecialIndex + 2, (end - lastSpecialIndex) - 1);
            this.buf[lastSpecialIndex] = '\\';
            this.buf[lastSpecialIndex + 1] = replaceChars[lastSpecial];
        } else if (specialCount > 1) {
            System.arraycopy(this.buf, lastSpecialIndex + 1, this.buf, lastSpecialIndex + 2, (end - lastSpecialIndex) - 1);
            this.buf[lastSpecialIndex] = '\\';
            int lastSpecialIndex2 = lastSpecialIndex + 1;
            this.buf[lastSpecialIndex2] = replaceChars[lastSpecial];
            int end2 = end + 1;
            for (int i3 = lastSpecialIndex2 - 2; i3 >= start; i3--) {
                char ch4 = this.buf[i3];
                if (ch4 <= '\r' || ch4 == '\\' || ch4 == '\'' || (ch4 == '/' && (this.features & SerializerFeature.WriteSlashAsSpecial.mask) != 0)) {
                    System.arraycopy(this.buf, i3 + 1, this.buf, i3 + 2, (end2 - i3) - 1);
                    this.buf[i3] = '\\';
                    this.buf[i3 + 1] = replaceChars[ch4];
                    end2++;
                }
            }
        }
        this.buf[this.count - 1] = CoreConstants.SINGLE_QUOTE_CHAR;
    }

    public void writeFieldName(String key, boolean checkSpecial) {
        if ((this.features & SerializerFeature.UseSingleQuotes.mask) != 0) {
            if ((this.features & SerializerFeature.QuoteFieldNames.mask) != 0) {
                writeStringWithSingleQuote(key);
                write(58);
                return;
            }
            writeKeyWithSingleQuoteIfHasSpecial(key);
        } else if ((this.features & SerializerFeature.QuoteFieldNames.mask) != 0) {
            writeStringWithDoubleQuote(key, CoreConstants.COLON_CHAR, checkSpecial);
        } else {
            writeKeyWithDoubleQuoteIfHasSpecial(key);
        }
    }

    private void writeKeyWithDoubleQuoteIfHasSpecial(String text) {
        int len = text.length();
        int newcount = this.count + len + 1;
        if (newcount > this.buf.length) {
            if (this.writer != null) {
                if (len == 0) {
                    write(34);
                    write(34);
                    write(58);
                    return;
                }
                boolean hasSpecial = false;
                int i = 0;
                while (true) {
                    if (i >= len) {
                        break;
                    }
                    char ch2 = text.charAt(i);
                    if (ch2 >= specicalFlags_doubleQuotes.length || specicalFlags_doubleQuotes[ch2] == 0) {
                        i++;
                    } else {
                        hasSpecial = true;
                        break;
                    }
                }
                if (hasSpecial) {
                    write(34);
                }
                for (int i2 = 0; i2 < len; i2++) {
                    char ch3 = text.charAt(i2);
                    if (ch3 < specicalFlags_doubleQuotes.length && specicalFlags_doubleQuotes[ch3] != 0) {
                        write(92);
                        write(replaceChars[ch3]);
                    } else {
                        write(ch3);
                    }
                }
                if (hasSpecial) {
                    write(34);
                }
                write(58);
                return;
            }
            expandCapacity(newcount);
        }
        if (len == 0) {
            int newCount = this.count + 3;
            if (newCount > this.buf.length) {
                expandCapacity(this.count + 3);
            }
            char[] cArr = this.buf;
            int i3 = this.count;
            this.count = i3 + 1;
            cArr[i3] = CoreConstants.DOUBLE_QUOTE_CHAR;
            char[] cArr2 = this.buf;
            int i4 = this.count;
            this.count = i4 + 1;
            cArr2[i4] = CoreConstants.DOUBLE_QUOTE_CHAR;
            char[] cArr3 = this.buf;
            int i5 = this.count;
            this.count = i5 + 1;
            cArr3[i5] = CoreConstants.COLON_CHAR;
            return;
        }
        int start = this.count;
        int end = start + len;
        text.getChars(0, len, this.buf, start);
        this.count = newcount;
        boolean hasSpecial2 = false;
        int i6 = start;
        while (i6 < end) {
            char ch4 = this.buf[i6];
            if (ch4 < specicalFlags_doubleQuotes.length && specicalFlags_doubleQuotes[ch4] != 0) {
                if (!hasSpecial2) {
                    newcount += 3;
                    if (newcount > this.buf.length) {
                        expandCapacity(newcount);
                    }
                    this.count = newcount;
                    System.arraycopy(this.buf, i6 + 1, this.buf, i6 + 3, (end - i6) - 1);
                    System.arraycopy(this.buf, 0, this.buf, 1, i6);
                    this.buf[start] = CoreConstants.DOUBLE_QUOTE_CHAR;
                    int i7 = i6 + 1;
                    this.buf[i7] = '\\';
                    i6 = i7 + 1;
                    this.buf[i6] = replaceChars[ch4];
                    end += 2;
                    this.buf[this.count - 2] = CoreConstants.DOUBLE_QUOTE_CHAR;
                    hasSpecial2 = true;
                } else {
                    newcount++;
                    if (newcount > this.buf.length) {
                        expandCapacity(newcount);
                    }
                    this.count = newcount;
                    System.arraycopy(this.buf, i6 + 1, this.buf, i6 + 2, end - i6);
                    this.buf[i6] = '\\';
                    i6++;
                    this.buf[i6] = replaceChars[ch4];
                    end++;
                }
            }
            i6++;
        }
        this.buf[this.count - 1] = CoreConstants.COLON_CHAR;
    }

    private void writeKeyWithSingleQuoteIfHasSpecial(String text) {
        int len = text.length();
        int newcount = this.count + len + 1;
        if (newcount > this.buf.length) {
            if (this.writer != null) {
                if (len == 0) {
                    write(39);
                    write(39);
                    write(58);
                    return;
                }
                boolean hasSpecial = false;
                int i = 0;
                while (true) {
                    if (i >= len) {
                        break;
                    }
                    char ch2 = text.charAt(i);
                    if (ch2 >= specicalFlags_singleQuotes.length || specicalFlags_singleQuotes[ch2] == 0) {
                        i++;
                    } else {
                        hasSpecial = true;
                        break;
                    }
                }
                if (hasSpecial) {
                    write(39);
                }
                for (int i2 = 0; i2 < len; i2++) {
                    char ch3 = text.charAt(i2);
                    if (ch3 < specicalFlags_singleQuotes.length && specicalFlags_singleQuotes[ch3] != 0) {
                        write(92);
                        write(replaceChars[ch3]);
                    } else {
                        write(ch3);
                    }
                }
                if (hasSpecial) {
                    write(39);
                }
                write(58);
                return;
            }
            expandCapacity(newcount);
        }
        if (len == 0) {
            int newCount = this.count + 3;
            if (newCount > this.buf.length) {
                expandCapacity(this.count + 3);
            }
            char[] cArr = this.buf;
            int i3 = this.count;
            this.count = i3 + 1;
            cArr[i3] = CoreConstants.SINGLE_QUOTE_CHAR;
            char[] cArr2 = this.buf;
            int i4 = this.count;
            this.count = i4 + 1;
            cArr2[i4] = CoreConstants.SINGLE_QUOTE_CHAR;
            char[] cArr3 = this.buf;
            int i5 = this.count;
            this.count = i5 + 1;
            cArr3[i5] = CoreConstants.COLON_CHAR;
            return;
        }
        int start = this.count;
        int end = start + len;
        text.getChars(0, len, this.buf, start);
        this.count = newcount;
        boolean hasSpecial2 = false;
        int i6 = start;
        while (i6 < end) {
            char ch4 = this.buf[i6];
            if (ch4 < specicalFlags_singleQuotes.length && specicalFlags_singleQuotes[ch4] != 0) {
                if (!hasSpecial2) {
                    newcount += 3;
                    if (newcount > this.buf.length) {
                        expandCapacity(newcount);
                    }
                    this.count = newcount;
                    System.arraycopy(this.buf, i6 + 1, this.buf, i6 + 3, (end - i6) - 1);
                    System.arraycopy(this.buf, 0, this.buf, 1, i6);
                    this.buf[start] = CoreConstants.SINGLE_QUOTE_CHAR;
                    int i7 = i6 + 1;
                    this.buf[i7] = '\\';
                    i6 = i7 + 1;
                    this.buf[i6] = replaceChars[ch4];
                    end += 2;
                    this.buf[this.count - 2] = CoreConstants.SINGLE_QUOTE_CHAR;
                    hasSpecial2 = true;
                } else {
                    newcount++;
                    if (newcount > this.buf.length) {
                        expandCapacity(newcount);
                    }
                    this.count = newcount;
                    System.arraycopy(this.buf, i6 + 1, this.buf, i6 + 2, end - i6);
                    this.buf[i6] = '\\';
                    i6++;
                    this.buf[i6] = replaceChars[ch4];
                    end++;
                }
            }
            i6++;
        }
        this.buf[newcount - 1] = CoreConstants.COLON_CHAR;
    }

    @Override // java.io.Writer, java.io.Flushable
    public void flush() {
        if (this.writer != null) {
            try {
                this.writer.write(this.buf, 0, this.count);
                this.writer.flush();
                this.count = 0;
            } catch (IOException e) {
                throw new JSONException(e.getMessage(), e);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static void getChars(long i, int index, char[] buf) {
        int charPos = index;
        char sign = 0;
        if (i < 0) {
            sign = CoreConstants.DASH_CHAR;
            i = -i;
        }
        while (i > 2147483647L) {
            long q = i / 100;
            int r = (int) (i - (((q << 6) + (q << 5)) + (q << 2)));
            i = q;
            int charPos2 = charPos - 1;
            buf[charPos2] = DigitOnes[r];
            charPos = charPos2 - 1;
            buf[charPos] = DigitTens[r];
        }
        int i2 = (int) i;
        while (i2 >= 65536) {
            int q2 = i2 / 100;
            int r2 = i2 - (((q2 << 6) + (q2 << 5)) + (q2 << 2));
            i2 = q2;
            int charPos3 = charPos - 1;
            buf[charPos3] = DigitOnes[r2];
            charPos = charPos3 - 1;
            buf[charPos] = DigitTens[r2];
        }
        do {
            int q22 = (52429 * i2) >>> 19;
            charPos--;
            buf[charPos] = digits[i2 - ((q22 << 3) + (q22 << 1))];
            i2 = q22;
        } while (i2 != 0);
        if (sign != 0) {
            buf[charPos - 1] = sign;
        }
    }
}
