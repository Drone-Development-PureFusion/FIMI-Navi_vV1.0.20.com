.class Lcom/fimi/widget/sticklistview/util/WrapperView;
.super Landroid/view/ViewGroup;
.source "WrapperView.java"


# instance fields
.field mDivider:Landroid/graphics/drawable/Drawable;

.field mDividerHeight:I

.field mHeader:Landroid/view/View;

.field mItem:Landroid/view/View;

.field mItemTop:I


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "c"    # Landroid/content/Context;

    .prologue
    .line 22
    invoke-direct {p0, p1}, Landroid/view/ViewGroup;-><init>(Landroid/content/Context;)V

    .line 23
    return-void
.end method


# virtual methods
.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 3
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v2, 0x0

    .line 125
    invoke-super {p0, p1}, Landroid/view/ViewGroup;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 126
    iget-object v0, p0, Lcom/fimi/widget/sticklistview/util/WrapperView;->mHeader:Landroid/view/View;

    if-nez v0, :cond_1

    iget-object v0, p0, Lcom/fimi/widget/sticklistview/util/WrapperView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v0, :cond_1

    .line 129
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-ge v0, v1, :cond_0

    .line 130
    invoke-virtual {p0}, Lcom/fimi/widget/sticklistview/util/WrapperView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/fimi/widget/sticklistview/util/WrapperView;->mDividerHeight:I

    invoke-virtual {p1, v2, v2, v0, v1}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    .line 132
    :cond_0
    iget-object v0, p0, Lcom/fimi/widget/sticklistview/util/WrapperView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 134
    :cond_1
    return-void
.end method

.method hasHeader()Z
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Lcom/fimi/widget/sticklistview/util/WrapperView;->mHeader:Landroid/view/View;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onLayout(ZIIII)V
    .locals 3
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 103
    const/4 p2, 0x0

    .line 104
    const/4 p3, 0x0

    .line 105
    invoke-virtual {p0}, Lcom/fimi/widget/sticklistview/util/WrapperView;->getWidth()I

    move-result p4

    .line 106
    invoke-virtual {p0}, Lcom/fimi/widget/sticklistview/util/WrapperView;->getHeight()I

    move-result p5

    .line 108
    iget-object v1, p0, Lcom/fimi/widget/sticklistview/util/WrapperView;->mHeader:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 109
    iget-object v1, p0, Lcom/fimi/widget/sticklistview/util/WrapperView;->mHeader:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 110
    .local v0, "headerHeight":I
    iget-object v1, p0, Lcom/fimi/widget/sticklistview/util/WrapperView;->mHeader:Landroid/view/View;

    invoke-virtual {v1, p2, p3, p4, v0}, Landroid/view/View;->layout(IIII)V

    .line 111
    iput v0, p0, Lcom/fimi/widget/sticklistview/util/WrapperView;->mItemTop:I

    .line 112
    iget-object v1, p0, Lcom/fimi/widget/sticklistview/util/WrapperView;->mItem:Landroid/view/View;

    invoke-virtual {v1, p2, v0, p4, p5}, Landroid/view/View;->layout(IIII)V

    .line 121
    .end local v0    # "headerHeight":I
    :goto_0
    return-void

    .line 113
    :cond_0
    iget-object v1, p0, Lcom/fimi/widget/sticklistview/util/WrapperView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_1

    .line 114
    iget-object v1, p0, Lcom/fimi/widget/sticklistview/util/WrapperView;->mDivider:Landroid/graphics/drawable/Drawable;

    iget v2, p0, Lcom/fimi/widget/sticklistview/util/WrapperView;->mDividerHeight:I

    invoke-virtual {v1, p2, p3, p4, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 115
    iget v1, p0, Lcom/fimi/widget/sticklistview/util/WrapperView;->mDividerHeight:I

    iput v1, p0, Lcom/fimi/widget/sticklistview/util/WrapperView;->mItemTop:I

    .line 116
    iget-object v1, p0, Lcom/fimi/widget/sticklistview/util/WrapperView;->mItem:Landroid/view/View;

    iget v2, p0, Lcom/fimi/widget/sticklistview/util/WrapperView;->mDividerHeight:I

    invoke-virtual {v1, p2, v2, p4, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_0

    .line 118
    :cond_1
    iput p3, p0, Lcom/fimi/widget/sticklistview/util/WrapperView;->mItemTop:I

    .line 119
    iget-object v1, p0, Lcom/fimi/widget/sticklistview/util/WrapperView;->mItem:Landroid/view/View;

    invoke-virtual {v1, p2, p3, p4, p5}, Landroid/view/View;->layout(IIII)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    const/high16 v7, 0x40000000    # 2.0f

    const/4 v6, 0x0

    .line 66
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v2

    .line 67
    .local v2, "measuredWidth":I
    invoke-static {v2, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 69
    .local v0, "childWidthMeasureSpec":I
    const/4 v1, 0x0

    .line 72
    .local v1, "measuredHeight":I
    iget-object v4, p0, Lcom/fimi/widget/sticklistview/util/WrapperView;->mHeader:Landroid/view/View;

    if-eqz v4, :cond_2

    .line 73
    iget-object v4, p0, Lcom/fimi/widget/sticklistview/util/WrapperView;->mHeader:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 74
    .local v3, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v3, :cond_1

    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v4, :cond_1

    .line 75
    iget-object v4, p0, Lcom/fimi/widget/sticklistview/util/WrapperView;->mHeader:Landroid/view/View;

    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 76
    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 75
    invoke-virtual {v4, v0, v5}, Landroid/view/View;->measure(II)V

    .line 81
    :goto_0
    iget-object v4, p0, Lcom/fimi/widget/sticklistview/util/WrapperView;->mHeader:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v1, v4

    .line 87
    .end local v3    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/fimi/widget/sticklistview/util/WrapperView;->mItem:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v3

    .line 88
    .restart local v3    # "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v3, :cond_3

    iget v4, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v4, :cond_3

    .line 89
    iget-object v4, p0, Lcom/fimi/widget/sticklistview/util/WrapperView;->mItem:Landroid/view/View;

    iget v5, v3, Landroid/view/ViewGroup$LayoutParams;->height:I

    .line 90
    invoke-static {v5, v7}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 89
    invoke-virtual {v4, v0, v5}, Landroid/view/View;->measure(II)V

    .line 95
    :goto_2
    iget-object v4, p0, Lcom/fimi/widget/sticklistview/util/WrapperView;->mItem:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->getMeasuredHeight()I

    move-result v4

    add-int/2addr v1, v4

    .line 97
    invoke-virtual {p0, v2, v1}, Lcom/fimi/widget/sticklistview/util/WrapperView;->setMeasuredDimension(II)V

    .line 98
    return-void

    .line 78
    :cond_1
    iget-object v4, p0, Lcom/fimi/widget/sticklistview/util/WrapperView;->mHeader:Landroid/view/View;

    .line 79
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 78
    invoke-virtual {v4, v0, v5}, Landroid/view/View;->measure(II)V

    goto :goto_0

    .line 82
    .end local v3    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_2
    iget-object v4, p0, Lcom/fimi/widget/sticklistview/util/WrapperView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v4, :cond_0

    .line 83
    iget v4, p0, Lcom/fimi/widget/sticklistview/util/WrapperView;->mDividerHeight:I

    add-int/2addr v1, v4

    goto :goto_1

    .line 92
    .restart local v3    # "params":Landroid/view/ViewGroup$LayoutParams;
    :cond_3
    iget-object v4, p0, Lcom/fimi/widget/sticklistview/util/WrapperView;->mItem:Landroid/view/View;

    .line 93
    invoke-static {v6, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v5

    .line 92
    invoke-virtual {v4, v0, v5}, Landroid/view/View;->measure(II)V

    goto :goto_2
.end method

.method update(Landroid/view/View;Landroid/view/View;Landroid/graphics/drawable/Drawable;I)V
    .locals 3
    .param p1, "item"    # Landroid/view/View;
    .param p2, "header"    # Landroid/view/View;
    .param p3, "divider"    # Landroid/graphics/drawable/Drawable;
    .param p4, "dividerHeight"    # I

    .prologue
    .line 27
    if-nez p1, :cond_0

    .line 28
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "List view item must not be null."

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 31
    :cond_0
    iget-object v1, p0, Lcom/fimi/widget/sticklistview/util/WrapperView;->mItem:Landroid/view/View;

    if-eq v1, p1, :cond_2

    .line 32
    iget-object v1, p0, Lcom/fimi/widget/sticklistview/util/WrapperView;->mItem:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/fimi/widget/sticklistview/util/WrapperView;->removeView(Landroid/view/View;)V

    .line 33
    iput-object p1, p0, Lcom/fimi/widget/sticklistview/util/WrapperView;->mItem:Landroid/view/View;

    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    .line 35
    .local v0, "parent":Landroid/view/ViewParent;
    if-eqz v0, :cond_1

    if-eq v0, p0, :cond_1

    .line 36
    instance-of v1, v0, Landroid/view/ViewGroup;

    if-eqz v1, :cond_1

    .line 37
    check-cast v0, Landroid/view/ViewGroup;

    .end local v0    # "parent":Landroid/view/ViewParent;
    invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 40
    :cond_1
    invoke-virtual {p0, p1}, Lcom/fimi/widget/sticklistview/util/WrapperView;->addView(Landroid/view/View;)V

    .line 43
    :cond_2
    iget-object v1, p0, Lcom/fimi/widget/sticklistview/util/WrapperView;->mHeader:Landroid/view/View;

    if-eq v1, p2, :cond_4

    .line 44
    iget-object v1, p0, Lcom/fimi/widget/sticklistview/util/WrapperView;->mHeader:Landroid/view/View;

    if-eqz v1, :cond_3

    .line 45
    iget-object v1, p0, Lcom/fimi/widget/sticklistview/util/WrapperView;->mHeader:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/fimi/widget/sticklistview/util/WrapperView;->removeView(Landroid/view/View;)V

    .line 47
    :cond_3
    iput-object p2, p0, Lcom/fimi/widget/sticklistview/util/WrapperView;->mHeader:Landroid/view/View;

    .line 48
    if-eqz p2, :cond_4

    .line 49
    invoke-virtual {p0, p2}, Lcom/fimi/widget/sticklistview/util/WrapperView;->addView(Landroid/view/View;)V

    .line 53
    :cond_4
    iget-object v1, p0, Lcom/fimi/widget/sticklistview/util/WrapperView;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eq v1, p3, :cond_5

    .line 54
    iput-object p3, p0, Lcom/fimi/widget/sticklistview/util/WrapperView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 55
    iput p4, p0, Lcom/fimi/widget/sticklistview/util/WrapperView;->mDividerHeight:I

    .line 56
    invoke-virtual {p0}, Lcom/fimi/widget/sticklistview/util/WrapperView;->invalidate()V

    .line 58
    :cond_5
    return-void
.end method
