.class public Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "BodyRecycleViewHolder.java"


# instance fields
.field public ivSelect:Landroid/widget/ImageView;

.field public mDownloadStateView:Lcom/fimi/album/widget/DownloadStateView;

.field public mFileSize:Landroid/widget/TextView;

.field public mIvDownloadMask:Landroid/widget/ImageView;

.field public mIvDownloaded:Landroid/widget/ImageView;

.field public mIvSelectMask:Landroid/widget/ImageView;

.field public mIvVideoFlag:Landroid/widget/ImageView;

.field public mTvDownloadState:Landroid/widget/TextView;

.field public sdvImageView:Lcom/facebook/drawee/view/SimpleDraweeView;

.field public tvDuringdate:Lcom/fimi/album/widget/MediaStrokeTextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    .line 39
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 40
    sget v0, Lcom/fimi/app/x8s/R$id;->simpledraweeview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/facebook/drawee/view/SimpleDraweeView;

    iput-object v0, p0, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->sdvImageView:Lcom/facebook/drawee/view/SimpleDraweeView;

    .line 41
    sget v0, Lcom/fimi/app/x8s/R$id;->selected_iv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->ivSelect:Landroid/widget/ImageView;

    .line 42
    sget v0, Lcom/fimi/app/x8s/R$id;->duringdate_tv:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fimi/album/widget/MediaStrokeTextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->tvDuringdate:Lcom/fimi/album/widget/MediaStrokeTextView;

    .line 43
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->tvDuringdate:Lcom/fimi/album/widget/MediaStrokeTextView;

    invoke-virtual {v0}, Lcom/fimi/album/widget/MediaStrokeTextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 44
    sget v0, Lcom/fimi/app/x8s/R$id;->iv_download_mask:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->mIvDownloadMask:Landroid/widget/ImageView;

    .line 45
    sget v0, Lcom/fimi/app/x8s/R$id;->iv_select_mask:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->mIvSelectMask:Landroid/widget/ImageView;

    .line 46
    sget v0, Lcom/fimi/app/x8s/R$id;->iv_video_flag:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->mIvVideoFlag:Landroid/widget/ImageView;

    .line 47
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_filesize:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->mFileSize:Landroid/widget/TextView;

    .line 48
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->mFileSize:Landroid/widget/TextView;

    invoke-virtual {v0}, Landroid/widget/TextView;->getPaint()Landroid/text/TextPaint;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/text/TextPaint;->setFakeBoldText(Z)V

    .line 49
    sget v0, Lcom/fimi/app/x8s/R$id;->iv_downloaded:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->mIvDownloaded:Landroid/widget/ImageView;

    .line 50
    sget v0, Lcom/fimi/app/x8s/R$id;->download_state_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fimi/album/widget/DownloadStateView;

    iput-object v0, p0, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->mDownloadStateView:Lcom/fimi/album/widget/DownloadStateView;

    .line 51
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_download_state:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;->mTvDownloadState:Landroid/widget/TextView;

    .line 52
    return-void
.end method

.method private initImageViewParams(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentView"    # Landroid/view/View;
    .param p3, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 68
    invoke-virtual {p2, v2, v2}, Landroid/view/View;->measure(II)V

    .line 69
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 70
    .local v0, "currentHeight":I
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 71
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V

    .line 72
    const/high16 v2, 0x41400000    # 12.0f

    invoke-static {v2, p1}, Lcom/fimi/kernel/utils/SizeTool;->pixToDp(FLandroid/content/Context;)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->rightMargin:I

    .line 73
    const/high16 v2, 0x41c80000    # 25.0f

    invoke-static {v2, p1}, Lcom/fimi/kernel/utils/SizeTool;->pixToDp(FLandroid/content/Context;)I

    move-result v2

    sub-int v2, v0, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 74
    invoke-virtual {p3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    return-void
.end method

.method private initSimpleDraweeViewParams(Landroid/content/Context;Landroid/view/View;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "view"    # Landroid/view/View;

    .prologue
    .line 55
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v1

    .line 56
    .local v1, "mDisplayMetrics":Landroid/util/DisplayMetrics;
    invoke-virtual {p2}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 57
    .local v0, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    iget v2, v1, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 58
    .local v2, "screenWidth":I
    iget v3, v1, Landroid/util/DisplayMetrics;->heightPixels:I

    .line 59
    .local v3, "scteenHeight":I
    if-ge v2, v3, :cond_0

    .line 60
    move v2, v3

    .line 62
    :cond_0
    const/high16 v4, 0x40200000    # 2.5f

    invoke-static {v4, p1}, Lcom/fimi/kernel/utils/SizeTool;->pixToDp(FLandroid/content/Context;)I

    move-result v4

    mul-int/lit8 v4, v4, 0x3

    sub-int v4, v2, v4

    const/high16 v5, 0x41000000    # 8.0f

    invoke-static {v5, p1}, Lcom/fimi/kernel/utils/SizeTool;->pixToDp(FLandroid/content/Context;)I

    move-result v5

    mul-int/lit8 v5, v5, 0x2

    sub-int/2addr v4, v5

    div-int/lit8 v4, v4, 0x4

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 63
    iget v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    mul-int/lit8 v4, v4, 0x9

    div-int/lit8 v4, v4, 0x10

    iput v4, v0, Landroid/widget/RelativeLayout$LayoutParams;->height:I

    .line 64
    invoke-virtual {p2, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 65
    return-void
.end method

.method private initTextViewParams(Landroid/content/Context;Landroid/view/View;Landroid/view/View;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "parentView"    # Landroid/view/View;
    .param p3, "view"    # Landroid/view/View;

    .prologue
    const/4 v2, 0x0

    .line 78
    invoke-virtual {p2, v2, v2}, Landroid/view/View;->measure(II)V

    .line 79
    invoke-virtual {p2}, Landroid/view/View;->getMeasuredHeight()I

    move-result v0

    .line 80
    .local v0, "currentHeight":I
    invoke-virtual {p3}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout$LayoutParams;

    .line 81
    .local v1, "layoutParams":Landroid/widget/RelativeLayout$LayoutParams;
    const/high16 v2, 0x41200000    # 10.0f

    invoke-static {v2, p1}, Lcom/fimi/kernel/utils/SizeTool;->pixToDp(FLandroid/content/Context;)I

    move-result v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->leftMargin:I

    .line 82
    const/high16 v2, 0x41c00000    # 24.0f

    invoke-static {v2, p1}, Lcom/fimi/kernel/utils/SizeTool;->pixToDp(FLandroid/content/Context;)I

    move-result v2

    sub-int v2, v0, v2

    iput v2, v1, Landroid/widget/RelativeLayout$LayoutParams;->topMargin:I

    .line 83
    invoke-virtual {p3, v1}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 84
    return-void
.end method
