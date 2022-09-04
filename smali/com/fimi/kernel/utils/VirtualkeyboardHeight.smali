.class public Lcom/fimi/kernel/utils/VirtualkeyboardHeight;
.super Ljava/lang/Object;
.source "VirtualkeyboardHeight.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 10
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getBottomStatusHeight(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 62
    invoke-static {p0}, Lcom/fimi/kernel/utils/VirtualkeyboardHeight;->getScreenDPI(Landroid/content/Context;)I

    move-result v1

    .line 63
    .local v1, "totlaHeight":I
    invoke-static {p0}, Lcom/fimi/kernel/utils/VirtualkeyboardHeight;->getScreenHeight(Landroid/content/Context;)I

    move-result v0

    .line 64
    .local v0, "contentHeight":I
    sub-int v2, v1, v0

    return v2
.end method

.method public static getScreenDPI(Landroid/content/Context;)I
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 17
    const/4 v3, 0x0

    .line 18
    .local v3, "dpi":I
    const-string/jumbo v7, "window"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 19
    .local v6, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 20
    .local v1, "display":Landroid/view/Display;
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 23
    .local v2, "displayMetrics":Landroid/util/DisplayMetrics;
    :try_start_0
    const-string v7, "android.view.Display"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 24
    .local v0, "c":Ljava/lang/Class;
    const-string v7, "getRealMetrics"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/util/DisplayMetrics;

    aput-object v10, v8, v9

    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 25
    .local v5, "method":Ljava/lang/reflect/Method;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-virtual {v5, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget v3, v2, Landroid/util/DisplayMetrics;->widthPixels:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 31
    .end local v0    # "c":Ljava/lang/Class;
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return v3

    .line 27
    :catch_0
    move-exception v4

    .line 28
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static getScreenHeight(Landroid/content/Context;)I
    .locals 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 74
    const-string/jumbo v2, "window"

    invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 75
    .local v1, "wm":Landroid/view/WindowManager;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 76
    .local v0, "out":Landroid/util/DisplayMetrics;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 77
    iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    return v2
.end method

.method public static getScreenHeightDPI(Landroid/content/Context;)I
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 40
    const/4 v3, 0x0

    .line 41
    .local v3, "dpi":I
    const-string/jumbo v7, "window"

    invoke-virtual {p0, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/view/WindowManager;

    .line 42
    .local v6, "windowManager":Landroid/view/WindowManager;
    invoke-interface {v6}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v1

    .line 43
    .local v1, "display":Landroid/view/Display;
    new-instance v2, Landroid/util/DisplayMetrics;

    invoke-direct {v2}, Landroid/util/DisplayMetrics;-><init>()V

    .line 46
    .local v2, "displayMetrics":Landroid/util/DisplayMetrics;
    :try_start_0
    const-string v7, "android.view.Display"

    invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 47
    .local v0, "c":Ljava/lang/Class;
    const-string v7, "getRealMetrics"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    const-class v10, Landroid/util/DisplayMetrics;

    aput-object v10, v8, v9

    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 48
    .local v5, "method":Ljava/lang/reflect/Method;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    aput-object v2, v7, v8

    invoke-virtual {v5, v1, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 49
    iget v3, v2, Landroid/util/DisplayMetrics;->heightPixels:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 54
    .end local v0    # "c":Ljava/lang/Class;
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :goto_0
    return v3

    .line 50
    :catch_0
    move-exception v4

    .line 51
    .local v4, "e":Ljava/lang/Exception;
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method public static isStandardSize(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const v5, 0x3dcccccd    # 0.1f

    .line 82
    const v2, 0x3fe38e39

    .line 83
    .local v2, "tempValue":F
    invoke-static {p0}, Lcom/fimi/kernel/utils/VirtualkeyboardHeight;->getScreenDPI(Landroid/content/Context;)I

    move-result v4

    int-to-float v3, v4

    .line 84
    .local v3, "width":F
    invoke-static {p0}, Lcom/fimi/kernel/utils/VirtualkeyboardHeight;->getScreenHeightDPI(Landroid/content/Context;)I

    move-result v4

    int-to-float v0, v4

    .line 85
    .local v0, "heigth":F
    div-float v1, v3, v0

    .line 86
    .local v1, "ratio":F
    add-float v4, v2, v5

    cmpl-float v4, v1, v4

    if-gtz v4, :cond_0

    sub-float v4, v2, v5

    cmpg-float v4, v1, v4

    if-gtz v4, :cond_1

    .line 87
    :cond_0
    const/4 v4, 0x1

    .line 89
    :goto_0
    return v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_0
.end method
