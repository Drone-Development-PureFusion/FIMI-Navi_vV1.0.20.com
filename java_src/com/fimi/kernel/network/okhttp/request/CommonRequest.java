package com.fimi.kernel.network.okhttp.request;

import ch.qos.logback.classic.spi.CallerData;
import java.io.File;
import java.util.Map;
import okhttp3.FormBody;
import okhttp3.Headers;
import okhttp3.MediaType;
import okhttp3.MultipartBody;
import okhttp3.Request;
import okhttp3.RequestBody;
/* loaded from: classes.dex */
public class CommonRequest {
    private static final MediaType FILE_TYPE = MediaType.parse("application/octet-stream");

    public static Request createPostRequest(String url, RequestParams params) {
        return createPostRequest(url, params, null);
    }

    public static Request createPostRequest(String url, RequestParams params, RequestParams headers) {
        FormBody.Builder mFormBodyBuild = new FormBody.Builder();
        if (params != null) {
            for (Map.Entry<String, String> entry : params.urlParams.entrySet()) {
                mFormBodyBuild.add(entry.getKey(), entry.getValue());
            }
        }
        Headers.Builder mHeaderBuild = new Headers.Builder();
        if (headers != null) {
            for (Map.Entry<String, String> entry2 : headers.urlParams.entrySet()) {
                mHeaderBuild.add(entry2.getKey(), entry2.getValue());
            }
        }
        FormBody mFormBody = mFormBodyBuild.build();
        Headers mHeader = mHeaderBuild.build();
        Request request = new Request.Builder().url(url).post(mFormBody).headers(mHeader).build();
        return request;
    }

    public static Request createGetRequest(String url, RequestParams params) {
        return createGetRequest(url, params, null);
    }

    public static Request createGetRequest(String url) {
        return createGetRequest(url, null);
    }

    public static Request createGetRequest(String url, RequestParams params, RequestParams headers) {
        StringBuilder urlBuilder = new StringBuilder(url).append(CallerData.f38NA);
        if (params != null) {
            for (Map.Entry<String, String> entry : params.urlParams.entrySet()) {
                urlBuilder.append(entry.getKey()).append("=").append(entry.getValue()).append("&");
            }
        }
        Headers.Builder mHeaderBuild = new Headers.Builder();
        if (headers != null) {
            for (Map.Entry<String, String> entry2 : headers.urlParams.entrySet()) {
                mHeaderBuild.add(entry2.getKey(), entry2.getValue());
            }
        }
        Headers mHeader = mHeaderBuild.build();
        return new Request.Builder().url(urlBuilder.substring(0, urlBuilder.length() - 1)).get().headers(mHeader).build();
    }

    public static Request createMonitorRequest(String url, RequestParams params) {
        StringBuilder urlBuilder = new StringBuilder(url).append("&");
        if (params != null && params.hasParams()) {
            for (Map.Entry<String, String> entry : params.urlParams.entrySet()) {
                urlBuilder.append(entry.getKey()).append("=").append(entry.getValue()).append("&");
            }
        }
        return new Request.Builder().url(urlBuilder.substring(0, urlBuilder.length() - 1)).get().build();
    }

    public static Request createMultiPostRequest(String url, RequestParams params) {
        MultipartBody.Builder requestBody = new MultipartBody.Builder();
        requestBody.setType(MultipartBody.FORM);
        if (params != null) {
            for (Map.Entry<String, Object> entry : params.fileParams.entrySet()) {
                if (entry.getValue() instanceof File) {
                    requestBody.addPart(Headers.m34of("Content-Disposition", "form-data; name=\"" + entry.getKey() + "\""), RequestBody.create(FILE_TYPE, (File) entry.getValue()));
                } else if (entry.getValue() instanceof String) {
                    requestBody.addPart(Headers.m34of("Content-Disposition", "form-data; name=\"" + entry.getKey() + "\""), RequestBody.create((MediaType) null, (String) entry.getValue()));
                }
            }
        }
        return new Request.Builder().url(url).post(requestBody.build()).build();
    }

    public static Request createGetOriginalRequest(String url, RequestParams params) {
        return createGetOriginalRequest(url, params, null);
    }

    public static Request createGetOriginalRequest(String url, RequestParams params, RequestParams headers) {
        StringBuilder urlBuilder = new StringBuilder(url).append(CallerData.f38NA);
        if (params != null) {
            for (Map.Entry<String, String> entry : params.urlParams.entrySet()) {
                urlBuilder.append(entry.getKey()).append("=").append(entry.getValue()).append("&");
            }
        }
        Headers.Builder mHeaderBuild = new Headers.Builder();
        if (headers != null) {
            for (Map.Entry<String, String> entry2 : headers.urlParams.entrySet()) {
                mHeaderBuild.add(entry2.getKey(), entry2.getValue());
            }
        }
        Headers mHeader = mHeaderBuild.build();
        return new Request.Builder().url(urlBuilder.substring(0, urlBuilder.length() - 1)).get().headers(mHeader).build();
    }

    public static Request createPostOriginalRequest(String url, RequestParams params) {
        return createPostOriginalRequest(url, params, null);
    }

    public static Request createPostOriginalRequest(String url, RequestParams params, RequestParams headers) {
        FormBody.Builder mFormBodyBuild = new FormBody.Builder();
        if (params != null) {
            for (Map.Entry<String, String> entry : params.urlParams.entrySet()) {
                mFormBodyBuild.add(entry.getKey(), entry.getValue());
            }
        }
        Headers.Builder mHeaderBuild = new Headers.Builder();
        if (headers != null) {
            for (Map.Entry<String, String> entry2 : headers.urlParams.entrySet()) {
                mHeaderBuild.add(entry2.getKey(), entry2.getValue());
            }
        }
        FormBody mFormBody = mFormBodyBuild.build();
        Headers mHeader = mHeaderBuild.build();
        Request request = new Request.Builder().url(url).post(mFormBody).headers(mHeader).build();
        return request;
    }
}
