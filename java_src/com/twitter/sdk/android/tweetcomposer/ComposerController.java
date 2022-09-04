package com.twitter.sdk.android.tweetcomposer;

import android.content.Intent;
import android.net.Uri;
import android.text.TextUtils;
import com.twitter.Validator;
import com.twitter.sdk.android.core.Callback;
import com.twitter.sdk.android.core.Result;
import com.twitter.sdk.android.core.TwitterApiClient;
import com.twitter.sdk.android.core.TwitterCore;
import com.twitter.sdk.android.core.TwitterException;
import com.twitter.sdk.android.core.TwitterSession;
import com.twitter.sdk.android.core.models.User;
import com.twitter.sdk.android.tweetcomposer.ComposerActivity;
/* loaded from: classes2.dex */
class ComposerController {
    final ComposerView composerView;
    final DependencyProvider dependencyProvider;
    final ComposerActivity.Finisher finisher;
    final Uri imageUri;
    final TwitterSession session;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public interface ComposerCallbacks {
        void onCloseClick();

        void onTextChanged(String str);

        void onTweetPost(String str);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ComposerController(ComposerView composerView, TwitterSession session, Uri imageUri, String text, String hashtags, ComposerActivity.Finisher finisher) {
        this(composerView, session, imageUri, text, hashtags, finisher, new DependencyProvider());
    }

    ComposerController(ComposerView composerView, TwitterSession session, Uri imageUri, String text, String hashtags, ComposerActivity.Finisher finisher, DependencyProvider dependencyProvider) {
        this.composerView = composerView;
        this.session = session;
        this.imageUri = imageUri;
        this.finisher = finisher;
        this.dependencyProvider = dependencyProvider;
        composerView.setCallbacks(new ComposerCallbacksImpl());
        composerView.setTweetText(generateText(text, hashtags));
        setProfilePhoto();
        setImageView(imageUri);
        dependencyProvider.getScribeClient().impression();
    }

    String generateText(String text, String hashtags) {
        StringBuilder sb = new StringBuilder();
        if (!TextUtils.isEmpty(text)) {
            sb.append(text);
        }
        if (!TextUtils.isEmpty(hashtags)) {
            if (sb.length() > 0) {
                sb.append(" ");
            }
            sb.append(hashtags);
        }
        return sb.toString();
    }

    void setProfilePhoto() {
        this.dependencyProvider.getApiClient(this.session).getAccountService().verifyCredentials(false, true, false).enqueue(new Callback<User>() { // from class: com.twitter.sdk.android.tweetcomposer.ComposerController.1
            @Override // com.twitter.sdk.android.core.Callback
            public void success(Result<User> result) {
                ComposerController.this.composerView.setProfilePhotoView(result.data);
            }

            @Override // com.twitter.sdk.android.core.Callback
            public void failure(TwitterException exception) {
                ComposerController.this.composerView.setProfilePhotoView(null);
            }
        });
    }

    void setImageView(Uri imageUri) {
        if (imageUri != null) {
            this.composerView.setImageView(imageUri);
        }
    }

    /* loaded from: classes2.dex */
    class ComposerCallbacksImpl implements ComposerCallbacks {
        ComposerCallbacksImpl() {
        }

        @Override // com.twitter.sdk.android.tweetcomposer.ComposerController.ComposerCallbacks
        public void onTextChanged(String text) {
            int charCount = ComposerController.this.tweetTextLength(text);
            ComposerController.this.composerView.setCharCount(ComposerController.remainingCharCount(charCount));
            if (ComposerController.isTweetTextOverflow(charCount)) {
                ComposerController.this.composerView.setCharCountTextStyle(C2148R.style.tw__ComposerCharCountOverflow);
            } else {
                ComposerController.this.composerView.setCharCountTextStyle(C2148R.style.tw__ComposerCharCount);
            }
            ComposerController.this.composerView.postTweetEnabled(ComposerController.isPostEnabled(charCount));
        }

        @Override // com.twitter.sdk.android.tweetcomposer.ComposerController.ComposerCallbacks
        public void onTweetPost(String text) {
            ComposerController.this.dependencyProvider.getScribeClient().click("tweet");
            Intent intent = new Intent(ComposerController.this.composerView.getContext(), TweetUploadService.class);
            intent.putExtra("EXTRA_USER_TOKEN", ComposerController.this.session.getAuthToken());
            intent.putExtra("EXTRA_TWEET_TEXT", text);
            intent.putExtra("EXTRA_IMAGE_URI", ComposerController.this.imageUri);
            ComposerController.this.composerView.getContext().startService(intent);
            ComposerController.this.finisher.finish();
        }

        @Override // com.twitter.sdk.android.tweetcomposer.ComposerController.ComposerCallbacks
        public void onCloseClick() {
            ComposerController.this.onClose();
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void onClose() {
        this.dependencyProvider.getScribeClient().click("cancel");
        sendCancelBroadcast();
        this.finisher.finish();
    }

    int tweetTextLength(String text) {
        if (TextUtils.isEmpty(text)) {
            return 0;
        }
        return this.dependencyProvider.getTweetValidator().getTweetLength(text);
    }

    void sendCancelBroadcast() {
        Intent intent = new Intent(TweetUploadService.TWEET_COMPOSE_CANCEL);
        intent.setPackage(this.composerView.getContext().getPackageName());
        this.composerView.getContext().sendBroadcast(intent);
    }

    static int remainingCharCount(int charCount) {
        return 140 - charCount;
    }

    static boolean isPostEnabled(int charCount) {
        return charCount > 0 && charCount <= 140;
    }

    static boolean isTweetTextOverflow(int charCount) {
        return charCount > 140;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class DependencyProvider {
        final Validator tweetValidator = new Validator();

        DependencyProvider() {
        }

        TwitterApiClient getApiClient(TwitterSession session) {
            return TwitterCore.getInstance().getApiClient(session);
        }

        Validator getTweetValidator() {
            return this.tweetValidator;
        }

        ComposerScribeClient getScribeClient() {
            return new ComposerScribeClientImpl(TweetComposer.getInstance().getScribeClient());
        }
    }
}
