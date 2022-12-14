package com.googlecode.mp4parser.h264.write;

import com.googlecode.mp4parser.h264.Debug;
import java.io.IOException;
import java.io.OutputStream;
/* loaded from: classes2.dex */
public class BitstreamWriter {
    private int curBit;
    private int[] curByte = new int[8];

    /* renamed from: os */
    private final OutputStream f279os;

    public BitstreamWriter(OutputStream out) {
        this.f279os = out;
    }

    public void flush() throws IOException {
        for (int i = this.curBit; i < 8; i++) {
            this.curByte[i] = 0;
        }
        this.curBit = 0;
        writeCurByte();
    }

    private void writeCurByte() throws IOException {
        int toWrite = (this.curByte[0] << 7) | (this.curByte[1] << 6) | (this.curByte[2] << 5) | (this.curByte[3] << 4) | (this.curByte[4] << 3) | (this.curByte[5] << 2) | (this.curByte[6] << 1) | this.curByte[7];
        this.f279os.write(toWrite);
    }

    public void write1Bit(int value) throws IOException {
        Debug.print(value);
        if (this.curBit == 8) {
            this.curBit = 0;
            writeCurByte();
        }
        int[] iArr = this.curByte;
        int i = this.curBit;
        this.curBit = i + 1;
        iArr[i] = value;
    }

    public void writeNBit(long value, int n) throws IOException {
        for (int i = 0; i < n; i++) {
            write1Bit(((int) (value >> ((n - i) - 1))) & 1);
        }
    }

    public void writeRemainingZero() throws IOException {
        writeNBit(0L, 8 - this.curBit);
    }

    public void writeByte(int b) throws IOException {
        this.f279os.write(b);
    }
}
