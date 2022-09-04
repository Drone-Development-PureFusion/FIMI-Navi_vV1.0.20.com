package org.tensorflow;

import ch.qos.logback.classic.spi.CallerData;
import java.util.Arrays;
/* loaded from: classes2.dex */
public final class Shape {
    private long[] shape;

    public static Shape unknown() {
        return new Shape(null);
    }

    public static Shape scalar() {
        return new Shape(new long[0]);
    }

    public static Shape make(long firstDimensionSize, long... otherDimensionSizes) {
        long[] shape = new long[otherDimensionSizes.length + 1];
        shape[0] = firstDimensionSize;
        System.arraycopy(otherDimensionSizes, 0, shape, 1, otherDimensionSizes.length);
        return new Shape(shape);
    }

    public int numDimensions() {
        if (this.shape == null) {
            return -1;
        }
        return this.shape.length;
    }

    public long size(int i) {
        return this.shape[i];
    }

    public int hashCode() {
        return Arrays.hashCode(this.shape);
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if ((obj instanceof Shape) && Arrays.equals(this.shape, ((Shape) obj).shape)) {
            return !hasUnknownDimension();
        }
        return super.equals(obj);
    }

    public String toString() {
        return this.shape == null ? "<unknown>" : Arrays.toString(this.shape).replace("-1", CallerData.f38NA);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public Shape(long[] shape) {
        this.shape = shape;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public long[] asArray() {
        return this.shape;
    }

    private boolean hasUnknownDimension() {
        long[] jArr;
        if (this.shape == null) {
            return true;
        }
        for (long dimension : this.shape) {
            if (dimension == -1) {
                return true;
            }
        }
        return false;
    }
}
