.class public Lcom/fimi/kernel/percent/PercentFrameLayout$LayoutParams;
.super Landroid/widget/FrameLayout$LayoutParams;
.source "PercentFrameLayout.java"

# interfaces
.implements Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutParams;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/kernel/percent/PercentFrameLayout;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "LayoutParams"
.end annotation


# instance fields
.field private mPercentLayoutInfo:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;


# direct methods
.method public constructor <init>(II)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I

    .prologue
    .line 110
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 111
    return-void
.end method

.method public constructor <init>(III)V
    .locals 0
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "gravity"    # I

    .prologue
    .line 114
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V

    .line 115
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "c"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 105
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 106
    invoke-static {p1, p2}, Lcom/fimi/kernel/percent/PercentLayoutHelper;->getPercentLayoutInfo(Landroid/content/Context;Landroid/util/AttributeSet;)Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/kernel/percent/PercentFrameLayout$LayoutParams;->mPercentLayoutInfo:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;

    .line 107
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "source"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 118
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    return-void
.end method

.method public constructor <init>(Landroid/view/ViewGroup$MarginLayoutParams;)V
    .locals 0
    .param p1, "source"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    .line 122
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 123
    return-void
.end method

.method public constructor <init>(Landroid/widget/FrameLayout$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Landroid/widget/FrameLayout$LayoutParams;

    .prologue
    .line 126
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(Landroid/view/ViewGroup$MarginLayoutParams;)V

    .line 127
    iget v0, p1, Landroid/widget/FrameLayout$LayoutParams;->gravity:I

    iput v0, p0, Lcom/fimi/kernel/percent/PercentFrameLayout$LayoutParams;->gravity:I

    .line 128
    return-void
.end method

.method public constructor <init>(Lcom/fimi/kernel/percent/PercentFrameLayout$LayoutParams;)V
    .locals 1
    .param p1, "source"    # Lcom/fimi/kernel/percent/PercentFrameLayout$LayoutParams;

    .prologue
    .line 131
    invoke-direct {p0, p1}, Lcom/fimi/kernel/percent/PercentFrameLayout$LayoutParams;-><init>(Landroid/widget/FrameLayout$LayoutParams;)V

    .line 132
    iget-object v0, p1, Lcom/fimi/kernel/percent/PercentFrameLayout$LayoutParams;->mPercentLayoutInfo:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;

    iput-object v0, p0, Lcom/fimi/kernel/percent/PercentFrameLayout$LayoutParams;->mPercentLayoutInfo:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;

    .line 133
    return-void
.end method


# virtual methods
.method public getPercentLayoutInfo()Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/fimi/kernel/percent/PercentFrameLayout$LayoutParams;->mPercentLayoutInfo:Lcom/fimi/kernel/percent/PercentLayoutHelper$PercentLayoutInfo;

    return-object v0
.end method

.method protected setBaseAttributes(Landroid/content/res/TypedArray;II)V
    .locals 0
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "widthAttr"    # I
    .param p3, "heightAttr"    # I

    .prologue
    .line 142
    invoke-static {p0, p1, p2, p3}, Lcom/fimi/kernel/percent/PercentLayoutHelper;->fetchWidthAndHeight(Landroid/view/ViewGroup$LayoutParams;Landroid/content/res/TypedArray;II)V

    .line 143
    return-void
.end method
