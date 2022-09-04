package com.xiaomi.account.http;

import java.util.List;
import java.util.Map;
/* loaded from: classes2.dex */
public class Response {
    public final String body;
    public final int code;
    public final Map<String, List<String>> headers;
    public final String location;
    public final String setCookie;

    public Response(Builder builder) {
        this.code = builder.code;
        this.body = builder.body;
        this.headers = builder.headers;
        this.setCookie = builder.setCookie;
        this.location = builder.location;
    }

    /* loaded from: classes2.dex */
    public static class Builder {
        String body;
        int code;
        Map<String, List<String>> headers;
        String location;
        String setCookie;

        public Builder() {
        }

        public Builder(Response response) {
            this.code = response.code;
            this.body = response.body;
            this.headers = response.headers;
            this.setCookie = response.setCookie;
            this.location = response.location;
        }

        public Builder headers(Map<String, List<String>> headers) {
            this.headers = headers;
            return this;
        }

        public Builder body(String body) {
            this.body = body;
            return this;
        }

        public Builder code(int code) {
            this.code = code;
            return this;
        }

        public Builder setCookie(String setCookie) {
            this.setCookie = setCookie;
            return this;
        }

        public Builder location(String location) {
            this.location = location;
            return this;
        }

        public Response build() {
            return new Response(this);
        }
    }

    public String toString() {
        return "{code:" + this.code + ", body:" + this.body + "}";
    }
}
