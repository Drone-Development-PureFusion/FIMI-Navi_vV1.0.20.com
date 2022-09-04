.class Lcom/twitter/sdk/android/tweetui/AbstractTweetView$1;
.super Ljava/lang/Object;
.source "AbstractTweetView.java"

# interfaces
.implements Lcom/twitter/sdk/android/tweetui/LinkClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twitter/sdk/android/tweetui/AbstractTweetView;->getLinkClickListener()Lcom/twitter/sdk/android/tweetui/LinkClickListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/twitter/sdk/android/tweetui/AbstractTweetView;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetui/AbstractTweetView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/twitter/sdk/android/tweetui/AbstractTweetView;

    .prologue
    .line 432
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/AbstractTweetView$1;->this$0:Lcom/twitter/sdk/android/tweetui/AbstractTweetView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onUrlClicked(Ljava/lang/String;)V
    .locals 4
    .param p1, "url"    # Ljava/lang/String;

    .prologue
    .line 435
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 446
    :cond_0
    :goto_0
    return-void

    .line 437
    :cond_1
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/AbstractTweetView$1;->this$0:Lcom/twitter/sdk/android/tweetui/AbstractTweetView;

    iget-object v1, v1, Lcom/twitter/sdk/android/tweetui/AbstractTweetView;->tweetLinkClickListener:Lcom/twitter/sdk/android/tweetui/TweetLinkClickListener;

    if-eqz v1, :cond_2

    .line 438
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/AbstractTweetView$1;->this$0:Lcom/twitter/sdk/android/tweetui/AbstractTweetView;

    iget-object v1, v1, Lcom/twitter/sdk/android/tweetui/AbstractTweetView;->tweetLinkClickListener:Lcom/twitter/sdk/android/tweetui/TweetLinkClickListener;

    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/AbstractTweetView$1;->this$0:Lcom/twitter/sdk/android/tweetui/AbstractTweetView;

    iget-object v2, v2, Lcom/twitter/sdk/android/tweetui/AbstractTweetView;->tweet:Lcom/twitter/sdk/android/core/models/Tweet;

    invoke-interface {v1, v2, p1}, Lcom/twitter/sdk/android/tweetui/TweetLinkClickListener;->onLinkClick(Lcom/twitter/sdk/android/core/models/Tweet;Ljava/lang/String;)V

    goto :goto_0

    .line 440
    :cond_2
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 441
    .local v0, "intent":Landroid/content/Intent;
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/AbstractTweetView$1;->this$0:Lcom/twitter/sdk/android/tweetui/AbstractTweetView;

    invoke-virtual {v1}, Lcom/twitter/sdk/android/tweetui/AbstractTweetView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/twitter/sdk/android/core/IntentUtils;->safeStartActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 442
    invoke-static {}, Lcom/twitter/sdk/android/core/Twitter;->getLogger()Lcom/twitter/sdk/android/core/Logger;

    move-result-object v1

    const-string v2, "TweetUi"

    const-string v3, "Activity cannot be found to open URL"

    invoke-interface {v1, v2, v3}, Lcom/twitter/sdk/android/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0
.end method
