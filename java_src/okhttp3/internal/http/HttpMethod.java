package okhttp3.internal.http;

import com.android.volley.toolbox.HttpClientStack;
import org.apache.mina.proxy.handlers.http.HttpProxyConstants;
/* loaded from: classes2.dex */
public final class HttpMethod {
    public static boolean invalidatesCache(String method) {
        return method.equals("POST") || method.equals(HttpClientStack.HttpPatch.METHOD_NAME) || method.equals(HttpProxyConstants.PUT) || method.equals("DELETE") || method.equals("MOVE");
    }

    public static boolean requiresRequestBody(String method) {
        return method.equals("POST") || method.equals(HttpProxyConstants.PUT) || method.equals(HttpClientStack.HttpPatch.METHOD_NAME) || method.equals("PROPPATCH") || method.equals("REPORT");
    }

    public static boolean permitsRequestBody(String method) {
        return requiresRequestBody(method) || method.equals("OPTIONS") || method.equals("DELETE") || method.equals("PROPFIND") || method.equals("MKCOL") || method.equals("LOCK");
    }

    public static boolean redirectsWithBody(String method) {
        return method.equals("PROPFIND");
    }

    public static boolean redirectsToGet(String method) {
        return !method.equals("PROPFIND");
    }

    private HttpMethod() {
    }
}
