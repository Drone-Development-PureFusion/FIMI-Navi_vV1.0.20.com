.class public Lcom/fimi/album/ui/MediaDetailActivity;
.super Lcom/fimi/kernel/base/BaseActivity;
.source "MediaDetailActivity.java"


# instance fields
.field private currentSelectPosition:I

.field private ibBottomDelete:Landroid/widget/ImageButton;

.field private ibMediaBack:Landroid/widget/ImageButton;

.field private llHeadViewGroup:Landroid/widget/LinearLayout;

.field private mMediaDetailPresenter:Lcom/fimi/album/presenter/MediaDetailPresenter;

.field private mMediaDetailViewPaperAdapter:Lcom/fimi/album/adapter/MediaDetailViewPaperAdapter;

.field private rlHeadDirection:Landroid/widget/RelativeLayout;

.field private tvDeleteTip:Landroid/widget/TextView;

.field private tvPhotoName:Landroid/widget/TextView;

.field private viewpaper:Landroid/support/v4/view/ViewPager;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Lcom/fimi/kernel/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/fimi/album/ui/MediaDetailActivity;)Landroid/support/v4/view/ViewPager;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/album/ui/MediaDetailActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/fimi/album/ui/MediaDetailActivity;->viewpaper:Landroid/support/v4/view/ViewPager;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/album/ui/MediaDetailActivity;)Lcom/fimi/album/presenter/MediaDetailPresenter;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/album/ui/MediaDetailActivity;

    .prologue
    .line 23
    iget-object v0, p0, Lcom/fimi/album/ui/MediaDetailActivity;->mMediaDetailPresenter:Lcom/fimi/album/presenter/MediaDetailPresenter;

    return-object v0
.end method


# virtual methods
.method public doTrans()V
    .locals 2

    .prologue
    .line 77
    iget-object v0, p0, Lcom/fimi/album/ui/MediaDetailActivity;->ibMediaBack:Landroid/widget/ImageButton;

    new-instance v1, Lcom/fimi/album/ui/MediaDetailActivity$1;

    invoke-direct {v1, p0}, Lcom/fimi/album/ui/MediaDetailActivity$1;-><init>(Lcom/fimi/album/ui/MediaDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 83
    iget-object v0, p0, Lcom/fimi/album/ui/MediaDetailActivity;->ibBottomDelete:Landroid/widget/ImageButton;

    new-instance v1, Lcom/fimi/album/ui/MediaDetailActivity$2;

    invoke-direct {v1, p0}, Lcom/fimi/album/ui/MediaDetailActivity$2;-><init>(Lcom/fimi/album/ui/MediaDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 90
    iget-object v0, p0, Lcom/fimi/album/ui/MediaDetailActivity;->viewpaper:Landroid/support/v4/view/ViewPager;

    new-instance v1, Lcom/fimi/album/ui/MediaDetailActivity$3;

    invoke-direct {v1, p0}, Lcom/fimi/album/ui/MediaDetailActivity$3;-><init>(Lcom/fimi/album/ui/MediaDetailActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/view/ViewPager;->addOnPageChangeListener(Landroid/support/v4/view/ViewPager$OnPageChangeListener;)V

    .line 106
    return-void
.end method

.method protected getContentViewLayoutID()I
    .locals 1

    .prologue
    .line 110
    sget v0, Lcom/example/album/R$layout;->album_activity_media_detial:I

    return v0
.end method

.method public getLlHeadViewGroup()Landroid/widget/LinearLayout;
    .locals 1

    .prologue
    .line 122
    iget-object v0, p0, Lcom/fimi/album/ui/MediaDetailActivity;->llHeadViewGroup:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method public getPhotoText()Landroid/widget/TextView;
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/fimi/album/ui/MediaDetailActivity;->tvPhotoName:Landroid/widget/TextView;

    return-object v0
.end method

.method public getRlHeadDirection()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/fimi/album/ui/MediaDetailActivity;->rlHeadDirection:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public initData()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 51
    sget v2, Lcom/example/album/R$id;->shoto_top_tab_ll:I

    invoke-virtual {p0, v2}, Lcom/fimi/album/ui/MediaDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/LinearLayout;

    iput-object v2, p0, Lcom/fimi/album/ui/MediaDetailActivity;->llHeadViewGroup:Landroid/widget/LinearLayout;

    .line 52
    sget v2, Lcom/example/album/R$id;->media_select_bottom_rl:I

    invoke-virtual {p0, v2}, Lcom/fimi/album/ui/MediaDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/fimi/album/ui/MediaDetailActivity;->rlHeadDirection:Landroid/widget/RelativeLayout;

    .line 53
    iget-object v2, p0, Lcom/fimi/album/ui/MediaDetailActivity;->rlHeadDirection:Landroid/widget/RelativeLayout;

    invoke-virtual {v2, v6}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 54
    sget v2, Lcom/example/album/R$id;->viewpaper:I

    invoke-virtual {p0, v2}, Lcom/fimi/album/ui/MediaDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/view/ViewPager;

    iput-object v2, p0, Lcom/fimi/album/ui/MediaDetailActivity;->viewpaper:Landroid/support/v4/view/ViewPager;

    .line 55
    sget v2, Lcom/example/album/R$id;->media_back_btn:I

    invoke-virtual {p0, v2}, Lcom/fimi/album/ui/MediaDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/fimi/album/ui/MediaDetailActivity;->ibMediaBack:Landroid/widget/ImageButton;

    .line 56
    sget v2, Lcom/example/album/R$id;->bottom_delete_ibtn:I

    invoke-virtual {p0, v2}, Lcom/fimi/album/ui/MediaDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/fimi/album/ui/MediaDetailActivity;->ibBottomDelete:Landroid/widget/ImageButton;

    .line 57
    sget v2, Lcom/example/album/R$id;->delete_tv:I

    invoke-virtual {p0, v2}, Lcom/fimi/album/ui/MediaDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/fimi/album/ui/MediaDetailActivity;->tvDeleteTip:Landroid/widget/TextView;

    .line 58
    sget v2, Lcom/example/album/R$id;->photo_name_tv:I

    invoke-virtual {p0, v2}, Lcom/fimi/album/ui/MediaDetailActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/fimi/album/ui/MediaDetailActivity;->tvPhotoName:Landroid/widget/TextView;

    .line 59
    invoke-virtual {p0}, Lcom/fimi/album/ui/MediaDetailActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const/4 v3, 0x2

    new-array v3, v3, [Landroid/view/View;

    iget-object v4, p0, Lcom/fimi/album/ui/MediaDetailActivity;->tvDeleteTip:Landroid/widget/TextView;

    aput-object v4, v3, v6

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/fimi/album/ui/MediaDetailActivity;->tvPhotoName:Landroid/widget/TextView;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/fimi/kernel/utils/FontUtil;->changeFontLanTing(Landroid/content/res/AssetManager;[Landroid/view/View;)V

    .line 60
    invoke-virtual {p0}, Lcom/fimi/album/ui/MediaDetailActivity;->getIntent()Landroid/content/Intent;

    move-result-object v0

    .line 61
    .local v0, "intent":Landroid/content/Intent;
    if-eqz v0, :cond_0

    .line 62
    const-string v2, "selectPosition"

    invoke-virtual {v0, v2, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    iput v2, p0, Lcom/fimi/album/ui/MediaDetailActivity;->currentSelectPosition:I

    .line 64
    :cond_0
    new-instance v2, Lcom/fimi/album/presenter/MediaDetailPresenter;

    iget-object v3, p0, Lcom/fimi/album/ui/MediaDetailActivity;->viewpaper:Landroid/support/v4/view/ViewPager;

    invoke-direct {v2, p0, v3}, Lcom/fimi/album/presenter/MediaDetailPresenter;-><init>(Lcom/fimi/album/ui/MediaDetailActivity;Landroid/support/v4/view/ViewPager;)V

    iput-object v2, p0, Lcom/fimi/album/ui/MediaDetailActivity;->mMediaDetailPresenter:Lcom/fimi/album/presenter/MediaDetailPresenter;

    .line 65
    new-instance v2, Lcom/fimi/album/adapter/MediaDetailViewPaperAdapter;

    iget-object v3, p0, Lcom/fimi/album/ui/MediaDetailActivity;->mMediaDetailPresenter:Lcom/fimi/album/presenter/MediaDetailPresenter;

    invoke-direct {v2, v3}, Lcom/fimi/album/adapter/MediaDetailViewPaperAdapter;-><init>(Lcom/fimi/album/iview/IViewpaper;)V

    iput-object v2, p0, Lcom/fimi/album/ui/MediaDetailActivity;->mMediaDetailViewPaperAdapter:Lcom/fimi/album/adapter/MediaDetailViewPaperAdapter;

    .line 66
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-direct {v1, p0}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 67
    .local v1, "mLinearLayoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    invoke-virtual {v1, v6}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 68
    iget-object v2, p0, Lcom/fimi/album/ui/MediaDetailActivity;->viewpaper:Landroid/support/v4/view/ViewPager;

    iget-object v3, p0, Lcom/fimi/album/ui/MediaDetailActivity;->mMediaDetailViewPaperAdapter:Lcom/fimi/album/adapter/MediaDetailViewPaperAdapter;

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 69
    iget v2, p0, Lcom/fimi/album/ui/MediaDetailActivity;->currentSelectPosition:I

    iget-object v3, p0, Lcom/fimi/album/ui/MediaDetailActivity;->mMediaDetailViewPaperAdapter:Lcom/fimi/album/adapter/MediaDetailViewPaperAdapter;

    invoke-virtual {v3}, Lcom/fimi/album/adapter/MediaDetailViewPaperAdapter;->getCount()I

    move-result v3

    if-ge v2, v3, :cond_1

    .line 70
    iget-object v2, p0, Lcom/fimi/album/ui/MediaDetailActivity;->mMediaDetailPresenter:Lcom/fimi/album/presenter/MediaDetailPresenter;

    iget v3, p0, Lcom/fimi/album/ui/MediaDetailActivity;->currentSelectPosition:I

    invoke-virtual {v2, v3}, Lcom/fimi/album/presenter/MediaDetailPresenter;->updateFileName(I)V

    .line 71
    iget-object v2, p0, Lcom/fimi/album/ui/MediaDetailActivity;->viewpaper:Landroid/support/v4/view/ViewPager;

    iget v3, p0, Lcom/fimi/album/ui/MediaDetailActivity;->currentSelectPosition:I

    invoke-virtual {v2, v3}, Landroid/support/v4/view/ViewPager;->setCurrentItem(I)V

    .line 73
    :cond_1
    return-void
.end method

.method protected setStatusBarColor()V
    .locals 0

    .prologue
    .line 44
    return-void
.end method
