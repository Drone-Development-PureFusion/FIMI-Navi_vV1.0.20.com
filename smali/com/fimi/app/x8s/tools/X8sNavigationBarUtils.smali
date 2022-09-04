.class public Lcom/fimi/app/x8s/tools/X8sNavigationBarUtils;
.super Ljava/lang/Object;
.source "X8sNavigationBarUtils.java"


# static fields
.field public static final STANDARD_SCREEN_SCALE:F = 0.5625f


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getRootHeightAndWidth(Landroid/util/DisplayMetrics;)[F
    .locals 5
    .param p0, "dm"    # Landroid/util/DisplayMetrics;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x3f100000    # 0.5625f

    .line 74
    const/4 v1, 0x2

    new-array v0, v1, [F

    .line 75
    .local v0, "hw":[F
    invoke-static {p0}, Lcom/fimi/app/x8s/tools/X8sNavigationBarUtils;->isHWProportion(Landroid/util/DisplayMetrics;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 76
    iget v1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    aput v1, v0, v3

    .line 77
    iget v1, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v1, v1

    div-float/2addr v1, v2

    aput v1, v0, v4

    .line 82
    :goto_0
    return-object v0

    .line 79
    :cond_0
    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    mul-float/2addr v1, v2

    aput v1, v0, v3

    .line 80
    iget v1, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v1, v1

    aput v1, v0, v4

    goto :goto_0
.end method

.method public static hideBottomUIMenu(Landroid/app/Activity;)V
    .locals 6
    .param p0, "context"    # Landroid/app/Activity;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ResourceAsColor"
        }
    .end annotation

    .prologue
    const/16 v5, 0x13

    .line 32
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_0

    .line 33
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const-string v4, "#00000000"

    invoke-static {v4}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/Window;->setNavigationBarColor(I)V

    .line 36
    :cond_0
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-le v3, v4, :cond_2

    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-ge v3, v5, :cond_2

    .line 37
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    .line 38
    .local v2, "v":Landroid/view/View;
    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 49
    .end local v2    # "v":Landroid/view/View;
    :cond_1
    :goto_0
    return-void

    .line 39
    :cond_2
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v3, v5, :cond_1

    .line 41
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 42
    .local v0, "decorView":Landroid/view/View;
    const/16 v1, 0x1206

    .line 46
    .local v1, "uiOptions":I
    sget v3, Lcom/fimi/app/x8s/R$color;->black:I

    invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 47
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method public static isHWProportion(Landroid/util/DisplayMetrics;)Z
    .locals 5
    .param p0, "dm"    # Landroid/util/DisplayMetrics;

    .prologue
    const/4 v1, 0x1

    .line 57
    iget v2, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    if-nez v2, :cond_1

    .line 64
    :cond_0
    :goto_0
    return v1

    .line 60
    :cond_1
    iget v2, p0, Landroid/util/DisplayMetrics;->heightPixels:I

    int-to-float v2, v2

    iget v3, p0, Landroid/util/DisplayMetrics;->widthPixels:I

    int-to-float v3, v3

    const/high16 v4, 0x3f800000    # 1.0f

    mul-float/2addr v3, v4

    div-float v0, v2, v3

    .line 61
    .local v0, "scale":F
    const/high16 v2, 0x3f100000    # 0.5625f

    cmpg-float v2, v0, v2

    if-lez v2, :cond_0

    .line 64
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static isPad(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 91
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->screenLayout:I

    and-int/lit8 v0, v0, 0xf

    const/4 v1, 0x3

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
