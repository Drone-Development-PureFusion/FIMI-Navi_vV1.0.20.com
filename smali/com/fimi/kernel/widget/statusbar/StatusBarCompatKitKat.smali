.class public Lcom/fimi/kernel/widget/statusbar/StatusBarCompatKitKat;
.super Ljava/lang/Object;
.source "StatusBarCompatKitKat.java"


# annotations
.annotation build Landroid/annotation/TargetApi;
    value = 0x13
.end annotation


# static fields
.field private static final TAG_FAKE_STATUS_BAR_VIEW:Ljava/lang/String; = "statusBarView"

.field private static final TAG_MARGIN_ADDED:Ljava/lang/String; = "marginAdded"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addFakeStatusBarView(Landroid/app/Activity;II)Landroid/view/View;
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "statusBarColor"    # I
    .param p2, "statusBarHeight"    # I

    .prologue
    .line 45
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 46
    .local v3, "window":Landroid/view/Window;
    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 48
    .local v1, "mDecorView":Landroid/view/ViewGroup;
    new-instance v2, Landroid/view/View;

    invoke-direct {v2, p0}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 49
    .local v2, "mStatusBarView":Landroid/view/View;
    new-instance v0, Landroid/widget/FrameLayout$LayoutParams;

    const/4 v4, -0x1

    invoke-direct {v0, v4, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 50
    .local v0, "layoutParams":Landroid/widget/FrameLayout$LayoutParams;
    const/16 v4, 0x30

    iput v4, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    .line 51
    invoke-virtual {v2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 52
    invoke-virtual {v2, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 53
    const-string v4, "statusBarView"

    invoke-virtual {v2, v4}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 55
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 56
    return-object v2
.end method

.method private static addMarginTopToContentChild(Landroid/view/View;I)V
    .locals 3
    .param p0, "mContentChild"    # Landroid/view/View;
    .param p1, "statusBarHeight"    # I

    .prologue
    .line 76
    if-nez p0, :cond_1

    .line 85
    :cond_0
    :goto_0
    return-void

    .line 79
    :cond_1
    const-string v1, "marginAdded"

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 80
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 81
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    add-int/2addr v1, p1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 82
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 83
    const-string v1, "marginAdded"

    invoke-virtual {p0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method private static getStatusBarHeight(Landroid/content/Context;)I
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 32
    const/4 v1, 0x0

    .line 33
    .local v1, "result":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const-string v3, "status_bar_height"

    const-string v4, "dimen"

    const-string v5, "android"

    invoke-virtual {v2, v3, v4, v5}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 34
    .local v0, "resId":I
    if-lez v0, :cond_0

    .line 35
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    .line 37
    :cond_0
    return v1
.end method

.method private static removeFakeStatusBarViewIfExist(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 64
    .local v2, "window":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 66
    .local v1, "mDecorView":Landroid/view/ViewGroup;
    const-string v3, "statusBarView"

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;

    move-result-object v0

    .line 67
    .local v0, "fakeView":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 68
    invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 70
    :cond_0
    return-void
.end method

.method private static removeMarginTopOfContentChild(Landroid/view/View;I)V
    .locals 3
    .param p0, "mContentChild"    # Landroid/view/View;
    .param p1, "statusBarHeight"    # I

    .prologue
    .line 91
    if-nez p0, :cond_1

    .line 100
    :cond_0
    :goto_0
    return-void

    .line 94
    :cond_1
    const-string v1, "marginAdded"

    invoke-virtual {p0}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 95
    invoke-virtual {p0}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout$LayoutParams;

    .line 96
    .local v0, "lp":Landroid/widget/FrameLayout$LayoutParams;
    iget v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    sub-int/2addr v1, p1

    iput v1, v0, Landroid/widget/FrameLayout$LayoutParams;->topMargin:I

    .line 97
    invoke-virtual {p0, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 98
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setStatusBarColor(Landroid/app/Activity;I)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "statusColor"    # I

    .prologue
    const/4 v5, 0x0

    .line 111
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    .line 112
    .local v3, "window":Landroid/view/Window;
    const/high16 v4, 0x4000000

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 114
    const v4, 0x1020002

    invoke-virtual {v3, v4}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 115
    .local v1, "mContentView":Landroid/view/ViewGroup;
    invoke-virtual {v1, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 116
    .local v0, "mContentChild":Landroid/view/View;
    invoke-static {p0}, Lcom/fimi/kernel/widget/statusbar/StatusBarCompatKitKat;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    .line 118
    .local v2, "statusBarHeight":I
    invoke-static {p0}, Lcom/fimi/kernel/widget/statusbar/StatusBarCompatKitKat;->removeFakeStatusBarViewIfExist(Landroid/app/Activity;)V

    .line 119
    invoke-static {p0, p1, v2}, Lcom/fimi/kernel/widget/statusbar/StatusBarCompatKitKat;->addFakeStatusBarView(Landroid/app/Activity;II)Landroid/view/View;

    .line 120
    invoke-static {v0, v2}, Lcom/fimi/kernel/widget/statusbar/StatusBarCompatKitKat;->addMarginTopToContentChild(Landroid/view/View;I)V

    .line 122
    if-eqz v0, :cond_0

    .line 123
    invoke-static {v0, v5}, Landroid/support/v4/view/ViewCompat;->setFitsSystemWindows(Landroid/view/View;Z)V

    .line 125
    :cond_0
    return-void
.end method

.method public static setStatusBarColorForCollapsingToolbar(Landroid/app/Activity;Landroid/support/design/widget/AppBarLayout;Landroid/support/design/widget/CollapsingToolbarLayout;Landroid/support/v7/widget/Toolbar;I)V
    .locals 8
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "appBarLayout"    # Landroid/support/design/widget/AppBarLayout;
    .param p2, "collapsingToolbarLayout"    # Landroid/support/design/widget/CollapsingToolbarLayout;
    .param p3, "toolbar"    # Landroid/support/v7/widget/Toolbar;
    .param p4, "statusColor"    # I

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 158
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v4

    .line 159
    .local v4, "window":Landroid/view/Window;
    const/high16 v5, 0x4000000

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 160
    const v5, 0x1020002

    invoke-virtual {v4, v5}, Landroid/view/Window;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 162
    .local v2, "mContentView":Landroid/view/ViewGroup;
    invoke-virtual {v2, v6}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 163
    .local v1, "mContentChild":Landroid/view/View;
    invoke-virtual {v1, v6}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 164
    invoke-virtual {p1}, Landroid/support/design/widget/AppBarLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v5

    check-cast v5, Landroid/view/View;

    invoke-virtual {v5, v6}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 165
    invoke-virtual {p1, v6}, Landroid/support/design/widget/AppBarLayout;->setFitsSystemWindows(Z)V

    .line 166
    invoke-virtual {p2, v6}, Landroid/support/design/widget/CollapsingToolbarLayout;->setFitsSystemWindows(Z)V

    .line 167
    invoke-virtual {p2, v6}, Landroid/support/design/widget/CollapsingToolbarLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5, v6}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 169
    invoke-virtual {p3, v7}, Landroid/support/v7/widget/Toolbar;->setFitsSystemWindows(Z)V

    .line 170
    invoke-virtual {p3}, Landroid/support/v7/widget/Toolbar;->getTag()Ljava/lang/Object;

    move-result-object v5

    if-nez v5, :cond_0

    .line 171
    invoke-virtual {p3}, Landroid/support/v7/widget/Toolbar;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;

    .line 172
    .local v0, "lp":Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;
    iget v5, v0, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->height:I

    invoke-static {p0}, Lcom/fimi/kernel/widget/statusbar/StatusBarCompatKitKat;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v6

    add-int/2addr v5, v6

    iput v5, v0, Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;->height:I

    .line 173
    invoke-virtual {p3, v0}, Landroid/support/v7/widget/Toolbar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 174
    invoke-static {v7}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v5

    invoke-virtual {p3, v5}, Landroid/support/v7/widget/Toolbar;->setTag(Ljava/lang/Object;)V

    .line 177
    .end local v0    # "lp":Landroid/support/design/widget/CollapsingToolbarLayout$LayoutParams;
    :cond_0
    invoke-static {p0}, Lcom/fimi/kernel/widget/statusbar/StatusBarCompatKitKat;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v3

    .line 178
    .local v3, "statusBarHeight":I
    invoke-static {p0}, Lcom/fimi/kernel/widget/statusbar/StatusBarCompatKitKat;->removeFakeStatusBarViewIfExist(Landroid/app/Activity;)V

    .line 179
    invoke-static {v1, v3}, Lcom/fimi/kernel/widget/statusbar/StatusBarCompatKitKat;->removeMarginTopOfContentChild(Landroid/view/View;I)V

    .line 193
    return-void
.end method

.method public static translucentStatusBar(Landroid/app/Activity;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v4, 0x0

    .line 135
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 136
    .local v2, "window":Landroid/view/Window;
    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 138
    const v3, 0x1020002

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 139
    .local v1, "mContentView":Landroid/view/ViewGroup;
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 141
    .local v0, "mContentChild":Landroid/view/View;
    invoke-static {p0}, Lcom/fimi/kernel/widget/statusbar/StatusBarCompatKitKat;->removeFakeStatusBarViewIfExist(Landroid/app/Activity;)V

    .line 142
    invoke-static {p0}, Lcom/fimi/kernel/widget/statusbar/StatusBarCompatKitKat;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v3

    invoke-static {v0, v3}, Lcom/fimi/kernel/widget/statusbar/StatusBarCompatKitKat;->removeMarginTopOfContentChild(Landroid/view/View;I)V

    .line 143
    if-eqz v0, :cond_0

    .line 144
    invoke-static {v0, v4}, Landroid/support/v4/view/ViewCompat;->setFitsSystemWindows(Landroid/view/View;Z)V

    .line 146
    :cond_0
    return-void
.end method
