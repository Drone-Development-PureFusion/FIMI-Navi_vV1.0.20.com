package com.xiaomi.account.utils;

import android.os.Bundle;
import android.text.TextUtils;
import android.util.Log;
import ch.qos.logback.classic.spi.CallerData;
import com.fimi.kernel.connect.tcp.SocketOption;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.List;
import org.apache.http.NameValuePair;
import org.apache.http.client.utils.URLEncodedUtils;
/* loaded from: classes2.dex */
public class OAuthUrlPaser {
    public static Bundle parse(String url) {
        String currentUrl = new String(url);
        int index = currentUrl.indexOf(63);
        if (index > 0) {
            String param = currentUrl.substring(index + 1);
            if (param.startsWith("code=") || param.contains("&code=")) {
                return parseUrl(currentUrl);
            }
            if (param.startsWith("error=") || param.contains("&error=")) {
                return parseUrl(currentUrl);
            }
        } else {
            int index2 = currentUrl.indexOf(35);
            if (index2 > 0) {
                String param2 = currentUrl.substring(index2 + 1);
                if (param2.startsWith("access_token=") || param2.contains("&access_token=")) {
                    return parseUrl(currentUrl.replace("#", CallerData.f38NA));
                }
                if (param2.startsWith("error=") || param2.contains("&error=")) {
                    return parseUrl(currentUrl.replace("#", CallerData.f38NA));
                }
            }
        }
        return null;
    }

    private static Bundle parseUrl(String url) {
        Bundle b = new Bundle();
        if (url != null) {
            try {
                List<NameValuePair> list = URLEncodedUtils.parse(new URI(url), SocketOption.DEFAULT_CHARSET);
                for (NameValuePair pair : list) {
                    if (!TextUtils.isEmpty(pair.getName()) && !TextUtils.isEmpty(pair.getValue())) {
                        b.putString(pair.getName(), pair.getValue());
                    }
                }
            } catch (URISyntaxException e) {
                Log.e("openauth", e.getMessage());
            }
        }
        return b;
    }
}
