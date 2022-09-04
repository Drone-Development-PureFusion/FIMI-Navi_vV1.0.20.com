package com.twitter.sdk.android.tweetcomposer;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import com.twitter.Regex;
import com.twitter.sdk.android.core.TwitterAuthToken;
import com.twitter.sdk.android.core.TwitterSession;
/* loaded from: classes2.dex */
public class ComposerActivity extends Activity {
    static final String EXTRA_HASHTAGS = "EXTRA_HASHTAGS";
    static final String EXTRA_IMAGE_URI = "EXTRA_IMAGE_URI";
    static final String EXTRA_TEXT = "EXTRA_TEXT";
    static final String EXTRA_THEME = "EXTRA_THEME";
    static final String EXTRA_USER_TOKEN = "EXTRA_USER_TOKEN";
    private static final int PLACEHOLDER_ID = -1;
    private static final String PLACEHOLDER_SCREEN_NAME = "";
    private ComposerController composerController;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public interface Finisher {
        void finish();
    }

    @Override // android.app.Activity
    protected void onCreate(Bundle savedInstanceState) {
        super.onCreate(savedInstanceState);
        Intent intent = getIntent();
        TwitterAuthToken token = (TwitterAuthToken) intent.getParcelableExtra(EXTRA_USER_TOKEN);
        TwitterSession session = new TwitterSession(token, -1L, "");
        Uri imageUri = (Uri) intent.getParcelableExtra(EXTRA_IMAGE_URI);
        String text = intent.getStringExtra(EXTRA_TEXT);
        String hashtags = intent.getStringExtra(EXTRA_HASHTAGS);
        int themeResId = intent.getIntExtra(EXTRA_THEME, C2148R.style.ComposerLight);
        setTheme(themeResId);
        setContentView(C2148R.layout.tw__activity_composer);
        ComposerView composerView = (ComposerView) findViewById(C2148R.C2151id.tw__composer_view);
        this.composerController = new ComposerController(composerView, session, imageUri, text, hashtags, new FinisherImpl());
    }

    /* loaded from: classes2.dex */
    class FinisherImpl implements Finisher {
        FinisherImpl() {
        }

        @Override // com.twitter.sdk.android.tweetcomposer.ComposerActivity.Finisher
        public void finish() {
            ComposerActivity.this.finish();
        }
    }

    @Override // android.app.Activity
    public void onBackPressed() {
        super.onBackPressed();
        this.composerController.onClose();
    }

    /* loaded from: classes2.dex */
    public static class Builder {
        private final Context context;
        private String hashtags;
        private Uri imageUri;
        private String text;
        private int themeResId = C2148R.style.ComposerLight;
        private TwitterAuthToken token;

        public Builder(Context context) {
            if (context == null) {
                throw new IllegalArgumentException("Context must not be null");
            }
            this.context = context;
        }

        public Builder session(TwitterSession session) {
            if (session == null) {
                throw new IllegalArgumentException("TwitterSession must not be null");
            }
            TwitterAuthToken token = session.getAuthToken();
            if (token == null) {
                throw new IllegalArgumentException("TwitterSession token must not be null");
            }
            this.token = token;
            return this;
        }

        public Builder image(Uri imageUri) {
            this.imageUri = imageUri;
            return this;
        }

        public Builder text(String text) {
            this.text = text;
            return this;
        }

        public Builder hashtags(String... hashtags) {
            if (hashtags != null) {
                StringBuilder sb = new StringBuilder();
                for (String hashtag : hashtags) {
                    if (Regex.VALID_HASHTAG.matcher(hashtag).find()) {
                        if (sb.length() > 0) {
                            sb.append(" ");
                        }
                        sb.append(hashtag);
                    }
                }
                this.hashtags = sb.length() == 0 ? null : sb.toString();
            }
            return this;
        }

        public Builder darkTheme() {
            this.themeResId = C2148R.style.ComposerDark;
            return this;
        }

        public Intent createIntent() {
            if (this.token == null) {
                throw new IllegalStateException("Must set a TwitterSession");
            }
            Intent intent = new Intent(this.context, ComposerActivity.class);
            intent.putExtra(ComposerActivity.EXTRA_USER_TOKEN, this.token);
            intent.putExtra(ComposerActivity.EXTRA_IMAGE_URI, this.imageUri);
            intent.putExtra(ComposerActivity.EXTRA_THEME, this.themeResId);
            intent.putExtra(ComposerActivity.EXTRA_TEXT, this.text);
            intent.putExtra(ComposerActivity.EXTRA_HASHTAGS, this.hashtags);
            return intent;
        }
    }
}
