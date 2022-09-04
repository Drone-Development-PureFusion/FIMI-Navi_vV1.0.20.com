package org.apache.mina.core.buffer;

import com.fimi.x8sdk.command.FcCollection;
/* loaded from: classes2.dex */
class IoBufferHexDumper {
    private static final byte[] highDigits;
    private static final byte[] lowDigits;

    IoBufferHexDumper() {
    }

    static {
        byte[] digits = {48, 49, 50, 51, 52, 53, FcCollection.MSG_LOCK_MOTOR_STATE, 55, FcCollection.MSG_SET_AUTO_PHOTO_EXCUTE, FcCollection.MSG_SET_AUTO_PHOTO_PAUSE, FcCollection.MSG_SET_SURROUND_PAUSE, FcCollection.MSG_SET_SURROUND_RESUME, FcCollection.MSG_SET_SURROUND_EXIT, FcCollection.MSG_SET_SURROUND_CIRCLE_DOT, FcCollection.MSG_GET_SURROUND_CIRCLE_DOT, FcCollection.MSG_SET_SURROUND_SPEED};
        byte[] high = new byte[256];
        byte[] low = new byte[256];
        for (int i = 0; i < 256; i++) {
            high[i] = digits[i >>> 4];
            low[i] = digits[i & 15];
        }
        highDigits = high;
        lowDigits = low;
    }

    public static String getHexdump(IoBuffer in, int lengthLimit) {
        int size;
        if (lengthLimit == 0) {
            throw new IllegalArgumentException("lengthLimit: " + lengthLimit + " (expected: 1+)");
        }
        boolean truncate = in.remaining() > lengthLimit;
        if (truncate) {
            size = lengthLimit;
        } else {
            size = in.remaining();
        }
        if (size == 0) {
            return "empty";
        }
        StringBuilder out = new StringBuilder((size * 3) + 3);
        int mark = in.position();
        int byteValue = in.get() & 255;
        out.append((char) highDigits[byteValue]);
        out.append((char) lowDigits[byteValue]);
        for (int size2 = size - 1; size2 > 0; size2--) {
            out.append(' ');
            int byteValue2 = in.get() & 255;
            out.append((char) highDigits[byteValue2]);
            out.append((char) lowDigits[byteValue2]);
        }
        in.position(mark);
        if (truncate) {
            out.append("...");
        }
        return out.toString();
    }
}
