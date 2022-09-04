.class public Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;
.super Landroid/widget/ListView;
.source "StickyListHeadersListView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView$OnLoadingMoreLinstener;,
        Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView$OnHeaderClickListener;
    }
.end annotation


# instance fields
.field public loadMoreListener:Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView$OnLoadingMoreLinstener;

.field public mAdapter:Lcom/fimi/widget/sticklistview/util/AdapterWrapper;

.field private mAdapterHeaderClickListener:Lcom/fimi/widget/sticklistview/util/AdapterWrapper$OnHeaderClickListener;

.field private mAreHeadersSticky:Z

.field private final mClippingRect:Landroid/graphics/Rect;

.field private mClippingToPadding:Ljava/lang/Boolean;

.field private mCurrentHeaderId:Ljava/lang/Long;

.field private mDataSetChangedObserver:Landroid/database/DataSetObserver;

.field private mDivider:Landroid/graphics/drawable/Drawable;

.field private mDividerHeight:I

.field private mDrawingListUnderStickyHeader:Z

.field private mFooterViews:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/view/View;",
            ">;"
        }
    .end annotation
.end field

.field private mHeader:Landroid/view/View;

.field private mHeaderBeingPressed:Z

.field private mHeaderBottomPosition:I

.field private mHeaderDownY:F

.field private mHeaderPosition:Ljava/lang/Integer;

.field private mOnHeaderClickListener:Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView$OnHeaderClickListener;

.field public mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

.field public mOnScrollListenerDelegate:Landroid/widget/AbsListView$OnScrollListener;

.field private mSelectorPositionField:Ljava/lang/reflect/Field;

.field private mSelectorRect:Landroid/graphics/Rect;

.field private mViewConfig:Landroid/view/ViewConfiguration;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 130
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 131
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 134
    const v0, 0x1010074

    invoke-direct {p0, p1, p2, v0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 135
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 139
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ListView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 33
    iput-boolean v3, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mAreHeadersSticky:Z

    .line 39
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mClippingRect:Landroid/graphics/Rect;

    .line 40
    iput-object v5, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mCurrentHeaderId:Ljava/lang/Long;

    .line 42
    const/high16 v2, -0x40800000    # -1.0f

    iput v2, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mHeaderDownY:F

    .line 43
    iput-boolean v4, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mHeaderBeingPressed:Z

    .line 48
    iput-boolean v4, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mDrawingListUnderStickyHeader:Z

    .line 49
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    iput-object v2, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 52
    new-instance v2, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView$1;

    invoke-direct {v2, p0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView$1;-><init>(Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;)V

    iput-object v2, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mAdapterHeaderClickListener:Lcom/fimi/widget/sticklistview/util/AdapterWrapper$OnHeaderClickListener;

    .line 64
    new-instance v2, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView$2;

    invoke-direct {v2, p0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView$2;-><init>(Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;)V

    iput-object v2, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mDataSetChangedObserver:Landroid/database/DataSetObserver;

    .line 91
    new-instance v2, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView$3;

    invoke-direct {v2, p0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView$3;-><init>(Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;)V

    iput-object v2, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    .line 141
    iget-object v2, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mOnScrollListener:Landroid/widget/AbsListView$OnScrollListener;

    invoke-super {p0, v2}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    .line 144
    invoke-super {p0, v5}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 145
    invoke-super {p0, v4}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 146
    invoke-static {p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v2

    iput-object v2, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mViewConfig:Landroid/view/ViewConfiguration;

    .line 147
    iget-object v2, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mClippingToPadding:Ljava/lang/Boolean;

    if-nez v2, :cond_0

    .line 148
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    iput-object v2, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mClippingToPadding:Ljava/lang/Boolean;

    .line 152
    :cond_0
    :try_start_0
    const-class v2, Landroid/widget/AbsListView;

    const-string v3, "mSelectorRect"

    .line 153
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v1

    .line 154
    .local v1, "selectorRectField":Ljava/lang/reflect/Field;
    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Field;->setAccessible(Z)V

    .line 155
    invoke-virtual {v1, p0}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/graphics/Rect;

    iput-object v2, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mSelectorRect:Landroid/graphics/Rect;

    .line 157
    const-class v2, Landroid/widget/AbsListView;

    const-string v3, "mSelectorPosition"

    .line 158
    invoke-virtual {v2, v3}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    iput-object v2, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mSelectorPositionField:Ljava/lang/reflect/Field;

    .line 159
    iget-object v2, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mSelectorPositionField:Ljava/lang/reflect/Field;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/reflect/Field;->setAccessible(Z)V
    :try_end_0
    .catch Ljava/lang/NoSuchFieldException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_2

    .line 168
    .end local v1    # "selectorRectField":Ljava/lang/reflect/Field;
    :goto_0
    return-void

    .line 160
    :catch_0
    move-exception v0

    .line 161
    .local v0, "e":Ljava/lang/NoSuchFieldException;
    invoke-virtual {v0}, Ljava/lang/NoSuchFieldException;->printStackTrace()V

    goto :goto_0

    .line 162
    .end local v0    # "e":Ljava/lang/NoSuchFieldException;
    :catch_1
    move-exception v0

    .line 163
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    goto :goto_0

    .line 164
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_2
    move-exception v0

    .line 165
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_0
.end method

.method static synthetic access$000(Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;)Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView$OnHeaderClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;

    .prologue
    .line 26
    iget-object v0, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mOnHeaderClickListener:Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView$OnHeaderClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;

    .prologue
    .line 26
    invoke-direct {p0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->reset()V

    return-void
.end method

.method static synthetic access$200(Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;I)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;
    .param p1, "x1"    # I

    .prologue
    .line 26
    invoke-direct {p0, p1}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->scrollChanged(I)V

    return-void
.end method

.method private drawStickyHeader(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 347
    invoke-direct {p0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->getHeaderHeight()I

    move-result v0

    .line 348
    .local v0, "headerHeight":I
    iget v2, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mHeaderBottomPosition:I

    sub-int v1, v2, v0

    .line 350
    .local v1, "top":I
    iget-object v2, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->getPaddingLeft()I

    move-result v3

    iput v3, v2, Landroid/graphics/Rect;->left:I

    .line 351
    iget-object v2, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual {p0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->getPaddingRight()I

    move-result v4

    sub-int/2addr v3, v4

    iput v3, v2, Landroid/graphics/Rect;->right:I

    .line 352
    iget-object v2, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mClippingRect:Landroid/graphics/Rect;

    add-int v3, v1, v0

    iput v3, v2, Landroid/graphics/Rect;->bottom:I

    .line 353
    iget-object v3, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mClippingRect:Landroid/graphics/Rect;

    iget-object v2, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mClippingToPadding:Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-virtual {p0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->getPaddingTop()I

    move-result v2

    :goto_0
    iput v2, v3, Landroid/graphics/Rect;->top:I

    .line 355
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 356
    iget-object v2, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 357
    invoke-virtual {p0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    int-to-float v3, v1

    invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->translate(FF)V

    .line 358
    iget-object v2, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v2, p1}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 359
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 360
    return-void

    .line 353
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private fixedFirstVisibleItem(I)I
    .locals 5
    .param p1, "firstVisibleItem"    # I

    .prologue
    .line 517
    sget v3, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v4, 0xb

    if-lt v3, v4, :cond_0

    move v0, p1

    .end local p1    # "firstVisibleItem":I
    .local v0, "firstVisibleItem":I
    move v1, p1

    .line 537
    .end local v0    # "firstVisibleItem":I
    .local v1, "firstVisibleItem":I
    :goto_0
    return v1

    .line 521
    .end local v1    # "firstVisibleItem":I
    .restart local p1    # "firstVisibleItem":I
    :cond_0
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    invoke-virtual {p0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->getChildCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 522
    invoke-virtual {p0, v2}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getBottom()I

    move-result v3

    if-ltz v3, :cond_3

    .line 523
    add-int/2addr p1, v2

    .line 530
    :cond_1
    iget-object v3, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mClippingToPadding:Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-nez v3, :cond_2

    invoke-virtual {p0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->getPaddingTop()I

    move-result v3

    if-lez v3, :cond_2

    .line 531
    const/4 v3, 0x0

    invoke-super {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    invoke-virtual {v3}, Landroid/view/View;->getTop()I

    move-result v3

    if-lez v3, :cond_2

    .line 532
    if-lez p1, :cond_2

    .line 533
    add-int/lit8 p1, p1, -0x1

    :cond_2
    move v0, p1

    .end local p1    # "firstVisibleItem":I
    .restart local v0    # "firstVisibleItem":I
    move v1, p1

    .line 537
    .end local v0    # "firstVisibleItem":I
    .restart local v1    # "firstVisibleItem":I
    goto :goto_0

    .line 521
    .end local v1    # "firstVisibleItem":I
    .restart local p1    # "firstVisibleItem":I
    :cond_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method private getHeaderHeight()I
    .locals 1

    .prologue
    .line 390
    iget-object v0, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mHeader:Landroid/view/View;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    goto :goto_0
.end method

.method private getSelectorPosition()I
    .locals 4

    .prologue
    .line 327
    iget-object v2, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mSelectorPositionField:Ljava/lang/reflect/Field;

    if-nez v2, :cond_1

    .line 329
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    invoke-virtual {p0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->getChildCount()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 330
    invoke-virtual {p0, v1}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/View;->getBottom()I

    move-result v2

    iget-object v3, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mSelectorRect:Landroid/graphics/Rect;

    iget v3, v3, Landroid/graphics/Rect;->bottom:I

    if-ne v2, v3, :cond_0

    .line 331
    invoke-virtual {p0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->getFirstVisiblePosition()I

    move-result v2

    invoke-direct {p0, v2}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->fixedFirstVisibleItem(I)I

    move-result v2

    add-int/2addr v2, v1

    .line 343
    .end local v1    # "i":I
    :goto_1
    return v2

    .line 329
    .restart local v1    # "i":I
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 336
    .end local v1    # "i":I
    :cond_1
    :try_start_0
    iget-object v2, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mSelectorPositionField:Ljava/lang/reflect/Field;

    invoke-virtual {v2, p0}, Ljava/lang/reflect/Field;->getInt(Ljava/lang/Object;)I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v2

    goto :goto_1

    .line 337
    :catch_0
    move-exception v0

    .line 338
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v0}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 343
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :cond_2
    :goto_2
    const/4 v2, -0x1

    goto :goto_1

    .line 339
    :catch_1
    move-exception v0

    .line 340
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    goto :goto_2
.end method

.method private isScrollBarOverlay()Z
    .locals 2

    .prologue
    .line 385
    invoke-virtual {p0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->getScrollBarStyle()I

    move-result v0

    .line 386
    .local v0, "scrollBarStyle":I
    if-eqz v0, :cond_0

    const/high16 v1, 0x2000000

    if-ne v0, v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private measureHeader()V
    .locals 8

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    const/4 v4, 0x0

    .line 364
    invoke-virtual {p0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->getWidth()I

    move-result v3

    .line 365
    invoke-virtual {p0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->getPaddingLeft()I

    move-result v5

    sub-int/2addr v3, v5

    invoke-virtual {p0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->getPaddingRight()I

    move-result v5

    sub-int v5, v3, v5

    .line 366
    invoke-direct {p0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->isScrollBarOverlay()Z

    move-result v3

    if-eqz v3, :cond_0

    move v3, v4

    :goto_0
    sub-int v3, v5, v3

    .line 364
    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    .line 367
    .local v2, "widthMeasureSpec":I
    const/4 v0, 0x0

    .line 369
    .local v0, "heightMeasureSpec":I
    iget-object v3, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 370
    .local v1, "params":Landroid/view/ViewGroup$LayoutParams;
    if-eqz v1, :cond_1

    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    if-lez v3, :cond_1

    .line 371
    iget v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    invoke-static {v3, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    .line 377
    :goto_1
    iget-object v3, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v3, v2, v0}, Landroid/view/View;->measure(II)V

    .line 380
    iget-object v3, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {p0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->getPaddingLeft()I

    move-result v5

    invoke-virtual {p0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->getWidth()I

    move-result v6

    .line 381
    invoke-virtual {p0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->getPaddingRight()I

    move-result v7

    sub-int/2addr v6, v7

    iget-object v7, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getMeasuredHeight()I

    move-result v7

    .line 380
    invoke-virtual {v3, v5, v4, v6, v7}, Landroid/view/View;->layout(IIII)V

    .line 382
    return-void

    .line 366
    .end local v0    # "heightMeasureSpec":I
    .end local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    .end local v2    # "widthMeasureSpec":I
    :cond_0
    invoke-virtual {p0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->getVerticalScrollbarWidth()I

    move-result v3

    goto :goto_0

    .line 374
    .restart local v0    # "heightMeasureSpec":I
    .restart local v1    # "params":Landroid/view/ViewGroup$LayoutParams;
    .restart local v2    # "widthMeasureSpec":I
    :cond_1
    invoke-static {v4, v4}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v0

    goto :goto_1
.end method

.method private positionSelectorRect()V
    .locals 7

    .prologue
    .line 313
    iget-object v4, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v4}, Landroid/graphics/Rect;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 314
    invoke-direct {p0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->getSelectorPosition()I

    move-result v1

    .line 315
    .local v1, "selectorPosition":I
    if-ltz v1, :cond_0

    .line 316
    invoke-virtual {p0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->getFirstVisiblePosition()I

    move-result v4

    invoke-direct {p0, v4}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->fixedFirstVisibleItem(I)I

    move-result v0

    .line 317
    .local v0, "firstVisibleItem":I
    sub-int v4, v1, v0

    invoke-virtual {p0, v4}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->getChildAt(I)Landroid/view/View;

    move-result-object v2

    .line 318
    .local v2, "v":Landroid/view/View;
    instance-of v4, v2, Lcom/fimi/widget/sticklistview/util/WrapperView;

    if-eqz v4, :cond_0

    move-object v3, v2

    .line 319
    check-cast v3, Lcom/fimi/widget/sticklistview/util/WrapperView;

    .line 320
    .local v3, "wrapper":Lcom/fimi/widget/sticklistview/util/WrapperView;
    iget-object v4, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mSelectorRect:Landroid/graphics/Rect;

    invoke-virtual {v3}, Lcom/fimi/widget/sticklistview/util/WrapperView;->getTop()I

    move-result v5

    iget v6, v3, Lcom/fimi/widget/sticklistview/util/WrapperView;->mItemTop:I

    add-int/2addr v5, v6

    iput v5, v4, Landroid/graphics/Rect;->top:I

    .line 324
    .end local v0    # "firstVisibleItem":I
    .end local v1    # "selectorPosition":I
    .end local v2    # "v":Landroid/view/View;
    .end local v3    # "wrapper":Lcom/fimi/widget/sticklistview/util/WrapperView;
    :cond_0
    return-void
.end method

.method private reset()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 180
    iput-object v0, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mHeader:Landroid/view/View;

    .line 181
    iput-object v0, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mCurrentHeaderId:Ljava/lang/Long;

    .line 182
    iput-object v0, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mHeaderPosition:Ljava/lang/Integer;

    .line 183
    const/4 v0, -0x1

    iput v0, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mHeaderBottomPosition:I

    .line 184
    return-void
.end method

.method private scrollChanged(I)V
    .locals 23
    .param p1, "reportedFirstVisibleItem"    # I

    .prologue
    .line 401
    const-string v19, "parent"

    const-string v20, "scrollChanged"

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mAdapter:Lcom/fimi/widget/sticklistview/util/AdapterWrapper;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    const/4 v6, 0x0

    .line 403
    .local v6, "adapterCount":I
    :goto_0
    if-eqz v6, :cond_0

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mAreHeadersSticky:Z

    move/from16 v19, v0

    if-nez v19, :cond_2

    .line 477
    :cond_0
    :goto_1
    return-void

    .line 402
    .end local v6    # "adapterCount":I
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mAdapter:Lcom/fimi/widget/sticklistview/util/AdapterWrapper;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fimi/widget/sticklistview/util/AdapterWrapper;->getCount()I

    move-result v6

    goto :goto_0

    .line 407
    .restart local v6    # "adapterCount":I
    :cond_2
    invoke-virtual/range {p0 .. p0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->getHeaderViewsCount()I

    move-result v14

    .line 408
    .local v14, "listViewHeaderCount":I
    invoke-direct/range {p0 .. p1}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->fixedFirstVisibleItem(I)I

    move-result v19

    sub-int v11, v19, v14

    .line 411
    .local v11, "firstVisibleItem":I
    if-ltz v11, :cond_3

    add-int/lit8 v19, v6, -0x1

    move/from16 v0, v19

    if-le v11, v0, :cond_4

    .line 412
    :cond_3
    invoke-direct/range {p0 .. p0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->reset()V

    .line 413
    invoke-direct/range {p0 .. p0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->updateHeaderVisibilities()V

    .line 414
    invoke-virtual/range {p0 .. p0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->invalidate()V

    goto :goto_1

    .line 418
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mHeaderPosition:Ljava/lang/Integer;

    move-object/from16 v19, v0

    if-eqz v19, :cond_5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mHeaderPosition:Ljava/lang/Integer;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Integer;->intValue()I

    move-result v19

    move/from16 v0, v19

    if-eq v0, v11, :cond_6

    .line 419
    :cond_5
    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mHeaderPosition:Ljava/lang/Integer;

    .line 420
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mAdapter:Lcom/fimi/widget/sticklistview/util/AdapterWrapper;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Lcom/fimi/widget/sticklistview/util/AdapterWrapper;->getHeaderId(I)J

    move-result-wide v20

    invoke-static/range {v20 .. v21}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mCurrentHeaderId:Ljava/lang/Long;

    .line 421
    const-string/jumbo v19, "zhej"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "scrollChanged: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mHeaderPosition:Ljava/lang/Integer;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 422
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mAdapter:Lcom/fimi/widget/sticklistview/util/AdapterWrapper;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mHeaderPosition:Ljava/lang/Integer;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mHeader:Landroid/view/View;

    move-object/from16 v21, v0

    const/16 v22, 0x1

    move-object/from16 v0, v19

    move/from16 v1, v20

    move-object/from16 v2, v21

    move-object/from16 v3, p0

    move/from16 v4, v22

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/fimi/widget/sticklistview/util/AdapterWrapper;->getHeaderView(ILandroid/view/View;Landroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v19

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mHeader:Landroid/view/View;

    .line 423
    invoke-direct/range {p0 .. p0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->measureHeader()V

    .line 426
    :cond_6
    invoke-virtual/range {p0 .. p0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->getChildCount()I

    move-result v8

    .line 427
    .local v8, "childCount":I
    if-eqz v8, :cond_10

    .line 428
    const/16 v16, 0x0

    .line 429
    .local v16, "viewToWatch":Landroid/view/View;
    const v18, 0x7fffffff

    .line 430
    .local v18, "watchingChildDistance":I
    const/16 v17, 0x0

    .line 432
    .local v17, "viewToWatchIsFooter":Z
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_2
    if-ge v13, v8, :cond_e

    .line 433
    move-object/from16 v0, p0

    invoke-super {v0, v13}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 434
    .local v7, "child":Landroid/view/View;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mFooterViews:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    if-eqz v19, :cond_8

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mFooterViews:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    .line 435
    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v19

    if-eqz v19, :cond_8

    const/4 v10, 0x1

    .line 437
    .local v10, "childIsFooter":Z
    :goto_3
    invoke-virtual {v7}, Landroid/view/View;->getTop()I

    move-result v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mClippingToPadding:Ljava/lang/Boolean;

    move-object/from16 v19, v0

    .line 438
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    if-eqz v19, :cond_9

    invoke-virtual/range {p0 .. p0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->getPaddingTop()I

    move-result v19

    :goto_4
    sub-int v9, v20, v19

    .line 439
    .local v9, "childDistance":I
    if-gez v9, :cond_a

    .line 432
    :cond_7
    :goto_5
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 435
    .end local v9    # "childDistance":I
    .end local v10    # "childIsFooter":Z
    :cond_8
    const/4 v10, 0x0

    goto :goto_3

    .line 438
    .restart local v10    # "childIsFooter":Z
    :cond_9
    const/16 v19, 0x0

    goto :goto_4

    .line 443
    .restart local v9    # "childDistance":I
    :cond_a
    if-eqz v16, :cond_d

    if-nez v17, :cond_b

    move-object/from16 v19, v16

    check-cast v19, Lcom/fimi/widget/sticklistview/util/WrapperView;

    .line 445
    invoke-virtual/range {v19 .. v19}, Lcom/fimi/widget/sticklistview/util/WrapperView;->hasHeader()Z

    move-result v19

    if-eqz v19, :cond_d

    :cond_b
    if-nez v10, :cond_c

    move-object/from16 v19, v7

    check-cast v19, Lcom/fimi/widget/sticklistview/util/WrapperView;

    .line 446
    invoke-virtual/range {v19 .. v19}, Lcom/fimi/widget/sticklistview/util/WrapperView;->hasHeader()Z

    move-result v19

    if-eqz v19, :cond_7

    :cond_c
    move/from16 v0, v18

    if-ge v9, v0, :cond_7

    .line 447
    :cond_d
    move-object/from16 v16, v7

    .line 448
    move/from16 v17, v10

    .line 449
    move/from16 v18, v9

    goto :goto_5

    .line 453
    .end local v7    # "child":Landroid/view/View;
    .end local v9    # "childDistance":I
    .end local v10    # "childIsFooter":Z
    :cond_e
    invoke-direct/range {p0 .. p0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->getHeaderHeight()I

    move-result v12

    .line 454
    .local v12, "headerHeight":I
    if-eqz v16, :cond_14

    if-nez v17, :cond_f

    move-object/from16 v19, v16

    check-cast v19, Lcom/fimi/widget/sticklistview/util/WrapperView;

    .line 456
    invoke-virtual/range {v19 .. v19}, Lcom/fimi/widget/sticklistview/util/WrapperView;->hasHeader()Z

    move-result v19

    if-eqz v19, :cond_14

    .line 457
    :cond_f
    if-ne v11, v14, :cond_11

    const/16 v19, 0x0

    .line 458
    move-object/from16 v0, p0

    move/from16 v1, v19

    invoke-super {v0, v1}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Landroid/view/View;->getTop()I

    move-result v19

    if-lez v19, :cond_11

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mClippingToPadding:Ljava/lang/Boolean;

    move-object/from16 v19, v0

    .line 459
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    if-nez v19, :cond_11

    .line 460
    const/16 v19, 0x0

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mHeaderBottomPosition:I

    .line 475
    .end local v12    # "headerHeight":I
    .end local v13    # "i":I
    .end local v16    # "viewToWatch":Landroid/view/View;
    .end local v17    # "viewToWatchIsFooter":Z
    .end local v18    # "watchingChildDistance":I
    :cond_10
    :goto_6
    invoke-direct/range {p0 .. p0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->updateHeaderVisibilities()V

    .line 476
    invoke-virtual/range {p0 .. p0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->invalidate()V

    goto/16 :goto_1

    .line 462
    .restart local v12    # "headerHeight":I
    .restart local v13    # "i":I
    .restart local v16    # "viewToWatch":Landroid/view/View;
    .restart local v17    # "viewToWatchIsFooter":Z
    .restart local v18    # "watchingChildDistance":I
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mClippingToPadding:Ljava/lang/Boolean;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    if-eqz v19, :cond_12

    invoke-virtual/range {p0 .. p0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->getPaddingTop()I

    move-result v15

    .line 464
    .local v15, "paddingTop":I
    :goto_7
    invoke-virtual/range {v16 .. v16}, Landroid/view/View;->getTop()I

    move-result v19

    add-int v20, v12, v15

    invoke-static/range {v19 .. v20}, Ljava/lang/Math;->min(II)I

    move-result v19

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mHeaderBottomPosition:I

    .line 466
    move-object/from16 v0, p0

    iget v0, v0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mHeaderBottomPosition:I

    move/from16 v19, v0

    move/from16 v0, v19

    if-ge v0, v15, :cond_13

    add-int v19, v12, v15

    :goto_8
    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mHeaderBottomPosition:I

    goto :goto_6

    .line 462
    .end local v15    # "paddingTop":I
    :cond_12
    const/4 v15, 0x0

    goto :goto_7

    .line 466
    .restart local v15    # "paddingTop":I
    :cond_13
    move-object/from16 v0, p0

    iget v0, v0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mHeaderBottomPosition:I

    move/from16 v19, v0

    goto :goto_8

    .line 471
    .end local v15    # "paddingTop":I
    :cond_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mClippingToPadding:Ljava/lang/Boolean;

    move-object/from16 v19, v0

    .line 472
    invoke-virtual/range {v19 .. v19}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v19

    if-eqz v19, :cond_15

    invoke-virtual/range {p0 .. p0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->getPaddingTop()I

    move-result v19

    :goto_9
    add-int v19, v19, v12

    move/from16 v0, v19

    move-object/from16 v1, p0

    iput v0, v1, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mHeaderBottomPosition:I

    goto :goto_6

    :cond_15
    const/16 v19, 0x0

    goto :goto_9
.end method

.method private updateHeaderVisibilities()V
    .locals 8

    .prologue
    const/4 v6, 0x0

    .line 498
    iget-object v7, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mClippingToPadding:Ljava/lang/Boolean;

    invoke-virtual {v7}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-virtual {p0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->getPaddingTop()I

    move-result v4

    .line 499
    .local v4, "top":I
    :goto_0
    invoke-virtual {p0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->getChildCount()I

    move-result v1

    .line 500
    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    if-ge v3, v1, :cond_3

    .line 501
    invoke-super {p0, v3}, Landroid/widget/ListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 502
    .local v0, "child":Landroid/view/View;
    instance-of v7, v0, Lcom/fimi/widget/sticklistview/util/WrapperView;

    if-eqz v7, :cond_0

    move-object v5, v0

    .line 503
    check-cast v5, Lcom/fimi/widget/sticklistview/util/WrapperView;

    .line 504
    .local v5, "wrapperViewChild":Lcom/fimi/widget/sticklistview/util/WrapperView;
    invoke-virtual {v5}, Lcom/fimi/widget/sticklistview/util/WrapperView;->hasHeader()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 505
    iget-object v2, v5, Lcom/fimi/widget/sticklistview/util/WrapperView;->mHeader:Landroid/view/View;

    .line 506
    .local v2, "childHeader":Landroid/view/View;
    invoke-virtual {v5}, Lcom/fimi/widget/sticklistview/util/WrapperView;->getTop()I

    move-result v7

    if-ge v7, v4, :cond_2

    .line 507
    const/4 v7, 0x4

    invoke-virtual {v2, v7}, Landroid/view/View;->setVisibility(I)V

    .line 500
    .end local v2    # "childHeader":Landroid/view/View;
    .end local v5    # "wrapperViewChild":Lcom/fimi/widget/sticklistview/util/WrapperView;
    :cond_0
    :goto_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .end local v0    # "child":Landroid/view/View;
    .end local v1    # "childCount":I
    .end local v3    # "i":I
    .end local v4    # "top":I
    :cond_1
    move v4, v6

    .line 498
    goto :goto_0

    .line 509
    .restart local v0    # "child":Landroid/view/View;
    .restart local v1    # "childCount":I
    .restart local v2    # "childHeader":Landroid/view/View;
    .restart local v3    # "i":I
    .restart local v4    # "top":I
    .restart local v5    # "wrapperViewChild":Lcom/fimi/widget/sticklistview/util/WrapperView;
    :cond_2
    invoke-virtual {v2, v6}, Landroid/view/View;->setVisibility(I)V

    goto :goto_2

    .line 514
    .end local v0    # "child":Landroid/view/View;
    .end local v2    # "childHeader":Landroid/view/View;
    .end local v5    # "wrapperViewChild":Lcom/fimi/widget/sticklistview/util/WrapperView;
    :cond_3
    return-void
.end method

.method private wrapAdapter(Landroid/widget/ListAdapter;)Lcom/fimi/widget/sticklistview/util/AdapterWrapper;
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    .line 259
    instance-of v1, p1, Landroid/widget/SectionIndexer;

    if-eqz v1, :cond_0

    .line 260
    new-instance v0, Lcom/fimi/widget/sticklistview/util/SectionIndexerAdapterWrapper;

    invoke-virtual {p0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast p1, Lcom/fimi/widget/sticklistview/util/StickyListHeadersAdapter;

    .end local p1    # "adapter":Landroid/widget/ListAdapter;
    invoke-direct {v0, v1, p1}, Lcom/fimi/widget/sticklistview/util/SectionIndexerAdapterWrapper;-><init>(Landroid/content/Context;Lcom/fimi/widget/sticklistview/util/StickyListHeadersAdapter;)V

    .line 266
    .local v0, "wrapper":Lcom/fimi/widget/sticklistview/util/AdapterWrapper;
    :goto_0
    iget-object v1, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mDivider:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Lcom/fimi/widget/sticklistview/util/AdapterWrapper;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 267
    iget v1, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mDividerHeight:I

    invoke-virtual {v0, v1}, Lcom/fimi/widget/sticklistview/util/AdapterWrapper;->setDividerHeight(I)V

    .line 268
    iget-object v1, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mDataSetChangedObserver:Landroid/database/DataSetObserver;

    invoke-virtual {v0, v1}, Lcom/fimi/widget/sticklistview/util/AdapterWrapper;->registerDataSetObserver(Landroid/database/DataSetObserver;)V

    .line 269
    iget-object v1, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mAdapterHeaderClickListener:Lcom/fimi/widget/sticklistview/util/AdapterWrapper$OnHeaderClickListener;

    invoke-virtual {v0, v1}, Lcom/fimi/widget/sticklistview/util/AdapterWrapper;->setOnHeaderClickListener(Lcom/fimi/widget/sticklistview/util/AdapterWrapper$OnHeaderClickListener;)V

    .line 270
    return-object v0

    .line 263
    .end local v0    # "wrapper":Lcom/fimi/widget/sticklistview/util/AdapterWrapper;
    .restart local p1    # "adapter":Landroid/widget/ListAdapter;
    :cond_0
    new-instance v0, Lcom/fimi/widget/sticklistview/util/AdapterWrapper;

    invoke-virtual {p0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->getContext()Landroid/content/Context;

    move-result-object v1

    check-cast p1, Lcom/fimi/widget/sticklistview/util/StickyListHeadersAdapter;

    .end local p1    # "adapter":Landroid/widget/ListAdapter;
    invoke-direct {v0, v1, p1}, Lcom/fimi/widget/sticklistview/util/AdapterWrapper;-><init>(Landroid/content/Context;Lcom/fimi/widget/sticklistview/util/StickyListHeadersAdapter;)V

    .restart local v0    # "wrapper":Lcom/fimi/widget/sticklistview/util/AdapterWrapper;
    goto :goto_0
.end method


# virtual methods
.method public addFooterView(Landroid/view/View;)V
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 481
    invoke-super {p0, p1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V

    .line 482
    iget-object v0, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mFooterViews:Ljava/util/ArrayList;

    if-nez v0, :cond_0

    .line 483
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mFooterViews:Ljava/util/ArrayList;

    .line 485
    :cond_0
    iget-object v0, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mFooterViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 486
    return-void
.end method

.method protected dispatchDraw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 287
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x8

    if-ge v0, v1, :cond_0

    .line 288
    invoke-virtual {p0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->scrollChanged(I)V

    .line 290
    :cond_0
    invoke-direct {p0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->positionSelectorRect()V

    .line 291
    iget-boolean v0, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mAreHeadersSticky:Z

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mHeader:Landroid/view/View;

    if-nez v0, :cond_2

    .line 292
    :cond_1
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 310
    :goto_0
    return-void

    .line 296
    :cond_2
    iget-boolean v0, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mDrawingListUnderStickyHeader:Z

    if-nez v0, :cond_3

    .line 297
    iget-object v0, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mClippingRect:Landroid/graphics/Rect;

    const/4 v1, 0x0

    iget v2, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mHeaderBottomPosition:I

    .line 298
    invoke-virtual {p0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->getWidth()I

    move-result v3

    invoke-virtual {p0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->getHeight()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Rect;->set(IIII)V

    .line 299
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 300
    iget-object v0, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mClippingRect:Landroid/graphics/Rect;

    invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->clipRect(Landroid/graphics/Rect;)Z

    .line 303
    :cond_3
    invoke-super {p0, p1}, Landroid/widget/ListView;->dispatchDraw(Landroid/graphics/Canvas;)V

    .line 305
    iget-boolean v0, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mDrawingListUnderStickyHeader:Z

    if-nez v0, :cond_4

    .line 306
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 309
    :cond_4
    invoke-direct {p0, p1}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->drawStickyHeader(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method public getAreHeadersSticky()Z
    .locals 1

    .prologue
    .line 233
    iget-boolean v0, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mAreHeadersSticky:Z

    return v0
.end method

.method public getWrappedAdapter()Lcom/fimi/widget/sticklistview/util/StickyListHeadersAdapter;
    .locals 1

    .prologue
    .line 274
    iget-object v0, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mAdapter:Lcom/fimi/widget/sticklistview/util/AdapterWrapper;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mAdapter:Lcom/fimi/widget/sticklistview/util/AdapterWrapper;

    iget-object v0, v0, Lcom/fimi/widget/sticklistview/util/AdapterWrapper;->mDelegate:Lcom/fimi/widget/sticklistview/util/StickyListHeadersAdapter;

    goto :goto_0
.end method

.method public getWrappedView(I)Landroid/view/View;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 278
    invoke-virtual {p0, p1}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->getChildAt(I)Landroid/view/View;

    move-result-object v0

    .line 279
    .local v0, "view":Landroid/view/View;
    instance-of v1, v0, Lcom/fimi/widget/sticklistview/util/WrapperView;

    if-eqz v1, :cond_0

    .line 280
    check-cast v0, Lcom/fimi/widget/sticklistview/util/WrapperView;

    .end local v0    # "view":Landroid/view/View;
    iget-object v0, v0, Lcom/fimi/widget/sticklistview/util/WrapperView;->mItem:Landroid/view/View;

    .line 282
    :cond_0
    return-object v0
.end method

.method public isDrawingListUnderStickyHeader()Z
    .locals 1

    .prologue
    .line 551
    iget-boolean v0, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mDrawingListUnderStickyHeader:Z

    return v0
.end method

.method protected onLayout(ZIIII)V
    .locals 1
    .param p1, "changed"    # Z
    .param p2, "l"    # I
    .param p3, "t"    # I
    .param p4, "r"    # I
    .param p5, "b"    # I

    .prologue
    .line 172
    invoke-super/range {p0 .. p5}, Landroid/widget/ListView;->onLayout(ZIIII)V

    .line 173
    if-eqz p1, :cond_0

    .line 174
    invoke-direct {p0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->reset()V

    .line 175
    invoke-virtual {p0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->getFirstVisiblePosition()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->scrollChanged(I)V

    .line 177
    :cond_0
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 8
    .param p1, "ev"    # Landroid/view/MotionEvent;

    .prologue
    const/high16 v3, -0x40800000    # -1.0f

    const/4 v6, 0x1

    const/4 v2, 0x0

    .line 558
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v7

    .line 559
    .local v7, "action":I
    if-nez v7, :cond_1

    .line 560
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mHeaderBottomPosition:I

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 561
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iput v0, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mHeaderDownY:F

    .line 562
    iput-boolean v6, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mHeaderBeingPressed:Z

    .line 563
    iget-object v0, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v0, v6}, Landroid/view/View;->setPressed(Z)V

    .line 564
    iget-object v0, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 565
    invoke-virtual {p0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mHeaderBottomPosition:I

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->invalidate(IIII)V

    .line 592
    :cond_0
    :goto_0
    return v6

    .line 568
    :cond_1
    iget-boolean v0, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mHeaderBeingPressed:Z

    if-eqz v0, :cond_4

    .line 569
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v0

    iget v1, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mHeaderDownY:F

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    iget-object v1, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mViewConfig:Landroid/view/ViewConfiguration;

    .line 570
    invoke-virtual {v1}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v1

    int-to-float v1, v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_3

    .line 571
    if-eq v7, v6, :cond_2

    const/4 v0, 0x3

    if-ne v7, v0, :cond_0

    .line 573
    :cond_2
    iput v3, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mHeaderDownY:F

    .line 574
    iput-boolean v2, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mHeaderBeingPressed:Z

    .line 575
    iget-object v0, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 576
    iget-object v0, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 577
    invoke-virtual {p0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mHeaderBottomPosition:I

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->invalidate(IIII)V

    .line 578
    iget-object v0, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mOnHeaderClickListener:Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView$OnHeaderClickListener;

    if-eqz v0, :cond_0

    .line 579
    iget-object v0, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mOnHeaderClickListener:Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView$OnHeaderClickListener;

    iget-object v2, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mHeader:Landroid/view/View;

    iget-object v1, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mHeaderPosition:Ljava/lang/Integer;

    .line 580
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v3

    iget-object v1, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mCurrentHeaderId:Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    move-object v1, p0

    .line 579
    invoke-interface/range {v0 .. v6}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView$OnHeaderClickListener;->onHeaderClick(Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;Landroid/view/View;IJZ)V

    goto :goto_0

    .line 585
    :cond_3
    iput v3, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mHeaderDownY:F

    .line 586
    iput-boolean v2, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mHeaderBeingPressed:Z

    .line 587
    iget-object v0, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v0, v2}, Landroid/view/View;->setPressed(Z)V

    .line 588
    iget-object v0, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mHeader:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->invalidate()V

    .line 589
    invoke-virtual {p0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->getWidth()I

    move-result v0

    iget v1, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mHeaderBottomPosition:I

    invoke-virtual {p0, v2, v2, v0, v1}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->invalidate(IIII)V

    .line 592
    :cond_4
    invoke-super {p0, p1}, Landroid/widget/ListView;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v6

    goto :goto_0
.end method

.method public performItemClick(Landroid/view/View;IJ)Z
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "position"    # I
    .param p3, "id"    # J

    .prologue
    .line 188
    instance-of v0, p1, Lcom/fimi/widget/sticklistview/util/WrapperView;

    if-eqz v0, :cond_0

    .line 189
    check-cast p1, Lcom/fimi/widget/sticklistview/util/WrapperView;

    .end local p1    # "view":Landroid/view/View;
    iget-object p1, p1, Lcom/fimi/widget/sticklistview/util/WrapperView;->mItem:Landroid/view/View;

    .line 191
    .restart local p1    # "view":Landroid/view/View;
    :cond_0
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/ListView;->performItemClick(Landroid/view/View;IJ)Z

    move-result v0

    return v0
.end method

.method public removeFooterView(Landroid/view/View;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 490
    invoke-super {p0, p1}, Landroid/widget/ListView;->removeFooterView(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 491
    iget-object v0, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mFooterViews:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 492
    const/4 v0, 0x1

    .line 494
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic setAdapter(Landroid/widget/Adapter;)V
    .locals 0

    .prologue
    .line 26
    check-cast p1, Landroid/widget/ListAdapter;

    invoke-virtual {p0, p1}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->setAdapter(Landroid/widget/ListAdapter;)V

    return-void
.end method

.method public setAdapter(Landroid/widget/ListAdapter;)V
    .locals 2
    .param p1, "adapter"    # Landroid/widget/ListAdapter;

    .prologue
    const/4 v1, 0x0

    .line 238
    invoke-virtual {p0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->isInEditMode()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 239
    invoke-super {p0, p1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 255
    :goto_0
    return-void

    .line 242
    :cond_0
    if-nez p1, :cond_1

    .line 243
    iput-object v1, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mAdapter:Lcom/fimi/widget/sticklistview/util/AdapterWrapper;

    .line 244
    invoke-direct {p0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->reset()V

    .line 245
    invoke-super {p0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0

    .line 248
    :cond_1
    instance-of v0, p1, Lcom/fimi/widget/sticklistview/util/StickyListHeadersAdapter;

    if-nez v0, :cond_2

    .line 249
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Adapter must implement StickyListHeadersAdapter"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 252
    :cond_2
    invoke-direct {p0, p1}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->wrapAdapter(Landroid/widget/ListAdapter;)Lcom/fimi/widget/sticklistview/util/AdapterWrapper;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mAdapter:Lcom/fimi/widget/sticklistview/util/AdapterWrapper;

    .line 253
    invoke-direct {p0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->reset()V

    .line 254
    iget-object v0, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mAdapter:Lcom/fimi/widget/sticklistview/util/AdapterWrapper;

    invoke-super {p0, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    goto :goto_0
.end method

.method public setAreHeadersSticky(Z)V
    .locals 1
    .param p1, "areHeadersSticky"    # Z

    .prologue
    .line 226
    iget-boolean v0, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mAreHeadersSticky:Z

    if-eq v0, p1, :cond_0

    .line 227
    iput-boolean p1, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mAreHeadersSticky:Z

    .line 228
    invoke-virtual {p0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->requestLayout()V

    .line 230
    :cond_0
    return-void
.end method

.method public setClipToPadding(Z)V
    .locals 1
    .param p1, "clipToPadding"    # Z

    .prologue
    .line 395
    invoke-super {p0, p1}, Landroid/widget/ListView;->setClipToPadding(Z)V

    .line 396
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mClippingToPadding:Ljava/lang/Boolean;

    .line 397
    return-void
.end method

.method public setDivider(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "divider"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 196
    iput-object p1, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mDivider:Landroid/graphics/drawable/Drawable;

    .line 197
    if-eqz p1, :cond_0

    .line 198
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 199
    .local v0, "dividerDrawableHeight":I
    if-ltz v0, :cond_0

    .line 200
    invoke-virtual {p0, v0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->setDividerHeight(I)V

    .line 203
    .end local v0    # "dividerDrawableHeight":I
    :cond_0
    iget-object v1, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mAdapter:Lcom/fimi/widget/sticklistview/util/AdapterWrapper;

    if-eqz v1, :cond_1

    .line 204
    iget-object v1, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mAdapter:Lcom/fimi/widget/sticklistview/util/AdapterWrapper;

    invoke-virtual {v1, p1}, Lcom/fimi/widget/sticklistview/util/AdapterWrapper;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 205
    invoke-virtual {p0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->requestLayout()V

    .line 206
    invoke-virtual {p0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->invalidate()V

    .line 208
    :cond_1
    return-void
.end method

.method public setDividerHeight(I)V
    .locals 1
    .param p1, "height"    # I

    .prologue
    .line 212
    iput p1, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mDividerHeight:I

    .line 213
    iget-object v0, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mAdapter:Lcom/fimi/widget/sticklistview/util/AdapterWrapper;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mAdapter:Lcom/fimi/widget/sticklistview/util/AdapterWrapper;

    invoke-virtual {v0, p1}, Lcom/fimi/widget/sticklistview/util/AdapterWrapper;->setDividerHeight(I)V

    .line 215
    invoke-virtual {p0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->requestLayout()V

    .line 216
    invoke-virtual {p0}, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->invalidate()V

    .line 218
    :cond_0
    return-void
.end method

.method public setDrawingListUnderStickyHeader(Z)V
    .locals 0
    .param p1, "drawingListUnderStickyHeader"    # Z

    .prologue
    .line 547
    iput-boolean p1, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mDrawingListUnderStickyHeader:Z

    .line 548
    return-void
.end method

.method public setLoadingMoreListener(Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView$OnLoadingMoreLinstener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView$OnLoadingMoreLinstener;

    .prologue
    .line 88
    iput-object p1, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->loadMoreListener:Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView$OnLoadingMoreLinstener;

    .line 89
    return-void
.end method

.method public setOnHeaderClickListener(Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView$OnHeaderClickListener;)V
    .locals 0
    .param p1, "onHeaderClickListener"    # Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView$OnHeaderClickListener;

    .prologue
    .line 542
    iput-object p1, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mOnHeaderClickListener:Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView$OnHeaderClickListener;

    .line 543
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
    .locals 0
    .param p1, "l"    # Landroid/widget/AbsListView$OnScrollListener;

    .prologue
    .line 222
    iput-object p1, p0, Lcom/fimi/widget/sticklistview/util/StickyListHeadersListView;->mOnScrollListenerDelegate:Landroid/widget/AbsListView$OnScrollListener;

    .line 223
    return-void
.end method
