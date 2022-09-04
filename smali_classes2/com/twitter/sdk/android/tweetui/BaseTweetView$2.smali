.class Lcom/twitter/sdk/android/tweetui/BaseTweetView$2;
.super Ljava/lang/Object;
.source "BaseTweetView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twitter/sdk/android/tweetui/BaseTweetView;->linkifyProfilePhotoView(Lcom/twitter/sdk/android/core/models/Tweet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/twitter/sdk/android/tweetui/BaseTweetView;

.field final synthetic val$displayTweet:Lcom/twitter/sdk/android/core/models/Tweet;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetui/BaseTweetView;Lcom/twitter/sdk/android/core/models/Tweet;)V
    .locals 0
    .param p1, "this$0"    # Lcom/twitter/sdk/android/tweetui/BaseTweetView;

    .prologue
    .line 418
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView$2;->this$0:Lcom/twitter/sdk/android/tweetui/BaseTweetView;

    iput-object p2, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView$2;->val$displayTweet:Lcom/twitter/sdk/android/core/models/Tweet;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 421
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView$2;->this$0:Lcom/twitter/sdk/android/tweetui/BaseTweetView;

    iget-object v1, v1, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->tweetLinkClickListener:Lcom/twitter/sdk/android/tweetui/TweetLinkClickListener;

    if-eqz v1, :cond_1

    .line 422
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView$2;->this$0:Lcom/twitter/sdk/android/tweetui/BaseTweetView;

    iget-object v1, v1, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->tweetLinkClickListener:Lcom/twitter/sdk/android/tweetui/TweetLinkClickListener;

    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView$2;->val$displayTweet:Lcom/twitter/sdk/android/core/models/Tweet;

    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView$2;->val$displayTweet:Lcom/twitter/sdk/android/core/models/Tweet;

    iget-object v3, v3, Lcom/twitter/sdk/android/core/models/Tweet;->user:Lcom/twitter/sdk/android/core/models/User;

    iget-object v3, v3, Lcom/twitter/sdk/android/core/models/User;->screenName:Ljava/lang/String;

    .line 423
    invoke-static {v3}, Lcom/twitter/sdk/android/tweetui/TweetUtils;->getProfilePermalink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 422
    invoke-interface {v1, v2, v3}, Lcom/twitter/sdk/android/tweetui/TweetLinkClickListener;->onLinkClick(Lcom/twitter/sdk/android/core/models/Tweet;Ljava/lang/String;)V

    .line 433
    :cond_0
    :goto_0
    return-void

    .line 425
    :cond_1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView$2;->val$displayTweet:Lcom/twitter/sdk/android/core/models/Tweet;

    iget-object v2, v2, Lcom/twitter/sdk/android/core/models/Tweet;->user:Lcom/twitter/sdk/android/core/models/User;

    iget-object v2, v2, Lcom/twitter/sdk/android/core/models/User;->screenName:Ljava/lang/String;

    .line 426
    invoke-static {v2}, Lcom/twitter/sdk/android/tweetui/TweetUtils;->getProfilePermalink(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 425
    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 427
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/BaseTweetView$2;->this$0:Lcom/twitter/sdk/android/tweetui/BaseTweetView;

    invoke-virtual {v1}, Lcom/twitter/sdk/android/tweetui/BaseTweetView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/twitter/sdk/android/core/IntentUtils;->safeStartActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 428
    invoke-static {}, Lcom/twitter/sdk/android/core/Twitter;->getLogger()Lcom/twitter/sdk/android/core/Logger;

    move-result-object v1

    const-string v2, "TweetUi"

    const-string v3, "Activity cannot be found to open URL"

    invoke-interface {v1, v2, v3}, Lcom/twitter/sdk/android/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
