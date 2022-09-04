.class public Lcom/fimi/kernel/percent/PercentLayoutHelper;
.super Ljava/lang/Object;
.source "PercentLayoutHelper.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutParams;,
        Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;
    }
.end annotation


# static fields
.field private static final REGEX_PERCENT:Ljava/lang/String; = "^(([0-9]+)([.]([0-9]+))?|([.]([0-9]+))?)%([wh]?)$"

.field private static final TAG:Ljava/lang/String; = "PercentLayout"


# instance fields
.field private final mHost:Landroid/view/ViewGroup;


# direct methods
.method public constructor <init>(Landroid/view/ViewGroup;)V
    .locals 0
    .param p1, "host"    # Landroid/view/ViewGroup;

    .prologue
    .line 88
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 89
    iput-object p1, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper;->mHost:Landroid/view/ViewGroup;

    .line 90
    return-void
.end method

.method private static checkForInfoExists(Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;)Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;
    .locals 0
    .param p0, "info"    # Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;
    .annotation build Landroid/support/annotation/NonNull;
    .end annotation

    .prologue
    .line 528
    if-eqz p0, :cond_0

    .line 529
    :goto_0
    return-object p0

    .line 528
    :cond_0
    new-instance p0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;

    .end local p0    # "info":Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;
    invoke-direct {p0}, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;-><init>()V

    goto :goto_0
.end method

.method public static fetchWidthAndHeight(Landroid/view/ViewGroup$LayoutParams;Landroid/content/res/TypedArray;II)V
    .locals 2
    .param p0, "params"    # Landroid/view/ViewGroup$LayoutParams;
    .param p1, "array"    # Landroid/content/res/TypedArray;
    .param p2, "widthAttr"    # I
    .param p3, "heightAttr"    # I

    .prologue
    const/4 v1, 0x0

    .line 100
    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 101
    invoke-virtual {p1, p3, v1}, Landroid/content/res/TypedArray;->getLayoutDimension(II)I

    move-result v0

    iput v0, p0, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 102
    return-void
.end method

.method public static getPercentLayoutInfo(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;
    .locals 5
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 257
    const/4 v1, 0x0

    .line 258
    .local v1, "info":Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;
    sget-object v2, Lcom/fimi/kernel/R$styleable;->PercentLayout_Layout:[I

    invoke-virtual {p0, p1, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 260
    .local v0, "array":Landroid/content/res/TypedArray;
    invoke-static {v0, v1}, Lcom/fimi/kernel/percent/PercentLayoutHelper;->setWidthAndHeightVal(Landroid/content/res/TypedArray;Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;)Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object v1

    .line 262
    invoke-static {v0, v1}, Lcom/fimi/kernel/percent/PercentLayoutHelper;->setMarginRelatedVal(Landroid/content/res/TypedArray;Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;)Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object v1

    .line 264
    invoke-static {v0, v1}, Lcom/fimi/kernel/percent/PercentLayoutHelper;->setTextSizeSupportVal(Landroid/content/res/TypedArray;Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;)Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object v1

    .line 266
    invoke-static {v0, v1}, Lcom/fimi/kernel/percent/PercentLayoutHelper;->setMinMaxWidthHeightRelatedVal(Landroid/content/res/TypedArray;Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;)Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object v1

    .line 268
    invoke-static {v0, v1}, Lcom/fimi/kernel/percent/PercentLayoutHelper;->setPaddingRelatedVal(Landroid/content/res/TypedArray;Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;)Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object v1

    .line 270
    const-string v2, "PercentLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "constructed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 274
    const-string v2, "PercentLayout"

    const/4 v3, 0x3

    invoke-static {v2, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 276
    const-string v2, "PercentLayout"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "constructed: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    :cond_0
    return-object v1
.end method

.method private static getPercentVal(Landroid/content/res/TypedArray;IZ)Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;
    .locals 2
    .param p0, "array"    # Landroid/content/res/TypedArray;
    .param p1, "index"    # I
    .param p2, "baseWidth"    # Z

    .prologue
    .line 519
    invoke-virtual {p0, p1}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 520
    .local v1, "sizeStr":Ljava/lang/String;
    invoke-static {v1, p2}, Lcom/fimi/kernel/percent/PercentLayoutHelper;->getPercentVal(Ljava/lang/String;Z)Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    move-result-object v0

    .line 521
    .local v0, "percentVal":Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;
    return-object v0
.end method

.method private static getPercentVal(Ljava/lang/String;Z)Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;
    .locals 10
    .param p0, "percentStr"    # Ljava/lang/String;
    .param p1, "isOnWidth"    # Z

    .prologue
    const/4 v1, 0x1

    .line 547
    if-nez p0, :cond_0

    .line 549
    const/4 v7, 0x0

    .line 565
    :goto_0
    return-object v7

    .line 551
    :cond_0
    const-string v7, "^(([0-9]+)([.]([0-9]+))?|([.]([0-9]+))?)%([wh]?)$"

    invoke-static {v7}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v5

    .line 552
    .local v5, "p":Ljava/util/regex/Pattern;
    invoke-virtual {v5, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v4

    .line 553
    .local v4, "matcher":Ljava/util/regex/Matcher;
    invoke-virtual {v4}, Ljava/util/regex/Matcher;->matches()Z

    move-result v7

    if-nez v7, :cond_1

    .line 555
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "the value of layout_xxxPercent invalid! ==>"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 557
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v3

    .line 559
    .local v3, "len":I
    invoke-virtual {v4, v1}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v0

    .line 560
    .local v0, "floatVal":Ljava/lang/String;
    add-int/lit8 v7, v3, -0x1

    invoke-virtual {p0, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    .line 562
    .local v2, "lastAlpha":Ljava/lang/String;
    invoke-static {v0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F

    move-result v7

    const/high16 v8, 0x42c80000    # 100.0f

    div-float v6, v7, v8

    .line 563
    .local v6, "percent":F
    if-eqz p1, :cond_2

    const-string v7, "h"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_3

    :cond_2
    const-string/jumbo v7, "w"

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_4

    .line 565
    .local v1, "isBasedWidth":Z
    :cond_3
    :goto_1
    new-instance v7, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    invoke-direct {v7, v6, v1}, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;-><init>(FZ)V

    goto :goto_0

    .line 563
    .end local v1    # "isBasedWidth":Z
    :cond_4
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private invokeMethod(Ljava/lang/String;IILandroid/view/View;Ljava/lang/Class;Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;)V
    .locals 6
    .param p1, "methodName"    # Ljava/lang/String;
    .param p2, "widthHint"    # I
    .param p3, "heightHint"    # I
    .param p4, "view"    # Landroid/view/View;
    .param p5, "clazz"    # Ljava/lang/Class;
    .param p6, "percentVal"    # Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 223
    if-eqz p6, :cond_0

    .line 225
    new-array v2, v4, [Ljava/lang/Class;

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v5

    invoke-virtual {p5, p1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    .line 226
    .local v1, "setMaxWidthMethod":Ljava/lang/reflect/Method;
    invoke-virtual {v1, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 227
    iget-boolean v2, p6, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->isBaseWidth:Z

    if-eqz v2, :cond_1

    move v0, p2

    .line 228
    .local v0, "base":I
    :goto_0
    new-array v2, v4, [Ljava/lang/Object;

    int-to-float v3, v0

    iget v4, p6, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->percent:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {v1, p4, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    .line 230
    .end local v0    # "base":I
    .end local v1    # "setMaxWidthMethod":Ljava/lang/reflect/Method;
    :cond_0
    return-void

    .restart local v1    # "setMaxWidthMethod":Ljava/lang/reflect/Method;
    :cond_1
    move v0, p3

    .line 227
    goto :goto_0
.end method

.method private static setMarginRelatedVal(Landroid/content/res/TypedArray;Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;)Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;
    .locals 7
    .param p0, "array"    # Landroid/content/res/TypedArray;
    .param p1, "info"    # Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x1

    const/4 v4, 0x2

    .line 370
    sget v1, Lcom/fimi/kernel/R$styleable;->PercentLayout_Layout_layout_marginPercent:I

    .line 371
    invoke-static {p0, v1, v5}, Lcom/fimi/kernel/percent/PercentLayoutHelper;->getPercentVal(Landroid/content/res/TypedArray;IZ)Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    move-result-object v0

    .line 375
    .local v0, "percentVal":Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;
    if-eqz v0, :cond_1

    .line 377
    const-string v1, "PercentLayout"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 379
    const-string v1, "PercentLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "percent margin: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->percent:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    :cond_0
    invoke-static {p1}, Lcom/fimi/kernel/percent/PercentLayoutHelper;->checkForInfoExists(Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;)Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object p1

    .line 382
    iput-object v0, p1, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->leftMarginPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    .line 383
    iput-object v0, p1, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->topMarginPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    .line 384
    iput-object v0, p1, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->rightMarginPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    .line 385
    iput-object v0, p1, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->bottomMarginPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    .line 388
    :cond_1
    sget v1, Lcom/fimi/kernel/R$styleable;->PercentLayout_Layout_layout_marginLeftPercent:I

    invoke-static {p0, v1, v5}, Lcom/fimi/kernel/percent/PercentLayoutHelper;->getPercentVal(Landroid/content/res/TypedArray;IZ)Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    move-result-object v0

    .line 389
    if-eqz v0, :cond_3

    .line 391
    const-string v1, "PercentLayout"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 393
    const-string v1, "PercentLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "percent left margin: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->percent:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 395
    :cond_2
    invoke-static {p1}, Lcom/fimi/kernel/percent/PercentLayoutHelper;->checkForInfoExists(Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;)Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object p1

    .line 396
    iput-object v0, p1, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->leftMarginPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    .line 399
    :cond_3
    sget v1, Lcom/fimi/kernel/R$styleable;->PercentLayout_Layout_layout_marginTopPercent:I

    invoke-static {p0, v1, v6}, Lcom/fimi/kernel/percent/PercentLayoutHelper;->getPercentVal(Landroid/content/res/TypedArray;IZ)Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    move-result-object v0

    .line 400
    if-eqz v0, :cond_5

    .line 402
    const-string v1, "PercentLayout"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 404
    const-string v1, "PercentLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "percent top margin: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->percent:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    :cond_4
    invoke-static {p1}, Lcom/fimi/kernel/percent/PercentLayoutHelper;->checkForInfoExists(Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;)Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object p1

    .line 407
    iput-object v0, p1, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->topMarginPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    .line 410
    :cond_5
    sget v1, Lcom/fimi/kernel/R$styleable;->PercentLayout_Layout_layout_marginRightPercent:I

    invoke-static {p0, v1, v5}, Lcom/fimi/kernel/percent/PercentLayoutHelper;->getPercentVal(Landroid/content/res/TypedArray;IZ)Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    move-result-object v0

    .line 411
    if-eqz v0, :cond_7

    .line 413
    const-string v1, "PercentLayout"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 415
    const-string v1, "PercentLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "percent right margin: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->percent:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    :cond_6
    invoke-static {p1}, Lcom/fimi/kernel/percent/PercentLayoutHelper;->checkForInfoExists(Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;)Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object p1

    .line 418
    iput-object v0, p1, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->rightMarginPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    .line 421
    :cond_7
    sget v1, Lcom/fimi/kernel/R$styleable;->PercentLayout_Layout_layout_marginBottomPercent:I

    invoke-static {p0, v1, v6}, Lcom/fimi/kernel/percent/PercentLayoutHelper;->getPercentVal(Landroid/content/res/TypedArray;IZ)Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    move-result-object v0

    .line 422
    if-eqz v0, :cond_9

    .line 424
    const-string v1, "PercentLayout"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 426
    const-string v1, "PercentLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "percent bottom margin: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->percent:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 428
    :cond_8
    invoke-static {p1}, Lcom/fimi/kernel/percent/PercentLayoutHelper;->checkForInfoExists(Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;)Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object p1

    .line 429
    iput-object v0, p1, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->bottomMarginPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    .line 431
    :cond_9
    sget v1, Lcom/fimi/kernel/R$styleable;->PercentLayout_Layout_layout_marginStartPercent:I

    invoke-static {p0, v1, v5}, Lcom/fimi/kernel/percent/PercentLayoutHelper;->getPercentVal(Landroid/content/res/TypedArray;IZ)Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    move-result-object v0

    .line 432
    if-eqz v0, :cond_b

    .line 434
    const-string v1, "PercentLayout"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 436
    const-string v1, "PercentLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "percent start margin: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->percent:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 438
    :cond_a
    invoke-static {p1}, Lcom/fimi/kernel/percent/PercentLayoutHelper;->checkForInfoExists(Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;)Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object p1

    .line 439
    iput-object v0, p1, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->startMarginPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    .line 442
    :cond_b
    sget v1, Lcom/fimi/kernel/R$styleable;->PercentLayout_Layout_layout_marginEndPercent:I

    invoke-static {p0, v1, v5}, Lcom/fimi/kernel/percent/PercentLayoutHelper;->getPercentVal(Landroid/content/res/TypedArray;IZ)Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    move-result-object v0

    .line 443
    if-eqz v0, :cond_d

    .line 445
    const-string v1, "PercentLayout"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_c

    .line 447
    const-string v1, "PercentLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "percent end margin: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->percent:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 449
    :cond_c
    invoke-static {p1}, Lcom/fimi/kernel/percent/PercentLayoutHelper;->checkForInfoExists(Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;)Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object p1

    .line 450
    iput-object v0, p1, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->endMarginPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    .line 453
    :cond_d
    return-object p1
.end method

.method private static setMinMaxWidthHeightRelatedVal(Landroid/content/res/TypedArray;Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;)Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;
    .locals 4
    .param p0, "array"    # Landroid/content/res/TypedArray;
    .param p1, "info"    # Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 328
    sget v1, Lcom/fimi/kernel/R$styleable;->PercentLayout_Layout_layout_maxWidthPercent:I

    invoke-static {p0, v1, v3}, Lcom/fimi/kernel/percent/PercentLayoutHelper;->getPercentVal(Landroid/content/res/TypedArray;IZ)Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    move-result-object v0

    .line 331
    .local v0, "percentVal":Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;
    if-eqz v0, :cond_0

    .line 333
    invoke-static {p1}, Lcom/fimi/kernel/percent/PercentLayoutHelper;->checkForInfoExists(Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;)Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;

    .line 334
    iput-object v0, p1, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->maxWidthPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    .line 337
    :cond_0
    sget v1, Lcom/fimi/kernel/R$styleable;->PercentLayout_Layout_layout_maxHeightPercent:I

    invoke-static {p0, v1, v2}, Lcom/fimi/kernel/percent/PercentLayoutHelper;->getPercentVal(Landroid/content/res/TypedArray;IZ)Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    move-result-object v0

    .line 340
    if-eqz v0, :cond_1

    .line 342
    invoke-static {p1}, Lcom/fimi/kernel/percent/PercentLayoutHelper;->checkForInfoExists(Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;)Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;

    .line 343
    iput-object v0, p1, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->maxHeightPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    .line 346
    :cond_1
    sget v1, Lcom/fimi/kernel/R$styleable;->PercentLayout_Layout_layout_minWidthPercent:I

    invoke-static {p0, v1, v3}, Lcom/fimi/kernel/percent/PercentLayoutHelper;->getPercentVal(Landroid/content/res/TypedArray;IZ)Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    move-result-object v0

    .line 349
    if-eqz v0, :cond_2

    .line 351
    invoke-static {p1}, Lcom/fimi/kernel/percent/PercentLayoutHelper;->checkForInfoExists(Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;)Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;

    .line 352
    iput-object v0, p1, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->minWidthPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    .line 355
    :cond_2
    sget v1, Lcom/fimi/kernel/R$styleable;->PercentLayout_Layout_layout_minHeightPercent:I

    invoke-static {p0, v1, v2}, Lcom/fimi/kernel/percent/PercentLayoutHelper;->getPercentVal(Landroid/content/res/TypedArray;IZ)Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    move-result-object v0

    .line 358
    if-eqz v0, :cond_3

    .line 360
    invoke-static {p1}, Lcom/fimi/kernel/percent/PercentLayoutHelper;->checkForInfoExists(Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;)Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;

    .line 361
    iput-object v0, p1, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->minHeightPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    .line 364
    :cond_3
    return-object p1
.end method

.method private static setPaddingRelatedVal(Landroid/content/res/TypedArray;Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;)Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;
    .locals 3
    .param p0, "array"    # Landroid/content/res/TypedArray;
    .param p1, "info"    # Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;

    .prologue
    const/4 v2, 0x1

    .line 465
    sget v1, Lcom/fimi/kernel/R$styleable;->PercentLayout_Layout_layout_paddingPercent:I

    invoke-static {p0, v1, v2}, Lcom/fimi/kernel/percent/PercentLayoutHelper;->getPercentVal(Landroid/content/res/TypedArray;IZ)Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    move-result-object v0

    .line 468
    .local v0, "percentVal":Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;
    if-eqz v0, :cond_0

    .line 470
    invoke-static {p1}, Lcom/fimi/kernel/percent/PercentLayoutHelper;->checkForInfoExists(Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;)Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object p1

    .line 471
    iput-object v0, p1, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->paddingLeftPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    .line 472
    iput-object v0, p1, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->paddingRightPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    .line 473
    iput-object v0, p1, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->paddingBottomPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    .line 474
    iput-object v0, p1, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->paddingTopPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    .line 478
    :cond_0
    sget v1, Lcom/fimi/kernel/R$styleable;->PercentLayout_Layout_layout_paddingLeftPercent:I

    invoke-static {p0, v1, v2}, Lcom/fimi/kernel/percent/PercentLayoutHelper;->getPercentVal(Landroid/content/res/TypedArray;IZ)Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    move-result-object v0

    .line 481
    if-eqz v0, :cond_1

    .line 483
    invoke-static {p1}, Lcom/fimi/kernel/percent/PercentLayoutHelper;->checkForInfoExists(Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;)Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object p1

    .line 484
    iput-object v0, p1, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->paddingLeftPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    .line 487
    :cond_1
    sget v1, Lcom/fimi/kernel/R$styleable;->PercentLayout_Layout_layout_paddingRightPercent:I

    invoke-static {p0, v1, v2}, Lcom/fimi/kernel/percent/PercentLayoutHelper;->getPercentVal(Landroid/content/res/TypedArray;IZ)Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    move-result-object v0

    .line 490
    if-eqz v0, :cond_2

    .line 492
    invoke-static {p1}, Lcom/fimi/kernel/percent/PercentLayoutHelper;->checkForInfoExists(Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;)Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object p1

    .line 493
    iput-object v0, p1, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->paddingRightPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    .line 496
    :cond_2
    sget v1, Lcom/fimi/kernel/R$styleable;->PercentLayout_Layout_layout_paddingTopPercent:I

    invoke-static {p0, v1, v2}, Lcom/fimi/kernel/percent/PercentLayoutHelper;->getPercentVal(Landroid/content/res/TypedArray;IZ)Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    move-result-object v0

    .line 499
    if-eqz v0, :cond_3

    .line 501
    invoke-static {p1}, Lcom/fimi/kernel/percent/PercentLayoutHelper;->checkForInfoExists(Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;)Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object p1

    .line 502
    iput-object v0, p1, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->paddingTopPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    .line 505
    :cond_3
    sget v1, Lcom/fimi/kernel/R$styleable;->PercentLayout_Layout_layout_paddingBottomPercent:I

    invoke-static {p0, v1, v2}, Lcom/fimi/kernel/percent/PercentLayoutHelper;->getPercentVal(Landroid/content/res/TypedArray;IZ)Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    move-result-object v0

    .line 508
    if-eqz v0, :cond_4

    .line 510
    invoke-static {p1}, Lcom/fimi/kernel/percent/PercentLayoutHelper;->checkForInfoExists(Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;)Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object p1

    .line 511
    iput-object v0, p1, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->paddingBottomPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    .line 514
    :cond_4
    return-object p1
.end method

.method private static setTextSizeSupportVal(Landroid/content/res/TypedArray;Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;)Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;
    .locals 4
    .param p0, "array"    # Landroid/content/res/TypedArray;
    .param p1, "info"    # Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;

    .prologue
    .line 311
    sget v1, Lcom/fimi/kernel/R$styleable;->PercentLayout_Layout_layout_textSizePercent:I

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/fimi/kernel/percent/PercentLayoutHelper;->getPercentVal(Landroid/content/res/TypedArray;IZ)Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    move-result-object v0

    .line 312
    .local v0, "percentVal":Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;
    if-eqz v0, :cond_1

    .line 314
    const-string v1, "PercentLayout"

    const/4 v2, 0x2

    invoke-static {v1, v2}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 316
    const-string v1, "PercentLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "percent text size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->percent:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_0
    invoke-static {p1}, Lcom/fimi/kernel/percent/PercentLayoutHelper;->checkForInfoExists(Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;)Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object p1

    .line 319
    iput-object v0, p1, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->textSizePercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    .line 322
    :cond_1
    return-object p1
.end method

.method private static setWidthAndHeightVal(Landroid/content/res/TypedArray;Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;)Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;
    .locals 5
    .param p0, "array"    # Landroid/content/res/TypedArray;
    .param p1, "info"    # Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;

    .prologue
    const/4 v4, 0x2

    .line 283
    sget v1, Lcom/fimi/kernel/R$styleable;->PercentLayout_Layout_layout_widthPercent:I

    const/4 v2, 0x1

    invoke-static {p0, v1, v2}, Lcom/fimi/kernel/percent/PercentLayoutHelper;->getPercentVal(Landroid/content/res/TypedArray;IZ)Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    move-result-object v0

    .line 284
    .local v0, "percentVal":Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;
    if-eqz v0, :cond_1

    .line 286
    const-string v1, "PercentLayout"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 288
    const-string v1, "PercentLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "percent width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->percent:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 290
    :cond_0
    invoke-static {p1}, Lcom/fimi/kernel/percent/PercentLayoutHelper;->checkForInfoExists(Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;)Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object p1

    .line 291
    iput-object v0, p1, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->widthPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    .line 293
    :cond_1
    sget v1, Lcom/fimi/kernel/R$styleable;->PercentLayout_Layout_layout_heightPercent:I

    const/4 v2, 0x0

    invoke-static {p0, v1, v2}, Lcom/fimi/kernel/percent/PercentLayoutHelper;->getPercentVal(Landroid/content/res/TypedArray;IZ)Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    move-result-object v0

    .line 295
    if-eqz v0, :cond_3

    .line 297
    const-string v1, "PercentLayout"

    invoke-static {v1, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 299
    const-string v1, "PercentLayout"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "percent height: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v0, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->percent:F

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    :cond_2
    invoke-static {p1}, Lcom/fimi/kernel/percent/PercentLayoutHelper;->checkForInfoExists(Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;)Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object p1

    .line 302
    iput-object v0, p1, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->heightPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    .line 305
    :cond_3
    return-object p1
.end method

.method private static shouldHandleMeasuredHeightTooSmall(Landroid/view/View;Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;)Z
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "info"    # Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;

    .prologue
    const/4 v1, 0x0

    .line 661
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->heightPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_0

    .line 662
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getMeasuredHeightAndState(Landroid/view/View;)I

    move-result v2

    const/high16 v3, -0x1000000

    and-int v0, v2, v3

    .line 663
    .local v0, "state":I
    const/high16 v2, 0x1000000

    if-ne v0, v2, :cond_0

    iget-object v2, p1, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->heightPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    iget v2, v2, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->percent:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    iget-object v2, p1, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->height:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 666
    .end local v0    # "state":I
    :cond_0
    return v1
.end method

.method private static shouldHandleMeasuredWidthTooSmall(Landroid/view/View;Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;)Z
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "info"    # Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;

    .prologue
    const/4 v1, 0x0

    .line 651
    invoke-static {p0}, Landroid/support/v4/view/ViewCompat;->getMeasuredWidthAndState(Landroid/view/View;)I

    move-result v2

    const/high16 v3, -0x1000000

    and-int v0, v2, v3

    .line 652
    .local v0, "state":I
    if-eqz p1, :cond_0

    iget-object v2, p1, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->widthPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    if-eqz v2, :cond_0

    iget-object v2, p1, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v2, :cond_0

    .line 653
    const/high16 v2, 0x1000000

    if-ne v0, v2, :cond_0

    iget-object v2, p1, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->widthPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    iget v2, v2, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->percent:F

    const/4 v3, 0x0

    cmpl-float v2, v2, v3

    if-ltz v2, :cond_0

    iget-object v2, p1, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->mPreservedParams:Landroid/view/ViewGroup$MarginLayoutParams;

    iget v2, v2, Landroid/view/ViewGroup$MarginLayoutParams;->width:I

    const/4 v3, -0x2

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 656
    :cond_0
    return v1
.end method

.method private supportMinOrMaxDimesion(IILandroid/view/View;Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;)V
    .locals 8
    .param p1, "widthHint"    # I
    .param p2, "heightHint"    # I
    .param p3, "view"    # Landroid/view/View;
    .param p4, "info"    # Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;

    .prologue
    .line 202
    :try_start_0
    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    .line 203
    .local v5, "clazz":Ljava/lang/Class;
    const-string v1, "setMaxWidth"

    iget-object v6, p4, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->maxWidthPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/fimi/kernel/percent/PercentLayoutHelper;->invokeMethod(Ljava/lang/String;IILandroid/view/View;Ljava/lang/Class;Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;)V

    .line 204
    const-string v1, "setMaxHeight"

    iget-object v6, p4, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->maxHeightPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/fimi/kernel/percent/PercentLayoutHelper;->invokeMethod(Ljava/lang/String;IILandroid/view/View;Ljava/lang/Class;Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;)V

    .line 205
    const-string v1, "setMinWidth"

    iget-object v6, p4, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->minWidthPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/fimi/kernel/percent/PercentLayoutHelper;->invokeMethod(Ljava/lang/String;IILandroid/view/View;Ljava/lang/Class;Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;)V

    .line 206
    const-string v1, "setMinHeight"

    iget-object v6, p4, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->minHeightPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    move-object v0, p0

    move v2, p1

    move v3, p2

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/fimi/kernel/percent/PercentLayoutHelper;->invokeMethod(Ljava/lang/String;IILandroid/view/View;Ljava/lang/Class;Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;)V
    :try_end_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 219
    .end local v5    # "clazz":Ljava/lang/Class;
    :goto_0
    return-void

    .line 208
    :catch_0
    move-exception v7

    .line 210
    .local v7, "e":Ljava/lang/NoSuchMethodException;
    invoke-virtual {v7}, Ljava/lang/NoSuchMethodException;->printStackTrace()V

    goto :goto_0

    .line 211
    .end local v7    # "e":Ljava/lang/NoSuchMethodException;
    :catch_1
    move-exception v7

    .line 213
    .local v7, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v7}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    goto :goto_0

    .line 214
    .end local v7    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v7

    .line 216
    .local v7, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v7}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method private supportPadding(IILandroid/view/View;Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;)V
    .locals 8
    .param p1, "widthHint"    # I
    .param p2, "heightHint"    # I
    .param p3, "view"    # Landroid/view/View;
    .param p4, "info"    # Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;

    .prologue
    .line 166
    invoke-virtual {p3}, Landroid/view/View;->getPaddingLeft()I

    move-result v2

    .local v2, "left":I
    invoke-virtual {p3}, Landroid/view/View;->getPaddingRight()I

    move-result v4

    .local v4, "right":I
    invoke-virtual {p3}, Landroid/view/View;->getPaddingTop()I

    move-result v5

    .local v5, "top":I
    invoke-virtual {p3}, Landroid/view/View;->getPaddingBottom()I

    move-result v1

    .line 167
    .local v1, "bottom":I
    iget-object v3, p4, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->paddingLeftPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    .line 168
    .local v3, "percentVal":Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;
    if-eqz v3, :cond_0

    .line 170
    iget-boolean v6, v3, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->isBaseWidth:Z

    if-eqz v6, :cond_4

    move v0, p1

    .line 171
    .local v0, "base":I
    :goto_0
    int-to-float v6, v0

    iget v7, v3, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->percent:F

    mul-float/2addr v6, v7

    float-to-int v2, v6

    .line 173
    .end local v0    # "base":I
    :cond_0
    iget-object v3, p4, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->paddingRightPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    .line 174
    if-eqz v3, :cond_1

    .line 176
    iget-boolean v6, v3, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->isBaseWidth:Z

    if-eqz v6, :cond_5

    move v0, p1

    .line 177
    .restart local v0    # "base":I
    :goto_1
    int-to-float v6, v0

    iget v7, v3, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->percent:F

    mul-float/2addr v6, v7

    float-to-int v4, v6

    .line 180
    .end local v0    # "base":I
    :cond_1
    iget-object v3, p4, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->paddingTopPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    .line 181
    if-eqz v3, :cond_2

    .line 183
    iget-boolean v6, v3, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->isBaseWidth:Z

    if-eqz v6, :cond_6

    move v0, p1

    .line 184
    .restart local v0    # "base":I
    :goto_2
    int-to-float v6, v0

    iget v7, v3, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->percent:F

    mul-float/2addr v6, v7

    float-to-int v5, v6

    .line 187
    .end local v0    # "base":I
    :cond_2
    iget-object v3, p4, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->paddingBottomPercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    .line 188
    if-eqz v3, :cond_3

    .line 190
    iget-boolean v6, v3, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->isBaseWidth:Z

    if-eqz v6, :cond_7

    move v0, p1

    .line 191
    .restart local v0    # "base":I
    :goto_3
    int-to-float v6, v0

    iget v7, v3, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->percent:F

    mul-float/2addr v6, v7

    float-to-int v1, v6

    .line 193
    .end local v0    # "base":I
    :cond_3
    invoke-virtual {p3, v2, v5, v4, v1}, Landroid/view/View;->setPadding(IIII)V

    .line 196
    return-void

    :cond_4
    move v0, p2

    .line 170
    goto :goto_0

    :cond_5
    move v0, p2

    .line 176
    goto :goto_1

    :cond_6
    move v0, p2

    .line 183
    goto :goto_2

    :cond_7
    move v0, p2

    .line 190
    goto :goto_3
.end method

.method private supportTextSize(IILandroid/view/View;Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;)V
    .locals 5
    .param p1, "widthHint"    # I
    .param p2, "heightHint"    # I
    .param p3, "view"    # Landroid/view/View;
    .param p4, "info"    # Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;

    .prologue
    .line 236
    iget-object v2, p4, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->textSizePercent:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;

    .line 237
    .local v2, "textSizePercent":Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;
    if-nez v2, :cond_1

    .line 247
    .end local p3    # "view":Landroid/view/View;
    :cond_0
    :goto_0
    return-void

    .line 239
    .restart local p3    # "view":Landroid/view/View;
    :cond_1
    iget-boolean v3, v2, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->isBaseWidth:Z

    if-eqz v3, :cond_2

    move v0, p1

    .line 240
    .local v0, "base":I
    :goto_1
    int-to-float v3, v0

    iget v4, v2, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo$PercentVal;->percent:F

    mul-float/2addr v3, v4

    float-to-int v3, v3

    int-to-float v1, v3

    .line 243
    .local v1, "textSize":F
    instance-of v3, p3, Landroid/widget/TextView;

    if-eqz v3, :cond_0

    .line 245
    check-cast p3, Landroid/widget/TextView;

    .end local p3    # "view":Landroid/view/View;
    const/4 v3, 0x0

    invoke-virtual {p3, v3, v1}, Landroid/widget/TextView;->setTextSize(IF)V

    goto :goto_0

    .end local v0    # "base":I
    .end local v1    # "textSize":F
    .restart local p3    # "view":Landroid/view/View;
    :cond_2
    move v0, p2

    .line 239
    goto :goto_1
.end method


# virtual methods
.method public adjustChildren(II)V
    .locals 11
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/4 v10, 0x3

    .line 113
    const-string v7, "PercentLayout"

    invoke-static {v7, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 115
    const-string v7, "PercentLayout"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "adjustChildren: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper;->mHost:Landroid/view/ViewGroup;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " widthMeasureSpec: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 116
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " heightMeasureSpec: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    .line 117
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 115
    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 120
    .local v6, "widthHint":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 122
    .local v1, "heightHint":I
    const-string v7, "PercentLayout"

    invoke-static {v7, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_1

    .line 123
    const-string v7, "PercentLayout"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "widthHint = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " , heightHint = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    :cond_1
    const/4 v2, 0x0

    .local v2, "i":I
    iget-object v7, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper;->mHost:Landroid/view/ViewGroup;

    invoke-virtual {v7}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .local v0, "N":I
    :goto_0
    if-ge v2, v0, :cond_6

    .line 127
    iget-object v7, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper;->mHost:Landroid/view/ViewGroup;

    invoke-virtual {v7, v2}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 128
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 130
    .local v4, "params":Landroid/view/ViewGroup$LayoutParams;
    const-string v7, "PercentLayout"

    invoke-static {v7, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 132
    const-string v7, "PercentLayout"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "should adjust "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_2
    instance-of v7, v4, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutParams;

    if-eqz v7, :cond_4

    move-object v7, v4

    .line 137
    check-cast v7, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutParams;

    .line 138
    invoke-interface {v7}, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutParams;->getPercentLayoutInfo()Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object v3

    .line 139
    .local v3, "info":Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;
    const-string v7, "PercentLayout"

    invoke-static {v7, v10}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 141
    const-string v7, "PercentLayout"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "using "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 143
    :cond_3
    if-eqz v3, :cond_4

    .line 145
    invoke-direct {p0, v6, v1, v5, v3}, Lcom/fimi/kernel/percent/PercentLayoutHelper;->supportTextSize(IILandroid/view/View;Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;)V

    .line 146
    invoke-direct {p0, v6, v1, v5, v3}, Lcom/fimi/kernel/percent/PercentLayoutHelper;->supportPadding(IILandroid/view/View;Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;)V

    .line 147
    invoke-direct {p0, v6, v1, v5, v3}, Lcom/fimi/kernel/percent/PercentLayoutHelper;->supportMinOrMaxDimesion(IILandroid/view/View;Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;)V

    .line 149
    instance-of v7, v4, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v7, :cond_5

    .line 151
    check-cast v4, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local v4    # "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v3, v4, v6, v1}, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->fillMarginLayoutParams(Landroid/view/ViewGroup$MarginLayoutParams;II)V

    .line 125
    .end local v3    # "info":Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;
    :cond_4
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 155
    .restart local v3    # "info":Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;
    .restart local v4    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_5
    invoke-virtual {v3, v4, v6, v1}, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->fillLayoutParams(Landroid/view/ViewGroup$LayoutParams;II)V

    goto :goto_1

    .line 162
    .end local v3    # "info":Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;
    .end local v4    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v5    # "view":Landroid/view/View;
    :cond_6
    return-void
.end method

.method public handleMeasuredStateTooSmall()Z
    .locals 8

    .prologue
    const/4 v7, -0x2

    .line 622
    const/4 v3, 0x0

    .line 623
    .local v3, "needsSecondMeasure":Z
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v6, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper;->mHost:Landroid/view/ViewGroup;

    invoke-virtual {v6}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .local v0, "N":I
    :goto_0
    if-ge v1, v0, :cond_2

    .line 625
    iget-object v6, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper;->mHost:Landroid/view/ViewGroup;

    invoke-virtual {v6, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v5

    .line 626
    .local v5, "view":Landroid/view/View;
    invoke-virtual {v5}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v4

    .line 627
    .local v4, "params":Landroid/view/ViewGroup$LayoutParams;
    instance-of v6, v4, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutParams;

    if-eqz v6, :cond_1

    move-object v6, v4

    .line 629
    check-cast v6, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutParams;

    .line 630
    invoke-interface {v6}, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutParams;->getPercentLayoutInfo()Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object v2

    .line 631
    .local v2, "info":Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;
    if-eqz v2, :cond_1

    .line 633
    invoke-static {v5, v2}, Lcom/fimi/kernel/percent/PercentLayoutHelper;->shouldHandleMeasuredWidthTooSmall(Landroid/view/View;Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 635
    const/4 v3, 0x1

    .line 636
    iput v7, v4, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 638
    :cond_0
    invoke-static {v5, v2}, Lcom/fimi/kernel/percent/PercentLayoutHelper;->shouldHandleMeasuredHeightTooSmall(Landroid/view/View;Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 640
    const/4 v3, 0x1

    .line 641
    iput v7, v4, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 623
    .end local v2    # "info":Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 646
    .end local v4    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v5    # "view":Landroid/view/View;
    :cond_2
    return v3
.end method

.method public restoreOriginalParams()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    .line 576
    const/4 v1, 0x0

    .local v1, "i":I
    iget-object v5, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper;->mHost:Landroid/view/ViewGroup;

    invoke-virtual {v5}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .local v0, "N":I
    :goto_0
    if-ge v1, v0, :cond_4

    .line 578
    iget-object v5, p0, Lcom/fimi/kernel/percent/PercentLayoutHelper;->mHost:Landroid/view/ViewGroup;

    invoke-virtual {v5, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v4

    .line 579
    .local v4, "view":Landroid/view/View;
    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 580
    .local v3, "params":Landroid/view/ViewGroup$LayoutParams;
    const-string v5, "PercentLayout"

    invoke-static {v5, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 582
    const-string v5, "PercentLayout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "should restore "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    :cond_0
    instance-of v5, v3, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutParams;

    if-eqz v5, :cond_2

    move-object v5, v3

    .line 586
    check-cast v5, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutParams;

    .line 587
    invoke-interface {v5}, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutParams;->getPercentLayoutInfo()Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object v2

    .line 588
    .local v2, "info":Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;
    const-string v5, "PercentLayout"

    invoke-static {v5, v8}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 590
    const-string v5, "PercentLayout"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "using "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    :cond_1
    if-eqz v2, :cond_2

    .line 594
    instance-of v5, v3, Landroid/view/ViewGroup$MarginLayoutParams;

    if-eqz v5, :cond_3

    .line 596
    check-cast v3, Landroid/view/ViewGroup$MarginLayoutParams;

    .end local v3    # "params":Landroid/view/ViewGroup$LayoutParams;
    invoke-virtual {v2, v3}, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->restoreMarginLayoutParams(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 576
    .end local v2    # "info":Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;
    :cond_2
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 599
    .restart local v2    # "info":Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;
    .restart local v3    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    invoke-virtual {v2, v3}, Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;->restoreLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_1

    .line 604
    .end local v2    # "info":Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;
    .end local v3    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v4    # "view":Landroid/view/View;
    :cond_4
    return-void
.end method
