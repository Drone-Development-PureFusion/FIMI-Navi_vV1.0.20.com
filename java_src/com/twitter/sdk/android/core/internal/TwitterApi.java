package com.twitter.sdk.android.core.internal;

import android.net.Uri;
import android.os.Build;
import ch.qos.logback.core.CoreConstants;
import com.fimi.kernel.animutils.IOUtils;
import java.text.Normalizer;
/* loaded from: classes2.dex */
public class TwitterApi {
    public static final String BASE_HOST = "api.twitter.com";
    public static final String BASE_HOST_URL = "https://api.twitter.com";
    private final String baseHostUrl;

    public TwitterApi() {
        this("https://api.twitter.com");
    }

    public TwitterApi(String baseHostUrl) {
        this.baseHostUrl = baseHostUrl;
    }

    public String getBaseHostUrl() {
        return this.baseHostUrl;
    }

    public Uri.Builder buildUponBaseHostUrl(String... paths) {
        Uri.Builder builder = Uri.parse(getBaseHostUrl()).buildUpon();
        if (paths != null) {
            for (String p : paths) {
                builder.appendPath(p);
            }
        }
        return builder;
    }

    public static String buildUserAgent(String clientName, String version) {
        StringBuilder ua = new StringBuilder(clientName).append(IOUtils.DIR_SEPARATOR_UNIX).append(version).append(' ').append(Build.MODEL).append(IOUtils.DIR_SEPARATOR_UNIX).append(Build.VERSION.RELEASE).append(" (").append(Build.MANUFACTURER).append(';').append(Build.MODEL).append(';').append(Build.BRAND).append(';').append(Build.PRODUCT).append(CoreConstants.RIGHT_PARENTHESIS_CHAR);
        return normalizeString(ua.toString());
    }

    static String normalizeString(String str) {
        String normalizedString = Normalizer.normalize(str, Normalizer.Form.NFD);
        return stripNonAscii(normalizedString);
    }

    static String stripNonAscii(String str) {
        StringBuilder sb = new StringBuilder(str.length());
        for (int i = 0; i < str.length(); i++) {
            char c = str.charAt(i);
            if (c > 31 && c < 127) {
                sb.append(c);
            }
        }
        return sb.toString();
    }
}
