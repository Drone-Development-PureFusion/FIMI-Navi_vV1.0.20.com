.class Lcom/twitter/sdk/android/tweetcomposer/ComposerView$5;
.super Ljava/lang/Object;
.source "ComposerView.java"

# interfaces
.implements Lcom/twitter/sdk/android/tweetcomposer/internal/util/ObservableScrollView$ScrollViewListener;


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
    .line 121
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView$5;->this$0:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollChanged(I)V
    .locals 2
    .param p1, "scrollY"    # I

    .prologue
    .line 124
    if-lez p1, :cond_0

    .line 125
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView$5;->this$0:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    iget-object v0, v0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->divider:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 129
    :goto_0
    return-void

    .line 127
    :cond_0
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView$5;->this$0:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    iget-object v0, v0, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->divider:Landroid/view/View;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    goto :goto_0
.end method
