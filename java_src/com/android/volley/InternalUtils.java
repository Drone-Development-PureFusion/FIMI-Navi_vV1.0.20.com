package com.android.volley;

import com.fimi.kernel.connect.tcp.SocketOption;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* loaded from: classes.dex */
class InternalUtils {
    private static final char[] HEX_CHARS = "0123456789ABCDEF".toCharArray();

    InternalUtils() {
    }

    private static String convertToHex(byte[] bytes) {
        char[] hexChars = new char[bytes.length * 2];
        for (int j = 0; j < bytes.length; j++) {
            int v = bytes[j] & 255;
            hexChars[j * 2] = HEX_CHARS[v >>> 4];
            hexChars[(j * 2) + 1] = HEX_CHARS[v & 15];
        }
        return new String(hexChars);
    }

    public static String sha1Hash(String text) {
        try {
            MessageDigest digest = MessageDigest.getInstance("SHA-1");
            byte[] bytes = text.getBytes(SocketOption.DEFAULT_CHARSET);
            digest.update(bytes, 0, bytes.length);
            String hash = convertToHex(digest.digest());
            return hash;
        } catch (UnsupportedEncodingException e) {
            e.printStackTrace();
            return null;
        } catch (NoSuchAlgorithmException e2) {
            e2.printStackTrace();
            return null;
        }
    }
}
