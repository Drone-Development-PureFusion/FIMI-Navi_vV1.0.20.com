.class public Lcom/fimi/app/x8s/ui/activity/X8BaseActivity;
.super Landroid/app/Activity;
.source "X8BaseActivity.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    return-void
.end method


# virtual methods
.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "newBase"    # Landroid/content/Context;

    .prologue
    .line 27
    invoke-static {p1}, Lcom/fimi/kernel/utils/LanguageUtil;->attachBaseContext(Landroid/content/Context;)Landroid/content/Context;

    move-result-object v0

    invoke-super {p0, v0}, Landroid/app/Activity;->attachBaseContext(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 22
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 23
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 32
    invoke-super {p0}, Landroid/app/Activity;->onResume()V

    .line 33
    invoke-static {p0}, Lcom/fimi/app/x8s/tools/X8sNavigationBarUtils;->hideBottomUIMenu(Landroid/app/Activity;)V

    .line 34
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/app/Activity;->onWindowFocusChanged(Z)V

    .line 39
    if-eqz p1, :cond_0

    .line 40
    invoke-static {p0}, Lcom/fimi/app/x8s/tools/X8sNavigationBarUtils;->hideBottomUIMenu(Landroid/app/Activity;)V

    .line 42
    :cond_0
    return-void
.end method
