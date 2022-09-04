.class Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$Size;
.super Ljava/lang/Object;
.source "TweetMediaView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Size"
.end annotation


# static fields
.field static final EMPTY:Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$Size;


# instance fields
.field final height:I

.field final width:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 444
    new-instance v0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$Size;

    invoke-direct {v0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$Size;-><init>()V

    sput-object v0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$Size;->EMPTY:Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$Size;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 449
    invoke-direct {p0, v0, v0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$Size;-><init>(II)V

    .line 450
    return-void
.end method

.method private constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 452
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 453
    iput p1, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$Size;->width:I

    .line 454
    iput p2, p0, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$Size;->height:I

    .line 455
    return-void
.end method

.method static fromSize(II)Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$Size;
    .locals 3
    .param p0, "w"    # I
    .param p1, "h"    # I

    .prologue
    const/4 v2, 0x0

    .line 458
    invoke-static {p0, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    .line 459
    .local v1, "boundedWidth":I
    invoke-static {p1, v2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 460
    .local v0, "boundedHeight":I
    if-nez v1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    new-instance v2, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$Size;

    invoke-direct {v2, v1, v0}, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$Size;-><init>(II)V

    :goto_0
    return-object v2

    :cond_1
    sget-object v2, Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$Size;->EMPTY:Lcom/twitter/sdk/android/tweetui/internal/TweetMediaView$Size;

    goto :goto_0
.end method
