.class public Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;
.super Landroid/app/IntentService;
.source "TweetUploadService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$DependencyProvider;
    }
.end annotation


# static fields
.field static final EXTRA_IMAGE_URI:Ljava/lang/String; = "EXTRA_IMAGE_URI"

.field public static final EXTRA_RETRY_INTENT:Ljava/lang/String; = "EXTRA_RETRY_INTENT"

.field public static final EXTRA_TWEET_ID:Ljava/lang/String; = "EXTRA_TWEET_ID"

.field static final EXTRA_TWEET_TEXT:Ljava/lang/String; = "EXTRA_TWEET_TEXT"

.field static final EXTRA_USER_TOKEN:Ljava/lang/String; = "EXTRA_USER_TOKEN"

.field private static final PLACEHOLDER_ID:I = -0x1

.field private static final PLACEHOLDER_SCREEN_NAME:Ljava/lang/String; = ""

.field static final TAG:Ljava/lang/String; = "TweetUploadService"

.field public static final TWEET_COMPOSE_CANCEL:Ljava/lang/String; = "com.twitter.sdk.android.tweetcomposer.TWEET_COMPOSE_CANCEL"

.field public static final UPLOAD_FAILURE:Ljava/lang/String; = "com.twitter.sdk.android.tweetcomposer.UPLOAD_FAILURE"

.field public static final UPLOAD_SUCCESS:Ljava/lang/String; = "com.twitter.sdk.android.tweetcomposer.UPLOAD_SUCCESS"


# instance fields
.field dependencyProvider:Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$DependencyProvider;

.field intent:Landroid/content/Intent;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 61
    new-instance v0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$DependencyProvider;

    invoke-direct {v0}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$DependencyProvider;-><init>()V

    invoke-direct {p0, v0}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;-><init>(Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$DependencyProvider;)V

    .line 62
    return-void
.end method

.method constructor <init>(Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$DependencyProvider;)V
    .locals 1
    .param p1, "dependencyProvider"    # Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$DependencyProvider;

    .prologue
    .line 66
    const-string v0, "TweetUploadService"

    invoke-direct {p0, v0}, Landroid/app/IntentService;-><init>(Ljava/lang/String;)V

    .line 67
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->dependencyProvider:Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$DependencyProvider;

    .line 68
    return-void
.end method


# virtual methods
.method fail(Lcom/twitter/sdk/android/core/TwitterException;)V
    .locals 3
    .param p1, "e"    # Lcom/twitter/sdk/android/core/TwitterException;

    .prologue
    .line 136
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->intent:Landroid/content/Intent;

    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->sendFailureBroadcast(Landroid/content/Intent;)V

    .line 137
    invoke-static {}, Lcom/twitter/sdk/android/core/Twitter;->getLogger()Lcom/twitter/sdk/android/core/Logger;

    move-result-object v0

    const-string v1, "TweetUploadService"

    const-string v2, "Post Tweet failed"

    invoke-interface {v0, v1, v2, p1}, Lcom/twitter/sdk/android/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 138
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->stopSelf()V

    .line 139
    return-void
.end method

.method protected onHandleIntent(Landroid/content/Intent;)V
    .locals 7
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 72
    const-string v4, "EXTRA_USER_TOKEN"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v1

    check-cast v1, Lcom/twitter/sdk/android/core/TwitterAuthToken;

    .line 73
    .local v1, "token":Lcom/twitter/sdk/android/core/TwitterAuthToken;
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->intent:Landroid/content/Intent;

    .line 74
    new-instance v3, Lcom/twitter/sdk/android/core/TwitterSession;

    const-wide/16 v4, -0x1

    const-string v6, ""

    invoke-direct {v3, v1, v4, v5, v6}, Lcom/twitter/sdk/android/core/TwitterSession;-><init>(Lcom/twitter/sdk/android/core/TwitterAuthToken;JLjava/lang/String;)V

    .line 76
    .local v3, "twitterSession":Lcom/twitter/sdk/android/core/TwitterSession;
    const-string v4, "EXTRA_TWEET_TEXT"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 77
    .local v2, "tweetText":Ljava/lang/String;
    const-string v4, "EXTRA_IMAGE_URI"

    invoke-virtual {p1, v4}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;

    move-result-object v0

    check-cast v0, Landroid/net/Uri;

    .line 79
    .local v0, "imageUri":Landroid/net/Uri;
    invoke-virtual {p0, v3, v2, v0}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->uploadTweet(Lcom/twitter/sdk/android/core/TwitterSession;Ljava/lang/String;Landroid/net/Uri;)V

    .line 80
    return-void
.end method

.method sendFailureBroadcast(Landroid/content/Intent;)V
    .locals 2
    .param p1, "original"    # Landroid/content/Intent;

    .prologue
    .line 149
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.twitter.sdk.android.tweetcomposer.UPLOAD_FAILURE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 150
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "EXTRA_RETRY_INTENT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 151
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 152
    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->sendBroadcast(Landroid/content/Intent;)V

    .line 153
    return-void
.end method

.method sendSuccessBroadcast(J)V
    .locals 3
    .param p1, "tweetId"    # J

    .prologue
    .line 142
    new-instance v0, Landroid/content/Intent;

    const-string v1, "com.twitter.sdk.android.tweetcomposer.UPLOAD_SUCCESS"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 143
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "EXTRA_TWEET_ID"

    invoke-virtual {v0, v1, p1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 144
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;

    .line 145
    invoke-virtual {p0, v0}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->sendBroadcast(Landroid/content/Intent;)V

    .line 146
    return-void
.end method

.method uploadMedia(Lcom/twitter/sdk/android/core/TwitterSession;Landroid/net/Uri;Lcom/twitter/sdk/android/core/Callback;)V
    .locals 7
    .param p1, "session"    # Lcom/twitter/sdk/android/core/TwitterSession;
    .param p2, "imageUri"    # Landroid/net/Uri;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/TwitterSession;",
            "Landroid/net/Uri;",
            "Lcom/twitter/sdk/android/core/Callback",
            "<",
            "Lcom/twitter/sdk/android/core/models/Media;",
            ">;)V"
        }
    .end annotation

    .prologue
    .local p3, "callback":Lcom/twitter/sdk/android/core/Callback;, "Lcom/twitter/sdk/android/core/Callback<Lcom/twitter/sdk/android/core/models/Media;>;"
    const/4 v6, 0x0

    .line 121
    iget-object v5, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->dependencyProvider:Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$DependencyProvider;

    invoke-virtual {v5, p1}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$DependencyProvider;->getTwitterApiClient(Lcom/twitter/sdk/android/core/TwitterSession;)Lcom/twitter/sdk/android/core/TwitterApiClient;

    move-result-object v0

    .line 123
    .local v0, "client":Lcom/twitter/sdk/android/core/TwitterApiClient;
    invoke-static {p0, p2}, Lcom/twitter/sdk/android/tweetcomposer/FileUtils;->getPath(Landroid/content/Context;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v4

    .line 124
    .local v4, "path":Ljava/lang/String;
    if-nez v4, :cond_0

    .line 125
    new-instance v5, Lcom/twitter/sdk/android/core/TwitterException;

    const-string v6, "Uri file path resolved to null"

    invoke-direct {v5, v6}, Lcom/twitter/sdk/android/core/TwitterException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v5}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->fail(Lcom/twitter/sdk/android/core/TwitterException;)V

    .line 133
    :goto_0
    return-void

    .line 128
    :cond_0
    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 129
    .local v1, "file":Ljava/io/File;
    invoke-static {v1}, Lcom/twitter/sdk/android/tweetcomposer/FileUtils;->getMimeType(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    .line 130
    .local v3, "mimeType":Ljava/lang/String;
    invoke-static {v3}, Lokhttp3/MediaType;->parse(Ljava/lang/String;)Lokhttp3/MediaType;

    move-result-object v5

    invoke-static {v5, v1}, Lokhttp3/RequestBody;->create(Lokhttp3/MediaType;Ljava/io/File;)Lokhttp3/RequestBody;

    move-result-object v2

    .line 132
    .local v2, "media":Lokhttp3/RequestBody;
    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/TwitterApiClient;->getMediaService()Lcom/twitter/sdk/android/core/services/MediaService;

    move-result-object v5

    invoke-interface {v5, v2, v6, v6}, Lcom/twitter/sdk/android/core/services/MediaService;->upload(Lokhttp3/RequestBody;Lokhttp3/RequestBody;Lokhttp3/RequestBody;)Lretrofit2/Call;

    move-result-object v5

    invoke-interface {v5, p3}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    goto :goto_0
.end method

.method uploadTweet(Lcom/twitter/sdk/android/core/TwitterSession;Ljava/lang/String;Landroid/net/Uri;)V
    .locals 1
    .param p1, "session"    # Lcom/twitter/sdk/android/core/TwitterSession;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "imageUri"    # Landroid/net/Uri;

    .prologue
    .line 83
    if-eqz p3, :cond_0

    .line 84
    new-instance v0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$1;

    invoke-direct {v0, p0, p1, p2}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$1;-><init>(Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;Lcom/twitter/sdk/android/core/TwitterSession;Ljava/lang/String;)V

    invoke-virtual {p0, p1, p3, v0}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->uploadMedia(Lcom/twitter/sdk/android/core/TwitterSession;Landroid/net/Uri;Lcom/twitter/sdk/android/core/Callback;)V

    .line 99
    :goto_0
    return-void

    .line 97
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, p1, p2, v0}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->uploadTweetWithMedia(Lcom/twitter/sdk/android/core/TwitterSession;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method

.method uploadTweetWithMedia(Lcom/twitter/sdk/android/core/TwitterSession;Ljava/lang/String;Ljava/lang/String;)V
    .locals 11
    .param p1, "session"    # Lcom/twitter/sdk/android/core/TwitterSession;
    .param p2, "text"    # Ljava/lang/String;
    .param p3, "mediaId"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 102
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;->dependencyProvider:Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$DependencyProvider;

    invoke-virtual {v0, p1}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$DependencyProvider;->getTwitterApiClient(Lcom/twitter/sdk/android/core/TwitterSession;)Lcom/twitter/sdk/android/core/TwitterApiClient;

    move-result-object v10

    .line 104
    .local v10, "client":Lcom/twitter/sdk/android/core/TwitterApiClient;
    invoke-virtual {v10}, Lcom/twitter/sdk/android/core/TwitterApiClient;->getStatusesService()Lcom/twitter/sdk/android/core/services/StatusesService;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v8

    move-object v1, p2

    move-object v3, v2

    move-object v4, v2

    move-object v5, v2

    move-object v6, v2

    move-object v7, v2

    move-object v9, p3

    invoke-interface/range {v0 .. v9}, Lcom/twitter/sdk/android/core/services/StatusesService;->update(Ljava/lang/String;Ljava/lang/Long;Ljava/lang/Boolean;Ljava/lang/Double;Ljava/lang/Double;Ljava/lang/String;Ljava/lang/Boolean;Ljava/lang/Boolean;Ljava/lang/String;)Lretrofit2/Call;

    move-result-object v0

    new-instance v1, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$2;

    invoke-direct {v1, p0}, Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService$2;-><init>(Lcom/twitter/sdk/android/tweetcomposer/TweetUploadService;)V

    .line 105
    invoke-interface {v0, v1}, Lretrofit2/Call;->enqueue(Lretrofit2/Callback;)V

    .line 118
    return-void
.end method
