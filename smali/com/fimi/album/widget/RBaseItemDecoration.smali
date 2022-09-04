.class public Lcom/fimi/album/widget/RBaseItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "RBaseItemDecoration.java"


# instance fields
.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dividerHeight"    # I
    .param p3, "dividerColor"    # I

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 20
    const/4 v0, 0x2

    iput v0, p0, Lcom/fimi/album/widget/RBaseItemDecoration;->mDividerHeight:I

    .line 30
    iput p2, p0, Lcom/fimi/album/widget/RBaseItemDecoration;->mDividerHeight:I

    .line 31
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/fimi/album/widget/RBaseItemDecoration;->mPaint:Landroid/graphics/Paint;

    .line 32
    iget-object v0, p0, Lcom/fimi/album/widget/RBaseItemDecoration;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 33
    iget-object v0, p0, Lcom/fimi/album/widget/RBaseItemDecoration;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 34
    return-void
.end method

.method private getSpanCount(Landroid/support/v7/widget/RecyclerView;)I
    .locals 3
    .param p1, "parent"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 44
    const/4 v1, -0x1

    .line 45
    .local v1, "spanCount":I
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 46
    .local v0, "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    instance-of v2, v0, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v2, :cond_1

    .line 47
    check-cast v0, Landroid/support/v7/widget/GridLayoutManager;

    .end local v0    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-virtual {v0}, Landroid/support/v7/widget/GridLayoutManager;->getSpanCount()I

    move-result v1

    .line 51
    :cond_0
    :goto_0
    return v1

    .line 48
    .restart local v0    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    :cond_1
    instance-of v2, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v2, :cond_0

    .line 49
    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

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

    .line 96
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 97
    .local v0, "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    instance-of v3, v0, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v3, :cond_1

    .line 98
    add-int/lit8 v3, p2, 0x1

    rem-int/2addr v3, p3

    if-nez v3, :cond_2

    add-int/lit8 v3, p3, -0x1

    if-lt p2, v3, :cond_2

    .line 114
    .end local v0    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    :cond_0
    :goto_0
    return v2

    .line 101
    .restart local v0    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    :cond_1
    instance-of v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v3, :cond_2

    .line 102
    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    .end local v0    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getOrientation()I

    move-result v1

    .line 103
    .local v1, "orientation":I
    if-ne v1, v2, :cond_3

    .line 104
    add-int/lit8 v3, p2, 0x1

    rem-int/2addr v3, p3

    if-eqz v3, :cond_0

    .line 114
    .end local v1    # "orientation":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 109
    .restart local v1    # "orientation":I
    :cond_3
    rem-int v3, p4, p3

    sub-int/2addr p4, v3

    .line 110
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

    .line 119
    invoke-virtual {p1}, Landroid/support/v7/widget/RecyclerView;->getLayoutManager()Landroid/support/v7/widget/RecyclerView$LayoutManager;

    move-result-object v0

    .line 120
    .local v0, "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    instance-of v3, v0, Landroid/support/v7/widget/GridLayoutManager;

    if-eqz v3, :cond_1

    .line 121
    rem-int v3, p4, p3

    sub-int/2addr p4, v3

    .line 122
    if-lt p2, p4, :cond_2

    .line 138
    .end local v0    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    :cond_0
    :goto_0
    return v2

    .line 124
    .restart local v0    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    :cond_1
    instance-of v3, v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    if-eqz v3, :cond_2

    .line 125
    check-cast v0, Landroid/support/v7/widget/StaggeredGridLayoutManager;

    .end local v0    # "layoutManager":Landroid/support/v7/widget/RecyclerView$LayoutManager;
    invoke-virtual {v0}, Landroid/support/v7/widget/StaggeredGridLayoutManager;->getOrientation()I

    move-result v1

    .line 127
    .local v1, "orientation":I
    if-ne v1, v2, :cond_3

    .line 128
    rem-int v3, p4, p3

    sub-int/2addr p4, v3

    .line 130
    if-ge p2, p4, :cond_0

    .line 138
    .end local v1    # "orientation":I
    :cond_2
    const/4 v2, 0x0

    goto :goto_0

    .line 133
    .restart local v1    # "orientation":I
    :cond_3
    add-int/lit8 v3, p2, 0x1

    rem-int/2addr v3, p3

    if-nez v3, :cond_2

    goto :goto_0
.end method


# virtual methods
.method public drawHorizontal(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V
    .locals 15
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 56
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v9

    .line 57
    .local v9, "childCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v9, :cond_2

    .line 58
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 59
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 60
    .local v12, "params":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    invoke-virtual {v8}, Landroid/view/View;->getLeft()I

    move-result v1

    iget v2, v12, Landroid/support/v7/widget/RecyclerView$LayoutParams;->leftMargin:I

    sub-int v11, v1, v2

    .line 61
    .local v11, "left":I
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v1

    iget v2, v12, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int/2addr v1, v2

    iget v2, p0, Lcom/fimi/album/widget/RBaseItemDecoration;->mDividerHeight:I

    add-int v13, v1, v2

    .line 62
    .local v13, "right":I
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v2, v12, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int v14, v1, v2

    .line 63
    .local v14, "top":I
    iget v1, p0, Lcom/fimi/album/widget/RBaseItemDecoration;->mDividerHeight:I

    add-int v7, v14, v1

    .line 64
    .local v7, "bottom":I
    iget-object v1, p0, Lcom/fimi/album/widget/RBaseItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 65
    iget-object v1, p0, Lcom/fimi/album/widget/RBaseItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v11, v14, v13, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 66
    iget-object v1, p0, Lcom/fimi/album/widget/RBaseItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 68
    :cond_0
    iget-object v1, p0, Lcom/fimi/album/widget/RBaseItemDecoration;->mPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_1

    .line 69
    int-to-float v2, v11

    int-to-float v3, v14

    int-to-float v4, v13

    int-to-float v5, v7

    iget-object v6, p0, Lcom/fimi/album/widget/RBaseItemDecoration;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 57
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 72
    .end local v7    # "bottom":I
    .end local v8    # "child":Landroid/view/View;
    .end local v11    # "left":I
    .end local v12    # "params":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .end local v13    # "right":I
    .end local v14    # "top":I
    :cond_2
    return-void
.end method

.method public drawVertical(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V
    .locals 15
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 76
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v9

    .line 77
    .local v9, "childCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v9, :cond_2

    .line 78
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 79
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 80
    .local v12, "params":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    invoke-virtual {v8}, Landroid/view/View;->getTop()I

    move-result v1

    iget v2, v12, Landroid/support/v7/widget/RecyclerView$LayoutParams;->topMargin:I

    sub-int v14, v1, v2

    .line 81
    .local v14, "top":I
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v2, v12, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int v7, v1, v2

    .line 82
    .local v7, "bottom":I
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v1

    iget v2, v12, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int v11, v1, v2

    .line 83
    .local v11, "left":I
    iget v1, p0, Lcom/fimi/album/widget/RBaseItemDecoration;->mDividerHeight:I

    add-int v13, v11, v1

    .line 84
    .local v13, "right":I
    iget-object v1, p0, Lcom/fimi/album/widget/RBaseItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v1, :cond_0

    .line 85
    iget-object v1, p0, Lcom/fimi/album/widget/RBaseItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v11, v14, v13, v7}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 86
    iget-object v1, p0, Lcom/fimi/album/widget/RBaseItemDecoration;->mDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v1, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 88
    :cond_0
    iget-object v1, p0, Lcom/fimi/album/widget/RBaseItemDecoration;->mPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_1

    .line 89
    int-to-float v2, v11

    int-to-float v3, v14

    int-to-float v4, v13

    int-to-float v5, v7

    iget-object v6, p0, Lcom/fimi/album/widget/RBaseItemDecoration;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 77
    :cond_1
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 92
    .end local v7    # "bottom":I
    .end local v8    # "child":Landroid/view/View;
    .end local v11    # "left":I
    .end local v12    # "params":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .end local v13    # "right":I
    .end local v14    # "top":I
    :cond_2
    return-void
.end method

.method public getItemOffsets(Landroid/graphics/Rect;ILandroid/support/v7/widget/RecyclerView;)V
    .locals 5
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "itemPosition"    # I
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    const/4 v4, 0x0

    .line 143
    invoke-direct {p0, p3}, Lcom/fimi/album/widget/RBaseItemDecoration;->getSpanCount(Landroid/support/v7/widget/RecyclerView;)I

    move-result v1

    .line 144
    .local v1, "spanCount":I
    invoke-virtual {p3}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v7/widget/RecyclerView$Adapter;->getItemCount()I

    move-result v0

    .line 145
    .local v0, "childCount":I
    invoke-direct {p0, p3, p2, v1, v0}, Lcom/fimi/album/widget/RBaseItemDecoration;->isLastRaw(Landroid/support/v7/widget/RecyclerView;III)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    iget v2, p0, Lcom/fimi/album/widget/RBaseItemDecoration;->mDividerHeight:I

    invoke-virtual {p1, v4, v4, v2, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 152
    :goto_0
    return-void

    .line 147
    :cond_0
    invoke-direct {p0, p3, p2, v1, v0}, Lcom/fimi/album/widget/RBaseItemDecoration;->isLastColum(Landroid/support/v7/widget/RecyclerView;III)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 148
    iget v2, p0, Lcom/fimi/album/widget/RBaseItemDecoration;->mDividerHeight:I

    iget v3, p0, Lcom/fimi/album/widget/RBaseItemDecoration;->mDividerHeight:I

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0

    .line 150
    :cond_1
    iget v2, p0, Lcom/fimi/album/widget/RBaseItemDecoration;->mDividerHeight:I

    iget v3, p0, Lcom/fimi/album/widget/RBaseItemDecoration;->mDividerHeight:I

    invoke-virtual {p1, v4, v4, v2, v3}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 38
    invoke-virtual {p0, p1, p2}, Lcom/fimi/album/widget/RBaseItemDecoration;->drawHorizontal(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V

    .line 39
    invoke-virtual {p0, p1, p2}, Lcom/fimi/album/widget/RBaseItemDecoration;->drawVertical(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V

    .line 40
    return-void
.end method
