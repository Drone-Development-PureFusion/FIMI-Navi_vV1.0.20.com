package com.google.android.gms.common.util;

import com.google.android.gms.common.internal.Hide;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
@Hide
/* loaded from: classes2.dex */
public final class zza {
    public static MessageDigest zzeq(String str) {
        MessageDigest messageDigest;
        int i = 0;
        while (true) {
            int i2 = i;
            if (i2 < 2) {
                try {
                    messageDigest = MessageDigest.getInstance(str);
                } catch (NoSuchAlgorithmException e) {
                }
                if (messageDigest != null) {
                    return messageDigest;
                }
                i = i2 + 1;
            } else {
                return null;
            }
        }
    }
}
