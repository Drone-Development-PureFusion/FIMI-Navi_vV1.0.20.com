package com.twitter.sdk.android.tweetcomposer;

import android.app.IntentService;
import android.content.Intent;
import android.net.Uri;
import com.twitter.sdk.android.core.Callback;
import com.twitter.sdk.android.core.Result;
import com.twitter.sdk.android.core.Twitter;
import com.twitter.sdk.android.core.TwitterApiClient;
import com.twitter.sdk.android.core.TwitterAuthToken;
import com.twitter.sdk.android.core.TwitterCore;
import com.twitter.sdk.android.core.TwitterException;
import com.twitter.sdk.android.core.TwitterSession;
import com.twitter.sdk.android.core.models.Media;
import com.twitter.sdk.android.core.models.Tweet;
import java.io.File;
import okhttp3.MediaType;
import okhttp3.RequestBody;
/* loaded from: classes2.dex */
public class TweetUploadService extends IntentService {
    static final String EXTRA_IMAGE_URI = "EXTRA_IMAGE_URI";
    public static final String EXTRA_RETRY_INTENT = "EXTRA_RETRY_INTENT";
    public static final String EXTRA_TWEET_ID = "EXTRA_TWEET_ID";
    static final String EXTRA_TWEET_TEXT = "EXTRA_TWEET_TEXT";
    static final String EXTRA_USER_TOKEN = "EXTRA_USER_TOKEN";
    private static final int PLACEHOLDER_ID = -1;
    private static final String PLACEHOLDER_SCREEN_NAME = "";
    static final String TAG = "TweetUploadService";
    public static final String TWEET_COMPOSE_CANCEL = "com.twitter.sdk.android.tweetcomposer.TWEET_COMPOSE_CANCEL";
    public static final String UPLOAD_FAILURE = "com.twitter.sdk.android.tweetcomposer.UPLOAD_FAILURE";
    public static final String UPLOAD_SUCCESS = "com.twitter.sdk.android.tweetcomposer.UPLOAD_SUCCESS";
    DependencyProvider dependencyProvider;
    Intent intent;

    public TweetUploadService() {
        this(new DependencyProvider());
    }

    TweetUploadService(DependencyProvider dependencyProvider) {
        super(TAG);
        this.dependencyProvider = dependencyProvider;
    }

    @Override // android.app.IntentService
    protected void onHandleIntent(Intent intent) {
        TwitterAuthToken token = (TwitterAuthToken) intent.getParcelableExtra(EXTRA_USER_TOKEN);
        this.intent = intent;
        TwitterSession twitterSession = new TwitterSession(token, -1L, "");
        String tweetText = intent.getStringExtra(EXTRA_TWEET_TEXT);
        Uri imageUri = (Uri) intent.getParcelableExtra(EXTRA_IMAGE_URI);
        uploadTweet(twitterSession, tweetText, imageUri);
    }

    void uploadTweet(final TwitterSession session, final String text, Uri imageUri) {
        if (imageUri != null) {
            uploadMedia(session, imageUri, new Callback<Media>() { // from class: com.twitter.sdk.android.tweetcomposer.TweetUploadService.1
                @Override // com.twitter.sdk.android.core.Callback
                public void success(Result<Media> result) {
                    TweetUploadService.this.uploadTweetWithMedia(session, text, result.data.mediaIdString);
                }

                @Override // com.twitter.sdk.android.core.Callback
                public void failure(TwitterException exception) {
                    TweetUploadService.this.fail(exception);
                }
            });
        } else {
            uploadTweetWithMedia(session, text, null);
        }
    }

    void uploadTweetWithMedia(TwitterSession session, String text, String mediaId) {
        TwitterApiClient client = this.dependencyProvider.getTwitterApiClient(session);
        client.getStatusesService().update(text, null, null, null, null, null, null, true, mediaId).enqueue(new Callback<Tweet>() { // from class: com.twitter.sdk.android.tweetcomposer.TweetUploadService.2
            @Override // com.twitter.sdk.android.core.Callback
            public void success(Result<Tweet> result) {
                TweetUploadService.this.sendSuccessBroadcast(result.data.getId());
                TweetUploadService.this.stopSelf();
            }

            @Override // com.twitter.sdk.android.core.Callback
            public void failure(TwitterException exception) {
                TweetUploadService.this.fail(exception);
            }
        });
    }

    void uploadMedia(TwitterSession session, Uri imageUri, Callback<Media> callback) {
        TwitterApiClient client = this.dependencyProvider.getTwitterApiClient(session);
        String path = FileUtils.getPath(this, imageUri);
        if (path == null) {
            fail(new TwitterException("Uri file path resolved to null"));
            return;
        }
        File file = new File(path);
        String mimeType = FileUtils.getMimeType(file);
        RequestBody media = RequestBody.create(MediaType.parse(mimeType), file);
        client.getMediaService().upload(media, null, null).enqueue(callback);
    }

    void fail(TwitterException e) {
        sendFailureBroadcast(this.intent);
        Twitter.getLogger().mo1290e(TAG, "Post Tweet failed", e);
        stopSelf();
    }

    void sendSuccessBroadcast(long tweetId) {
        Intent intent = new Intent(UPLOAD_SUCCESS);
        intent.putExtra(EXTRA_TWEET_ID, tweetId);
        intent.setPackage(getApplicationContext().getPackageName());
        sendBroadcast(intent);
    }

    void sendFailureBroadcast(Intent original) {
        Intent intent = new Intent(UPLOAD_FAILURE);
        intent.putExtra(EXTRA_RETRY_INTENT, original);
        intent.setPackage(getApplicationContext().getPackageName());
        sendBroadcast(intent);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes2.dex */
    public static class DependencyProvider {
        DependencyProvider() {
        }

        TwitterApiClient getTwitterApiClient(TwitterSession session) {
            return TwitterCore.getInstance().getApiClient(session);
        }
    }
}
