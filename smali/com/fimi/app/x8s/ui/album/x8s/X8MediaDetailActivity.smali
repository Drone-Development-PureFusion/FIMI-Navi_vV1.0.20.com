.class public Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;
.super Lcom/fimi/kernel/base/BaseActivity;
.source "X8MediaDetailActivity.java"

# interfaces
.implements Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView$VideoPlayerListener;


# static fields
.field private static final TAG:Ljava/lang/String; = "X8MediaDetailActivity"


# instance fields
.field private currentSelectPosition:I

.field private isDataRefresh:Z

.field private mBtnPlayMax:Landroid/widget/Button;

.field private mBtnStart:Landroid/widget/Button;

.field private mCustomVideoView:Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;

.field private mFragmentManager:Landroid/support/v4/app/FragmentManager;

.field private mIbtnBottomDelete:Landroid/widget/ImageButton;

.field private mIbtnDelete:Landroid/widget/ImageButton;

.field private mIbtnDwonload:Landroid/widget/ImageButton;

.field private mIbtnLeftSlide:Landroid/widget/ImageButton;

.field private mIbtnMediaBack:Landroid/widget/ImageButton;

.field private mIbtnRightSlide:Landroid/widget/ImageButton;

.field private mIvTopBar:Landroid/widget/ImageView;

.field private mMediaDetailDownloadStateView:Lcom/fimi/album/widget/MediaDetailDownloadStateView;

.field private mMediaDetailPresenter:Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

.field private mMediaDetailViewPaperAdapter:Lcom/fimi/album/adapter/MediaDetailViewPaperAdapter;

.field private mMediaDownloadProgressView:Lcom/fimi/album/widget/MediaDownloadProgressView;

.field private mRelativeLayout:Landroid/widget/RelativeLayout;

.field private mRlDelete:Landroid/widget/RelativeLayout;

.field private mRlDownload:Landroid/widget/RelativeLayout;

.field private mRlDownloadBottom:Landroid/widget/RelativeLayout;

.field private mRlSelectBottom:Landroid/widget/RelativeLayout;

.field private mTvDelete:Landroid/widget/TextView;

.field private mTvDownload:Landroid/widget/TextView;

.field private mTvFileName:Landroid/widget/TextView;

.field private mTvPercent:Landroid/widget/TextView;

.field private mViewPager:Lcom/fimi/album/widget/HackyViewPager;

.field private tvPhotoName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 41
    invoke-direct {p0}, Lcom/fimi/kernel/base/BaseActivity;-><init>()V

    .line 85
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->isDataRefresh:Z

    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;)Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mMediaDetailPresenter:Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;)Lcom/fimi/album/widget/HackyViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mViewPager:Lcom/fimi/album/widget/HackyViewPager;

    return-object v0
.end method


# virtual methods
.method public doTrans()V
    .locals 2

    .prologue
    .line 187
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mIbtnMediaBack:Landroid/widget/ImageButton;

    new-instance v1, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity$1;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity$1;-><init>(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 194
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mIbtnDelete:Landroid/widget/ImageButton;

    new-instance v1, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity$2;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity$2;-><init>(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 215
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mIbtnDwonload:Landroid/widget/ImageButton;

    new-instance v1, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity$3;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity$3;-><init>(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 233
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mViewPager:Lcom/fimi/album/widget/HackyViewPager;

    new-instance v1, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity$4;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity$4;-><init>(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;)V

    invoke-virtual {v0, v1}, Lcom/fimi/album/widget/HackyViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 251
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mIbtnLeftSlide:Landroid/widget/ImageButton;

    new-instance v1, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity$5;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity$5;-><init>(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 258
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mIbtnRightSlide:Landroid/widget/ImageButton;

    new-instance v1, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity$6;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity$6;-><init>(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mBtnPlayMax:Landroid/widget/Button;

    new-instance v1, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity$7;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity$7;-><init>(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 276
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mBtnStart:Landroid/widget/Button;

    new-instance v1, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity$8;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity$8;-><init>(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 286
    return-void
.end method

.method public getBtnPlayMax()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 454
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mBtnPlayMax:Landroid/widget/Button;

    return-object v0
.end method

.method public getBtnStart()Landroid/widget/Button;
    .locals 1

    .prologue
    .line 482
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mBtnStart:Landroid/widget/Button;

    return-object v0
.end method

.method protected getContentViewLayoutID()I
    .locals 1

    .prologue
    .line 290
    sget v0, Lcom/fimi/app/x8s/R$layout;->x8_activity_media_detial:I

    return v0
.end method

.method public getCustomVideoView()Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;
    .locals 2

    .prologue
    .line 314
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mCustomVideoView:Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;

    if-nez v0, :cond_0

    .line 315
    new-instance v0, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mRelativeLayout:Landroid/widget/RelativeLayout;

    invoke-direct {v0, p0, v1}, Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mCustomVideoView:Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;

    .line 317
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mCustomVideoView:Lcom/fimi/app/x8s/widget/videoview/X8CustomVideoView;

    return-object v0
.end method

.method public getIbtnBottomDelete()Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 302
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mIbtnBottomDelete:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getIbtnDelete()Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 474
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mIbtnDelete:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getIbtnDwonload()Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 478
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mIbtnDwonload:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getIbtnMediaBack()Landroid/widget/ImageButton;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mIbtnMediaBack:Landroid/widget/ImageButton;

    return-object v0
.end method

.method public getIvTopBar()Landroid/widget/ImageView;
    .locals 1

    .prologue
    .line 298
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mIvTopBar:Landroid/widget/ImageView;

    return-object v0
.end method

.method public getMediaDetailViewPaperAdapter()Lcom/fimi/album/adapter/MediaDetailViewPaperAdapter;
    .locals 1

    .prologue
    .line 448
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mMediaDetailViewPaperAdapter:Lcom/fimi/album/adapter/MediaDetailViewPaperAdapter;

    return-object v0
.end method

.method public getMediaDownloadProgressView()Lcom/fimi/album/widget/MediaDownloadProgressView;
    .locals 1

    .prologue
    .line 494
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mMediaDownloadProgressView:Lcom/fimi/album/widget/MediaDownloadProgressView;

    return-object v0
.end method

.method public getMediaFragmentManager()Landroid/support/v4/app/FragmentManager;
    .locals 1

    .prologue
    .line 329
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    return-object v0
.end method

.method public getPhotoText()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 294
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->tvPhotoName:Landroid/widget/TextView;

    return-object v0
.end method

.method public getRelativeLayout()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mRelativeLayout:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getRlDelete()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 466
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mRlDelete:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getRlDownload()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 470
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mRlDownload:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getRlDownloadBottom()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 486
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mRlDownloadBottom:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getRlSelectBottom()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 490
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mRlSelectBottom:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getTvFileName()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 458
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mTvFileName:Landroid/widget/TextView;

    return-object v0
.end method

.method public getTvPercent()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mTvPercent:Landroid/widget/TextView;

    return-object v0
.end method

.method public initData()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v5, 0x1

    .line 118
    sget v2, Lcom/fimi/app/x8s/R$id;->rl:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mRelativeLayout:Landroid/widget/RelativeLayout;

    .line 119
    sget v2, Lcom/fimi/app/x8s/R$id;->iv_top_bar:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    iput-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mIvTopBar:Landroid/widget/ImageView;

    .line 120
    sget v2, Lcom/fimi/app/x8s/R$id;->viewpaper:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/fimi/album/widget/HackyViewPager;

    iput-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mViewPager:Lcom/fimi/album/widget/HackyViewPager;

    .line 121
    sget v2, Lcom/fimi/app/x8s/R$id;->media_back_btn:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mIbtnMediaBack:Landroid/widget/ImageButton;

    .line 122
    sget v2, Lcom/fimi/app/x8s/R$id;->ibtn_delete:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mIbtnBottomDelete:Landroid/widget/ImageButton;

    .line 124
    sget v2, Lcom/fimi/app/x8s/R$id;->btn_play_max:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mBtnPlayMax:Landroid/widget/Button;

    .line 126
    sget v2, Lcom/fimi/app/x8s/R$id;->ibtn_left_slide:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mIbtnLeftSlide:Landroid/widget/ImageButton;

    .line 127
    sget v2, Lcom/fimi/app/x8s/R$id;->ibtn_right_slide:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mIbtnRightSlide:Landroid/widget/ImageButton;

    .line 128
    sget v2, Lcom/fimi/app/x8s/R$id;->download_state_view:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/fimi/album/widget/MediaDetailDownloadStateView;

    iput-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mMediaDetailDownloadStateView:Lcom/fimi/album/widget/MediaDetailDownloadStateView;

    .line 129
    sget v2, Lcom/fimi/app/x8s/R$id;->tv_photo_name:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->tvPhotoName:Landroid/widget/TextView;

    .line 131
    sget v2, Lcom/fimi/app/x8s/R$id;->tv_file_name:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mTvFileName:Landroid/widget/TextView;

    .line 132
    sget v2, Lcom/fimi/app/x8s/R$id;->tv_percent:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mTvPercent:Landroid/widget/TextView;

    .line 133
    sget v2, Lcom/fimi/app/x8s/R$id;->rl_delete:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mRlDelete:Landroid/widget/RelativeLayout;

    .line 134
    sget v2, Lcom/fimi/app/x8s/R$id;->rl_download:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mRlDownload:Landroid/widget/RelativeLayout;

    .line 135
    sget v2, Lcom/fimi/app/x8s/R$id;->ibtn_delete:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mIbtnDelete:Landroid/widget/ImageButton;

    .line 136
    sget v2, Lcom/fimi/app/x8s/R$id;->tv_bottom_delete:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mTvDelete:Landroid/widget/TextView;

    .line 137
    sget v2, Lcom/fimi/app/x8s/R$id;->ibtn_download:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mIbtnDwonload:Landroid/widget/ImageButton;

    .line 138
    sget v2, Lcom/fimi/app/x8s/R$id;->tv_bottom_download:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mTvDownload:Landroid/widget/TextView;

    .line 139
    sget v2, Lcom/fimi/app/x8s/R$id;->rl_media_download:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mRlDownloadBottom:Landroid/widget/RelativeLayout;

    .line 140
    sget v2, Lcom/fimi/app/x8s/R$id;->rl_bottom_bar:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mRlSelectBottom:Landroid/widget/RelativeLayout;

    .line 141
    sget v2, Lcom/fimi/app/x8s/R$id;->pv_progress:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/fimi/album/widget/MediaDownloadProgressView;

    iput-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mMediaDownloadProgressView:Lcom/fimi/album/widget/MediaDownloadProgressView;

    .line 142
    sget v2, Lcom/fimi/app/x8s/R$id;->btn_start:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mBtnStart:Landroid/widget/Button;

    .line 143
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    new-array v3, v5, [Landroid/view/View;

    iget-object v4, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->tvPhotoName:Landroid/widget/TextView;

    aput-object v4, v3, v7

    invoke-static {v2, v3}, Lcom/fimi/kernel/utils/FontUtil;->changeFontLanTing(Landroid/content/res/AssetManager;[Landroid/view/View;)V

    .line 145
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mIbtnDelete:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 146
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mIbtnDelete:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 147
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mIbtnDwonload:Landroid/widget/ImageButton;

    invoke-virtual {v2, v6}, Landroid/widget/ImageButton;->setAlpha(F)V

    .line 148
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mIbtnDwonload:Landroid/widget/ImageButton;

    invoke-virtual {v2, v5}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 149
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mTvDelete:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setAlpha(F)V

    .line 150
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mTvDelete:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 151
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mTvDownload:Landroid/widget/TextView;

    invoke-virtual {v2, v6}, Landroid/widget/TextView;->setAlpha(F)V

    .line 152
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mTvDownload:Landroid/widget/TextView;

    invoke-virtual {v2, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 153
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mMediaDownloadProgressView:Lcom/fimi/album/widget/MediaDownloadProgressView;

    const v3, -0xff1703

    invoke-virtual {v2, v3}, Lcom/fimi/album/widget/MediaDownloadProgressView;->setFrontColor(I)V

    .line 154
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mMediaDownloadProgressView:Lcom/fimi/album/widget/MediaDownloadProgressView;

    const/high16 v3, 0x42c80000    # 100.0f

    invoke-virtual {v2, v3}, Lcom/fimi/album/widget/MediaDownloadProgressView;->setMaxCount(F)V

    .line 155
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 156
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 157
    const-string v2, "selectPosition"

    invoke-virtual {v0, v2, v7}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->currentSelectPosition:I

    .line 159
    :cond_0
    iget v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->currentSelectPosition:I

    if-gez v2, :cond_1

    .line 160
    iput v7, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->currentSelectPosition:I

    .line 162
    :cond_1
    new-instance v2, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    iget-object v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mViewPager:Lcom/fimi/album/widget/HackyViewPager;

    invoke-direct {v2, p0, v3}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;-><init>(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;Landroid/support/v4/view/ViewPager;)V

    iput-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mMediaDetailPresenter:Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    .line 163
    new-instance v2, Lcom/fimi/album/adapter/MediaDetailViewPaperAdapter;

    iget-object v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mMediaDetailPresenter:Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    invoke-direct {v2, v3}, Lcom/fimi/album/adapter/MediaDetailViewPaperAdapter;-><init>(Lcom/fimi/album/iview/IViewpaper;)V

    iput-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mMediaDetailViewPaperAdapter:Lcom/fimi/album/adapter/MediaDetailViewPaperAdapter;

    .line 164
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mMediaDetailViewPaperAdapter:Lcom/fimi/album/adapter/MediaDetailViewPaperAdapter;

    invoke-virtual {v2}, Lcom/fimi/album/adapter/MediaDetailViewPaperAdapter;->notifyDataSetChanged()V

    .line 165
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 166
    .local v1, "mLinearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    invoke-virtual {v1, v7}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 167
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mViewPager:Lcom/fimi/album/widget/HackyViewPager;

    iget-object v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mMediaDetailViewPaperAdapter:Lcom/fimi/album/adapter/MediaDetailViewPaperAdapter;

    invoke-virtual {v2, v3}, Lcom/fimi/album/widget/HackyViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 168
    iget v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->currentSelectPosition:I

    iget-object v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mMediaDetailViewPaperAdapter:Lcom/fimi/album/adapter/MediaDetailViewPaperAdapter;

    invoke-virtual {v3}, Lcom/fimi/album/adapter/MediaDetailViewPaperAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_2

    .line 169
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mMediaDetailPresenter:Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    iget v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->currentSelectPosition:I

    invoke-virtual {v2, v3}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->updateFileName(I)V

    .line 170
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mViewPager:Lcom/fimi/album/widget/HackyViewPager;

    iget v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->currentSelectPosition:I

    invoke-virtual {v2, v3}, Lcom/fimi/album/widget/HackyViewPager;->setCurrentItem(I)V

    .line 171
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mMediaDetailPresenter:Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    iget v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->currentSelectPosition:I

    invoke-virtual {v2, v3}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->updateItem(I)V

    .line 174
    :cond_2
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    iput-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mFragmentManager:Landroid/support/v4/app/FragmentManager;

    .line 183
    return-void
.end method

.method public onBufferUpdate(I)V
    .locals 3
    .param p1, "time"    # I

    .prologue
    .line 338
    const-string v0, "X8MediaDetailActivity"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "onBufferUpdate: time:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 339
    return-void
.end method

.method public onClickBackBtn()V
    .locals 2

    .prologue
    .line 353
    const-string v0, "X8MediaDetailActivity"

    const-string v1, "onClickBackBtn: "

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    return-void
.end method

.method public onClickFullScreenBtn()V
    .locals 2

    .prologue
    .line 343
    const-string v0, "X8MediaDetailActivity"

    const-string v1, "onClickFullScreenBtn: "

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 344
    return-void
.end method

.method public onClickPlay(Lcom/fimi/app/x8s/widget/videoview/X8FmMediaInfo;)V
    .locals 4
    .param p1, "info"    # Lcom/fimi/app/x8s/widget/videoview/X8FmMediaInfo;

    .prologue
    .line 358
    const-string v1, "moweiru"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "onClickPlay===== "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p1}, Lcom/fimi/app/x8s/widget/videoview/X8FmMediaInfo;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/fimi/kernel/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 359
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mMediaDetailPresenter:Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->getMediaFileName()Ljava/lang/String;

    move-result-object v0

    .line 360
    .local v0, "name":Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 366
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mMediaDetailPresenter:Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->startActivity()V

    .line 371
    :cond_0
    return-void
.end method

.method public onClickVideo()V
    .locals 2

    .prologue
    .line 348
    const-string v0, "X8MediaDetailActivity"

    const-string v1, "onClickVideo: "

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 349
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 1
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    .line 408
    const/4 v0, 0x4

    if-ne p1, v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mMediaDetailPresenter:Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->setOnDestory()V

    .line 416
    :cond_0
    invoke-super {p0, p1, p2}, Lcom/fimi/kernel/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method protected onResume()V
    .locals 1

    .prologue
    .line 95
    invoke-super {p0}, Lcom/fimi/kernel/base/BaseActivity;->onResume()V

    .line 96
    invoke-static {p0}, Lcom/fimi/app/x8s/tools/X8sNavigationBarUtils;->hideBottomUIMenu(Landroid/app/Activity;)V

    .line 97
    iget-boolean v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->isDataRefresh:Z

    if-eqz v0, :cond_0

    .line 98
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mMediaDetailViewPaperAdapter:Lcom/fimi/album/adapter/MediaDetailViewPaperAdapter;

    invoke-virtual {v0}, Lcom/fimi/album/adapter/MediaDetailViewPaperAdapter;->notifyDataSetChanged()V

    .line 99
    :cond_0
    return-void
.end method

.method protected onStop()V
    .locals 1

    .prologue
    .line 103
    invoke-super {p0}, Lcom/fimi/kernel/base/BaseActivity;->onStop()V

    .line 104
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->isDataRefresh:Z

    .line 105
    return-void
.end method

.method public onVideoLoadComplete()V
    .locals 2

    .prologue
    .line 393
    const-string v0, "X8MediaDetailActivity"

    const-string v1, "onVideoLoadComplete: "

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 394
    return-void
.end method

.method public onVideoLoadFailed()V
    .locals 2

    .prologue
    .line 388
    const-string v0, "X8MediaDetailActivity"

    const-string v1, "onVideoLoadFailed: "

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 389
    return-void
.end method

.method public onVideoLoadSuccess()V
    .locals 2

    .prologue
    .line 383
    const-string v0, "X8MediaDetailActivity"

    const-string v1, "onVideoLoadSuccess: "

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    return-void
.end method

.method public onVideoPause(Z)V
    .locals 4
    .param p1, "isPause"    # Z

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 375
    iget-object v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mIbtnRightSlide:Landroid/widget/ImageButton;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 376
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mIbtnLeftSlide:Landroid/widget/ImageButton;

    if-eqz p1, :cond_2

    :goto_1
    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 377
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mViewPager:Lcom/fimi/album/widget/HackyViewPager;

    if-nez p1, :cond_0

    const/4 v2, 0x1

    :cond_0
    invoke-virtual {v0, v2}, Lcom/fimi/album/widget/HackyViewPager;->setScrollble(Z)V

    .line 378
    const-string v0, "X8MediaDetailActivity"

    const-string v1, "onVideoPause: "

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 379
    return-void

    :cond_1
    move v0, v2

    .line 375
    goto :goto_0

    :cond_2
    move v1, v2

    .line 376
    goto :goto_1
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 109
    invoke-super {p0, p1}, Lcom/fimi/kernel/base/BaseActivity;->onWindowFocusChanged(Z)V

    .line 110
    if-eqz p1, :cond_0

    .line 111
    invoke-static {p0}, Lcom/fimi/app/x8s/tools/X8sNavigationBarUtils;->hideBottomUIMenu(Landroid/app/Activity;)V

    .line 113
    :cond_0
    return-void
.end method

.method protected setStatusBarColor()V
    .locals 2

    .prologue
    const/16 v1, 0x400

    .line 88
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/view/Window;->setFlags(II)V

    .line 90
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/16 v1, 0x80

    invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V

    .line 91
    return-void
.end method

.method public showBar(Z)V
    .locals 2
    .param p1, "isShow"    # Z

    .prologue
    .line 398
    if-eqz p1, :cond_0

    .line 399
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->showTopBar(Z)V

    .line 400
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mMediaDetailPresenter:Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mMediaDetailPresenter:Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->getCurrentPosition()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/ui/presenter/X8MediaDetailPresenter;->updateItem(I)V

    .line 404
    :goto_0
    return-void

    .line 402
    :cond_0
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->showTopBar(Z)V

    goto :goto_0
.end method

.method public showTopBar(Z)V
    .locals 4
    .param p1, "isShow"    # Z

    .prologue
    const/4 v2, 0x4

    const/4 v1, 0x0

    .line 424
    iget-object v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mIvTopBar:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 425
    iget-object v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mRlSelectBottom:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_1

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 426
    iget-object v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mRlDownloadBottom:Landroid/widget/RelativeLayout;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_2
    invoke-virtual {v3, v0}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 428
    iget-object v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mIbtnMediaBack:Landroid/widget/ImageButton;

    if-eqz p1, :cond_3

    move v0, v1

    :goto_3
    invoke-virtual {v3, v0}, Landroid/widget/ImageButton;->setVisibility(I)V

    .line 430
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->tvPhotoName:Landroid/widget/TextView;

    if-eqz p1, :cond_4

    :goto_4
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 432
    return-void

    :cond_0
    move v0, v2

    .line 424
    goto :goto_0

    :cond_1
    move v0, v2

    .line 425
    goto :goto_1

    :cond_2
    move v0, v2

    .line 426
    goto :goto_2

    :cond_3
    move v0, v2

    .line 428
    goto :goto_3

    :cond_4
    move v1, v2

    .line 430
    goto :goto_4
.end method

.method public topBarShowing()Z
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaDetailActivity;->mIvTopBar:Landroid/widget/ImageView;

    invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
