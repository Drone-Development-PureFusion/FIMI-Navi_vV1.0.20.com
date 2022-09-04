package ch.qos.logback.classic.pattern;
/* loaded from: classes.dex */
public class TargetLengthBasedClassNameAbbreviator implements Abbreviator {
    final int targetLength;

    public TargetLengthBasedClassNameAbbreviator(int i) {
        this.targetLength = i;
    }

    static int computeDotIndexes(String str, int[] iArr) {
        int i;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            i = i2;
            int indexOf = str.indexOf(46, i3);
            if (indexOf == -1 || i >= 16) {
                break;
            }
            iArr[i] = indexOf;
            i2 = i + 1;
            i3 = indexOf + 1;
        }
        return i;
    }

    static void printArray(String str, int[] iArr) {
        System.out.print(str);
        for (int i = 0; i < iArr.length; i++) {
            if (i == 0) {
                System.out.print(iArr[i]);
            } else {
                System.out.print(", " + iArr[i]);
            }
        }
        System.out.println();
    }

    @Override // ch.qos.logback.classic.pattern.Abbreviator
    public String abbreviate(String str) {
        StringBuilder sb = new StringBuilder(this.targetLength);
        if (str == null) {
            throw new IllegalArgumentException("Class name may not be null");
        }
        if (str.length() < this.targetLength) {
            return str;
        }
        int[] iArr = new int[16];
        int[] iArr2 = new int[17];
        int computeDotIndexes = computeDotIndexes(str, iArr);
        if (computeDotIndexes == 0) {
            return str;
        }
        computeLengthArray(str, iArr, iArr2, computeDotIndexes);
        for (int i = 0; i <= computeDotIndexes; i++) {
            if (i == 0) {
                sb.append(str.substring(0, iArr2[i] - 1));
            } else {
                sb.append(str.substring(iArr[i - 1], iArr[i - 1] + iArr2[i]));
            }
        }
        return sb.toString();
    }

    void computeLengthArray(String str, int[] iArr, int[] iArr2, int i) {
        int i2 = 0;
        int length = str.length() - this.targetLength;
        while (i2 < i) {
            int i3 = -1;
            if (i2 > 0) {
                i3 = iArr[i2 - 1];
            }
            int i4 = (iArr[i2] - i3) - 1;
            if (i4 < 1) {
            }
            int i5 = length > 0 ? i4 < 1 ? i4 : 1 : i4;
            iArr2[i2] = i5 + 1;
            i2++;
            length -= i4 - i5;
        }
        iArr2[i] = str.length() - iArr[i - 1];
    }
}
