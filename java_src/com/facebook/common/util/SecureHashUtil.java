package com.facebook.common.util;

import android.util.Base64;
import com.fimi.x8sdk.command.FcCollection;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
/* loaded from: classes.dex */
public class SecureHashUtil {
    static final byte[] HEX_CHAR_TABLE = {48, 49, 50, 51, 52, 53, FcCollection.MSG_LOCK_MOTOR_STATE, 55, FcCollection.MSG_SET_AUTO_PHOTO_EXCUTE, FcCollection.MSG_SET_AUTO_PHOTO_PAUSE, FcCollection.MSG_SET_FOLLOW_CLOSE, FcCollection.MSG_SET_FOLLOW_NOTITY_FC, FcCollection.MSG_SET_SCREW_START, FcCollection.MSG_SET_SCREW_PAUSE, FcCollection.MSG_SET_SCREW_RESUME, FcCollection.MSG_SET_SCREW_EXITE};

    public static String makeSHA1Hash(String text) {
        try {
            return makeSHA1Hash(text.getBytes("utf-8"));
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        }
    }

    public static String makeSHA1Hash(byte[] bytes) {
        return makeHash(bytes, "SHA-1");
    }

    public static String makeSHA256Hash(byte[] bytes) {
        return makeHash(bytes, "SHA-256");
    }

    public static String makeSHA1HashBase64(byte[] bytes) {
        try {
            MessageDigest md = MessageDigest.getInstance("SHA-1");
            md.update(bytes, 0, bytes.length);
            byte[] sha1hash = md.digest();
            return Base64.encodeToString(sha1hash, 11);
        } catch (NoSuchAlgorithmException e) {
            throw new RuntimeException(e);
        }
    }

    public static String makeMD5Hash(String text) {
        try {
            return makeMD5Hash(text.getBytes("utf-8"));
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        }
    }

    public static String makeMD5Hash(byte[] bytes) {
        return makeHash(bytes, "MD5");
    }

    public static String convertToHex(byte[] raw) throws UnsupportedEncodingException {
        StringBuilder sb = new StringBuilder(raw.length);
        for (byte b : raw) {
            int v = b & 255;
            sb.append((char) HEX_CHAR_TABLE[v >>> 4]);
            sb.append((char) HEX_CHAR_TABLE[v & 15]);
        }
        return sb.toString();
    }

    private static String makeHash(byte[] bytes, String algorithm) {
        try {
            MessageDigest md = MessageDigest.getInstance(algorithm);
            md.update(bytes, 0, bytes.length);
            byte[] hash = md.digest();
            return convertToHex(hash);
        } catch (UnsupportedEncodingException e) {
            throw new RuntimeException(e);
        } catch (NoSuchAlgorithmException e2) {
            throw new RuntimeException(e2);
        }
    }
}
