package com.nostra13.universalimageloader.core.download;

import com.facebook.common.util.UriUtil;
import java.io.IOException;
import java.io.InputStream;
import java.util.Locale;
/* loaded from: classes2.dex */
public interface ImageDownloader {
    InputStream getStream(String str, Object obj) throws IOException;

    /* loaded from: classes2.dex */
    public enum Scheme {
        HTTP(UriUtil.HTTP_SCHEME),
        HTTPS(UriUtil.HTTPS_SCHEME),
        FILE("file"),
        CONTENT("content"),
        ASSETS("assets"),
        DRAWABLE("drawable"),
        UNKNOWN("");
        
        private String scheme;
        private String uriPrefix;

        Scheme(String scheme) {
            this.scheme = scheme;
            this.uriPrefix = scheme + "://";
        }

        public static Scheme ofUri(String uri) {
            if (uri != null) {
                Scheme[] arr$ = values();
                for (Scheme s : arr$) {
                    if (s.belongsTo(uri)) {
                        return s;
                    }
                }
            }
            return UNKNOWN;
        }

        private boolean belongsTo(String uri) {
            return uri.toLowerCase(Locale.US).startsWith(this.uriPrefix);
        }

        public String wrap(String path) {
            return this.uriPrefix + path;
        }

        public String crop(String uri) {
            if (!belongsTo(uri)) {
                throw new IllegalArgumentException(String.format("URI [%1$s] doesn't have expected scheme [%2$s]", uri, this.scheme));
            }
            return uri.substring(this.uriPrefix.length());
        }
    }
}
