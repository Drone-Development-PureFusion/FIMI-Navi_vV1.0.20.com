package ch.qos.logback.core.encoder;

import java.io.ByteArrayOutputStream;
/* loaded from: classes.dex */
public class ByteArrayUtil {
    public static byte[] hexStringToByteArray(String str) {
        byte[] bArr = new byte[str.length() / 2];
        for (int i = 0; i < bArr.length; i++) {
            int i2 = i * 2;
            bArr[i] = (byte) (Integer.parseInt(str.substring(i2, i2 + 2), 16) & 255);
        }
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int readInt(byte[] bArr, int i) {
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int i4 = i2;
            if (i3 < 4) {
                i2 = ((bArr[i + i3] & 255) << (24 - (i3 * 8))) + i4;
                i3++;
            } else {
                return i4;
            }
        }
    }

    public static String toHexString(byte[] bArr) {
        StringBuffer stringBuffer = new StringBuffer();
        for (byte b : bArr) {
            String hexString = Integer.toHexString(b & 255);
            if (hexString.length() == 1) {
                stringBuffer.append('0');
            }
            stringBuffer.append(hexString);
        }
        return stringBuffer.toString();
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void writeInt(ByteArrayOutputStream byteArrayOutputStream, int i) {
        for (int i2 = 0; i2 < 4; i2++) {
            byteArrayOutputStream.write((byte) (i >>> (24 - (i2 * 8))));
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static void writeInt(byte[] bArr, int i, int i2) {
        for (int i3 = 0; i3 < 4; i3++) {
            bArr[i + i3] = (byte) (i2 >>> (24 - (i3 * 8)));
        }
    }
}
