.class public Lcom/fimi/kernel/percent/PercentLinearLayout;
.super Landroid/widget/LinearLayout;
.source "PercentLinearLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/kernel/percent/PercentLinearLayout$LayoutParams;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "PercentLinearLayout"


# instance fields
.field private mPercentLayoutHelper:Lcom/fimi/kernel/percent/PercentLayoutHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 26
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 28
    new-instance v0, Lcom/fimi/kernel/percent/PercentLayoutHelper;

    invoke-direct {v0, p0}, Lcom/fimi/kernel/percent/PercentLayoutHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/fimi/kernel/percent/PercentLinearLayout;->mPercentLayoutHelper:Lcom/fimi/kernel/percent/PercentLayoutHelper;

    .line 29
    return-void
.end method

.method private getScreenHeight()I
    .locals 4

    .prologue
    .line 75
    invoke-virtual {p0}, Lcom/fimi/kernel/percent/PercentLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "window"

    invoke-virtual {v2, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/view/WindowManager;

    .line 76
    .local v1, "wm":Landroid/view/WindowManager;
    new-instance v0, Landroid/util/DisplayMetrics;

    invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V

    .line 77
    .local v0, "outMetrics":Landroid/util/DisplayMetrics;
    invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 78
    iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I

    return v2
.end method


# virtual methods
.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/fimi/kernel/percent/PercentLinearLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/fimi/kernel/percent/PercentLinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/LinearLayout$LayoutParams;
    .locals 1

    .prologue
    .line 18
    invoke-virtual {p0, p1}, Lcom/fimi/kernel/percent/PercentLinearLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/fimi/kernel/percent/PercentLinearLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/fimi/kernel/percent/PercentLinearLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 91
    new-instance v0, Lcom/fimi/kernel/percent/PercentLinearLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/fimi/kernel/percent/PercentLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/fimi/kernel/percent/PercentLinearLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 84
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 85
    iget-object v0, p0, Lcom/fimi/kernel/percent/PercentLinearLayout;->mPercentLayoutHelper:Lcom/fimi/kernel/percent/PercentLayoutHelper;

    invoke-virtual {v0}, Lcom/fimi/kernel/percent/PercentLayoutHelper;->restoreOriginalParams()V

    .line 86
    return-void
.end method

.method protected onMeasure(II)V
    .locals 13
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 36
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 37
    .local v4, "heightSize":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v3

    .line 38
    .local v3, "heightMode":I
    invoke-static {v4, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 40
    .local v6, "tmpHeightMeasureSpec":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v9

    .line 41
    .local v9, "widthSize":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v8

    .line 42
    .local v8, "widthMode":I
    invoke-static {v9, v8}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    .line 44
    .local v7, "tmpWidthMeasureSpec":I
    const-string v10, "PercentLinearLayout"

    invoke-static {p2}, Landroid/view/View$MeasureSpec;->toString(I)Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    if-nez v3, :cond_0

    invoke-virtual {p0}, Lcom/fimi/kernel/percent/PercentLinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    if-eqz v10, :cond_0

    invoke-virtual {p0}, Lcom/fimi/kernel/percent/PercentLinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v10

    instance-of v10, v10, Landroid/widget/ScrollView;

    if-eqz v10, :cond_0

    .line 48
    const/4 v1, 0x0

    .line 49
    .local v1, "baseHeight":I
    invoke-virtual {p0}, Lcom/fimi/kernel/percent/PercentLinearLayout;->getContext()Landroid/content/Context;

    move-result-object v2

    .line 50
    .local v2, "context":Landroid/content/Context;
    instance-of v10, v2, Landroid/app/Activity;

    if-eqz v10, :cond_2

    move-object v0, v2

    .line 52
    check-cast v0, Landroid/app/Activity;

    .line 53
    .local v0, "act":Landroid/app/Activity;
    const v10, 0x1020002

    invoke-virtual {v0, v10}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v10

    invoke-virtual {v10}, Landroid/view/View;->getMeasuredHeight()I

    move-result v5

    .line 54
    .local v5, "measuredHeight":I
    move v1, v5

    .line 55
    const-string v10, "PercentLinearLayout"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "measuredHeight = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 61
    .end local v0    # "act":Landroid/app/Activity;
    .end local v5    # "measuredHeight":I
    :goto_0
    invoke-static {v1, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v6

    .line 65
    .end local v1    # "baseHeight":I
    .end local v2    # "context":Landroid/content/Context;
    :cond_0
    iget-object v10, p0, Lcom/fimi/kernel/percent/PercentLinearLayout;->mPercentLayoutHelper:Lcom/fimi/kernel/percent/PercentLayoutHelper;

    invoke-virtual {v10, v7, v6}, Lcom/fimi/kernel/percent/PercentLayoutHelper;->adjustChildren(II)V

    .line 66
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 67
    iget-object v10, p0, Lcom/fimi/kernel/percent/PercentLinearLayout;->mPercentLayoutHelper:Lcom/fimi/kernel/percent/PercentLayoutHelper;

    invoke-virtual {v10}, Lcom/fimi/kernel/percent/PercentLayoutHelper;->handleMeasuredStateTooSmall()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 69
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 71
    :cond_1
    return-void

    .line 58
    .restart local v1    # "baseHeight":I
    .restart local v2    # "context":Landroid/content/Context;
    :cond_2
    invoke-direct {p0}, Lcom/fimi/kernel/percent/PercentLinearLayout;->getScreenHeight()I

    move-result v1

    .line 59
    const-string v10, "PercentLinearLayout"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "scHeight = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
