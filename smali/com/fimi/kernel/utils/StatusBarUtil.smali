.class public Lcom/fimi/kernel/utils/StatusBarUtil;
.super Ljava/lang/Object;
.source "StatusBarUtil.java"


# static fields
.field public static final DEFAULT_STATUS_BAR_ALPHA:I = 0x0

.field public static final FLAG_NOTCH_SUPPORT:I = 0x10000

.field public static final NOTCH_IN_SCREEN_VOIO:I = 0x20

.field public static final ROUNDED_IN_SCREEN_VOIO:I = 0x8


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 37
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static FlymeSetStatusBarLightMode(Landroid/view/Window;Z)Z
    .locals 8
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "dark"    # Z

    .prologue
    .line 770
    const/4 v4, 0x0

    .line 771
    .local v4, "result":Z
    if-eqz p0, :cond_0

    .line 773
    :try_start_0
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 774
    .local v2, "lp":Landroid/view/WindowManager$LayoutParams;
    const-class v6, Landroid/view/WindowManager$LayoutParams;

    const-string v7, "MEIZU_FLAG_DARK_STATUS_BAR_ICON"

    .line 775
    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 776
    .local v1, "darkFlag":Ljava/lang/reflect/Field;
    const-class v6, Landroid/view/WindowManager$LayoutParams;

    const-string v7, "meizuFlags"

    .line 777
    invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 778
    .local v3, "meizuFlags":Ljava/lang/reflect/Field;
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 779
    const/4 v6, 0x1

    invoke-virtual {v3, v6}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 780
    const/4 v6, 0x0

    invoke-virtual {v1, v6}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v0

    .line 781
    .local v0, "bit":I
    invoke-virtual {v3, v2}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v5

    .line 782
    .local v5, "value":I
    if-eqz p1, :cond_1

    .line 783
    or-int/2addr v5, v0

    .line 787
    :goto_0
    invoke-virtual {v3, v2, v5}, Ljava/lang/reflect/Field;->setInt(Ljava/lang/Object;I)V

    .line 788
    invoke-virtual {p0, v2}, Landroid/view/Window;->setAttributes(Landroid/view/WindowManager$LayoutParams;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 789
    const/4 v4, 0x1

    .line 794
    .end local v0    # "bit":I
    .end local v1    # "darkFlag":Ljava/lang/reflect/Field;
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v3    # "meizuFlags":Ljava/lang/reflect/Field;
    .end local v5    # "value":I
    :cond_0
    :goto_1
    return v4

    .line 785
    .restart local v0    # "bit":I
    .restart local v1    # "darkFlag":Ljava/lang/reflect/Field;
    .restart local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    .restart local v3    # "meizuFlags":Ljava/lang/reflect/Field;
    .restart local v5    # "value":I
    :cond_1
    xor-int/lit8 v6, v0, -0x1

    and-int/2addr v5, v6

    goto :goto_0

    .line 790
    .end local v0    # "bit":I
    .end local v1    # "darkFlag":Ljava/lang/reflect/Field;
    .end local v2    # "lp":Landroid/view/WindowManager$LayoutParams;
    .end local v3    # "meizuFlags":Ljava/lang/reflect/Field;
    .end local v5    # "value":I
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method public static MIUISetStatusBarLightMode(Landroid/view/Window;Z)Z
    .locals 10
    .param p0, "window"    # Landroid/view/Window;
    .param p1, "dark"    # Z

    .prologue
    .line 806
    const/4 v5, 0x0

    .line 807
    .local v5, "result":Z
    if-eqz p0, :cond_0

    .line 808
    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 810
    .local v0, "clazz":Ljava/lang/Class;
    const/4 v1, 0x0

    .line 811
    .local v1, "darkModeFlag":I
    :try_start_0
    const-string v6, "android.view.MiuiWindowManager$LayoutParams"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v4

    .line 812
    .local v4, "layoutParams":Ljava/lang/Class;
    const-string v6, "EXTRA_FLAG_STATUS_BAR_DARK_MODE"

    invoke-virtual {v4, v6}, Ljava/lang/Class;->getField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v3

    .line 813
    .local v3, "field":Ljava/lang/reflect/Field;
    invoke-virtual {v3, v4}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I

    move-result v1

    .line 814
    const-string v6, "setExtraFlags"

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v0, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 815
    .local v2, "extraFlagField":Ljava/lang/reflect/Method;
    if-eqz p1, :cond_1

    .line 816
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v2, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 820
    :goto_0
    const/4 v5, 0x1

    .line 825
    .end local v0    # "clazz":Ljava/lang/Class;
    .end local v1    # "darkModeFlag":I
    .end local v2    # "extraFlagField":Ljava/lang/reflect/Method;
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "layoutParams":Ljava/lang/Class;
    :cond_0
    :goto_1
    return v5

    .line 818
    .restart local v0    # "clazz":Ljava/lang/Class;
    .restart local v1    # "darkModeFlag":I
    .restart local v2    # "extraFlagField":Ljava/lang/reflect/Method;
    .restart local v3    # "field":Ljava/lang/reflect/Field;
    .restart local v4    # "layoutParams":Ljava/lang/Class;
    :cond_1
    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v2, p0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 821
    .end local v2    # "extraFlagField":Ljava/lang/reflect/Method;
    .end local v3    # "field":Ljava/lang/reflect/Field;
    .end local v4    # "layoutParams":Ljava/lang/Class;
    :catch_0
    move-exception v6

    goto :goto_1
.end method

.method public static StatusBarDarkMode(Landroid/app/Activity;I)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "type"    # I

    .prologue
    const/4 v1, 0x0

    .line 728
    const/4 v0, 0x1

    if-ne p1, v0, :cond_1

    .line 729
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/StatusBarUtil;->MIUISetStatusBarLightMode(Landroid/view/Window;Z)Z

    .line 736
    :cond_0
    :goto_0
    return-void

    .line 730
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 731
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/StatusBarUtil;->FlymeSetStatusBarLightMode(Landroid/view/Window;Z)Z

    goto :goto_0

    .line 732
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 733
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method public static StatusBarLightMode(Landroid/app/Activity;)I
    .locals 11
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/16 v10, 0x2400

    const/16 v9, 0x17

    const/4 v8, 0x1

    .line 670
    const/4 v4, 0x0

    .line 671
    .local v4, "result":I
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v7, 0x13

    if-lt v6, v7, :cond_1

    .line 672
    const/4 v3, 0x0

    .line 673
    .local v3, "isMiui9":Z
    const-string v6, "ro.miui.ui.version.name"

    invoke-static {v6}, Lcom/fimi/kernel/utils/StatusBarUtil;->getSystemProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 674
    .local v5, "systemProperty":Ljava/lang/String;
    if-eqz v5, :cond_0

    const-string v6, ""

    invoke-virtual {v6, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_0

    .line 676
    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {v5, v6}, Ljava/lang/String;->substring(I)Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v0

    .line 678
    .local v0, "codeStr":Ljava/lang/String;
    :try_start_1
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_0

    move-result v2

    .line 679
    .local v2, "i":I
    const/16 v6, 0x9

    if-lt v2, v6, :cond_0

    .line 680
    const/4 v3, 0x1

    .line 690
    .end local v0    # "codeStr":Ljava/lang/String;
    .end local v2    # "i":I
    :cond_0
    :goto_0
    if-eqz v3, :cond_2

    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v9, :cond_2

    .line 691
    invoke-static {p0}, Lcom/fimi/kernel/utils/StatusBarUtil;->transparencyBar(Landroid/app/Activity;)V

    .line 692
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 704
    .end local v3    # "isMiui9":Z
    .end local v5    # "systemProperty":Ljava/lang/String;
    :cond_1
    :goto_1
    return v4

    .line 682
    .restart local v0    # "codeStr":Ljava/lang/String;
    .restart local v3    # "isMiui9":Z
    .restart local v5    # "systemProperty":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 683
    .local v1, "e":Ljava/lang/Exception;
    :try_start_2
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 685
    .end local v0    # "codeStr":Ljava/lang/String;
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v1

    .line 686
    .restart local v1    # "e":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 693
    .end local v1    # "e":Ljava/lang/Exception;
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-static {v6, v8}, Lcom/fimi/kernel/utils/StatusBarUtil;->MIUISetStatusBarLightMode(Landroid/view/Window;Z)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 694
    invoke-static {p0}, Lcom/fimi/kernel/utils/StatusBarUtil;->transparencyBar(Landroid/app/Activity;)V

    goto :goto_1

    .line 695
    :cond_3
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-static {v6, v8}, Lcom/fimi/kernel/utils/StatusBarUtil;->FlymeSetStatusBarLightMode(Landroid/view/Window;Z)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 696
    invoke-static {p0}, Lcom/fimi/kernel/utils/StatusBarUtil;->transparencyBar(Landroid/app/Activity;)V

    goto :goto_1

    .line 697
    :cond_4
    sget v6, Landroid/os/Build$VERSION;->SDK_INT:I

    if-lt v6, v9, :cond_5

    .line 698
    invoke-static {p0}, Lcom/fimi/kernel/utils/StatusBarUtil;->transparencyBar(Landroid/app/Activity;)V

    .line 699
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v6

    invoke-virtual {v6}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v6

    invoke-virtual {v6, v10}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_1

    .line 701
    :cond_5
    sget v6, Lcom/fimi/kernel/R$color;->kernal_status_status:I

    invoke-static {p0, v6}, Lcom/fimi/kernel/utils/StatusBarUtil;->setStatusBarColor(Landroid/app/Activity;I)V

    goto :goto_1
.end method

.method public static StatusBarLightMode(Landroid/app/Activity;I)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "type"    # I

    .prologue
    const/4 v1, 0x1

    .line 714
    if-ne p1, v1, :cond_1

    .line 715
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/StatusBarUtil;->MIUISetStatusBarLightMode(Landroid/view/Window;Z)Z

    .line 722
    :cond_0
    :goto_0
    return-void

    .line 716
    :cond_1
    const/4 v0, 0x2

    if-ne p1, v0, :cond_2

    .line 717
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/StatusBarUtil;->FlymeSetStatusBarLightMode(Landroid/view/Window;Z)Z

    goto :goto_0

    .line 718
    :cond_2
    const/4 v0, 0x3

    if-ne p1, v0, :cond_0

    .line 719
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x2400

    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    goto :goto_0
.end method

.method private static addTranslucentView(Landroid/app/Activity;I)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "statusBarAlpha"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 481
    const v1, 0x1020002

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 482
    .local v0, "contentView":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-le v1, v3, :cond_0

    .line 483
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {p1, v2, v2, v2}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundColor(I)V

    .line 487
    :goto_0
    return-void

    .line 485
    :cond_0
    invoke-static {p0, p1}, Lcom/fimi/kernel/utils/StatusBarUtil;->createTranslucentStatusBarView(Landroid/app/Activity;I)Lcom/fimi/kernel/widget/statusbar/StatusBarView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_0
.end method

.method private static calculateStatusColor(II)I
    .locals 10
    .param p0, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p1, "alpha"    # I

    .prologue
    const-wide/high16 v8, 0x3fe0000000000000L    # 0.5

    .line 604
    const/high16 v4, 0x3f800000    # 1.0f

    int-to-float v5, p1

    const/high16 v6, 0x437f0000    # 255.0f

    div-float/2addr v5, v6

    sub-float v0, v4, v5

    .line 605
    .local v0, "a":F
    shr-int/lit8 v4, p0, 0x10

    and-int/lit16 v3, v4, 0xff

    .line 606
    .local v3, "red":I
    shr-int/lit8 v4, p0, 0x8

    and-int/lit16 v2, v4, 0xff

    .line 607
    .local v2, "green":I
    and-int/lit16 v1, p0, 0xff

    .line 608
    .local v1, "blue":I
    int-to-float v4, v3

    mul-float/2addr v4, v0

    float-to-double v4, v4

    add-double/2addr v4, v8

    double-to-int v3, v4

    .line 609
    int-to-float v4, v2

    mul-float/2addr v4, v0

    float-to-double v4, v4

    add-double/2addr v4, v8

    double-to-int v2, v4

    .line 610
    int-to-float v4, v1

    mul-float/2addr v4, v0

    float-to-double v4, v4

    add-double/2addr v4, v8

    double-to-int v1, v4

    .line 611
    const/high16 v4, -0x1000000

    shl-int/lit8 v5, v3, 0x10

    or-int/2addr v4, v5

    shl-int/lit8 v5, v2, 0x8

    or-int/2addr v4, v5

    or-int/2addr v4, v1

    return v4
.end method

.method private static clearPreviousSetting(Landroid/app/Activity;)V
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 465
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 466
    .local v1, "decorView":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 467
    .local v0, "count":I
    if-lez v0, :cond_0

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/fimi/kernel/widget/statusbar/StatusBarView;

    if-eqz v3, :cond_0

    .line 468
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->removeViewAt(I)V

    .line 469
    const v3, 0x1020002

    invoke-virtual {p0, v3}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    invoke-virtual {v3, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 470
    .local v2, "rootView":Landroid/view/ViewGroup;
    invoke-virtual {v2, v4, v4, v4, v4}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 472
    .end local v2    # "rootView":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method private static createStatusBarView(Landroid/app/Activity;I)Lcom/fimi/kernel/widget/statusbar/StatusBarView;
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 498
    new-instance v1, Lcom/fimi/kernel/widget/statusbar/StatusBarView;

    invoke-direct {v1, p0}, Lcom/fimi/kernel/widget/statusbar/StatusBarView;-><init>(Landroid/content/Context;)V

    .line 499
    .local v1, "statusBarView":Lcom/fimi/kernel/widget/statusbar/StatusBarView;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    .line 500
    invoke-static {p0}, Lcom/fimi/kernel/utils/StatusBarUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 501
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v0}, Lcom/fimi/kernel/widget/statusbar/StatusBarView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 502
    invoke-virtual {v1, p1}, Lcom/fimi/kernel/widget/statusbar/StatusBarView;->setBackgroundColor(I)V

    .line 503
    return-object v1
.end method

.method private static createStatusBarView(Landroid/app/Activity;II)Lcom/fimi/kernel/widget/statusbar/StatusBarView;
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p2, "alpha"    # I

    .prologue
    .line 516
    new-instance v1, Lcom/fimi/kernel/widget/statusbar/StatusBarView;

    invoke-direct {v1, p0}, Lcom/fimi/kernel/widget/statusbar/StatusBarView;-><init>(Landroid/content/Context;)V

    .line 517
    .local v1, "statusBarView":Lcom/fimi/kernel/widget/statusbar/StatusBarView;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    .line 518
    invoke-static {p0}, Lcom/fimi/kernel/utils/StatusBarUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 519
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v0}, Lcom/fimi/kernel/widget/statusbar/StatusBarView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 520
    invoke-static {p1, p2}, Lcom/fimi/kernel/utils/StatusBarUtil;->calculateStatusColor(II)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fimi/kernel/widget/statusbar/StatusBarView;->setBackgroundColor(I)V

    .line 521
    return-object v1
.end method

.method private static createTranslucentStatusBarView(Landroid/app/Activity;I)Lcom/fimi/kernel/widget/statusbar/StatusBarView;
    .locals 5
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "alpha"    # I

    .prologue
    const/4 v4, 0x0

    .line 576
    new-instance v1, Lcom/fimi/kernel/widget/statusbar/StatusBarView;

    invoke-direct {v1, p0}, Lcom/fimi/kernel/widget/statusbar/StatusBarView;-><init>(Landroid/content/Context;)V

    .line 577
    .local v1, "statusBarView":Lcom/fimi/kernel/widget/statusbar/StatusBarView;
    new-instance v0, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v2, -0x1

    .line 578
    invoke-static {p0}, Lcom/fimi/kernel/utils/StatusBarUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v3

    invoke-direct {v0, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 579
    .local v0, "params":Landroid/widget/LinearLayout$LayoutParams;
    invoke-virtual {v1, v0}, Lcom/fimi/kernel/widget/statusbar/StatusBarView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 580
    invoke-static {p1, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/fimi/kernel/widget/statusbar/StatusBarView;->setBackgroundColor(I)V

    .line 581
    return-object v1
.end method

.method public static getInt(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/Integer;
    .locals 10
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "def"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 860
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .line 862
    .local v7, "ret":Ljava/lang/Integer;
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 864
    .local v1, "cl":Ljava/lang/ClassLoader;
    const-string v8, "android.os.SystemProperties"

    invoke-virtual {v1, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 867
    .local v0, "SystemProperties":Ljava/lang/Class;
    const/4 v8, 0x2

    new-array v5, v8, [Ljava/lang/Class;

    .line 868
    .local v5, "paramTypes":[Ljava/lang/Class;
    const/4 v8, 0x0

    const-class v9, Ljava/lang/String;

    aput-object v9, v5, v8

    .line 869
    const/4 v8, 0x1

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v5, v8

    .line 870
    const-string v8, "getInt"

    invoke-virtual {v0, v8, v5}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 872
    .local v3, "getInt":Ljava/lang/reflect/Method;
    const/4 v8, 0x2

    new-array v6, v8, [Ljava/lang/Object;

    .line 873
    .local v6, "params":[Ljava/lang/Object;
    const/4 v8, 0x0

    new-instance v9, Ljava/lang/String;

    invoke-direct {v9, p1}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    aput-object v9, v6, v8

    .line 874
    const/4 v8, 0x1

    new-instance v9, Ljava/lang/Integer;

    invoke-direct {v9, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v9, v6, v8

    .line 875
    invoke-virtual {v3, v0, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    .end local v7    # "ret":Ljava/lang/Integer;
    check-cast v7, Ljava/lang/Integer;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 882
    .end local v0    # "SystemProperties":Ljava/lang/Class;
    .end local v1    # "cl":Ljava/lang/ClassLoader;
    .end local v3    # "getInt":Ljava/lang/reflect/Method;
    .end local v5    # "paramTypes":[Ljava/lang/Class;
    .end local v6    # "params":[Ljava/lang/Object;
    .restart local v7    # "ret":Ljava/lang/Integer;
    :goto_0
    return-object v7

    .line 876
    .end local v7    # "ret":Ljava/lang/Integer;
    :catch_0
    move-exception v4

    .line 877
    .local v4, "iAE":Ljava/lang/IllegalArgumentException;
    throw v4

    .line 878
    .end local v4    # "iAE":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v2

    .line 879
    .local v2, "e":Ljava/lang/Exception;
    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    .restart local v7    # "ret":Ljava/lang/Integer;
    goto :goto_0
.end method

.method public static getNotchSize(Landroid/content/Context;)[I
    .locals 10
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 917
    const/4 v8, 0x2

    new-array v5, v8, [I

    fill-array-data v5, :array_0

    .line 919
    .local v5, "ret":[I
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 920
    .local v2, "cl":Ljava/lang/ClassLoader;
    const-string v8, "com.huawei.android.util.HwNotchSizeUtil"

    invoke-virtual {v2, v8}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 921
    .local v1, "HwNotchSizeUtil":Ljava/lang/Class;
    const-string v8, "getNotchSize"

    const/4 v9, 0x0

    new-array v9, v9, [Ljava/lang/Class;

    invoke-virtual {v1, v8, v9}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    .line 922
    .local v4, "get":Ljava/lang/reflect/Method;
    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Object;

    invoke-virtual {v4, v1, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    move-object v0, v8

    check-cast v0, [I

    move-object v5, v0
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v6, v5

    .end local v5    # "ret":[I
    .local v6, "ret":[I
    move-object v7, v5

    .line 930
    .end local v1    # "HwNotchSizeUtil":Ljava/lang/Class;
    .end local v2    # "cl":Ljava/lang/ClassLoader;
    .end local v4    # "get":Ljava/lang/reflect/Method;
    .end local v6    # "ret":[I
    .local v7, "ret":[I
    :goto_0
    return-object v7

    .line 923
    .end local v7    # "ret":[I
    .restart local v5    # "ret":[I
    :catch_0
    move-exception v3

    .line 924
    .local v3, "e":Ljava/lang/ClassNotFoundException;
    :try_start_1
    const-string v8, "test"

    const-string v9, "getNotchSize ClassNotFoundException"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v5

    .end local v5    # "ret":[I
    .restart local v6    # "ret":[I
    move-object v7, v5

    .line 930
    .end local v6    # "ret":[I
    .restart local v7    # "ret":[I
    goto :goto_0

    .line 925
    .end local v3    # "e":Ljava/lang/ClassNotFoundException;
    .end local v7    # "ret":[I
    .restart local v5    # "ret":[I
    :catch_1
    move-exception v3

    .line 926
    .local v3, "e":Ljava/lang/NoSuchMethodException;
    const-string v8, "test"

    const-string v9, "getNotchSize NoSuchMethodException"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v6, v5

    .end local v5    # "ret":[I
    .restart local v6    # "ret":[I
    move-object v7, v5

    .line 930
    .end local v6    # "ret":[I
    .restart local v7    # "ret":[I
    goto :goto_0

    .line 927
    .end local v3    # "e":Ljava/lang/NoSuchMethodException;
    .end local v7    # "ret":[I
    .restart local v5    # "ret":[I
    :catch_2
    move-exception v3

    .line 928
    .local v3, "e":Ljava/lang/Exception;
    const-string v8, "test"

    const-string v9, "getNotchSize Exception"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v6, v5

    .end local v5    # "ret":[I
    .restart local v6    # "ret":[I
    move-object v7, v5

    .line 930
    .end local v6    # "ret":[I
    .restart local v7    # "ret":[I
    goto :goto_0

    .end local v3    # "e":Ljava/lang/Exception;
    .end local v7    # "ret":[I
    .restart local v5    # "ret":[I
    :catchall_0
    move-exception v8

    move-object v6, v5

    .end local v5    # "ret":[I
    .restart local v6    # "ret":[I
    move-object v7, v5

    .end local v6    # "ret":[I
    .restart local v7    # "ret":[I
    goto :goto_0

    .line 917
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public static getStatusBarHeight(Landroid/content/Context;)I
    .locals 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 592
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "status_bar_height"

    const-string v3, "dimen"

    const-string v4, "android"

    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 593
    .local v0, "resourceId":I
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    return v1
.end method

.method public static getSystemProperty(Ljava/lang/String;)Ljava/lang/String;
    .locals 8
    .param p0, "propName"    # Ljava/lang/String;

    .prologue
    .line 741
    const/4 v1, 0x0

    .line 743
    .local v1, "input":Ljava/io/BufferedReader;
    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v5

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "getprop "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    .line 744
    .local v4, "p":Ljava/lang/Process;
    new-instance v2, Ljava/io/BufferedReader;

    new-instance v5, Ljava/io/InputStreamReader;

    invoke-virtual {v4}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    const/16 v6, 0x400

    invoke-direct {v2, v5, v6}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 745
    .end local v1    # "input":Ljava/io/BufferedReader;
    .local v2, "input":Ljava/io/BufferedReader;
    :try_start_1
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v3

    .line 746
    .local v3, "line":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_4
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 750
    if-eqz v2, :cond_0

    .line 752
    :try_start_2
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    :cond_0
    :goto_0
    move-object v1, v2

    .line 757
    .end local v2    # "input":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "p":Ljava/lang/Process;
    .restart local v1    # "input":Ljava/io/BufferedReader;
    :cond_1
    :goto_1
    return-object v3

    .line 747
    :catch_0
    move-exception v0

    .line 748
    .local v0, "ex":Ljava/io/IOException;
    :goto_2
    const/4 v3, 0x0

    .line 750
    if-eqz v1, :cond_1

    .line 752
    :try_start_3
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_1

    .line 753
    :catch_1
    move-exception v5

    goto :goto_1

    .line 750
    .end local v0    # "ex":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    :goto_3
    if-eqz v1, :cond_2

    .line 752
    :try_start_4
    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_3

    .line 756
    :cond_2
    :goto_4
    throw v5

    .line 753
    .end local v1    # "input":Ljava/io/BufferedReader;
    .restart local v2    # "input":Ljava/io/BufferedReader;
    .restart local v3    # "line":Ljava/lang/String;
    .restart local v4    # "p":Ljava/lang/Process;
    :catch_2
    move-exception v5

    goto :goto_0

    .end local v2    # "input":Ljava/io/BufferedReader;
    .end local v3    # "line":Ljava/lang/String;
    .end local v4    # "p":Ljava/lang/Process;
    .restart local v1    # "input":Ljava/io/BufferedReader;
    :catch_3
    move-exception v6

    goto :goto_4

    .line 750
    .end local v1    # "input":Ljava/io/BufferedReader;
    .restart local v2    # "input":Ljava/io/BufferedReader;
    .restart local v4    # "p":Ljava/lang/Process;
    :catchall_1
    move-exception v5

    move-object v1, v2

    .end local v2    # "input":Ljava/io/BufferedReader;
    .restart local v1    # "input":Ljava/io/BufferedReader;
    goto :goto_3

    .line 747
    .end local v1    # "input":Ljava/io/BufferedReader;
    .restart local v2    # "input":Ljava/io/BufferedReader;
    :catch_4
    move-exception v0

    move-object v1, v2

    .end local v2    # "input":Ljava/io/BufferedReader;
    .restart local v1    # "input":Ljava/io/BufferedReader;
    goto :goto_2
.end method

.method public static hasNotchInScreen(Landroid/content/Context;)Z
    .locals 9
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 897
    const/4 v4, 0x0

    .line 899
    .local v4, "ret":Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 900
    .local v1, "cl":Ljava/lang/ClassLoader;
    const-string v7, "com.huawei.android.util.HwNotchSizeUtil"

    invoke-virtual {v1, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 901
    .local v0, "HwNotchSizeUtil":Ljava/lang/Class;
    const-string v7, "hasNotchInScreen"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 902
    .local v3, "get":Ljava/lang/reflect/Method;
    const/4 v7, 0x0

    new-array v7, v7, [Ljava/lang/Object;

    invoke-virtual {v3, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    move v5, v4

    .end local v4    # "ret":Z
    .local v5, "ret":Z
    move v6, v4

    .line 911
    .end local v0    # "HwNotchSizeUtil":Ljava/lang/Class;
    .end local v1    # "cl":Ljava/lang/ClassLoader;
    .end local v3    # "get":Ljava/lang/reflect/Method;
    .end local v5    # "ret":Z
    .local v6, "ret":I
    :goto_0
    return v6

    .line 904
    .end local v6    # "ret":I
    .restart local v4    # "ret":Z
    :catch_0
    move-exception v2

    .line 905
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    :try_start_1
    const-string v7, "test"

    const-string v8, "hasNotchInScreen ClassNotFoundException"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    .end local v4    # "ret":Z
    .restart local v5    # "ret":Z
    move v6, v4

    .line 911
    .restart local v6    # "ret":I
    goto :goto_0

    .line 906
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .end local v5    # "ret":Z
    .end local v6    # "ret":I
    .restart local v4    # "ret":Z
    :catch_1
    move-exception v2

    .line 907
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    const-string v7, "test"

    const-string v8, "hasNotchInScreen NoSuchMethodException"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    .end local v4    # "ret":Z
    .restart local v5    # "ret":Z
    move v6, v4

    .line 911
    .restart local v6    # "ret":I
    goto :goto_0

    .line 908
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    .end local v5    # "ret":Z
    .end local v6    # "ret":I
    .restart local v4    # "ret":Z
    :catch_2
    move-exception v2

    .line 909
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "test"

    const-string v8, "hasNotchInScreen Exception"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v5, v4

    .end local v4    # "ret":Z
    .restart local v5    # "ret":Z
    move v6, v4

    .line 911
    .restart local v6    # "ret":I
    goto :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "ret":Z
    .end local v6    # "ret":I
    .restart local v4    # "ret":Z
    :catchall_0
    move-exception v7

    move v5, v4

    .end local v4    # "ret":Z
    .restart local v5    # "ret":Z
    move v6, v4

    .restart local v6    # "ret":I
    goto :goto_0
.end method

.method public static hasNotchInScreenAtMi(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 886
    const-string v3, "ro.miui.notch"

    invoke-static {p0, v3, v2}, Lcom/fimi/kernel/utils/StatusBarUtil;->getInt(Landroid/content/Context;Ljava/lang/String;I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 887
    .local v0, "ret":I
    if-ne v0, v1, :cond_0

    .line 890
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method public static hasNotchInScreenAtOppo(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 963
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.oppo.feature.screen.heteromorphism"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static hasNotchInScreenAtVoio(Landroid/content/Context;)Z
    .locals 11
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 976
    const/4 v4, 0x0

    .line 978
    .local v4, "ret":Z
    :try_start_0
    invoke-virtual {p0}, Landroid/content/Context;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 979
    .local v1, "cl":Ljava/lang/ClassLoader;
    const-string v7, "com.util.FtFeature"

    invoke-virtual {v1, v7}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 980
    .local v0, "FtFeature":Ljava/lang/Class;
    const-string v7, "isFeatureSupport"

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Class;

    const/4 v9, 0x0

    sget-object v10, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v10, v8, v9

    invoke-virtual {v0, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 981
    .local v3, "get":Ljava/lang/reflect/Method;
    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Object;

    const/4 v8, 0x0

    const/16 v9, 0x20

    invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    aput-object v9, v7, v8

    invoke-virtual {v3, v0, v7}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v4

    move v5, v4

    .end local v4    # "ret":Z
    .local v5, "ret":Z
    move v6, v4

    .line 990
    .end local v0    # "FtFeature":Ljava/lang/Class;
    .end local v1    # "cl":Ljava/lang/ClassLoader;
    .end local v3    # "get":Ljava/lang/reflect/Method;
    .end local v5    # "ret":Z
    .local v6, "ret":I
    :goto_0
    return v6

    .line 983
    .end local v6    # "ret":I
    .restart local v4    # "ret":Z
    :catch_0
    move-exception v2

    .line 984
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    :try_start_1
    const-string v7, "test"

    const-string v8, "hasNotchInScreen ClassNotFoundException"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    .end local v4    # "ret":Z
    .restart local v5    # "ret":Z
    move v6, v4

    .line 990
    .restart local v6    # "ret":I
    goto :goto_0

    .line 985
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    .end local v5    # "ret":Z
    .end local v6    # "ret":I
    .restart local v4    # "ret":Z
    :catch_1
    move-exception v2

    .line 986
    .local v2, "e":Ljava/lang/NoSuchMethodException;
    const-string v7, "test"

    const-string v8, "hasNotchInScreen NoSuchMethodException"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v4

    .end local v4    # "ret":Z
    .restart local v5    # "ret":Z
    move v6, v4

    .line 990
    .restart local v6    # "ret":I
    goto :goto_0

    .line 987
    .end local v2    # "e":Ljava/lang/NoSuchMethodException;
    .end local v5    # "ret":Z
    .end local v6    # "ret":I
    .restart local v4    # "ret":Z
    :catch_2
    move-exception v2

    .line 988
    .local v2, "e":Ljava/lang/Exception;
    const-string v7, "test"

    const-string v8, "hasNotchInScreen Exception"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move v5, v4

    .end local v4    # "ret":Z
    .restart local v5    # "ret":Z
    move v6, v4

    .line 990
    .restart local v6    # "ret":I
    goto :goto_0

    .end local v2    # "e":Ljava/lang/Exception;
    .end local v5    # "ret":Z
    .end local v6    # "ret":I
    .restart local v4    # "ret":Z
    :catchall_0
    move-exception v7

    move v5, v4

    .end local v4    # "ret":Z
    .restart local v5    # "ret":Z
    move v6, v4

    .restart local v6    # "ret":I
    goto :goto_0
.end method

.method public static isNotch(Landroid/content/Context;)Z
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 835
    const/4 v1, 0x0

    .line 836
    .local v1, "ret":Z
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    .line 837
    sget-object v0, Landroid/os/Build;->BRAND:Ljava/lang/String;

    .line 838
    .local v0, "name":Ljava/lang/String;
    const-string v2, "Xiaomi"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 839
    invoke-static {p0}, Lcom/fimi/kernel/utils/StatusBarUtil;->hasNotchInScreenAtMi(Landroid/content/Context;)Z

    move-result v1

    .line 845
    .end local v0    # "name":Ljava/lang/String;
    :cond_0
    :goto_0
    return v1

    .line 841
    .restart local v0    # "name":Ljava/lang/String;
    :cond_1
    invoke-static {p0}, Lcom/fimi/kernel/utils/StatusBarUtil;->hasNotchInScreen(Landroid/content/Context;)Z

    move-result v1

    goto :goto_0
.end method

.method public static setColor(Landroid/app/Activity;I)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 48
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/fimi/kernel/utils/StatusBarUtil;->setColor(Landroid/app/Activity;II)V

    .line 49
    return-void
.end method

.method public static setColor(Landroid/app/Activity;II)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p2, "statusBarAlpha"    # I

    .prologue
    const/high16 v5, 0x4000000

    .line 60
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x15

    if-lt v3, v4, :cond_1

    .line 61
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/high16 v4, -0x80000000

    invoke-virtual {v3, v4}, Landroid/view/Window;->addFlags(I)V

    .line 62
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/Window;->clearFlags(I)V

    .line 63
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-static {p1, p2}, Lcom/fimi/kernel/utils/StatusBarUtil;->calculateStatusColor(II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 76
    :cond_0
    :goto_0
    return-void

    .line 64
    :cond_1
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0x13

    if-lt v3, v4, :cond_0

    .line 65
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3, v5}, Landroid/view/Window;->addFlags(I)V

    .line 66
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 67
    .local v1, "decorView":Landroid/view/ViewGroup;
    invoke-virtual {v1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 68
    .local v0, "count":I
    if-lez v0, :cond_2

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    instance-of v3, v3, Lcom/fimi/kernel/widget/statusbar/StatusBarView;

    if-eqz v3, :cond_2

    .line 69
    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v1, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-static {p1, p2}, Lcom/fimi/kernel/utils/StatusBarUtil;->calculateStatusColor(II)I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/view/View;->setBackgroundColor(I)V

    .line 74
    :goto_1
    invoke-static {p0}, Lcom/fimi/kernel/utils/StatusBarUtil;->setRootView(Landroid/app/Activity;)V

    goto :goto_0

    .line 71
    :cond_2
    invoke-static {p0, p1, p2}, Lcom/fimi/kernel/utils/StatusBarUtil;->createStatusBarView(Landroid/app/Activity;II)Lcom/fimi/kernel/widget/statusbar/StatusBarView;

    move-result-object v2

    .line 72
    .local v2, "statusView":Lcom/fimi/kernel/widget/statusbar/StatusBarView;
    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public static setColorDiff(Landroid/app/Activity;I)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 122
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_0

    .line 134
    :goto_0
    return-void

    .line 125
    :cond_0
    invoke-static {p0}, Lcom/fimi/kernel/utils/StatusBarUtil;->transparentStatusBar(Landroid/app/Activity;)V

    .line 126
    const v1, 0x1020002

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 128
    .local v0, "contentView":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    if-le v1, v3, :cond_1

    .line 129
    invoke-virtual {v0, v3}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 133
    :goto_1
    invoke-static {p0}, Lcom/fimi/kernel/utils/StatusBarUtil;->setRootView(Landroid/app/Activity;)V

    goto :goto_0

    .line 131
    :cond_1
    invoke-static {p0, p1}, Lcom/fimi/kernel/utils/StatusBarUtil;->createStatusBarView(Landroid/app/Activity;I)Lcom/fimi/kernel/widget/statusbar/StatusBarView;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    goto :goto_1
.end method

.method public static setColorForDrawerLayout(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;I)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "drawerLayout"    # Landroid/support/v4/widget/DrawerLayout;
    .param p2, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 216
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/fimi/kernel/utils/StatusBarUtil;->setColorForDrawerLayout(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;II)V

    .line 217
    return-void
.end method

.method public static setColorForDrawerLayout(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;II)V
    .locals 7
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "drawerLayout"    # Landroid/support/v4/widget/DrawerLayout;
    .param p2, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p3, "statusBarAlpha"    # I

    .prologue
    const/high16 v6, 0x4000000

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 240
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-ge v2, v3, :cond_0

    .line 268
    :goto_0
    return-void

    .line 243
    :cond_0
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_2

    .line 244
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, -0x80000000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 245
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/Window;->clearFlags(I)V

    .line 246
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 252
    :goto_1
    invoke-virtual {p1, v4}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 253
    .local v0, "contentLayout":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_3

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/fimi/kernel/widget/statusbar/StatusBarView;

    if-eqz v2, :cond_3

    .line 254
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {p2, p3}, Lcom/fimi/kernel/utils/StatusBarUtil;->calculateStatusColor(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 260
    :goto_2
    instance-of v2, v0, Landroid/widget/LinearLayout;

    if-nez v2, :cond_1

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 261
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 262
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingLeft()I

    move-result v3

    invoke-static {p0}, Lcom/fimi/kernel/utils/StatusBarUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v4

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingTop()I

    move-result v5

    add-int/2addr v4, v5

    .line 263
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingRight()I

    move-result v5

    invoke-virtual {v0}, Landroid/view/ViewGroup;->getPaddingBottom()I

    move-result v6

    .line 262
    invoke-virtual {v2, v3, v4, v5, v6}, Landroid/view/View;->setPadding(IIII)V

    .line 266
    :cond_1
    invoke-static {p1, v0}, Lcom/fimi/kernel/utils/StatusBarUtil;->setDrawerLayoutProperty(Landroid/support/v4/widget/DrawerLayout;Landroid/view/ViewGroup;)V

    .line 267
    invoke-static {p0, p3}, Lcom/fimi/kernel/utils/StatusBarUtil;->addTranslucentView(Landroid/app/Activity;I)V

    goto :goto_0

    .line 248
    .end local v0    # "contentLayout":Landroid/view/ViewGroup;
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/view/Window;->addFlags(I)V

    goto :goto_1

    .line 256
    .restart local v0    # "contentLayout":Landroid/view/ViewGroup;
    :cond_3
    invoke-static {p0, p2}, Lcom/fimi/kernel/utils/StatusBarUtil;->createStatusBarView(Landroid/app/Activity;I)Lcom/fimi/kernel/widget/statusbar/StatusBarView;

    move-result-object v1

    .line 257
    .local v1, "statusBarView":Lcom/fimi/kernel/widget/statusbar/StatusBarView;
    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_2
.end method

.method public static setColorForDrawerLayoutDiff(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;I)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "drawerLayout"    # Landroid/support/v4/widget/DrawerLayout;
    .param p2, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 293
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_1

    .line 294
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 296
    invoke-virtual {p1, v4}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 297
    .local v0, "contentLayout":Landroid/view/ViewGroup;
    invoke-virtual {v0}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    if-lez v2, :cond_2

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    instance-of v2, v2, Lcom/fimi/kernel/widget/statusbar/StatusBarView;

    if-eqz v2, :cond_2

    .line 298
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {p2, v4}, Lcom/fimi/kernel/utils/StatusBarUtil;->calculateStatusColor(II)I

    move-result v3

    invoke-virtual {v2, v3}, Landroid/view/View;->setBackgroundColor(I)V

    .line 305
    :goto_0
    instance-of v2, v0, Landroid/widget/LinearLayout;

    if-nez v2, :cond_0

    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 306
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-static {p0}, Lcom/fimi/kernel/utils/StatusBarUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v3

    invoke-virtual {v2, v4, v3, v4, v4}, Landroid/view/View;->setPadding(IIII)V

    .line 309
    :cond_0
    invoke-static {p1, v0}, Lcom/fimi/kernel/utils/StatusBarUtil;->setDrawerLayoutProperty(Landroid/support/v4/widget/DrawerLayout;Landroid/view/ViewGroup;)V

    .line 311
    .end local v0    # "contentLayout":Landroid/view/ViewGroup;
    :cond_1
    return-void

    .line 301
    .restart local v0    # "contentLayout":Landroid/view/ViewGroup;
    :cond_2
    invoke-static {p0, p2}, Lcom/fimi/kernel/utils/StatusBarUtil;->createStatusBarView(Landroid/app/Activity;I)Lcom/fimi/kernel/widget/statusbar/StatusBarView;

    move-result-object v1

    .line 302
    .local v1, "statusBarView":Lcom/fimi/kernel/widget/statusbar/StatusBarView;
    invoke-virtual {v0, v1, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;I)V

    goto :goto_0
.end method

.method public static setColorForSwipeBack(Landroid/app/Activity;I)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "color"    # I

    .prologue
    .line 85
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/fimi/kernel/utils/StatusBarUtil;->setColorForSwipeBack(Landroid/app/Activity;II)V

    .line 86
    return-void
.end method

.method public static setColorForSwipeBack(Landroid/app/Activity;II)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param
    .param p2, "statusBarAlpha"    # I

    .prologue
    const/4 v3, 0x0

    .line 96
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 97
    const v1, 0x1020002

    invoke-virtual {p0, v1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 98
    .local v0, "contentView":Landroid/view/ViewGroup;
    invoke-static {p0}, Lcom/fimi/kernel/utils/StatusBarUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    .line 99
    invoke-static {p1, p2}, Lcom/fimi/kernel/utils/StatusBarUtil;->calculateStatusColor(II)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setBackgroundColor(I)V

    .line 100
    invoke-static {p0}, Lcom/fimi/kernel/utils/StatusBarUtil;->setTransparentForWindow(Landroid/app/Activity;)V

    .line 102
    .end local v0    # "contentView":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method public static setColorNoTranslucent(Landroid/app/Activity;I)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 111
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/fimi/kernel/utils/StatusBarUtil;->setColor(Landroid/app/Activity;II)V

    .line 112
    return-void
.end method

.method public static setColorNoTranslucentForDrawerLayout(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;I)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "drawerLayout"    # Landroid/support/v4/widget/DrawerLayout;
    .param p2, "color"    # I
        .annotation build Landroid/support/annotation/ColorInt;
        .end annotation
    .end param

    .prologue
    .line 227
    const/4 v0, 0x0

    invoke-static {p0, p1, p2, v0}, Lcom/fimi/kernel/utils/StatusBarUtil;->setColorForDrawerLayout(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;II)V

    .line 228
    return-void
.end method

.method private static setDrawerLayoutProperty(Landroid/support/v4/widget/DrawerLayout;Landroid/view/ViewGroup;)V
    .locals 3
    .param p0, "drawerLayout"    # Landroid/support/v4/widget/DrawerLayout;
    .param p1, "drawerLayoutContentLayout"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 277
    invoke-virtual {p0, v2}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 278
    .local v0, "drawer":Landroid/view/ViewGroup;
    invoke-virtual {p0, v1}, Landroid/support/v4/widget/DrawerLayout;->setFitsSystemWindows(Z)V

    .line 279
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    .line 280
    invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 281
    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    .line 282
    return-void
.end method

.method public static setFullScreenWindowLayoutInDisplayCutout(Landroid/view/Window;)V
    .locals 10
    .param p0, "window"    # Landroid/view/Window;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    .line 939
    if-nez p0, :cond_0

    .line 954
    :goto_0
    return-void

    .line 942
    :cond_0
    invoke-virtual {p0}, Landroid/view/Window;->getAttributes()Landroid/view/WindowManager$LayoutParams;

    move-result-object v2

    .line 944
    .local v2, "layoutParams":Landroid/view/WindowManager$LayoutParams;
    :try_start_0
    const-string v6, "com.huawei.android.view.LayoutParamsEx"

    invoke-static {v6}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    .line 945
    .local v3, "layoutParamsExCls":Ljava/lang/Class;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/view/WindowManager$LayoutParams;

    aput-object v8, v6, v7

    invoke-virtual {v3, v6}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 946
    .local v0, "con":Ljava/lang/reflect/Constructor;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object v2, v6, v7

    invoke-virtual {v0, v6}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 947
    .local v4, "layoutParamsExObj":Ljava/lang/Object;
    const-string v6, "addHwFlags"

    const/4 v7, 0x1

    new-array v7, v7, [Ljava/lang/Class;

    const/4 v8, 0x0

    sget-object v9, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v9, v7, v8

    invoke-virtual {v3, v6, v7}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v5

    .line 948
    .local v5, "method":Ljava/lang/reflect/Method;
    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    const/high16 v8, 0x10000

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v5, v4, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    goto :goto_0

    .line 949
    .end local v0    # "con":Ljava/lang/reflect/Constructor;
    .end local v3    # "layoutParamsExCls":Ljava/lang/Class;
    .end local v4    # "layoutParamsExObj":Ljava/lang/Object;
    .end local v5    # "method":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 950
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    :goto_1
    const-string v6, "test"

    const-string v7, "hw notch screen flag api error"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 951
    .end local v1    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v1

    .line 952
    .local v1, "e":Ljava/lang/Exception;
    const-string v6, "test"

    const-string v7, "other Exception"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 949
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v1

    goto :goto_1

    :catch_3
    move-exception v1

    goto :goto_1

    :catch_4
    move-exception v1

    goto :goto_1

    :catch_5
    move-exception v1

    goto :goto_1
.end method

.method private static setRootView(Landroid/app/Activity;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v5, 0x1

    .line 528
    const v4, 0x1020002

    invoke-virtual {p0, v4}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/view/ViewGroup;

    .line 529
    .local v3, "parent":Landroid/view/ViewGroup;
    const/4 v2, 0x0

    .local v2, "i":I
    invoke-virtual {v3}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v1

    .local v1, "count":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 530
    invoke-virtual {v3, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 531
    .local v0, "childView":Landroid/view/View;
    instance-of v4, v0, Landroid/view/ViewGroup;

    if-eqz v4, :cond_0

    .line 532
    invoke-virtual {v0, v5}, Landroid/view/View;->setFitsSystemWindows(Z)V

    .line 533
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "childView":Landroid/view/View;
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 529
    :cond_0
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 536
    :cond_1
    return-void
.end method

.method public static setStatusBarColor(Landroid/app/Activity;I)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "colorId"    # I

    .prologue
    .line 646
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x15

    if-lt v2, v3, :cond_1

    .line 647
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    .line 651
    .local v1, "window":Landroid/view/Window;
    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 652
    invoke-virtual {v1}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const/16 v3, 0x500

    .line 653
    invoke-virtual {v2, v3}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 661
    .end local v1    # "window":Landroid/view/Window;
    :cond_0
    :goto_0
    return-void

    .line 654
    :cond_1
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    .line 656
    invoke-static {p0}, Lcom/fimi/kernel/utils/StatusBarUtil;->transparencyBar(Landroid/app/Activity;)V

    .line 657
    new-instance v0, Lcom/readystatesoftware/systembartint/SystemBarTintManager;

    invoke-direct {v0, p0}, Lcom/readystatesoftware/systembartint/SystemBarTintManager;-><init>(Landroid/app/Activity;)V

    .line 658
    .local v0, "tintManager":Lcom/readystatesoftware/systembartint/SystemBarTintManager;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Lcom/readystatesoftware/systembartint/SystemBarTintManager;->setStatusBarTintEnabled(Z)V

    .line 659
    invoke-virtual {v0, p1}, Lcom/readystatesoftware/systembartint/SystemBarTintManager;->setStatusBarTintResource(I)V

    goto :goto_0
.end method

.method public static setTranslucent(Landroid/app/Activity;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 144
    const/4 v0, 0x0

    invoke-static {p0, v0}, Lcom/fimi/kernel/utils/StatusBarUtil;->setTranslucent(Landroid/app/Activity;I)V

    .line 145
    return-void
.end method

.method public static setTranslucent(Landroid/app/Activity;I)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "statusBarAlpha"    # I

    .prologue
    .line 156
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    .line 161
    :goto_0
    return-void

    .line 159
    :cond_0
    invoke-static {p0}, Lcom/fimi/kernel/utils/StatusBarUtil;->setTransparent(Landroid/app/Activity;)V

    .line 160
    invoke-static {p0, p1}, Lcom/fimi/kernel/utils/StatusBarUtil;->addTranslucentView(Landroid/app/Activity;I)V

    goto :goto_0
.end method

.method public static setTranslucentDiff(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 201
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 203
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x4000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 204
    invoke-static {p0}, Lcom/fimi/kernel/utils/StatusBarUtil;->setRootView(Landroid/app/Activity;)V

    .line 206
    :cond_0
    return-void
.end method

.method public static setTranslucentForCoordinatorLayout(Landroid/app/Activity;I)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "statusBarAlpha"    # I

    .prologue
    .line 172
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    .line 177
    :goto_0
    return-void

    .line 175
    :cond_0
    invoke-static {p0}, Lcom/fimi/kernel/utils/StatusBarUtil;->transparentStatusBar(Landroid/app/Activity;)V

    .line 176
    invoke-static {p0, p1}, Lcom/fimi/kernel/utils/StatusBarUtil;->addTranslucentView(Landroid/app/Activity;I)V

    goto :goto_0
.end method

.method public static setTranslucentForDrawerLayout(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "drawerLayout"    # Landroid/support/v4/widget/DrawerLayout;

    .prologue
    .line 320
    const/4 v0, 0x0

    invoke-static {p0, p1, v0}, Lcom/fimi/kernel/utils/StatusBarUtil;->setTranslucentForDrawerLayout(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;I)V

    .line 321
    return-void
.end method

.method public static setTranslucentForDrawerLayout(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;I)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "drawerLayout"    # Landroid/support/v4/widget/DrawerLayout;
    .param p2, "statusBarAlpha"    # I

    .prologue
    .line 330
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    .line 335
    :goto_0
    return-void

    .line 333
    :cond_0
    invoke-static {p0, p1}, Lcom/fimi/kernel/utils/StatusBarUtil;->setTransparentForDrawerLayout(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;)V

    .line 334
    invoke-static {p0, p2}, Lcom/fimi/kernel/utils/StatusBarUtil;->addTranslucentView(Landroid/app/Activity;I)V

    goto :goto_0
.end method

.method public static setTranslucentForDrawerLayoutDiff(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "drawerLayout"    # Landroid/support/v4/widget/DrawerLayout;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 373
    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v3, 0x13

    if-lt v2, v3, :cond_0

    .line 375
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    const/high16 v3, 0x4000000

    invoke-virtual {v2, v3}, Landroid/view/Window;->addFlags(I)V

    .line 377
    invoke-virtual {p1, v4}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 378
    .local v0, "contentLayout":Landroid/view/ViewGroup;
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    .line 379
    invoke-virtual {v0, v5}, Landroid/view/ViewGroup;->setClipToPadding(Z)V

    .line 381
    invoke-virtual {p1, v5}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 382
    .local v1, "vg":Landroid/view/ViewGroup;
    invoke-virtual {v1, v4}, Landroid/view/ViewGroup;->setFitsSystemWindows(Z)V

    .line 384
    invoke-virtual {p1, v4}, Landroid/support/v4/widget/DrawerLayout;->setFitsSystemWindows(Z)V

    .line 386
    .end local v0    # "contentLayout":Landroid/view/ViewGroup;
    .end local v1    # "vg":Landroid/view/ViewGroup;
    :cond_0
    return-void
.end method

.method public static setTranslucentForImageView(Landroid/app/Activity;ILandroid/view/View;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "statusBarAlpha"    # I
    .param p2, "needOffsetView"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x0

    .line 416
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_1

    .line 425
    :cond_0
    :goto_0
    return-void

    .line 419
    :cond_1
    invoke-static {p0}, Lcom/fimi/kernel/utils/StatusBarUtil;->setTransparentForWindow(Landroid/app/Activity;)V

    .line 420
    invoke-static {p0, p1}, Lcom/fimi/kernel/utils/StatusBarUtil;->addTranslucentView(Landroid/app/Activity;I)V

    .line 421
    if-eqz p2, :cond_0

    .line 422
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 423
    .local v0, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-static {p0}, Lcom/fimi/kernel/utils/StatusBarUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {v0, v3, v1, v3, v3}, Landroid/view/ViewGroup$MarginLayoutParams;->setMargins(IIII)V

    goto :goto_0
.end method

.method public static setTranslucentForImageView(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "needOffsetView"    # Landroid/view/View;

    .prologue
    .line 405
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/fimi/kernel/utils/StatusBarUtil;->setTranslucentForImageView(Landroid/app/Activity;ILandroid/view/View;)V

    .line 406
    return-void
.end method

.method public static setTranslucentForImageViewInFragment(Landroid/app/Activity;ILandroid/view/View;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "statusBarAlpha"    # I
    .param p2, "needOffsetView"    # Landroid/view/View;

    .prologue
    .line 455
    invoke-static {p0, p1, p2}, Lcom/fimi/kernel/utils/StatusBarUtil;->setTranslucentForImageView(Landroid/app/Activity;ILandroid/view/View;)V

    .line 456
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-ge v0, v1, :cond_0

    .line 457
    invoke-static {p0}, Lcom/fimi/kernel/utils/StatusBarUtil;->clearPreviousSetting(Landroid/app/Activity;)V

    .line 459
    :cond_0
    return-void
.end method

.method public static setTranslucentForImageViewInFragment(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "needOffsetView"    # Landroid/view/View;

    .prologue
    .line 434
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/fimi/kernel/utils/StatusBarUtil;->setTranslucentForImageViewInFragment(Landroid/app/Activity;ILandroid/view/View;)V

    .line 435
    return-void
.end method

.method public static setTransparent(Landroid/app/Activity;)V
    .locals 2
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    .line 185
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-ge v0, v1, :cond_0

    .line 190
    :goto_0
    return-void

    .line 188
    :cond_0
    invoke-static {p0}, Lcom/fimi/kernel/utils/StatusBarUtil;->transparentStatusBar(Landroid/app/Activity;)V

    .line 189
    invoke-static {p0}, Lcom/fimi/kernel/utils/StatusBarUtil;->setRootView(Landroid/app/Activity;)V

    goto :goto_0
.end method

.method public static setTransparentForDrawerLayout(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;)V
    .locals 6
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "drawerLayout"    # Landroid/support/v4/widget/DrawerLayout;

    .prologue
    const/high16 v5, 0x4000000

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 344
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-ge v1, v2, :cond_0

    .line 363
    :goto_0
    return-void

    .line 347
    :cond_0
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_2

    .line 348
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, -0x80000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 349
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/Window;->clearFlags(I)V

    .line 350
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v3}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 355
    :goto_1
    invoke-virtual {p1, v3}, Landroid/support/v4/widget/DrawerLayout;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 357
    .local v0, "contentLayout":Landroid/view/ViewGroup;
    instance-of v1, v0, Landroid/widget/LinearLayout;

    if-nez v1, :cond_1

    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 358
    invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    invoke-static {p0}, Lcom/fimi/kernel/utils/StatusBarUtil;->getStatusBarHeight(Landroid/content/Context;)I

    move-result v2

    invoke-virtual {v1, v3, v2, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    .line 362
    :cond_1
    invoke-static {p1, v0}, Lcom/fimi/kernel/utils/StatusBarUtil;->setDrawerLayoutProperty(Landroid/support/v4/widget/DrawerLayout;Landroid/view/ViewGroup;)V

    goto :goto_0

    .line 352
    .end local v0    # "contentLayout":Landroid/view/ViewGroup;
    :cond_2
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/Window;->addFlags(I)V

    goto :goto_1
.end method

.method public static setTransparentForImageView(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "needOffsetView"    # Landroid/view/View;

    .prologue
    .line 395
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/fimi/kernel/utils/StatusBarUtil;->setTranslucentForImageView(Landroid/app/Activity;ILandroid/view/View;)V

    .line 396
    return-void
.end method

.method public static setTransparentForImageViewInFragment(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1
    .param p0, "activity"    # Landroid/app/Activity;
    .param p1, "needOffsetView"    # Landroid/view/View;

    .prologue
    .line 444
    const/4 v0, 0x0

    invoke-static {p0, v0, p1}, Lcom/fimi/kernel/utils/StatusBarUtil;->setTranslucentForImageViewInFragment(Landroid/app/Activity;ILandroid/view/View;)V

    .line 445
    return-void
.end method

.method private static setTransparentForWindow(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;

    .prologue
    const/high16 v2, 0x4000000

    .line 542
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_1

    .line 543
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 544
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 545
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x500

    .line 546
    invoke-virtual {v0, v1}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 551
    :cond_0
    :goto_0
    return-void

    .line 547
    :cond_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x13

    if-lt v0, v1, :cond_0

    .line 548
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 549
    invoke-virtual {v0, v2, v2}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0
.end method

.method public static transparencyBar(Landroid/app/Activity;)V
    .locals 4
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    const/high16 v3, 0x4000000

    .line 623
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x15

    if-lt v1, v2, :cond_1

    .line 624
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 625
    .local v0, "window":Landroid/view/Window;
    invoke-virtual {v0, v3}, Landroid/view/Window;->clearFlags(I)V

    .line 626
    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v1

    const/16 v2, 0x500

    invoke-virtual {v1, v2}, Landroid/view/View;->setSystemUiVisibility(I)V

    .line 628
    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 629
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 637
    .end local v0    # "window":Landroid/view/Window;
    :cond_0
    :goto_0
    return-void

    .line 632
    :cond_1
    sget v1, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v2, 0x13

    if-lt v1, v2, :cond_0

    .line 633
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    .line 634
    .restart local v0    # "window":Landroid/view/Window;
    invoke-virtual {v0, v3, v3}, Landroid/view/Window;->setFlags(II)V

    goto :goto_0
.end method

.method private static transparentStatusBar(Landroid/app/Activity;)V
    .locals 3
    .param p0, "activity"    # Landroid/app/Activity;
    .annotation build Landroid/annotation/TargetApi;
        value = 0x13
    .end annotation

    .prologue
    const/high16 v2, 0x4000000

    .line 558
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    .line 559
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, -0x80000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 560
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->clearFlags(I)V

    .line 561
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/high16 v1, 0x8000000

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 562
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/Window;->setStatusBarColor(I)V

    .line 566
    :goto_0
    return-void

    .line 564
    :cond_0
    invoke-virtual {p0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/Window;->addFlags(I)V

    goto :goto_0
.end method
