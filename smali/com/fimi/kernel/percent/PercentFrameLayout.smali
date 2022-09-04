.class public Lcom/fimi/kernel/percent/PercentFrameLayout;
.super Landroid/widget/FrameLayout;
.source "PercentFrameLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/kernel/percent/PercentFrameLayout$LayoutParams;
    }
.end annotation


# instance fields
.field private final mHelper:Lcom/fimi/kernel/percent/PercentLayoutHelper;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 69
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 66
    new-instance v0, Lcom/fimi/kernel/percent/PercentLayoutHelper;

    invoke-direct {v0, p0}, Lcom/fimi/kernel/percent/PercentLayoutHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/fimi/kernel/percent/PercentFrameLayout;->mHelper:Lcom/fimi/kernel/percent/PercentLayoutHelper;

    .line 70
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 73
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    new-instance v0, Lcom/fimi/kernel/percent/PercentLayoutHelper;

    invoke-direct {v0, p0}, Lcom/fimi/kernel/percent/PercentLayoutHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/fimi/kernel/percent/PercentFrameLayout;->mHelper:Lcom/fimi/kernel/percent/PercentLayoutHelper;

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    .line 77
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 66
    new-instance v0, Lcom/fimi/kernel/percent/PercentLayoutHelper;

    invoke-direct {v0, p0}, Lcom/fimi/kernel/percent/PercentLayoutHelper;-><init>(Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/fimi/kernel/percent/PercentFrameLayout;->mHelper:Lcom/fimi/kernel/percent/PercentLayoutHelper;

    .line 78
    return-void
.end method


# virtual methods
.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/view/ViewGroup$LayoutParams;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/fimi/kernel/percent/PercentFrameLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/fimi/kernel/percent/PercentFrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic generateLayoutParams(Landroid/util/AttributeSet;)Landroid/widget/FrameLayout$LayoutParams;
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0, p1}, Lcom/fimi/kernel/percent/PercentFrameLayout;->generateLayoutParams(Landroid/util/AttributeSet;)Lcom/fimi/kernel/percent/PercentFrameLayout$LayoutParams;

    move-result-object v0

    return-object v0
.end method

.method public generateLayoutParams(Landroid/util/AttributeSet;)Lcom/fimi/kernel/percent/PercentFrameLayout$LayoutParams;
    .locals 2
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 82
    new-instance v0, Lcom/fimi/kernel/percent/PercentFrameLayout$LayoutParams;

    invoke-virtual {p0}, Lcom/fimi/kernel/percent/PercentFrameLayout;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Lcom/fimi/kernel/percent/PercentFrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    return-object v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 96
    invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V

    .line 97
    iget-object v0, p0, Lcom/fimi/kernel/percent/PercentFrameLayout;->mHelper:Lcom/fimi/kernel/percent/PercentLayoutHelper;

    invoke-virtual {v0}, Lcom/fimi/kernel/percent/PercentLayoutHelper;->restoreOriginalParams()V

    .line 98
    return-void
.end method

.method protected onMeasure(II)V
    .locals 1
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 87
    iget-object v0, p0, Lcom/fimi/kernel/percent/PercentFrameLayout;->mHelper:Lcom/fimi/kernel/percent/PercentLayoutHelper;

    invoke-virtual {v0, p1, p2}, Lcom/fimi/kernel/percent/PercentLayoutHelper;->adjustChildren(II)V

    .line 88
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 89
    iget-object v0, p0, Lcom/fimi/kernel/percent/PercentFrameLayout;->mHelper:Lcom/fimi/kernel/percent/PercentLayoutHelper;

    invoke-virtual {v0}, Lcom/fimi/kernel/percent/PercentLayoutHelper;->handleMeasuredStateTooSmall()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 90
    invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V

    .line 92
    :cond_0
    return-void
.end method
