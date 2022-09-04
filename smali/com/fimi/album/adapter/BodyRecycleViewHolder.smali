.class public Lcom/fimi/album/adapter/BodyRecycleViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "BodyRecycleViewHolder.java"


# instance fields
.field public ivSelect:Landroid/widget/ImageView;

.field public sdvImageView:Lcom/facebook/drawee/view/SimpleDraweeView;

.field public tvDuringdate:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 31
    sget v0, Lcom/example/album/R$id;->simpledraweeview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/fimi/album/adapter/BodyRecycleViewHolder;->sdvImageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 32
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/album/adapter/BodyRecycleViewHolder;->sdvImageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    invoke-direct {p0, v0, v1}, Lcom/fimi/album/adapter/BodyRecycleViewHolder;->initSimpleDraweeViewParams(Landroid/content/Context;Landroid/view/View;)V

    .line 33
    sget v0, Lcom/example/album/R$id;->selected_iv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/album/adapter/BodyRecycleViewHolder;->ivSelect:Landroid/widget/ImageView;

    .line 34
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/album/adapter/BodyRecycleViewHolder;->ivSelect:Landroid/widget/ImageView;

    invoke-direct {p0, v0, p1, v1}, Lcom/fimi/album/adapter/BodyRecycleViewHolder;->initImageViewParams(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V

    .line 35
    sget v0, Lcom/example/album/R$id;->duringdate_tv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/album/adapter/BodyRecycleViewHolder;->tvDuringdate:Landroid/widget/TextView;

    .line 36
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/album/adapter/BodyRecycleViewHolder;->tvDuringdate:Landroid/widget/TextView;

    invoke-direct {p0, v0, p1, v1}, Lcom/fimi/album/adapter/BodyRecycleViewHolder;->initTextViewParams(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V

    .line 37
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/album/adapter/BodyRecycleViewHolder;->tvDuringdate:Landroid/widget/TextView;

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/FontUtil;->changeViewLanTing(Landroid/content/res/AssetManager;Landroid/view/View;)V

    .line 38
    return-void
.end method

.method private initImageViewParams(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentView"    # Landroid/view/View;
    .param p3, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 54
    invoke-virtual {p2, v2, v2}, Landroid/view/View;->measure(II)V

    .line 55
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 56
    .local v0, "currentHeight":I
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 57
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 58
    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2, p1}, Lcom/fimi/kernel/utils/SizeTool;->pixToDp(FLandroid/content/Context;)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 59
    const/high16 v2, 0x41c80000    # 25.0f

    invoke-static {v2, p1}, Lcom/fimi/kernel/utils/SizeTool;->pixToDp(FLandroid/content/Context;)I

    move-result v2

    sub-int v2, v0, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 60
    invoke-virtual {p3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    return-void
.end method

.method private initSimpleDraweeViewParams(Landroid/content/Context;Landroid/view/View;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 41
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 42
    .local v1, "mDisplayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 43
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 44
    .local v2, "screenWidth":I
    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 45
    .local v3, "scteenHeight":I
    if-ge v2, v3, :cond_0

    .line 46
    move v2, v3

    .line 48
    :cond_0
    const/high16 v4, 0x40a00000    # 5.0f

    invoke-static {v4, p1}, Lcom/fimi/kernel/utils/SizeTool;->pixToDp(FLandroid/content/Context;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    sub-int v4, v2, v4

    const/high16 v5, 0x40c00000    # 6.0f

    invoke-static {v5, p1}, Lcom/fimi/kernel/utils/SizeTool;->pixToDp(FLandroid/content/Context;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x4

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 49
    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    mul-int/lit8 v4, v4, 0x9

    div-int/lit8 v4, v4, 0x10

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 50
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 51
    return-void
.end method

.method private initTextViewParams(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentView"    # Landroid/view/View;
    .param p3, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 64
    invoke-virtual {p2, v2, v2}, Landroid/view/View;->measure(II)V

    .line 65
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 66
    .local v0, "currentHeight":I
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 67
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2, p1}, Lcom/fimi/kernel/utils/SizeTool;->pixToDp(FLandroid/content/Context;)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 68
    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v2, p1}, Lcom/fimi/kernel/utils/SizeTool;->pixToDp(FLandroid/content/Context;)I

    move-result v2

    sub-int v2, v0, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 69
    invoke-virtual {p3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 70
    return-void
.end method
