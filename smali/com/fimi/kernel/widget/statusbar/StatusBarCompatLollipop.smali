.class public Lcom/fimi/kernel/widget/statusbar/StatusBarCompatLollipop;
.super Ljava/lang/Object;
.source "StatusBarCompatLollipop.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x15
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static setStatusBarColor(Landroid/app/Activity;I)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "statusColor"    # I

    .prologue
    const/4 v4, 0x0

    .line 29
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 31
    .local v2, "window":Landroid/view/Window;
    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 32
    const/high16 v3, -0x80000000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 33
    invoke-virtual {v2, p1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 34
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 36
    const v3, 0x1020002

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 37
    .local v1, "mContentView":Landroid/view/ViewGroup;
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 38
    .local v0, "mChildView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 39
    new-instance v3, Lcom/fimi/kernel/widget/statusbar/StatusBarCompatLollipop$1;

    invoke-direct {v3}, Lcom/fimi/kernel/widget/statusbar/StatusBarCompatLollipop$1;-><init>()V

    invoke-static {v0, v3}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 45
    const/4 v3, 0x1

    invoke-static {v0, v3}, Landroid/support/v4/view/ViewCompat;->setFitsSystemWindows(Landroid/view/View;Z)V

    .line 46
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 48
    :cond_0
    return-void
.end method

.method public static setStatusBarColorForCollapsingToolbar(Landroid/app/Activity;Landroid/support/design/widget/AppBarLayout;Landroid/support/design/widget/CollapsingToolbarLayout;Landroid/support/v7/widget/Toolbar;I)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "appBarLayout"    # Landroid/support/design/widget/AppBarLayout;
    .param p2, "collapsingToolbarLayout"    # Landroid/support/design/widget/CollapsingToolbarLayout;
    .param p3, "toolbar"    # Landroid/support/v7/widget/Toolbar;
    .param p4, "statusColor"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 87
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 89
    .local v2, "window":Landroid/view/Window;
    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 90
    const/high16 v3, -0x80000000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 91
    invoke-virtual {v2, v4}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 92
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 94
    const v3, 0x1020002

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 95
    .local v1, "mContentView":Landroid/view/ViewGroup;
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 96
    .local v0, "mChildView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 97
    new-instance v3, Lcom/fimi/kernel/widget/statusbar/StatusBarCompatLollipop$3;

    invoke-direct {v3}, Lcom/fimi/kernel/widget/statusbar/StatusBarCompatLollipop$3;-><init>()V

    invoke-static {v0, v3}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 103
    invoke-static {v0, v5}, Landroid/support/v4/view/ViewCompat;->setFitsSystemWindows(Landroid/view/View;Z)V

    .line 104
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 107
    :cond_0
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    check-cast v3, Landroid/view/View;

    invoke-virtual {v3, v5}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 108
    invoke-virtual {p1, v5}, Landroid/support/design/widget/AppBarLayout;->setFitsSystemWindows(Z)V

    .line 109
    invoke-virtual {p2, v5}, Landroid/support/design/widget/CollapsingToolbarLayout;->setFitsSystemWindows(Z)V

    .line 110
    invoke-virtual {p2, v4}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 111
    invoke-virtual {p3, v4}, Landroid/support/v7/widget/Toolbar;->setFitsSystemWindows(Z)V

    .line 113
    invoke-virtual {p2, p4}, Landroid/support/design/widget/CollapsingToolbarLayout;->setStatusBarScrimColor(I)V

    .line 114
    return-void
.end method

.method public static translucentStatusBar(Landroid/app/Activity;Z)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "hideStatusBarBackground"    # Z

    .prologue
    const/high16 v4, 0x4000000

    const/4 v5, 0x0

    .line 55
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 57
    .local v2, "window":Landroid/view/Window;
    const/high16 v3, -0x80000000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 58
    if-eqz p1, :cond_1

    .line 59
    invoke-virtual {v2, v4}, Landroid/view/Window;->clearFlags(I)V

    .line 60
    invoke-virtual {v2, v5}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 61
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    const/16 v4, 0x500

    invoke-virtual {v3, v4}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 67
    :goto_0
    const v3, 0x1020002

    invoke-virtual {v2, v3}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 68
    .local v1, "mContentView":Landroid/view/ViewGroup;
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 69
    .local v0, "mChildView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 70
    new-instance v3, Lcom/fimi/kernel/widget/statusbar/StatusBarCompatLollipop$2;

    invoke-direct {v3}, Lcom/fimi/kernel/widget/statusbar/StatusBarCompatLollipop$2;-><init>()V

    invoke-static {v0, v3}, Landroid/support/v4/view/ViewCompat;->setOnApplyWindowInsetsListener(Landroid/view/View;Landroid/support/v4/view/OnApplyWindowInsetsListener;)V

    .line 76
    invoke-static {v0, v5}, Landroid/support/v4/view/ViewCompat;->setFitsSystemWindows(Landroid/view/View;Z)V

    .line 77
    invoke-static {v0}, Landroid/support/v4/view/ViewCompat;->requestApplyInsets(Landroid/view/View;)V

    .line 80
    :cond_0
    return-void

    .line 63
    .end local v0    # "mChildView":Landroid/view/View;
    .end local v1    # "mContentView":Landroid/view/ViewGroup;
    :cond_1
    invoke-virtual {v2, v4}, Landroid/view/Window;->addFlags(I)V

    .line 64
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method
