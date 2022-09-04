package com.xiaomi.account.http;

import android.text.TextUtils;
import com.fimi.kernel.connect.tcp.SocketOption;
import com.xiaomi.account.http.Response;
import java.io.BufferedReader;
import java.io.BufferedWriter;
import java.io.IOException;
import java.io.InputStreamReader;
import java.io.OutputStream;
import java.io.OutputStreamWriter;
import java.net.CookieHandler;
import java.net.CookieManager;
import java.net.CookiePolicy;
import java.net.HttpURLConnection;
import java.net.URL;
import java.util.Map;
import org.apache.mina.proxy.handlers.http.HttpProxyConstants;
/* loaded from: classes2.dex */
public class UrlConnHttpFactory extends HttpFactory {

    /* loaded from: classes2.dex */
    private class HttpUrlConnClient implements HttpClient {
        private static final String BODY_STRING_SPLIT = "&";
        private static final String TAG = "HttpUrlConnClient";
        HttpClientConfig config;

        @Override // com.xiaomi.account.http.HttpClient
        public Response excute(Request request) throws IOException {
            Response build;
            BufferedReader br;
            HttpURLConnection conn = (HttpURLConnection) new URL(request.url).openConnection();
            try {
                conn.setConnectTimeout((int) this.config.connectTimeoutMs);
                conn.setReadTimeout((int) this.config.readTimeoutMs);
                if (request.formBody != null) {
                    conn.setDoInput(true);
                    conn.setDoOutput(true);
                    conn.setRequestMethod("POST");
                } else {
                    conn.setRequestMethod(HttpProxyConstants.GET);
                }
                conn.setInstanceFollowRedirects(request.followRedirects);
                if (request.headers != null) {
                    for (Map.Entry<String, String> header : request.headers.entrySet()) {
                        conn.setRequestProperty(header.getKey(), header.getValue());
                    }
                }
                conn.connect();
                if (request.formBody != null) {
                    OutputStream os = conn.getOutputStream();
                    BufferedWriter writer = new BufferedWriter(new OutputStreamWriter(os, SocketOption.DEFAULT_CHARSET));
                    writer.write(UrlConnHttpFactory.joinToQuery(request.formBody));
                    writer.flush();
                    writer.close();
                    os.close();
                }
                int code = conn.getResponseCode();
                Response.Builder builder = new Response.Builder().code(code).location(conn.getHeaderField("Location")).setCookie(conn.getHeaderField("Set-Cookie")).headers(conn.getHeaderFields());
                if (code == 200) {
                    BufferedReader br2 = null;
                    try {
                        br = new BufferedReader(new InputStreamReader(conn.getInputStream()), 1024);
                    } catch (Throwable th) {
                        th = th;
                    }
                    try {
                        StringBuilder sb = new StringBuilder();
                        while (true) {
                            String line = br.readLine();
                            if (line == null) {
                                break;
                            }
                            sb.append(line);
                        }
                        build = builder.body(sb.toString()).build();
                        if (br != null) {
                            br.close();
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        br2 = br;
                        if (br2 != null) {
                            br2.close();
                        }
                        throw th;
                    }
                } else {
                    build = builder.build();
                }
                return build;
            } finally {
                conn.disconnect();
            }
        }

        private HttpUrlConnClient(HttpClientConfig config) {
            this.config = config;
            CookieHandler.setDefault(new CookieManager());
            ((CookieManager) CookieHandler.getDefault()).setCookiePolicy(CookiePolicy.ACCEPT_ORIGINAL_SERVER);
        }
    }

    @Override // com.xiaomi.account.http.HttpFactory
    public HttpClient createHttpClient(HttpClientConfig config) {
        return new HttpUrlConnClient(config);
    }

    public static String joinToQuery(Map<String, String> params) {
        if (params == null) {
            return "";
        }
        StringBuilder result = new StringBuilder();
        boolean first = true;
        for (Map.Entry<String, String> entry : params.entrySet()) {
            String key = entry.getKey();
            String value = entry.getValue();
            if (!TextUtils.isEmpty(key) && !TextUtils.isEmpty(value)) {
                if (first) {
                    first = false;
                } else {
                    result.append("&");
                }
                result.append(key);
                result.append("=");
                result.append(value);
            }
        }
        return result.toString();
    }
}
