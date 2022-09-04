.class public Lcom/fimi/app/x8s/widget/RecyclerDividerItemDecoration;
.super Landroid/support/v7/widget/RecyclerView$ItemDecoration;
.source "RecyclerDividerItemDecoration.java"


# static fields
.field public static final HORIZONTAL_LIST:I = 0x0

.field public static final VERTICAL_LIST:I = 0x1


# instance fields
.field private mDividerHeight:I

.field private mOrientation:I

.field private mPaint:Landroid/graphics/Paint;


# direct methods
.method public constructor <init>(Landroid/content/Context;III)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "orientation"    # I
    .param p3, "dividerHeight"    # I
    .param p4, "dividerColor"    # I

    .prologue
    .line 32
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;-><init>()V

    .line 21
    const/4 v0, 0x2

    iput v0, p0, Lcom/fimi/app/x8s/widget/RecyclerDividerItemDecoration;->mDividerHeight:I

    .line 33
    invoke-virtual {p0, p2}, Lcom/fimi/app/x8s/widget/RecyclerDividerItemDecoration;->setOrientation(I)V

    .line 34
    iput p3, p0, Lcom/fimi/app/x8s/widget/RecyclerDividerItemDecoration;->mDividerHeight:I

    .line 35
    new-instance v0, Landroid/graphics/Paint;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/fimi/app/x8s/widget/RecyclerDividerItemDecoration;->mPaint:Landroid/graphics/Paint;

    .line 36
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/RecyclerDividerItemDecoration;->mPaint:Landroid/graphics/Paint;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1, p4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 37
    iget-object v0, p0, Lcom/fimi/app/x8s/widget/RecyclerDividerItemDecoration;->mPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 38
    return-void
.end method


# virtual methods
.method public drawHorizontal(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V
    .locals 15
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 80
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingTop()I

    move-result v14

    .line 81
    .local v14, "top":I
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getHeight()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingBottom()I

    move-result v2

    sub-int v7, v1, v2

    .line 82
    .local v7, "bottom":I
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v9

    .line 83
    .local v9, "childCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    add-int/lit8 v1, v9, -0x1

    if-ge v10, v1, :cond_1

    .line 84
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 85
    .local v8, "child":Landroid/view/View;
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 86
    .local v12, "params":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    invoke-virtual {v8}, Landroid/view/View;->getRight()I

    move-result v1

    iget v2, v12, Landroid/support/v7/widget/RecyclerView$LayoutParams;->rightMargin:I

    add-int v11, v1, v2

    .line 87
    .local v11, "left":I
    iget v1, p0, Lcom/fimi/app/x8s/widget/RecyclerDividerItemDecoration;->mDividerHeight:I

    add-int v13, v11, v1

    .line 88
    .local v13, "right":I
    iget-object v1, p0, Lcom/fimi/app/x8s/widget/RecyclerDividerItemDecoration;->mPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_0

    .line 89
    int-to-float v2, v11

    int-to-float v3, v14

    int-to-float v4, v13

    int-to-float v5, v7

    iget-object v6, p0, Lcom/fimi/app/x8s/widget/RecyclerDividerItemDecoration;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 83
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 92
    .end local v8    # "child":Landroid/view/View;
    .end local v11    # "left":I
    .end local v12    # "params":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .end local v13    # "right":I
    :cond_1
    return-void
.end method

.method public drawVertical(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V
    .locals 16
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingLeft()I

    move-result v11

    .line 64
    .local v11, "left":I
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getWidth()I

    move-result v1

    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getPaddingRight()I

    move-result v2

    sub-int v13, v1, v2

    .line 65
    .local v13, "right":I
    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getChildCount()I

    move-result v9

    .line 66
    .local v9, "childCount":I
    const/4 v10, 0x0

    .local v10, "i":I
    :goto_0
    if-ge v10, v9, :cond_1

    .line 67
    move-object/from16 v0, p2

    invoke-virtual {v0, v10}, Landroid/support/v7/widget/RecyclerView;->getChildAt(I)Landroid/view/View;

    move-result-object v8

    .line 68
    .local v8, "child":Landroid/view/View;
    new-instance v15, Landroid/support/v7/widget/RecyclerView;

    invoke-virtual/range {p2 .. p2}, Landroid/support/v7/widget/RecyclerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v15, v1}, Landroid/support/v7/widget/RecyclerView;-><init>(Landroid/content/Context;)V

    .line 69
    .local v15, "v":Landroid/support/v7/widget/RecyclerView;
    invoke-virtual {v8}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v12

    check-cast v12, Landroid/support/v7/widget/RecyclerView$LayoutParams;

    .line 70
    .local v12, "params":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    invoke-virtual {v8}, Landroid/view/View;->getBottom()I

    move-result v1

    iget v2, v12, Landroid/support/v7/widget/RecyclerView$LayoutParams;->bottomMargin:I

    add-int v14, v1, v2

    .line 71
    .local v14, "top":I
    move-object/from16 v0, p0

    iget v1, v0, Lcom/fimi/app/x8s/widget/RecyclerDividerItemDecoration;->mDividerHeight:I

    add-int v7, v14, v1

    .line 72
    .local v7, "bottom":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/fimi/app/x8s/widget/RecyclerDividerItemDecoration;->mPaint:Landroid/graphics/Paint;

    if-eqz v1, :cond_0

    .line 73
    int-to-float v2, v11

    int-to-float v3, v14

    int-to-float v4, v13

    int-to-float v5, v7

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/fimi/app/x8s/widget/RecyclerDividerItemDecoration;->mPaint:Landroid/graphics/Paint;

    move-object/from16 v1, p1

    invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 66
    :cond_0
    add-int/lit8 v10, v10, 0x1

    goto :goto_0

    .line 76
    .end local v7    # "bottom":I
    .end local v8    # "child":Landroid/view/View;
    .end local v12    # "params":Landroid/support/v7/widget/RecyclerView$LayoutParams;
    .end local v14    # "top":I
    .end local v15    # "v":Landroid/support/v7/widget/RecyclerView;
    :cond_1
    return-void
.end method

.method public getItemOffsets(Landroid/graphics/Rect;ILandroid/support/v7/widget/RecyclerView;)V
    .locals 3
    .param p1, "outRect"    # Landroid/graphics/Rect;
    .param p2, "itemPosition"    # I
    .param p3, "parent"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    const/4 v2, 0x0

    .line 96
    iget v0, p0, Lcom/fimi/app/x8s/widget/RecyclerDividerItemDecoration;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 97
    iget v0, p0, Lcom/fimi/app/x8s/widget/RecyclerDividerItemDecoration;->mDividerHeight:I

    invoke-virtual {p1, v2, v2, v2, v0}, Landroid/graphics/Rect;->set(IIII)V

    .line 101
    :goto_0
    return-void

    .line 99
    :cond_0
    iget v0, p0, Lcom/fimi/app/x8s/widget/RecyclerDividerItemDecoration;->mDividerHeight:I

    invoke-virtual {p1, v2, v2, v0, v2}, Landroid/graphics/Rect;->set(IIII)V

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V
    .locals 2
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;

    .prologue
    .line 49
    iget v0, p0, Lcom/fimi/app/x8s/widget/RecyclerDividerItemDecoration;->mOrientation:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 50
    invoke-virtual {p0, p1, p2}, Lcom/fimi/app/x8s/widget/RecyclerDividerItemDecoration;->drawVertical(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V

    .line 54
    :goto_0
    return-void

    .line 52
    :cond_0
    invoke-virtual {p0, p1, p2}, Lcom/fimi/app/x8s/widget/RecyclerDividerItemDecoration;->drawHorizontal(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;)V

    goto :goto_0
.end method

.method public onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V
    .locals 0
    .param p1, "c"    # Landroid/graphics/Canvas;
    .param p2, "parent"    # Landroid/support/v7/widget/RecyclerView;
    .param p3, "state"    # Landroid/support/v7/widget/RecyclerView$State;

    .prologue
    .line 58
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$ItemDecoration;->onDraw(Landroid/graphics/Canvas;Landroid/support/v7/widget/RecyclerView;Landroid/support/v7/widget/RecyclerView$State;)V

    .line 59
    return-void
.end method

.method public setOrientation(I)V
    .locals 2
    .param p1, "orientation"    # I

    .prologue
    .line 41
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    if-eq p1, v0, :cond_0

    .line 42
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "invalid orientation"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 44
    :cond_0
    iput p1, p0, Lcom/fimi/app/x8s/widget/RecyclerDividerItemDecoration;->mOrientation:I

    .line 45
    return-void
.end method
