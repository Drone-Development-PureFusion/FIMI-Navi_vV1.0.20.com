package com.googlecode.mp4parser.h264.read;

import com.googlecode.mp4parser.h264.CharCache;
import java.io.IOException;
import java.io.InputStream;
/* loaded from: classes2.dex */
public class BitstreamReader {
    protected static int bitsRead;
    private int curByte;
    protected CharCache debugBits = new CharCache(50);

    /* renamed from: is */
    private InputStream f278is;
    int nBit;
    private int nextByte;

    public BitstreamReader(InputStream is) throws IOException {
        this.f278is = is;
        this.curByte = is.read();
        this.nextByte = is.read();
    }

    public boolean readBool() throws IOException {
        return read1Bit() == 1;
    }

    /* JADX WARN: Code restructure failed: missing block: B:4:0x000c, code lost:
        if (r3.curByte == (-1)) goto L5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int read1Bit() throws IOException {
        int res = -1;
        if (this.nBit == 8) {
            advance();
        }
        res = (this.curByte >> (7 - this.nBit)) & 1;
        this.nBit++;
        this.debugBits.append(res == 0 ? '0' : '1');
        bitsRead++;
        return res;
    }

    public long readNBit(int n) throws IOException {
        if (n > 64) {
            throw new IllegalArgumentException("Can not readByte more then 64 bit");
        }
        long val = 0;
        for (int i = 0; i < n; i++) {
            val = (val << 1) | read1Bit();
        }
        return val;
    }

    private void advance() throws IOException {
        this.curByte = this.nextByte;
        this.nextByte = this.f278is.read();
        this.nBit = 0;
    }

    public int readByte() throws IOException {
        if (this.nBit > 0) {
            advance();
        }
        int res = this.curByte;
        advance();
        return res;
    }

    public boolean moreRBSPData() throws IOException {
        if (this.nBit == 8) {
            advance();
        }
        int tail = 1 << ((8 - this.nBit) - 1);
        int mask = (tail << 1) - 1;
        boolean hasTail = (this.curByte & mask) == tail;
        return this.curByte != -1 && (this.nextByte != -1 || !hasTail);
    }

    public long getBitPosition() {
        return (bitsRead * 8) + (this.nBit % 8);
    }

    public long readRemainingByte() throws IOException {
        return readNBit(8 - this.nBit);
    }

    /* JADX WARN: Code restructure failed: missing block: B:9:0x0016, code lost:
        if (r8.curByte == (-1)) goto L10;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
    */
    public int peakNextBits(int n) throws IOException {
        int result = -1;
        if (n > 8) {
            throw new IllegalArgumentException("N should be less then 8");
        }
        if (this.nBit == 8) {
            advance();
        }
        int[] bits = new int[16 - this.nBit];
        int i = this.nBit;
        int cnt = 0;
        while (i < 8) {
            bits[cnt] = (this.curByte >> (7 - i)) & 1;
            i++;
            cnt++;
        }
        int i2 = 0;
        while (i2 < 8) {
            bits[cnt] = (this.nextByte >> (7 - i2)) & 1;
            i2++;
            cnt++;
        }
        result = 0;
        for (int i3 = 0; i3 < n; i3++) {
            result = (result << 1) | bits[i3];
        }
        return result;
    }

    public boolean isByteAligned() {
        return this.nBit % 8 == 0;
    }

    public void close() throws IOException {
    }

    public int getCurBit() {
        return this.nBit;
    }
}
