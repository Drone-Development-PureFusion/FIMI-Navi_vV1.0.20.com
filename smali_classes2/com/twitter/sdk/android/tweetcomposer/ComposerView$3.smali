.class Lcom/twitter/sdk/android/tweetcomposer/ComposerView$3;
.super Ljava/lang/Object;
.source "ComposerView.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetcomposer/ComposerView;)V
    .locals 0
    .param p1, "this$0"    # Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    .prologue
    .line 98
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView$3;->this$0:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 2
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "i"    # I
    .param p3, "keyEvent"    # Landroid/view/KeyEvent;

    .prologue
    .line 101
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView$3;->this$0:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    iget-object v0, v0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->callbacks:Lcom/twitter/sdk/android/tweetcomposer/ComposerController$ComposerCallbacks;

    iget-object v1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView$3;->this$0:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    invoke-virtual {v1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->getTweetText()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerController$ComposerCallbacks;->onTweetPost(Ljava/lang/String;)V

    .line 102
    const/4 v0, 0x1

    return v0
.end method
