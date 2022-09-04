.class public Lcom/fimi/kernel/widget/statusbar/StatusBarCompat;
.super Ljava/lang/Object;
.source "StatusBarCompat.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 13
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static calculateStatusBarColor(II)I
    .locals 10
    .param p0, "color"    # I
    .param p1, "alpha"    # I

    .prologue
    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    .line 17
    const/high16 v4, 0x3f800000    # 1.0f

    int-to-float v5, p1

    const/high16 v6, 0x437f0000    # 255.0f

    div-float/2addr v5, v6

    sub-float v0, v4, v5

    .line 18
    .local v0, "a":F
    shr-int/lit8 v4, p0, 0x10

    and-int/lit16 v3, v4, 0xff

    .line 19
    .local v3, "red":I
    shr-int/lit8 v4, p0, 0x8

    and-int/lit16 v2, v4, 0xff

    .line 20
    .local v2, "green":I
    and-int/lit16 v1, p0, 0xff

    .line 21
    .local v1, "blue":I
    int-to-float v4, v3

    mul-float/2addr v4, v0

    float-to-double v4, v4

    add-double/2addr v4, v8

    double-to-int v3, v4

    .line 22
    int-to-float v4, v2

    mul-float/2addr v4, v0

    float-to-double v4, v4

    add-double/2addr v4, v8

    double-to-int v2, v4

    .line 23
    int-to-float v4, v1

    mul-float/2addr v4, v0

    float-to-double v4, v4

    add-double/2addr v4, v8

    double-to-int v1, v4

    .line 24
    const/high16 v4, -0x1000000

    shl-int/lit8 v5, v3, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x8

    or-int/2addr v4, v5

    or-int/2addr v4, v1

    return v4
.end method

.method public static setStatusBarColor(Landroid/app/Activity;I)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "statusColor"    # I

    .prologue
    .line 37
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 38
    invoke-static {p0, p1}, Lcom/fimi/kernel/widget/statusbar/StatusBarCompatLollipop;->setStatusBarColor(Landroid/app/Activity;I)V

    .line 42
    :cond_0
    :goto_0
    return-void

    .line 39
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 40
    invoke-static {p0, p1}, Lcom/fimi/kernel/widget/statusbar/StatusBarCompatKitKat;->setStatusBarColor(Landroid/app/Activity;I)V

    goto :goto_0
.end method

.method public static setStatusBarColor(Landroid/app/Activity;II)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "statusColor"    # I
    .param p2, "alpha"    # I

    .prologue
    .line 33
    invoke-static {p1, p2}, Lcom/fimi/kernel/widget/statusbar/StatusBarCompat;->calculateStatusBarColor(II)I

    move-result v0

    invoke-static {p0, v0}, Lcom/fimi/kernel/widget/statusbar/StatusBarCompat;->setStatusBarColor(Landroid/app/Activity;I)V

    .line 34
    return-void
.end method

.method public static setStatusBarColorForCollapsingToolbar(Landroid/app/Activity;Landroid/support/design/widget/AppBarLayout;Landroid/support/design/widget/CollapsingToolbarLayout;Landroid/support/v7/widget/Toolbar;I)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "appBarLayout"    # Landroid/support/design/widget/AppBarLayout;
    .param p2, "collapsingToolbarLayout"    # Landroid/support/design/widget/CollapsingToolbarLayout;
    .param p3, "toolbar"    # Landroid/support/v7/widget/Toolbar;
    .param p4, "statusColor"    # I

    .prologue
    .line 62
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 63
    invoke-static {p0, p1, p2, p3, p4}, Lcom/fimi/kernel/widget/statusbar/StatusBarCompatLollipop;->setStatusBarColorForCollapsingToolbar(Landroid/app/Activity;Landroid/support/design/widget/AppBarLayout;Landroid/support/design/widget/CollapsingToolbarLayout;Landroid/support/v7/widget/Toolbar;I)V

    .line 67
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 65
    invoke-static {p0, p1, p2, p3, p4}, Lcom/fimi/kernel/widget/statusbar/StatusBarCompatKitKat;->setStatusBarColorForCollapsingToolbar(Landroid/app/Activity;Landroid/support/design/widget/AppBarLayout;Landroid/support/design/widget/CollapsingToolbarLayout;Landroid/support/v7/widget/Toolbar;I)V

    goto :goto_0
.end method

.method public static translucentStatusBar(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 45
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/fimi/kernel/widget/statusbar/StatusBarCompat;->translucentStatusBar(Landroid/app/Activity;Z)V

    .line 46
    return-void
.end method

.method public static translucentStatusBar(Landroid/app/Activity;Z)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "hideStatusBarBackground"    # Z

    .prologue
    .line 53
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 54
    invoke-static {p0, p1}, Lcom/fimi/kernel/widget/statusbar/StatusBarCompatLollipop;->translucentStatusBar(Landroid/app/Activity;Z)V

    .line 58
    :cond_0
    :goto_0
    return-void

    .line 55
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 56
    invoke-static {p0}, Lcom/fimi/kernel/widget/statusbar/StatusBarCompatKitKat;->translucentStatusBar(Landroid/app/Activity;)V

    goto :goto_0
.end method
