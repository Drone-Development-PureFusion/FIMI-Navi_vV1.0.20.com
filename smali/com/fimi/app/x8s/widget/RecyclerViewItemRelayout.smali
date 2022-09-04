.class public Lcom/fimi/app/x8s/widget/RecyclerViewItemRelayout;
.super Landroid/widget/RelativeLayout;
.source "RecyclerViewItemRelayout.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 20
    invoke-direct {p0, p1, p2}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 16
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 17
    return-void
.end method


# virtual methods
.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v5, 0x40000000    # 2.0f

    const/4 v3, 0x0

    .line 34
    invoke-static {v3, p1}, Lcom/fimi/app/x8s/widget/RecyclerViewItemRelayout;->getDefaultSize(II)I

    move-result v2

    .line 35
    invoke-static {v3, p1}, Lcom/fimi/app/x8s/widget/RecyclerViewItemRelayout;->getDefaultSize(II)I

    move-result v3

    int-to-float v3, v3

    const/high16 v4, 0x3f400000    # 0.75f

    mul-float/2addr v3, v4

    float-to-int v3, v3

    .line 34
    invoke-virtual {p0, v2, v3}, Lcom/fimi/app/x8s/widget/RecyclerViewItemRelayout;->setMeasuredDimension(II)V

    .line 36
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/RecyclerViewItemRelayout;->getMeasuredWidth()I

    move-result v0

    .line 37
    .local v0, "childWidthSize":I
    invoke-virtual {p0}, Lcom/fimi/app/x8s/widget/RecyclerViewItemRelayout;->getMeasuredHeight()I

    move-result v1

    .line 38
    .local v1, "height":I
    invoke-static {v0, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    .line 40
    invoke-static {v1, v5}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 42
    invoke-super {p0, p1, p2}, Landroid/widget/RelativeLayout;->onMeasure(II)V

    .line 43
    return-void
.end method
