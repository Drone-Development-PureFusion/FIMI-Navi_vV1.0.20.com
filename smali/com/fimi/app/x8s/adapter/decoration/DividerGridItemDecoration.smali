.class public Lcom/fimi/app/x8s/adapter/decoration/DividerGridItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "DividerGridItemDecoration.java"


# instance fields
.field private mDivider:Landroid/graphics/drawable/Drawable;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 26
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_divider_bg:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/adapter/decoration/DividerGridItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 27
    return-void
.end method

.method private getSpanCount(Landroid/support/v7/widget/RecyclerView;)I
    .locals 3
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 41
    const/4 v1, -0x1

    .line 42
    .local v1, "spanCount":I
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 43
    .local v0, "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    instance-of v2, v0, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v2, :cond_1

    .line 46
    check-cast v0, Landroid/support/v7/widget/GridLayoutManager;

    .end local v0    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v1

    .line 52
    :cond_0
    :goto_0
    return v1

    .line 47
    .restart local v0    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    :cond_1
    instance-of v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v2, :cond_0

    .line 49
    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    .line 50
    .end local v0    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getSpanCount()I

    move-result v1

    goto :goto_0
.end method

.method private isLastColum(Landroid/support/v7/widget/RecyclerView;III)Z
    .locals 4
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "pos"    # I
    .param p3, "spanCount"    # I
    .param p4, "childCount"    # I

    .prologue
    const/4 v2, 0x1

    .line 95
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 96
    .local v0, "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    instance-of v3, v0, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v3, :cond_1

    .line 98
    add-int/lit8 v3, p2, 0x1

    rem-int/2addr v3, p3

    if-nez v3, :cond_2

    .line 119
    .end local v0    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    :cond_0
    :goto_0
    return v2

    .line 102
    .restart local v0    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    :cond_1
    instance-of v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v3, :cond_2

    .line 104
    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    .line 105
    .end local v0    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getOrientation()I

    move-result v1

    .line 106
    .local v1, "orientation":I
    if-ne v1, v2, :cond_3

    .line 108
    add-int/lit8 v3, p2, 0x1

    rem-int/2addr v3, p3

    if-eqz v3, :cond_0

    .line 119
    .end local v1    # "orientation":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 114
    .restart local v1    # "orientation":I
    :cond_3
    rem-int v3, p4, p3

    sub-int/2addr p4, v3

    .line 115
    if-lt p2, p4, :cond_2

    goto :goto_0
.end method

.method private isLastRaw(Landroid/support/v7/widget/RecyclerView;III)Z
    .locals 4
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "pos"    # I
    .param p3, "spanCount"    # I
    .param p4, "childCount"    # I

    .prologue
    const/4 v2, 0x1

    .line 125
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 126
    .local v0, "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    instance-of v3, v0, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v3, :cond_1

    .line 128
    rem-int v3, p4, p3

    sub-int/2addr p4, v3

    .line 129
    if-lt p2, p4, :cond_2

    .line 152
    .end local v0    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    :cond_0
    :goto_0
    return v2

    .line 131
    .restart local v0    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    :cond_1
    instance-of v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v3, :cond_2

    .line 133
    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    .line 134
    .end local v0    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getOrientation()I

    move-result v1

    .line 136
    .local v1, "orientation":I
    if-ne v1, v2, :cond_3

    .line 138
    rem-int v3, p4, p3

    sub-int/2addr p4, v3

    .line 140
    if-ge p2, p4, :cond_0

    .line 152
    .end local v1    # "orientation":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 146
    .restart local v1    # "orientation":I
    :cond_3
    add-int/lit8 v3, p2, 0x1

    rem-int/2addr v3, p3

    if-nez v3, :cond_2

    goto :goto_0
.end method


# virtual methods
.method public drawHorizontal(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V
    .locals 10
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 57
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    .line 58
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 60
    invoke-virtual {p2, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 62
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 63
    .local v5, "params":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getLeft()I

    move-result v8

    iget v9, v5, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    sub-int v4, v8, v9

    .line 64
    .local v4, "left":I
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v8

    iget v9, v5, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v8, v9

    iget-object v9, p0, Lcom/fimi/app/x8s/adapter/decoration/DividerGridItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 65
    invoke-virtual {v9}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v9

    add-int v6, v8, v9

    .line 66
    .local v6, "right":I
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v8

    iget v9, v5, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int v7, v8, v9

    .line 67
    .local v7, "top":I
    iget-object v8, p0, Lcom/fimi/app/x8s/adapter/decoration/DividerGridItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v8

    add-int v0, v7, v8

    .line 68
    .local v0, "bottom":I
    iget-object v8, p0, Lcom/fimi/app/x8s/adapter/decoration/DividerGridItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v4, v7, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 69
    iget-object v8, p0, Lcom/fimi/app/x8s/adapter/decoration/DividerGridItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 58
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 71
    .end local v0    # "bottom":I
    .end local v1    # "child":Landroid/view/View;
    .end local v4    # "left":I
    .end local v5    # "params":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .end local v6    # "right":I
    .end local v7    # "top":I
    :cond_0
    return-void
.end method

.method public drawVertical(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V
    .locals 10
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 75
    invoke-virtual {p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v2

    .line 76
    .local v2, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v2, :cond_0

    .line 78
    invoke-virtual {p2, v3}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v1

    .line 81
    .local v1, "child":Landroid/view/View;
    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v5

    check-cast v5, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 82
    .local v5, "params":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    invoke-virtual {v1}, Landroid/view/View;->getTop()I

    move-result v8

    iget v9, v5, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int v7, v8, v9

    .line 83
    .local v7, "top":I
    invoke-virtual {v1}, Landroid/view/View;->getBottom()I

    move-result v8

    iget v9, v5, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int v0, v8, v9

    .line 84
    .local v0, "bottom":I
    invoke-virtual {v1}, Landroid/view/View;->getRight()I

    move-result v8

    iget v9, v5, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int v4, v8, v9

    .line 85
    .local v4, "left":I
    iget-object v8, p0, Lcom/fimi/app/x8s/adapter/decoration/DividerGridItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v8

    add-int v6, v4, v8

    .line 87
    .local v6, "right":I
    iget-object v8, p0, Lcom/fimi/app/x8s/adapter/decoration/DividerGridItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, v4, v7, v6, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 88
    iget-object v8, p0, Lcom/fimi/app/x8s/adapter/decoration/DividerGridItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v8, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 76
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 90
    .end local v0    # "bottom":I
    .end local v1    # "child":Landroid/view/View;
    .end local v4    # "left":I
    .end local v5    # "params":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .end local v6    # "right":I
    .end local v7    # "top":I
    :cond_0
    return-void
.end method

.method public getItemOffsets(Landroid/graphics/Rect;ILandroid/support/v7/widget/RecyclerView;)V
    .locals 5
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "itemPosition"    # I
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    const/4 v4, 0x0

    .line 159
    invoke-direct {p0, p3}, Lcom/fimi/app/x8s/adapter/decoration/DividerGridItemDecoration;->getSpanCount(Landroid/support/v7/widget/RecyclerView;)I

    move-result v1

    .line 160
    .local v1, "spanCount":I
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    .line 161
    .local v0, "childCount":I
    invoke-direct {p0, p3, p2, v1, v0}, Lcom/fimi/app/x8s/adapter/decoration/DividerGridItemDecoration;->isLastRaw(Landroid/support/v7/widget/RecyclerView;III)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 163
    iget-object v2, p0, Lcom/fimi/app/x8s/adapter/decoration/DividerGridItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    invoke-virtual {p1, v4, v4, v2, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 172
    :goto_0
    return-void

    .line 164
    :cond_0
    invoke-direct {p0, p3, p2, v1, v0}, Lcom/fimi/app/x8s/adapter/decoration/DividerGridItemDecoration;->isLastColum(Landroid/support/v7/widget/RecyclerView;III)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 166
    iget-object v2, p0, Lcom/fimi/app/x8s/adapter/decoration/DividerGridItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v2

    invoke-virtual {p1, v4, v4, v4, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 169
    :cond_1
    iget-object v2, p0, Lcom/fimi/app/x8s/adapter/decoration/DividerGridItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v2}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    iget-object v3, p0, Lcom/fimi/app/x8s/adapter/decoration/DividerGridItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 170
    invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v3

    .line 169
    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 33
    invoke-virtual {p0, p1, p2}, Lcom/fimi/app/x8s/adapter/decoration/DividerGridItemDecoration;->drawHorizontal(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V

    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/fimi/app/x8s/adapter/decoration/DividerGridItemDecoration;->drawVertical(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V

    .line 36
    return-void
.end method
