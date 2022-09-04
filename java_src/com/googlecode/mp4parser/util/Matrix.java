package com.googlecode.mp4parser.util;

import ch.qos.logback.core.CoreConstants;
import com.coremedia.iso.IsoTypeReader;
import com.coremedia.iso.IsoTypeWriter;
import java.nio.ByteBuffer;
/* loaded from: classes2.dex */
public class Matrix {

    /* renamed from: a */
    double f280a;

    /* renamed from: b */
    double f281b;

    /* renamed from: c */
    double f282c;

    /* renamed from: d */
    double f283d;

    /* renamed from: tx */
    double f284tx;

    /* renamed from: ty */
    double f285ty;

    /* renamed from: u */
    double f286u;

    /* renamed from: v */
    double f287v;

    /* renamed from: w */
    double f288w;
    public static final Matrix ROTATE_0 = new Matrix(1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);
    public static final Matrix ROTATE_90 = new Matrix(0.0d, 1.0d, -1.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);
    public static final Matrix ROTATE_180 = new Matrix(-1.0d, 0.0d, 0.0d, -1.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);
    public static final Matrix ROTATE_270 = new Matrix(0.0d, -1.0d, 1.0d, 0.0d, 0.0d, 0.0d, 1.0d, 0.0d, 0.0d);

    public Matrix(double a, double b, double c, double d, double u, double v, double w, double tx, double ty) {
        this.f286u = u;
        this.f287v = v;
        this.f288w = w;
        this.f280a = a;
        this.f281b = b;
        this.f282c = c;
        this.f283d = d;
        this.f284tx = tx;
        this.f285ty = ty;
    }

    public boolean equals(Object o) {
        if (this == o) {
            return true;
        }
        if (o == null || getClass() != o.getClass()) {
            return false;
        }
        Matrix matrix = (Matrix) o;
        return Double.compare(matrix.f280a, this.f280a) == 0 && Double.compare(matrix.f281b, this.f281b) == 0 && Double.compare(matrix.f282c, this.f282c) == 0 && Double.compare(matrix.f283d, this.f283d) == 0 && Double.compare(matrix.f284tx, this.f284tx) == 0 && Double.compare(matrix.f285ty, this.f285ty) == 0 && Double.compare(matrix.f286u, this.f286u) == 0 && Double.compare(matrix.f287v, this.f287v) == 0 && Double.compare(matrix.f288w, this.f288w) == 0;
    }

    public int hashCode() {
        long temp = Double.doubleToLongBits(this.f286u);
        int result = (int) ((temp >>> 32) ^ temp);
        long temp2 = Double.doubleToLongBits(this.f287v);
        int result2 = (result * 31) + ((int) ((temp2 >>> 32) ^ temp2));
        long temp3 = Double.doubleToLongBits(this.f288w);
        int result3 = (result2 * 31) + ((int) ((temp3 >>> 32) ^ temp3));
        long temp4 = Double.doubleToLongBits(this.f280a);
        int result4 = (result3 * 31) + ((int) ((temp4 >>> 32) ^ temp4));
        long temp5 = Double.doubleToLongBits(this.f281b);
        int result5 = (result4 * 31) + ((int) ((temp5 >>> 32) ^ temp5));
        long temp6 = Double.doubleToLongBits(this.f282c);
        int result6 = (result5 * 31) + ((int) ((temp6 >>> 32) ^ temp6));
        long temp7 = Double.doubleToLongBits(this.f283d);
        int result7 = (result6 * 31) + ((int) ((temp7 >>> 32) ^ temp7));
        long temp8 = Double.doubleToLongBits(this.f284tx);
        int result8 = (result7 * 31) + ((int) ((temp8 >>> 32) ^ temp8));
        long temp9 = Double.doubleToLongBits(this.f285ty);
        return (result8 * 31) + ((int) ((temp9 >>> 32) ^ temp9));
    }

    public String toString() {
        if (equals(ROTATE_0)) {
            return "Rotate 0°";
        }
        if (equals(ROTATE_90)) {
            return "Rotate 90°";
        }
        if (equals(ROTATE_180)) {
            return "Rotate 180°";
        }
        if (equals(ROTATE_270)) {
            return "Rotate 270°";
        }
        return "Matrix{u=" + this.f286u + ", v=" + this.f287v + ", w=" + this.f288w + ", a=" + this.f280a + ", b=" + this.f281b + ", c=" + this.f282c + ", d=" + this.f283d + ", tx=" + this.f284tx + ", ty=" + this.f285ty + CoreConstants.CURLY_RIGHT;
    }

    public static Matrix fromFileOrder(double a, double b, double u, double c, double d, double v, double tx, double ty, double w) {
        return new Matrix(a, b, c, d, u, v, w, tx, ty);
    }

    public static Matrix fromByteBuffer(ByteBuffer byteBuffer) {
        return fromFileOrder(IsoTypeReader.readFixedPoint1616(byteBuffer), IsoTypeReader.readFixedPoint1616(byteBuffer), IsoTypeReader.readFixedPoint0230(byteBuffer), IsoTypeReader.readFixedPoint1616(byteBuffer), IsoTypeReader.readFixedPoint1616(byteBuffer), IsoTypeReader.readFixedPoint0230(byteBuffer), IsoTypeReader.readFixedPoint1616(byteBuffer), IsoTypeReader.readFixedPoint1616(byteBuffer), IsoTypeReader.readFixedPoint0230(byteBuffer));
    }

    public void getContent(ByteBuffer byteBuffer) {
        IsoTypeWriter.writeFixedPoint1616(byteBuffer, this.f280a);
        IsoTypeWriter.writeFixedPoint1616(byteBuffer, this.f281b);
        IsoTypeWriter.writeFixedPoint0230(byteBuffer, this.f286u);
        IsoTypeWriter.writeFixedPoint1616(byteBuffer, this.f282c);
        IsoTypeWriter.writeFixedPoint1616(byteBuffer, this.f283d);
        IsoTypeWriter.writeFixedPoint0230(byteBuffer, this.f287v);
        IsoTypeWriter.writeFixedPoint1616(byteBuffer, this.f284tx);
        IsoTypeWriter.writeFixedPoint1616(byteBuffer, this.f285ty);
        IsoTypeWriter.writeFixedPoint0230(byteBuffer, this.f288w);
    }
}
