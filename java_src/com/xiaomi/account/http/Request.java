package com.xiaomi.account.http;

import android.support.annotation.Nullable;
import android.text.TextUtils;
import java.net.URI;
import java.net.URISyntaxException;
import java.util.Map;
/* loaded from: classes2.dex */
public class Request {
    public final boolean followRedirects;
    public final Map<String, String> formBody;
    public final Map<String, String> headers;
    public final URI uri;
    public final String url;

    private Request(Builder builder) {
        this.uri = builder.uri;
        this.url = builder.uri.toString();
        this.headers = builder.headers;
        this.formBody = builder.formBody;
        this.followRedirects = builder.followRedirects;
    }

    /* loaded from: classes2.dex */
    public static class Builder {
        boolean followRedirects = true;
        Map<String, String> formBody;
        Map<String, String> headers;
        URI uri;

        public Builder url(String url) {
            try {
                this.uri = new URI(url);
                return this;
            } catch (URISyntaxException e) {
                throw new IllegalArgumentException("unexpected url: " + url);
            }
        }

        public Builder appendQuery(@Nullable String query) {
            String newQuery;
            if (!TextUtils.isEmpty(query)) {
                URI oldUri = this.uri;
                String newQuery2 = oldUri.getQuery();
                if (newQuery2 == null) {
                    newQuery = query;
                } else {
                    newQuery = newQuery2 + "&" + query;
                }
                try {
                    this.uri = new URI(oldUri.getScheme(), oldUri.getAuthority(), oldUri.getPath(), newQuery, oldUri.getFragment());
                } catch (URISyntaxException e) {
                    throw new IllegalArgumentException("unexpected newQuery: " + query);
                }
            }
            return this;
        }

        public Builder headers(@Nullable Map<String, String> headers) {
            this.headers = headers;
            return this;
        }

        public Builder formBody(@Nullable Map<String, String> formBody) {
            this.formBody = formBody;
            return this;
        }

        public Builder followRedirects(boolean followRedirects) {
            this.followRedirects = followRedirects;
            return this;
        }

        public Request build() {
            return new Request(this);
        }
    }
}
