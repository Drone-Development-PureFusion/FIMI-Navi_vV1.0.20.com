.class final Lcom/twitter/sdk/android/tweetui/TweetTextLinkifier$2;
.super Lcom/twitter/sdk/android/tweetui/internal/ClickableLinkSpan;
.source "TweetTextLinkifier.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twitter/sdk/android/tweetui/TweetTextLinkifier;->addUrlEntities(Landroid/text/SpannableStringBuilder;Ljava/util/List;Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;Lcom/twitter/sdk/android/tweetui/LinkClickListener;II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$linkListener:Lcom/twitter/sdk/android/tweetui/LinkClickListener;

.field final synthetic val$url:Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;


# direct methods
.method constructor <init>(IIZLcom/twitter/sdk/android/tweetui/LinkClickListener;Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;)V
    .locals 0
    .param p1, "selectedColor"    # I
    .param p2, "linkColor"    # I
    .param p3, "underlined"    # Z

    .prologue
    .line 172
    iput-object p4, p0, Lcom/twitter/sdk/android/tweetui/TweetTextLinkifier$2;->val$linkListener:Lcom/twitter/sdk/android/tweetui/LinkClickListener;

    iput-object p5, p0, Lcom/twitter/sdk/android/tweetui/TweetTextLinkifier$2;->val$url:Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;

    invoke-direct {p0, p1, p2, p3}, Lcom/twitter/sdk/android/tweetui/internal/ClickableLinkSpan;-><init>(IIZ)V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "widget"    # Landroid/view/View;

    .prologue
    .line 175
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetTextLinkifier$2;->val$linkListener:Lcom/twitter/sdk/android/tweetui/LinkClickListener;

    if-nez v0, :cond_0

    .line 177
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetui/TweetTextLinkifier$2;->val$linkListener:Lcom/twitter/sdk/android/tweetui/LinkClickListener;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/TweetTextLinkifier$2;->val$url:Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;

    iget-object v1, v1, Lcom/twitter/sdk/android/tweetui/FormattedUrlEntity;->url:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/twitter/sdk/android/tweetui/LinkClickListener;->onUrlClicked(Ljava/lang/String;)V

    goto :goto_0
.end method
