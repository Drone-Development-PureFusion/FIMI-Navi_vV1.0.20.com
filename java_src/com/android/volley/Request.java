package com.android.volley;

import android.net.Uri;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import com.android.volley.Cache;
import com.android.volley.Response;
import com.android.volley.VolleyLog;
import java.io.UnsupportedEncodingException;
import java.net.URLEncoder;
import java.util.Collections;
import java.util.Map;
/* loaded from: classes.dex */
public abstract class Request<T> implements Comparable<Request<T>> {
    private static final String DEFAULT_PARAMS_ENCODING = "UTF-8";
    private static long sCounter;
    private Cache.Entry mCacheEntry;
    private boolean mCanceled;
    private final int mDefaultTrafficStatsTag;
    private Response.ErrorListener mErrorListener;
    private final VolleyLog.MarkerLog mEventLog;
    private String mIdentifier;
    private final int mMethod;
    private String mRedirectUrl;
    private RequestQueue mRequestQueue;
    private boolean mResponseDelivered;
    private RetryPolicy mRetryPolicy;
    private Integer mSequence;
    private boolean mShouldCache;
    private Object mTag;
    private final String mUrl;

    /* loaded from: classes.dex */
    public interface Method {
        public static final int DELETE = 3;
        public static final int DEPRECATED_GET_OR_POST = -1;
        public static final int GET = 0;
        public static final int HEAD = 4;
        public static final int OPTIONS = 5;
        public static final int PATCH = 7;
        public static final int POST = 1;
        public static final int PUT = 2;
        public static final int TRACE = 6;
    }

    /* loaded from: classes.dex */
    public enum Priority {
        LOW,
        NORMAL,
        HIGH,
        IMMEDIATE
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void deliverResponse(T t);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract Response<T> parseNetworkResponse(NetworkResponse networkResponse);

    @Override // java.lang.Comparable
    public /* bridge */ /* synthetic */ int compareTo(Object x0) {
        return compareTo((Request) ((Request) x0));
    }

    @Deprecated
    public Request(String url, Response.ErrorListener listener) {
        this(-1, url, listener);
    }

    public Request(int method, String url, Response.ErrorListener listener) {
        this.mEventLog = VolleyLog.MarkerLog.ENABLED ? new VolleyLog.MarkerLog() : null;
        this.mShouldCache = true;
        this.mCanceled = false;
        this.mResponseDelivered = false;
        this.mCacheEntry = null;
        this.mMethod = method;
        this.mUrl = url;
        this.mIdentifier = createIdentifier(method, url);
        this.mErrorListener = listener;
        setRetryPolicy(new DefaultRetryPolicy());
        this.mDefaultTrafficStatsTag = findDefaultTrafficStatsTag(url);
    }

    public int getMethod() {
        return this.mMethod;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Request<?> setTag(Object tag) {
        this.mTag = tag;
        return this;
    }

    public Object getTag() {
        return this.mTag;
    }

    public Response.ErrorListener getErrorListener() {
        return this.mErrorListener;
    }

    public int getTrafficStatsTag() {
        return this.mDefaultTrafficStatsTag;
    }

    private static int findDefaultTrafficStatsTag(String url) {
        Uri uri;
        String host;
        if (TextUtils.isEmpty(url) || (uri = Uri.parse(url)) == null || (host = uri.getHost()) == null) {
            return 0;
        }
        return host.hashCode();
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Request<?> setRetryPolicy(RetryPolicy retryPolicy) {
        this.mRetryPolicy = retryPolicy;
        return this;
    }

    public void addMarker(String tag) {
        if (VolleyLog.MarkerLog.ENABLED) {
            this.mEventLog.add(tag, Thread.currentThread().getId());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void finish(final String tag) {
        if (this.mRequestQueue != null) {
            this.mRequestQueue.finish(this);
            onFinish();
        }
        if (VolleyLog.MarkerLog.ENABLED) {
            final long threadId = Thread.currentThread().getId();
            if (Looper.myLooper() != Looper.getMainLooper()) {
                Handler mainThread = new Handler(Looper.getMainLooper());
                mainThread.post(new Runnable() { // from class: com.android.volley.Request.1
                    @Override // java.lang.Runnable
                    public void run() {
                        Request.this.mEventLog.add(tag, threadId);
                        Request.this.mEventLog.finish(toString());
                    }
                });
                return;
            }
            this.mEventLog.add(tag, threadId);
            this.mEventLog.finish(toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void onFinish() {
        this.mErrorListener = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Request<?> setRequestQueue(RequestQueue requestQueue) {
        this.mRequestQueue = requestQueue;
        return this;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Request<?> setSequence(int sequence) {
        this.mSequence = Integer.valueOf(sequence);
        return this;
    }

    public final int getSequence() {
        if (this.mSequence == null) {
            throw new IllegalStateException("getSequence called before setSequence");
        }
        return this.mSequence.intValue();
    }

    public String getUrl() {
        return this.mRedirectUrl != null ? this.mRedirectUrl : this.mUrl;
    }

    public String getOriginUrl() {
        return this.mUrl;
    }

    public String getIdentifier() {
        return this.mIdentifier;
    }

    public void setRedirectUrl(String redirectUrl) {
        this.mRedirectUrl = redirectUrl;
    }

    public String getCacheKey() {
        return this.mMethod + ":" + this.mUrl;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public Request<?> setCacheEntry(Cache.Entry entry) {
        this.mCacheEntry = entry;
        return this;
    }

    public Cache.Entry getCacheEntry() {
        return this.mCacheEntry;
    }

    public void cancel() {
        this.mCanceled = true;
    }

    public boolean isCanceled() {
        return this.mCanceled;
    }

    public Map<String, String> getHeaders() throws AuthFailureError {
        return Collections.emptyMap();
    }

    @Deprecated
    protected Map<String, String> getPostParams() throws AuthFailureError {
        return getParams();
    }

    @Deprecated
    protected String getPostParamsEncoding() {
        return getParamsEncoding();
    }

    @Deprecated
    public String getPostBodyContentType() {
        return getBodyContentType();
    }

    @Deprecated
    public byte[] getPostBody() throws AuthFailureError {
        Map<String, String> postParams = getPostParams();
        if (postParams == null || postParams.size() <= 0) {
            return null;
        }
        return encodeParameters(postParams, getPostParamsEncoding());
    }

    protected Map<String, String> getParams() throws AuthFailureError {
        return null;
    }

    protected String getParamsEncoding() {
        return "UTF-8";
    }

    public String getBodyContentType() {
        return "application/x-www-form-urlencoded; charset=" + getParamsEncoding();
    }

    public byte[] getBody() throws AuthFailureError {
        Map<String, String> params = getParams();
        if (params == null || params.size() <= 0) {
            return null;
        }
        return encodeParameters(params, getParamsEncoding());
    }

    private byte[] encodeParameters(Map<String, String> params, String paramsEncoding) {
        StringBuilder encodedParams = new StringBuilder();
        try {
            for (Map.Entry<String, String> entry : params.entrySet()) {
                encodedParams.append(URLEncoder.encode(entry.getKey(), paramsEncoding));
                encodedParams.append('=');
                encodedParams.append(URLEncoder.encode(entry.getValue(), paramsEncoding));
                encodedParams.append('&');
            }
            return encodedParams.toString().getBytes(paramsEncoding);
        } catch (UnsupportedEncodingException uee) {
            throw new RuntimeException("Encoding not supported: " + paramsEncoding, uee);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Request<?> setShouldCache(boolean shouldCache) {
        this.mShouldCache = shouldCache;
        return this;
    }

    public final boolean shouldCache() {
        return this.mShouldCache;
    }

    public Priority getPriority() {
        return Priority.NORMAL;
    }

    public final int getTimeoutMs() {
        return this.mRetryPolicy.getCurrentTimeout();
    }

    public RetryPolicy getRetryPolicy() {
        return this.mRetryPolicy;
    }

    public void markDelivered() {
        this.mResponseDelivered = true;
    }

    public boolean hasHadResponseDelivered() {
        return this.mResponseDelivered;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public VolleyError parseNetworkError(VolleyError volleyError) {
        return volleyError;
    }

    public void deliverError(VolleyError error) {
        if (this.mErrorListener != null) {
            this.mErrorListener.onErrorResponse(error);
        }
    }

    public int compareTo(Request<T> other) {
        Priority left = getPriority();
        Priority right = other.getPriority();
        return left == right ? this.mSequence.intValue() - other.mSequence.intValue() : right.ordinal() - left.ordinal();
    }

    public String toString() {
        String trafficStatsTag = "0x" + Integer.toHexString(getTrafficStatsTag());
        return (this.mCanceled ? "[X] " : "[ ] ") + getUrl() + " " + trafficStatsTag + " " + getPriority() + " " + this.mSequence;
    }

    private static String createIdentifier(int method, String url) {
        StringBuilder append = new StringBuilder().append("Request:").append(method).append(":").append(url).append(":").append(System.currentTimeMillis()).append(":");
        long j = sCounter;
        sCounter = 1 + j;
        return InternalUtils.sha1Hash(append.append(j).toString());
    }
}
