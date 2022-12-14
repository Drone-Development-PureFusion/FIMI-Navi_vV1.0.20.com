.class Lcom/twitter/sdk/android/tweetui/ShareTweetAction;
.super Ljava/lang/Object;
.source "ShareTweetAction.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final tweet:Lcom/twitter/sdk/android/core/models/Tweet;

.field final tweetScribeClient:Lcom/twitter/sdk/android/tweetui/TweetScribeClient;

.field final tweetUi:Lcom/twitter/sdk/android/tweetui/TweetUi;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/core/models/Tweet;Lcom/twitter/sdk/android/tweetui/TweetUi;)V
    .locals 1
    .param p1, "tweet"    # Lcom/twitter/sdk/android/core/models/Tweet;
    .param p2, "tweetUi"    # Lcom/twitter/sdk/android/tweetui/TweetUi;

    .prologue
    .line 35
    new-instance v0, Lcom/twitter/sdk/android/tweetui/TweetScribeClientImpl;

    invoke-direct {v0, p2}, Lcom/twitter/sdk/android/tweetui/TweetScribeClientImpl;-><init>(Lcom/twitter/sdk/android/tweetui/TweetUi;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/twitter/sdk/android/tweetui/ShareTweetAction;-><init>(Lcom/twitter/sdk/android/core/models/Tweet;Lcom/twitter/sdk/android/tweetui/TweetUi;Lcom/twitter/sdk/android/tweetui/TweetScribeClient;)V

    .line 36
    return-void
.end method

.method constructor <init>(Lcom/twitter/sdk/android/core/models/Tweet;Lcom/twitter/sdk/android/tweetui/TweetUi;Lcom/twitter/sdk/android/tweetui/TweetScribeClient;)V
    .locals 0
    .param p1, "tweet"    # Lcom/twitter/sdk/android/core/models/Tweet;
    .param p2, "tweetUi"    # Lcom/twitter/sdk/android/tweetui/TweetUi;
    .param p3, "tweetScribeClient"    # Lcom/twitter/sdk/android/tweetui/TweetScribeClient;

    .prologue
    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 41
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/ShareTweetAction;->tweet:Lcom/twitter/sdk/android/core/models/Tweet;

    .line 42
    iput-object p2, p0, Lcom/twitter/sdk/android/tweetui/ShareTweetAction;->tweetUi:Lcom/twitter/sdk/android/tweetui/TweetUi;

    .line 43
    iput-object p3, p0, Lcom/twitter/sdk/android/tweetui/ShareTweetAction;->tweetScribeClient:Lcom/twitter/sdk/android/tweetui/TweetScribeClient;

    .line 44
    return-void
.end method


# virtual methods
.method getShareContent(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 6
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 69
    sget v0, Lcom/twitter/sdk/android/tweetui/R$string;->tw__share_content_format:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/ShareTweetAction;->tweet:Lcom/twitter/sdk/android/core/models/Tweet;

    iget-object v3, v3, Lcom/twitter/sdk/android/core/models/Tweet;->user:Lcom/twitter/sdk/android/core/models/User;

    iget-object v3, v3, Lcom/twitter/sdk/android/core/models/User;->screenName:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/ShareTweetAction;->tweet:Lcom/twitter/sdk/android/core/models/Tweet;

    iget-wide v4, v3, Lcom/twitter/sdk/android/core/models/Tweet;->id:J

    .line 70
    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 69
    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method getShareIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
    .locals 2
    .param p1, "subject"    # Ljava/lang/String;
    .param p2, "content"    # Ljava/lang/String;

    .prologue
    .line 86
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 87
    .local v0, "intent":Landroid/content/Intent;
    const-string v1, "android.intent.action.SEND"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 88
    const-string v1, "android.intent.extra.SUBJECT"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 89
    const-string v1, "android.intent.extra.TEXT"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 90
    const-string v1, "text/plain"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 91
    return-object v0
.end method

.method getShareSubject(Landroid/content/res/Resources;)Ljava/lang/String;
    .locals 4
    .param p1, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 74
    sget v0, Lcom/twitter/sdk/android/tweetui/R$string;->tw__share_subject_format:I

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/ShareTweetAction;->tweet:Lcom/twitter/sdk/android/core/models/Tweet;

    iget-object v3, v3, Lcom/twitter/sdk/android/core/models/Tweet;->user:Lcom/twitter/sdk/android/core/models/User;

    iget-object v3, v3, Lcom/twitter/sdk/android/core/models/User;->name:Ljava/lang/String;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/twitter/sdk/android/tweetui/ShareTweetAction;->tweet:Lcom/twitter/sdk/android/core/models/Tweet;

    iget-object v3, v3, Lcom/twitter/sdk/android/core/models/Tweet;->user:Lcom/twitter/sdk/android/core/models/User;

    iget-object v3, v3, Lcom/twitter/sdk/android/core/models/User;->screenName:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-virtual {p1, v0, v1}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method launchShareIntent(Landroid/content/Intent;Landroid/content/Context;)V
    .locals 3
    .param p1, "chooser"    # Landroid/content/Intent;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 79
    invoke-static {p2, p1}, Lcom/twitter/sdk/android/core/IntentUtils;->safeStartActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 80
    invoke-static {}, Lcom/twitter/sdk/android/core/Twitter;->getLogger()Lcom/twitter/sdk/android/core/Logger;

    move-result-object v0

    const-string v1, "TweetUi"

    const-string v2, "Activity cannot be found to handle share intent"

    .line 81
    invoke-interface {v0, v1, v2}, Lcom/twitter/sdk/android/core/Logger;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 83
    :cond_0
    return-void
.end method

.method onClick(Landroid/content/Context;Landroid/content/res/Resources;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "resources"    # Landroid/content/res/Resources;

    .prologue
    .line 56
    iget-object v5, p0, Lcom/twitter/sdk/android/tweetui/ShareTweetAction;->tweet:Lcom/twitter/sdk/android/core/models/Tweet;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/twitter/sdk/android/tweetui/ShareTweetAction;->tweet:Lcom/twitter/sdk/android/core/models/Tweet;

    iget-object v5, v5, Lcom/twitter/sdk/android/core/models/Tweet;->user:Lcom/twitter/sdk/android/core/models/User;

    if-nez v5, :cond_1

    .line 66
    :cond_0
    :goto_0
    return-void

    .line 58
    :cond_1
    invoke-virtual {p0}, Lcom/twitter/sdk/android/tweetui/ShareTweetAction;->scribeShareAction()V

    .line 60
    invoke-virtual {p0, p2}, Lcom/twitter/sdk/android/tweetui/ShareTweetAction;->getShareSubject(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v3

    .line 61
    .local v3, "shareSubject":Ljava/lang/String;
    invoke-virtual {p0, p2}, Lcom/twitter/sdk/android/tweetui/ShareTweetAction;->getShareContent(Landroid/content/res/Resources;)Ljava/lang/String;

    move-result-object v1

    .line 62
    .local v1, "shareContent":Ljava/lang/String;
    invoke-virtual {p0, v3, v1}, Lcom/twitter/sdk/android/tweetui/ShareTweetAction;->getShareIntent(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v2

    .line 63
    .local v2, "shareIntent":Landroid/content/Intent;
    sget v5, Lcom/twitter/sdk/android/tweetui/R$string;->tw__share_tweet:I

    invoke-virtual {p2, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 64
    .local v4, "shareText":Ljava/lang/String;
    invoke-static {v2, v4}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v0

    .line 65
    .local v0, "chooser":Landroid/content/Intent;
    invoke-virtual {p0, v0, p1}, Lcom/twitter/sdk/android/tweetui/ShareTweetAction;->launchShareIntent(Landroid/content/Intent;Landroid/content/Context;)V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 48
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {p1}, Landroid/view/View;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/twitter/sdk/android/tweetui/ShareTweetAction;->onClick(Landroid/content/Context;Landroid/content/res/Resources;)V

    .line 49
    return-void
.end method

.method scribeShareAction()V
    .locals 2

    .prologue
    .line 52
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/ShareTweetAction;->tweetScribeClient:Lcom/twitter/sdk/android/tweetui/TweetScribeClient;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/ShareTweetAction;->tweet:Lcom/twitter/sdk/android/core/models/Tweet;

    invoke-interface {v0, v1}, Lcom/twitter/sdk/android/tweetui/TweetScribeClient;->share(Lcom/twitter/sdk/android/core/models/Tweet;)V

    .line 53
    return-void
.end method
