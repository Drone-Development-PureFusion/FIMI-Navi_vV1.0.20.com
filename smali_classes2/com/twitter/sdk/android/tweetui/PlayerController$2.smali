.class Lcom/twitter/sdk/android/tweetui/PlayerController$2;
.super Ljava/lang/Object;
.source "PlayerController.java"

# interfaces
.implements Landroid/media/MediaPlayer$OnInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twitter/sdk/android/tweetui/PlayerController;->prepare(Lcom/twitter/sdk/android/tweetui/PlayerActivity$PlayerItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/twitter/sdk/android/tweetui/PlayerController;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetui/PlayerController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/twitter/sdk/android/tweetui/PlayerController;

    .prologue
    .line 78
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/PlayerController$2;->this$0:Lcom/twitter/sdk/android/tweetui/PlayerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onInfo(Landroid/media/MediaPlayer;II)Z
    .locals 3
    .param p1, "mediaPlayer"    # Landroid/media/MediaPlayer;
    .param p2, "what"    # I
    .param p3, "extra"    # I

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 81
    const/16 v2, 0x2be

    if-ne p2, v2, :cond_0

    .line 82
    iget-object v1, p0, Lcom/twitter/sdk/android/tweetui/PlayerController$2;->this$0:Lcom/twitter/sdk/android/tweetui/PlayerController;

    iget-object v1, v1, Lcom/twitter/sdk/android/tweetui/PlayerController;->videoProgressView:Landroid/widget/ProgressBar;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 88
    :goto_0
    return v0

    .line 84
    :cond_0
    const/16 v2, 0x2bd

    if-ne p2, v2, :cond_1

    .line 85
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/PlayerController$2;->this$0:Lcom/twitter/sdk/android/tweetui/PlayerController;

    iget-object v2, v2, Lcom/twitter/sdk/android/tweetui/PlayerController;->videoProgressView:Landroid/widget/ProgressBar;

    invoke-virtual {v2, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :cond_1
    move v0, v1

    .line 88
    goto :goto_0
.end method
