.class Lcom/twitter/sdk/android/core/identity/TwitterLoginButton$LoginClickListener;
.super Ljava/lang/Object;
.source "TwitterLoginButton.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LoginClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;


# direct methods
.method private constructor <init>(Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton$LoginClickListener;->this$0:Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;Lcom/twitter/sdk/android/core/identity/TwitterLoginButton$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;
    .param p2, "x1"    # Lcom/twitter/sdk/android/core/identity/TwitterLoginButton$1;

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton$LoginClickListener;-><init>(Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;)V

    return-void
.end method

.method private checkActivity(Landroid/app/Activity;)V
    .locals 2
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 175
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/Activity;->isFinishing()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 176
    :cond_0
    const-string v0, "Twitter"

    const-string v1, "TwitterLoginButton requires an activity. Override getActivity to provide the activity for this button."

    invoke-static {v0, v1}, Lcom/twitter/sdk/android/core/internal/CommonUtils;->logOrThrowIllegalStateException(Ljava/lang/String;Ljava/lang/String;)V

    .line 179
    :cond_1
    return-void
.end method

.method private checkCallback(Lcom/twitter/sdk/android/core/Callback;)V
    .locals 2
    .param p1, "callback"    # Lcom/twitter/sdk/android/core/Callback;

    .prologue
    .line 168
    if-nez p1, :cond_0

    .line 169
    const-string v0, "Twitter"

    const-string v1, "Callback must not be null, did you call setCallback?"

    invoke-static {v0, v1}, Lcom/twitter/sdk/android/core/internal/CommonUtils;->logOrThrowIllegalStateException(Ljava/lang/String;Ljava/lang/String;)V

    .line 172
    :cond_0
    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 157
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton$LoginClickListener;->this$0:Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;

    iget-object v0, v0, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->callback:Lcom/twitter/sdk/android/core/Callback;

    invoke-direct {p0, v0}, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton$LoginClickListener;->checkCallback(Lcom/twitter/sdk/android/core/Callback;)V

    .line 158
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton$LoginClickListener;->this$0:Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;

    iget-object v0, v0, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    invoke-direct {p0, v0}, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton$LoginClickListener;->checkActivity(Landroid/app/Activity;)V

    .line 160
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton$LoginClickListener;->this$0:Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;

    invoke-virtual {v0}, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->getTwitterAuthClient()Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;

    move-result-object v1

    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton$LoginClickListener;->this$0:Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;

    iget-object v0, v0, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->activityRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/Activity;

    iget-object v2, p0, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton$LoginClickListener;->this$0:Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;

    iget-object v2, v2, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->callback:Lcom/twitter/sdk/android/core/Callback;

    invoke-virtual {v1, v0, v2}, Lcom/twitter/sdk/android/core/identity/TwitterAuthClient;->authorize(Landroid/app/Activity;Lcom/twitter/sdk/android/core/Callback;)V

    .line 162
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton$LoginClickListener;->this$0:Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;

    iget-object v0, v0, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->onClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 163
    iget-object v0, p0, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton$LoginClickListener;->this$0:Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;

    iget-object v0, v0, Lcom/twitter/sdk/android/core/identity/TwitterLoginButton;->onClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p1}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 165
    :cond_0
    return-void
.end method
