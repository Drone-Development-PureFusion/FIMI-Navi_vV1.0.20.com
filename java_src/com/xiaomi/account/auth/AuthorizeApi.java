package com.xiaomi.account.auth;

import android.content.Context;
import com.xiaomi.account.openauth.XMAuthericationException;
import com.xiaomi.account.openauth.XiaomiOAuthConstants;
import com.xiaomi.account.openauth.XiaomiOAuthorize;
import java.io.BufferedReader;
import java.io.IOException;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.UnsupportedEncodingException;
import java.net.HttpURLConnection;
import java.net.URL;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import org.apache.http.NameValuePair;
import org.apache.http.client.utils.URLEncodedUtils;
import org.apache.http.message.BasicNameValuePair;
/* loaded from: classes.dex */
public class AuthorizeApi {
    private static final int CONNECTION_TIMEOUT = 10000;
    private static final String METHOD_GET = "GET";
    private static final int READ_TIMEOUT = 15000;
    private static final String UTF8 = "UTF-8";
    private static final String HOST = XiaomiOAuthConstants.OAUTH2_API_HOST;
    private static final String OAUTH_URL_BASE = XiaomiOAuthConstants.OAUTH2_API_URL_BASE;

    @Deprecated
    public static String doHttpGet(Context context, String path, long clientId, String accessToken) throws XMAuthericationException {
        return doHttpGet(path, clientId, accessToken, null, null);
    }

    public static String doHttpGet(String path, long clientId, String accessToken) throws XMAuthericationException {
        return doHttpGet(path, clientId, accessToken, null, null);
    }

    @Deprecated
    public static String doHttpGet(Context context, String path, long clientId, String accessToken, String macKey, String macAlgorithm) throws XMAuthericationException {
        return doHttpGet(path, clientId, accessToken, macKey, macAlgorithm);
    }

    public static String doHttpGet(String path, long clientId, String accessToken, String macKey, String macAlgorithm) throws XMAuthericationException {
        InputStream inputStream;
        List<NameValuePair> params = new ArrayList<>();
        params.add(new BasicNameValuePair("clientId", String.valueOf(clientId)));
        params.add(new BasicNameValuePair(XiaomiOAuthorize.TYPE_TOKEN, accessToken));
        BufferedReader br = null;
        try {
            try {
                try {
                    URL url = new URL(AuthorizeHelper.generateUrl(OAUTH_URL_BASE + path, params));
                    HttpURLConnection.setFollowRedirects(true);
                    HttpURLConnection conn = (HttpURLConnection) url.openConnection();
                    conn.setDoInput(true);
                    conn.setRequestMethod("GET");
                    conn.setConnectTimeout(10000);
                    conn.setReadTimeout(READ_TIMEOUT);
                    HashMap<String, String> headers = makeHeaders(path, accessToken, macKey, macAlgorithm, params);
                    if (headers != null) {
                        for (String key : headers.keySet()) {
                            conn.setRequestProperty(key, headers.get(key));
                        }
                    }
                    conn.connect();
                    try {
                        inputStream = conn.getInputStream();
                    } catch (IOException e) {
                        inputStream = conn.getErrorStream();
                    }
                    if (inputStream == null) {
                        throw new XMAuthericationException(new IOException());
                    }
                    BufferedReader br2 = new BufferedReader(new InputStreamReader(inputStream), 1024);
                    try {
                        StringBuilder sb = new StringBuilder();
                        while (true) {
                            String line = br2.readLine();
                            if (line != null) {
                                sb.append(line);
                            } else {
                                String sb2 = sb.toString();
                                closeQuietly(br2);
                                return sb2;
                            }
                        }
                    } catch (UnsupportedEncodingException e2) {
                        e = e2;
                        throw new XMAuthericationException(e);
                    } catch (IOException e3) {
                        e = e3;
                        throw new XMAuthericationException(e);
                    } catch (InvalidKeyException e4) {
                        e = e4;
                        throw new XMAuthericationException(e);
                    } catch (NoSuchAlgorithmException e5) {
                        e = e5;
                        throw new XMAuthericationException(e);
                    } catch (Throwable th) {
                        th = th;
                        br = br2;
                        closeQuietly(br);
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            } catch (InvalidKeyException e6) {
                e = e6;
            } catch (NoSuchAlgorithmException e7) {
                e = e7;
            }
        } catch (UnsupportedEncodingException e8) {
            e = e8;
        } catch (IOException e9) {
            e = e9;
        }
    }

    private static void closeQuietly(BufferedReader br) {
        if (br != null) {
            try {
                br.close();
            } catch (IOException e) {
            }
        }
    }

    private static HashMap<String, String> makeHeaders(String path, String accessToken, String macKey, String macAlgorithm, List<NameValuePair> params) throws InvalidKeyException, NoSuchAlgorithmException, UnsupportedEncodingException {
        if (macKey == null && macAlgorithm == null) {
            return null;
        }
        String nonce = AuthorizeHelper.generateNonce();
        String signature = AuthorizeHelper.getMacAccessTokenSignatureString(nonce, "GET", HOST, path, URLEncodedUtils.format(params, "UTF-8"), macKey, macAlgorithm);
        return AuthorizeHelper.buildMacRequestHead(accessToken, nonce, signature);
    }
}
