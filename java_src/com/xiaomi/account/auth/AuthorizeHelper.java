package com.xiaomi.account.auth;

import android.net.Uri;
import android.text.TextUtils;
import ch.qos.logback.classic.turbo.ReconfigureOnChangeFilter;
import com.fimi.kernel.animutils.IOUtils;
import com.twitter.sdk.android.core.internal.oauth.OAuthConstants;
import com.xiaomi.account.utils.Base64Coder;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.List;
import java.util.Random;
import java.util.Scanner;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;
import org.apache.http.NameValuePair;
import org.apache.http.client.utils.URLEncodedUtils;
/* loaded from: classes2.dex */
public class AuthorizeHelper {
    private static final String HMAC_SHA1 = "HmacSHA1";
    private static final String UTF8 = "UTF-8";
    private static Random random = new Random();

    /* JADX INFO: Access modifiers changed from: protected */
    public static String getMacAccessTokenSignatureString(String nonce, String method, String host, String uriPath, String query, String macKey, String macAlgorithm) throws InvalidKeyException, NoSuchAlgorithmException, UnsupportedEncodingException {
        if ("HmacSHA1".equalsIgnoreCase(macAlgorithm)) {
            StringBuilder joined = new StringBuilder("");
            joined.append(nonce + IOUtils.LINE_SEPARATOR_UNIX);
            joined.append(method.toUpperCase() + IOUtils.LINE_SEPARATOR_UNIX);
            joined.append(host + IOUtils.LINE_SEPARATOR_UNIX);
            joined.append(uriPath + IOUtils.LINE_SEPARATOR_UNIX);
            if (!TextUtils.isEmpty(query)) {
                StringBuffer sb = new StringBuffer();
                List<NameValuePair> paramList = new ArrayList<>();
                URLEncodedUtils.parse(paramList, new Scanner(query), "UTF-8");
                Collections.sort(paramList, new Comparator<NameValuePair>() { // from class: com.xiaomi.account.auth.AuthorizeHelper.1
                    @Override // java.util.Comparator
                    public int compare(NameValuePair p1, NameValuePair p2) {
                        return p1.getName().compareTo(p2.getName());
                    }
                });
                sb.append(URLEncodedUtils.format(paramList, "UTF-8"));
                joined.append(sb.toString() + IOUtils.LINE_SEPARATOR_UNIX);
            }
            byte[] signatureBytes = encryptHMACSha1(joined.toString().getBytes("UTF-8"), macKey.getBytes("UTF-8"));
            String signature = encodeSign(signatureBytes);
            return signature;
        }
        throw new NoSuchAlgorithmException("error mac algorithm : " + macAlgorithm);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static HashMap<String, String> buildMacRequestHead(String accessTokenId, String nonce, String mac) throws UnsupportedEncodingException {
        String headContent = String.format("MAC access_token=\"%s\", nonce=\"%s\",mac=\"%s\"", URLEncoder.encode(accessTokenId, "UTF-8"), URLEncoder.encode(nonce, "UTF-8"), URLEncoder.encode(mac, "UTF-8"));
        HashMap<String, String> header = new HashMap<>();
        header.put(OAuthConstants.HEADER_AUTHORIZATION, headContent);
        return header;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String generateNonce() {
        long n = random.nextLong();
        int m = (int) (System.currentTimeMillis() / ReconfigureOnChangeFilter.DEFAULT_REFRESH_PERIOD);
        return n + ":" + m;
    }

    protected static String encodeSign(byte[] key) {
        return new String(Base64Coder.encode(key));
    }

    protected static byte[] encryptHMACSha1(byte[] data, byte[] key) throws NoSuchAlgorithmException, InvalidKeyException {
        SecretKeySpec signingKey = new SecretKeySpec(key, "HmacSHA1");
        Mac mac = Mac.getInstance("HmacSHA1");
        mac.init(signingKey);
        mac.update(data);
        return mac.doFinal();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static String generateUrl(String url, List<NameValuePair> parameters) {
        if (parameters == null || parameters.size() <= 0) {
            return url;
        }
        Uri.Builder builder = Uri.parse(url).buildUpon();
        for (NameValuePair p : parameters) {
            builder.appendQueryParameter(p.getName(), p.getValue());
        }
        String finalURL = builder.build().toString();
        return finalURL;
    }
}
