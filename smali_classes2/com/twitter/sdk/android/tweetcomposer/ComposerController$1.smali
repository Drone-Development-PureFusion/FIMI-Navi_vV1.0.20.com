.class Lcom/twitter/sdk/android/tweetcomposer/ComposerController$1;
.super Lcom/twitter/sdk/android/core/Callback;
.source "ComposerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->setProfilePhoto()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/twitter/sdk/android/core/Callback",
        "<",
        "Lcom/twitter/sdk/android/core/models/User;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/twitter/sdk/android/tweetcomposer/ComposerController;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetcomposer/ComposerController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/twitter/sdk/android/tweetcomposer/ComposerController;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerController$1;->this$0:Lcom/twitter/sdk/android/tweetcomposer/ComposerController;

    invoke-direct {p0}, Lcom/twitter/sdk/android/core/Callback;-><init>()V

    return-void
.end method


# virtual methods
.method public failure(Lcom/twitter/sdk/android/core/TwitterException;)V
    .locals 2
    .param p1, "exception"    # Lcom/twitter/sdk/android/core/TwitterException;

    .prologue
    .line 89
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerController$1;->this$0:Lcom/twitter/sdk/android/tweetcomposer/ComposerController;

    iget-object v0, v0, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->composerView:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->setProfilePhotoView(Lcom/twitter/sdk/android/core/models/User;)V

    .line 90
    return-void
.end method

.method public success(Lcom/twitter/sdk/android/core/Result;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/twitter/sdk/android/core/Result",
            "<",
            "Lcom/twitter/sdk/android/core/models/User;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 83
    .local p1, "result":Lcom/twitter/sdk/android/core/Result;, "Lcom/twitter/sdk/android/core/Result<Lcom/twitter/sdk/android/core/models/User;>;"
    iget-object v0, p0, Lcom/twitter/sdk/android/tweetcomposer/ComposerController$1;->this$0:Lcom/twitter/sdk/android/tweetcomposer/ComposerController;

    iget-object v1, v0, Lcom/twitter/sdk/android/tweetcomposer/ComposerController;->composerView:Lcom/twitter/sdk/android/tweetcomposer/ComposerView;

    iget-object v0, p1, Lcom/twitter/sdk/android/core/Result;->data:Ljava/lang/Object;

    check-cast v0, Lcom/twitter/sdk/android/core/models/User;

    invoke-virtual {v1, v0}, Lcom/twitter/sdk/android/tweetcomposer/ComposerView;->setProfilePhotoView(Lcom/twitter/sdk/android/core/models/User;)V

    .line 84
    return-void
.end method
