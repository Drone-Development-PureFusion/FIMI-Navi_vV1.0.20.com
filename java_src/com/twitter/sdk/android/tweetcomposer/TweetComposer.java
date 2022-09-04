package com.twitter.sdk.android.tweetcomposer;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.net.Uri;
import android.text.TextUtils;
import com.twitter.sdk.android.core.GuestSessionProvider;
import com.twitter.sdk.android.core.SessionManager;
import com.twitter.sdk.android.core.Twitter;
import com.twitter.sdk.android.core.TwitterCore;
import com.twitter.sdk.android.core.TwitterSession;
import com.twitter.sdk.android.core.internal.network.UrlUtils;
import com.twitter.sdk.android.core.internal.scribe.DefaultScribeClient;
import com.twitter.sdk.android.core.internal.scribe.ScribeConfig;
import java.net.URL;
import java.util.List;
/* loaded from: classes2.dex */
public class TweetComposer {
    private static final String KIT_SCRIBE_NAME = "TweetComposer";
    private static final String MIME_TYPE_JPEG = "image/jpeg";
    private static final String MIME_TYPE_PLAIN_TEXT = "text/plain";
    private static final String TWITTER_PACKAGE_NAME = "com.twitter.android";
    private static final String WEB_INTENT = "https://twitter.com/intent/tweet?text=%s&url=%s";
    @SuppressLint({"StaticFieldLeak"})
    static volatile TweetComposer instance;
    ScribeClient scribeClient = new ScribeClientImpl(null);
    SessionManager<TwitterSession> sessionManager = TwitterCore.getInstance().getSessionManager();
    GuestSessionProvider guestSessionProvider = TwitterCore.getInstance().getGuestSessionProvider();
    Context context = Twitter.getInstance().getContext(getIdentifier());

    public static TweetComposer getInstance() {
        if (instance == null) {
            synchronized (TweetComposer.class) {
                if (instance == null) {
                    instance = new TweetComposer();
                }
            }
        }
        return instance;
    }

    TweetComposer() {
        setUpScribeClient();
    }

    public String getVersion() {
        return "3.1.1.9";
    }

    private void setUpScribeClient() {
        ScribeConfig config = DefaultScribeClient.getScribeConfig(KIT_SCRIBE_NAME, getVersion());
        this.scribeClient = new ScribeClientImpl(new DefaultScribeClient(this.context, this.sessionManager, this.guestSessionProvider, Twitter.getInstance().getIdManager(), config));
    }

    public String getIdentifier() {
        return "com.twitter.sdk.android:tweet-composer";
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ScribeClient getScribeClient() {
        return this.scribeClient;
    }

    /* loaded from: classes2.dex */
    public static class Builder {
        private final Context context;
        private Uri imageUri;
        private String text;
        private URL url;

        public Builder(Context context) {
            if (context == null) {
                throw new IllegalArgumentException("Context must not be null.");
            }
            this.context = context;
        }

        public Builder text(String text) {
            if (text == null) {
                throw new IllegalArgumentException("text must not be null.");
            }
            if (this.text != null) {
                throw new IllegalStateException("text already set.");
            }
            this.text = text;
            return this;
        }

        public Builder url(URL url) {
            if (url == null) {
                throw new IllegalArgumentException("url must not be null.");
            }
            if (this.url != null) {
                throw new IllegalStateException("url already set.");
            }
            this.url = url;
            return this;
        }

        public Builder image(Uri imageUri) {
            if (imageUri == null) {
                throw new IllegalArgumentException("imageUri must not be null.");
            }
            if (this.imageUri != null) {
                throw new IllegalStateException("imageUri already set.");
            }
            this.imageUri = imageUri;
            return this;
        }

        public Intent createIntent() {
            Intent intent = createTwitterIntent();
            if (intent == null) {
                return createWebIntent();
            }
            return intent;
        }

        Intent createTwitterIntent() {
            Intent intent = new Intent("android.intent.action.SEND");
            StringBuilder builder = new StringBuilder();
            if (!TextUtils.isEmpty(this.text)) {
                builder.append(this.text);
            }
            if (this.url != null) {
                if (builder.length() > 0) {
                    builder.append(' ');
                }
                builder.append(this.url.toString());
            }
            intent.putExtra("android.intent.extra.TEXT", builder.toString());
            intent.setType(TweetComposer.MIME_TYPE_PLAIN_TEXT);
            if (this.imageUri != null) {
                intent.putExtra("android.intent.extra.STREAM", this.imageUri);
                intent.setType(TweetComposer.MIME_TYPE_JPEG);
            }
            PackageManager packManager = this.context.getPackageManager();
            List<ResolveInfo> resolvedInfoList = packManager.queryIntentActivities(intent, 65536);
            for (ResolveInfo resolveInfo : resolvedInfoList) {
                if (resolveInfo.activityInfo.packageName.startsWith(TweetComposer.TWITTER_PACKAGE_NAME)) {
                    intent.setClassName(resolveInfo.activityInfo.packageName, resolveInfo.activityInfo.name);
                    return intent;
                }
            }
            return null;
        }

        Intent createWebIntent() {
            String url = this.url == null ? "" : this.url.toString();
            String tweetUrl = String.format(TweetComposer.WEB_INTENT, UrlUtils.urlEncode(this.text), UrlUtils.urlEncode(url));
            return new Intent("android.intent.action.VIEW", Uri.parse(tweetUrl));
        }

        public void show() {
            Intent intent = createIntent();
            this.context.startActivity(intent);
        }
    }
}
