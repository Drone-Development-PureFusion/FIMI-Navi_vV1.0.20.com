.class Lcom/twitter/sdk/android/tweetui/PlayerController$4;
.super Ljava/lang/Object;
.source "PlayerController.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twitter/sdk/android/tweetui/PlayerController;->setUpCallToActionListener(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/twitter/sdk/android/tweetui/PlayerController;

.field final synthetic val$callToActionUrl:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/twitter/sdk/android/tweetui/PlayerController;Ljava/lang/String;)V
    .locals 0
    .param p1, "this$0"    # Lcom/twitter/sdk/android/tweetui/PlayerController;

    .prologue
    .line 155
    iput-object p1, p0, Lcom/twitter/sdk/android/tweetui/PlayerController$4;->this$0:Lcom/twitter/sdk/android/tweetui/PlayerController;

    iput-object p2, p0, Lcom/twitter/sdk/android/tweetui/PlayerController$4;->val$callToActionUrl:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 158
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/PlayerController$4;->val$callToActionUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 159
    .local v1, "uri":Landroid/net/Uri;
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v0, v2, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 160
    .local v0, "intent":Landroid/content/Intent;
    iget-object v2, p0, Lcom/twitter/sdk/android/tweetui/PlayerController$4;->this$0:Lcom/twitter/sdk/android/tweetui/PlayerController;

    iget-object v2, v2, Lcom/twitter/sdk/android/tweetui/PlayerController;->callToActionView:Landroid/widget/TextView;

    invoke-virtual {v2}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/twitter/sdk/android/core/IntentUtils;->safeStartActivity(Landroid/content/Context;Landroid/content/Intent;)Z

    .line 161
    return-void
.end method
