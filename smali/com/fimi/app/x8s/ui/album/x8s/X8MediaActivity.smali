.class public Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;
.super Lcom/fimi/kernel/base/BaseActivity;
.source "X8MediaActivity.java"

# interfaces
.implements Lcom/fimi/album/iview/ISelectData;
.implements Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter$IMediaCameraConnected;


# static fields
.field private static final TAG:Ljava/lang/String; = "X8MediaActivity"


# instance fields
.field private isFirstLoadLocalMedia:Z

.field mBtnCancle:Landroid/widget/Button;

.field mBtnIsSelect:Landroid/widget/Button;

.field private mCategolyAdapter:Lcom/fimi/app/x8s/adapter/CategoryAdapter;

.field private mFragmentList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation
.end field

.field mHackyViewPager:Lcom/fimi/album/widget/HackyViewPager;

.field mIbtnReturn:Landroid/widget/ImageButton;

.field mRlHead:Landroid/widget/RelativeLayout;

.field mRlTopBar:Landroid/widget/RelativeLayout;

.field mTlTitleCategoly:Landroid/support/design/widget/TabLayout;

.field mTvMediaSelect:Landroid/widget/TextView;

.field mTvSelectTitle:Landroid/widget/TextView;

.field private mX8CameraFragment:Lcom/fimi/app/x8s/ui/album/x8s/X8CameraFragment;

.field private mX8LocalMediaFragment:Lcom/fimi/app/x8s/ui/album/x8s/X8LocalMediaLocalFragment;

.field private mX8MediaPresenter:Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 48
    invoke-direct {p0}, Lcom/fimi/kernel/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;Landroid/view/View;III)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;
    .param p1, "x1"    # Landroid/view/View;
    .param p2, "x2"    # I
    .param p3, "x3"    # I
    .param p4, "x4"    # I

    .prologue
    .line 48
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->changeViewVariablw(Landroid/view/View;III)V

    return-void
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    .prologue
    .line 48
    iget-boolean v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->isFirstLoadLocalMedia:Z

    return v0
.end method

.method static synthetic access$102(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;
    .param p1, "x1"    # Z

    .prologue
    .line 48
    iput-boolean p1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->isFirstLoadLocalMedia:Z

    return p1
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/widget/TextView;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->changeBtnSelectState(Ljava/lang/String;Landroid/widget/TextView;)V

    return-void
.end method

.method private changeBtnSelectState(Ljava/lang/String;Landroid/widget/TextView;)V
    .locals 0
    .param p1, "changeText"    # Ljava/lang/String;
    .param p2, "textView"    # Landroid/widget/TextView;

    .prologue
    .line 256
    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 257
    return-void
.end method

.method private changeViewVariablw(Landroid/view/View;III)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "resColor"    # I
    .param p3, "indicatorState"    # I
    .param p4, "resStr"    # I

    .prologue
    .line 169
    sget v1, Lcom/fimi/app/x8s/R$id;->tv_title_desprition:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 170
    .local v0, "tvTitleDescription":Landroid/widget/TextView;
    invoke-virtual {v0, p2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 171
    if-eqz p4, :cond_0

    .line 172
    invoke-virtual {v0, p4}, Landroid/widget/TextView;->setText(I)V

    .line 174
    :cond_0
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/view/View;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/fimi/kernel/utils/FontUtil;->changeFontLanTing(Landroid/content/res/AssetManager;[Landroid/view/View;)V

    .line 175
    return-void
.end method

.method private initView()V
    .locals 4

    .prologue
    .line 152
    sget v0, Lcom/fimi/app/x8s/R$id;->ibtn_return:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mIbtnReturn:Landroid/widget/ImageButton;

    .line 153
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_media_select:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mTvMediaSelect:Landroid/widget/TextView;

    .line 154
    sget v0, Lcom/fimi/app/x8s/R$id;->tl_title_categoly:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/design/widget/TabLayout;

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mTlTitleCategoly:Landroid/support/design/widget/TabLayout;

    .line 155
    sget v0, Lcom/fimi/app/x8s/R$id;->rl_head:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mRlHead:Landroid/widget/RelativeLayout;

    .line 156
    sget v0, Lcom/fimi/app/x8s/R$id;->viewpaper:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/fimi/album/widget/HackyViewPager;

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mHackyViewPager:Lcom/fimi/album/widget/HackyViewPager;

    .line 158
    sget v0, Lcom/fimi/app/x8s/R$id;->btn_cancle:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mBtnCancle:Landroid/widget/Button;

    .line 159
    sget v0, Lcom/fimi/app/x8s/R$id;->btn_is_select:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mBtnIsSelect:Landroid/widget/Button;

    .line 160
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_select_title:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mTvSelectTitle:Landroid/widget/TextView;

    .line 161
    sget v0, Lcom/fimi/app/x8s/R$id;->rl_top_bar:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mRlTopBar:Landroid/widget/RelativeLayout;

    .line 163
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mBtnIsSelect:Landroid/widget/Button;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_ablum_top_select:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 164
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const/4 v1, 0x4

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mTvMediaSelect:Landroid/widget/TextView;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mBtnCancle:Landroid/widget/Button;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mBtnIsSelect:Landroid/widget/Button;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mTvSelectTitle:Landroid/widget/TextView;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/FontUtil;->changeFontLanTing(Landroid/content/res/AssetManager;[Landroid/view/View;)V

    .line 166
    return-void
.end method


# virtual methods
.method public addSingleFile()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 377
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mTvMediaSelect:Landroid/widget/TextView;

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 378
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getmX8LocalMediaFragment()Lcom/fimi/app/x8s/ui/album/x8s/X8LocalMediaLocalFragment;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8LocalMediaLocalFragment;->noDataTipCallback(Z)V

    .line 379
    return-void
.end method

.method public allSelectMode(Z)V
    .locals 2
    .param p1, "isAll"    # Z

    .prologue
    .line 325
    if-eqz p1, :cond_0

    .line 326
    sget v0, Lcom/example/album/R$string;->media_select_all_no:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mBtnIsSelect:Landroid/widget/Button;

    invoke-direct {p0, v0, v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->changeBtnSelectState(Ljava/lang/String;Landroid/widget/TextView;)V

    .line 327
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mBtnIsSelect:Landroid/widget/Button;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_ablum_top_select_press:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    .line 333
    :goto_0
    return-void

    .line 329
    :cond_0
    sget v0, Lcom/example/album/R$string;->media_select_all:I

    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mBtnIsSelect:Landroid/widget/Button;

    invoke-direct {p0, v0, v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->changeBtnSelectState(Ljava/lang/String;Landroid/widget/TextView;)V

    .line 330
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mBtnIsSelect:Landroid/widget/Button;

    sget v1, Lcom/fimi/app/x8s/R$drawable;->x8_ablum_top_select_unclick:I

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setBackgroundResource(I)V

    goto :goto_0
.end method

.method public deleteFile()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 316
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mRlTopBar:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 317
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mHackyViewPager:Lcom/fimi/album/widget/HackyViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fimi/album/widget/HackyViewPager;->setScrollble(Z)V

    .line 318
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getX9MediaPresenter()Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->enterSelectMode(ZZ)V

    .line 321
    return-void
.end method

.method public doTrans()V
    .locals 2

    .prologue
    .line 179
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mIbtnReturn:Landroid/widget/ImageButton;

    new-instance v1, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity$1;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity$1;-><init>(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 189
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mTlTitleCategoly:Landroid/support/design/widget/TabLayout;

    new-instance v1, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity$2;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity$2;-><init>(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;)V

    invoke-virtual {v0, v1}, Landroid/support/design/widget/TabLayout;->addOnTabSelectedListener(Landroid/support/design/widget/TabLayout$OnTabSelectedListener;)V

    .line 213
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mTvMediaSelect:Landroid/widget/TextView;

    new-instance v1, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity$3;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity$3;-><init>(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 229
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mBtnCancle:Landroid/widget/Button;

    new-instance v1, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity$4;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity$4;-><init>(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 238
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mBtnIsSelect:Landroid/widget/Button;

    new-instance v1, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity$5;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity$5;-><init>(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 253
    return-void
.end method

.method public enterSelectMode()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 301
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mRlTopBar:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 302
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getX9MediaPresenter()Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->enterSelectMode(ZZ)V

    .line 303
    const-string v0, "X8MediaActivity"

    const-string v1, "enterSelectMode: "

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/LogUtil;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 304
    return-void
.end method

.method public eventBusToCameraState(Lcom/fimi/kernel/base/EventMessage;)V
    .locals 3
    .param p1, "eventMessage"    # Lcom/fimi/kernel/base/EventMessage;
    .annotation runtime Lorg/greenrobot/eventbus/Subscribe;
        threadMode = .enum Lorg/greenrobot/eventbus/ThreadMode;->MAIN:Lorg/greenrobot/eventbus/ThreadMode;
    .end annotation

    .prologue
    .line 495
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/fimi/kernel/base/EventMessage;->getKey()Ljava/lang/String;

    move-result-object v1

    const-string/jumbo v2, "x8_camera_state_event_key"

    if-ne v1, v2, :cond_0

    .line 496
    invoke-virtual {p1}, Lcom/fimi/kernel/base/EventMessage;->getMessage()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    .line 497
    .local v0, "isShowProgress":Z
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mX8CameraFragment:Lcom/fimi/app/x8s/ui/album/x8s/X8CameraFragment;

    invoke-virtual {v1, v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraFragment;->showProgress(Z)V

    .line 500
    .end local v0    # "isShowProgress":Z
    :cond_0
    return-void
.end method

.method protected getContentViewLayoutID()I
    .locals 1

    .prologue
    .line 98
    sget v0, Lcom/fimi/app/x8s/R$layout;->activity_x8_media:I

    return v0
.end method

.method public getFragmentList()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/support/v4/app/Fragment;",
            ">;"
        }
    .end annotation

    .prologue
    .line 382
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mFragmentList:Ljava/util/List;

    return-object v0
.end method

.method public getRlTopBar()Landroid/widget/RelativeLayout;
    .locals 1

    .prologue
    .line 442
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mRlTopBar:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method public getTlTitleCategoly()Landroid/support/design/widget/TabLayout;
    .locals 1

    .prologue
    .line 386
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mTlTitleCategoly:Landroid/support/design/widget/TabLayout;

    return-object v0
.end method

.method public getX9MediaPresenter()Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;
    .locals 1

    .prologue
    .line 426
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mX8MediaPresenter:Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;

    if-nez v0, :cond_0

    .line 427
    new-instance v0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;

    invoke-direct {v0, p0}, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;-><init>(Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mX8MediaPresenter:Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;

    .line 429
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mX8MediaPresenter:Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;

    return-object v0
.end method

.method public getmX8CameraFragment()Lcom/fimi/app/x8s/ui/album/x8s/X8CameraFragment;
    .locals 1

    .prologue
    .line 462
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mX8CameraFragment:Lcom/fimi/app/x8s/ui/album/x8s/X8CameraFragment;

    return-object v0
.end method

.method public getmX8LocalMediaFragment()Lcom/fimi/app/x8s/ui/album/x8s/X8LocalMediaLocalFragment;
    .locals 1

    .prologue
    .line 468
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mX8LocalMediaFragment:Lcom/fimi/app/x8s/ui/album/x8s/X8LocalMediaLocalFragment;

    return-object v0
.end method

.method public initComplete(Z)V
    .locals 3
    .param p1, "isCamera"    # Z

    .prologue
    const/4 v2, 0x1

    .line 349
    if-eqz p1, :cond_1

    .line 350
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getX9MediaPresenter()Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->removeCameraDefaultVaribale()V

    .line 351
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getX9MediaPresenter()Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->forCameraFolder()V

    .line 356
    :goto_0
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getCamera()Lcom/fimi/x8sdk/modulestate/CameraState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/CameraState;->getToken()I

    move-result v0

    if-lez v0, :cond_2

    if-eqz p1, :cond_2

    .line 357
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mHackyViewPager:Lcom/fimi/album/widget/HackyViewPager;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fimi/album/widget/HackyViewPager;->setCurrentItem(I)V

    .line 373
    :cond_0
    :goto_1
    return-void

    .line 353
    :cond_1
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getX9MediaPresenter()Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->reDefaultVaribale()V

    .line 354
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getX9MediaPresenter()Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;

    move-result-object v0

    invoke-static {}, Lcom/fimi/kernel/utils/DirectoryPath;->getX8LocalMedia()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->forEachFile(Ljava/lang/String;)V

    goto :goto_0

    .line 358
    :cond_2
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getCamera()Lcom/fimi/x8sdk/modulestate/CameraState;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/CameraState;->getToken()I

    move-result v0

    if-gez v0, :cond_0

    if-nez p1, :cond_0

    .line 359
    iput-boolean v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->isFirstLoadLocalMedia:Z

    .line 360
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mHackyViewPager:Lcom/fimi/album/widget/HackyViewPager;

    invoke-virtual {v0, v2}, Lcom/fimi/album/widget/HackyViewPager;->setCurrentItem(I)V

    goto :goto_1
.end method

.method public initData()V
    .locals 8

    .prologue
    const/16 v5, 0x400

    const/4 v7, 0x0

    .line 103
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    invoke-virtual {v4, v5, v5}, Landroid/view/Window;->setFlags(II)V

    .line 105
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, v5}, Landroid/view/Window;->addFlags(I)V

    .line 106
    const/4 v4, 0x1

    sput-boolean v4, Lcom/fimi/app/x8s/manager/X8FpvManager;->isUpdateing:Z

    .line 107
    invoke-direct {p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->initView()V

    .line 108
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getX9MediaPresenter()Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;

    .line 109
    iget-object v4, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mX8MediaPresenter:Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;

    invoke-virtual {v4, p0}, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->setCameraConnectedState(Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter$IMediaCameraConnected;)V

    .line 111
    new-instance v4, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraFragment;

    invoke-direct {v4}, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraFragment;-><init>()V

    iput-object v4, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mX8CameraFragment:Lcom/fimi/app/x8s/ui/album/x8s/X8CameraFragment;

    .line 112
    new-instance v4, Lcom/fimi/app/x8s/ui/album/x8s/X8LocalMediaLocalFragment;

    invoke-direct {v4}, Lcom/fimi/app/x8s/ui/album/x8s/X8LocalMediaLocalFragment;-><init>()V

    iput-object v4, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mX8LocalMediaFragment:Lcom/fimi/app/x8s/ui/album/x8s/X8LocalMediaLocalFragment;

    .line 113
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    iput-object v4, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mFragmentList:Ljava/util/List;

    .line 114
    iget-object v4, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mFragmentList:Ljava/util/List;

    iget-object v5, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mX8CameraFragment:Lcom/fimi/app/x8s/ui/album/x8s/X8CameraFragment;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    iget-object v4, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mFragmentList:Ljava/util/List;

    iget-object v5, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mX8LocalMediaFragment:Lcom/fimi/app/x8s/ui/album/x8s/X8LocalMediaLocalFragment;

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 117
    new-instance v4, Lcom/fimi/app/x8s/adapter/CategoryAdapter;

    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v5

    iget-object v6, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mFragmentList:Ljava/util/List;

    invoke-direct {v4, v5, v6}, Lcom/fimi/app/x8s/adapter/CategoryAdapter;-><init>(Landroid/support/v4/app/FragmentManager;Ljava/util/List;)V

    iput-object v4, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mCategolyAdapter:Lcom/fimi/app/x8s/adapter/CategoryAdapter;

    .line 118
    iget-object v4, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mHackyViewPager:Lcom/fimi/album/widget/HackyViewPager;

    iget-object v5, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mCategolyAdapter:Lcom/fimi/app/x8s/adapter/CategoryAdapter;

    invoke-virtual {v4, v5}, Lcom/fimi/album/widget/HackyViewPager;->setAdapter(Landroid/support/v4/view/PagerAdapter;)V

    .line 119
    iget-object v4, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mHackyViewPager:Lcom/fimi/album/widget/HackyViewPager;

    const/4 v5, 0x2

    invoke-virtual {v4, v5}, Lcom/fimi/album/widget/HackyViewPager;->setOverScrollMode(I)V

    .line 120
    iget-object v4, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mTlTitleCategoly:Landroid/support/design/widget/TabLayout;

    iget-object v5, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mHackyViewPager:Lcom/fimi/album/widget/HackyViewPager;

    invoke-virtual {v4, v5}, Landroid/support/design/widget/TabLayout;->setupWithViewPager(Landroid/support/v4/view/ViewPager;)V

    .line 121
    const/4 v0, 0x0

    .local v0, "index":I
    :goto_0
    iget-object v4, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mTlTitleCategoly:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v4}, Landroid/support/design/widget/TabLayout;->getTabCount()I

    move-result v4

    if-ge v0, v4, :cond_5

    .line 122
    invoke-static {p0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v4

    sget v5, Lcom/fimi/app/x8s/R$layout;->x8_tab_view:I

    const/4 v6, 0x0

    invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v3

    .line 123
    .local v3, "tabItem":Landroid/view/View;
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/modulestate/StateManager;->getCamera()Lcom/fimi/x8sdk/modulestate/CameraState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/modulestate/CameraState;->getToken()I

    move-result v4

    if-lez v4, :cond_3

    .line 124
    if-nez v0, :cond_2

    .line 125
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/fimi/app/x8s/R$color;->x8_media_tab_select:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    sget v5, Lcom/fimi/app/x8s/R$string;->x8_online_media:I

    invoke-direct {p0, v3, v4, v7, v5}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->changeViewVariablw(Landroid/view/View;III)V

    .line 126
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/modulestate/StateManager;->getCamera()Lcom/fimi/x8sdk/modulestate/CameraState;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/modulestate/CameraState;->getAutoCameraStateADV()Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;

    move-result-object v1

    .line 127
    .local v1, "stateADV":Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;
    invoke-virtual {v1}, Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;->isNoTFCard()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 128
    sget v4, Lcom/fimi/app/x8s/R$string;->x8_album_no_file:I

    invoke-virtual {p0, v4}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {p0, v4, v7}, Lcom/fimi/widget/X8ToastUtil;->showToast(Landroid/content/Context;Ljava/lang/String;I)V

    .line 142
    .end local v1    # "stateADV":Lcom/fimi/x8sdk/dataparser/AutoCameraStateADV;
    :cond_0
    :goto_1
    iget-object v4, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mTlTitleCategoly:Landroid/support/design/widget/TabLayout;

    invoke-virtual {v4, v0}, Landroid/support/design/widget/TabLayout;->getTabAt(I)Landroid/support/design/widget/TabLayout$Tab;

    move-result-object v2

    .line 143
    .local v2, "tab":Landroid/support/design/widget/TabLayout$Tab;
    if-eqz v2, :cond_1

    .line 144
    invoke-virtual {v2, v3}, Landroid/support/design/widget/TabLayout$Tab;->setCustomView(Landroid/view/View;)Landroid/support/design/widget/TabLayout$Tab;

    .line 121
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 132
    .end local v2    # "tab":Landroid/support/design/widget/TabLayout$Tab;
    :cond_2
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/fimi/app/x8s/R$color;->x8_media_tab_unselect:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    const/4 v5, 0x4

    sget v6, Lcom/fimi/app/x8s/R$string;->x8_local_media:I

    invoke-direct {p0, v3, v4, v5, v6}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->changeViewVariablw(Landroid/view/View;III)V

    goto :goto_1

    .line 135
    :cond_3
    if-nez v0, :cond_4

    .line 136
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/fimi/app/x8s/R$color;->x8_media_tab_unselect:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    sget v5, Lcom/fimi/app/x8s/R$string;->x8_online_media:I

    invoke-direct {p0, v3, v4, v7, v5}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->changeViewVariablw(Landroid/view/View;III)V

    goto :goto_1

    .line 139
    :cond_4
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    sget v5, Lcom/fimi/app/x8s/R$color;->x8_media_tab_select:I

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getColor(I)I

    move-result v4

    sget v5, Lcom/fimi/app/x8s/R$string;->x8_local_media:I

    invoke-direct {p0, v3, v4, v7, v5}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->changeViewVariablw(Landroid/view/View;III)V

    goto :goto_1

    .line 149
    .end local v3    # "tabItem":Landroid/view/View;
    :cond_5
    return-void
.end method

.method public onCameraConnectedState(Z)V
    .locals 3
    .param p1, "isConnected"    # Z

    .prologue
    .line 473
    if-nez p1, :cond_0

    .line 474
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mX8MediaPresenter:Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->onDisConnect()V

    .line 475
    invoke-static {}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->getInstance()Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->stopAllDownload()V

    .line 476
    invoke-static {}, Lcom/fimi/widget/CustomLoadManage;->dismiss()V

    .line 477
    invoke-static {}, Lcom/fimi/host/HostLogBack;->getInstance()Lcom/fimi/host/HostLogBack;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alanqiu  ==========onCameraConnectedState:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 478
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/x8sdk/modulestate/StateManager;->getCamera()Lcom/fimi/x8sdk/modulestate/CameraState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/x8sdk/modulestate/CameraState;->getToken()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 477
    invoke-virtual {v0, v1}, Lcom/fimi/host/HostLogBack;->writeLog(Ljava/lang/String;)V

    .line 480
    :cond_0
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 77
    invoke-super {p0, p1}, Lcom/fimi/kernel/base/BaseActivity;->onCreate(Landroid/os/Bundle;)V

    .line 79
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->register(Ljava/lang/Object;)V

    .line 80
    return-void
.end method

.method public onDeleteComplete()V
    .locals 0

    .prologue
    .line 344
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->showSelectBtn()V

    .line 345
    return-void
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 260
    invoke-super {p0}, Lcom/fimi/kernel/base/BaseActivity;->onDestroy()V

    .line 261
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mHackyViewPager:Lcom/fimi/album/widget/HackyViewPager;

    invoke-virtual {v0, v1}, Lcom/fimi/album/widget/HackyViewPager;->setCurrentItem(I)V

    .line 262
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getmX8LocalMediaFragment()Lcom/fimi/app/x8s/ui/album/x8s/X8LocalMediaLocalFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8LocalMediaLocalFragment;->unRegisterReciver()V

    .line 263
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getmX8CameraFragment()Lcom/fimi/app/x8s/ui/album/x8s/X8CameraFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraFragment;->unRegisterReciver()V

    .line 264
    invoke-static {}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->getInstance()Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->stopAllDownload()V

    .line 265
    invoke-static {}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;->getInstance()Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaThumDownloadManager;->stopDownload()V

    .line 266
    invoke-static {}, Lcom/fimi/kernel/connect/session/NoticeManager;->getInstance()Lcom/fimi/kernel/connect/session/NoticeManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/kernel/connect/session/NoticeManager;->removeALLMediaListener()V

    .line 267
    sput-boolean v1, Lcom/fimi/app/x8s/manager/X8FpvManager;->isUpdateing:Z

    .line 268
    invoke-static {}, Lorg/greenrobot/eventbus/EventBus;->getDefault()Lorg/greenrobot/eventbus/EventBus;

    move-result-object v0

    invoke-virtual {v0, p0}, Lorg/greenrobot/eventbus/EventBus;->unregister(Ljava/lang/Object;)V

    .line 269
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .param p1, "keyCode"    # I
    .param p2, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v0, 0x1

    .line 391
    const/4 v1, 0x4

    if-ne p1, v1, :cond_1

    .line 392
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mRlTopBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v1}, Landroid/widget/RelativeLayout;->getVisibility()I

    move-result v1

    if-nez v1, :cond_0

    .line 393
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getX9MediaPresenter()Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2, v0}, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->enterSelectMode(ZZ)V

    .line 394
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mHackyViewPager:Lcom/fimi/album/widget/HackyViewPager;

    invoke-virtual {v1, v0}, Lcom/fimi/album/widget/HackyViewPager;->setScrollble(Z)V

    .line 395
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mRlTopBar:Landroid/widget/RelativeLayout;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 404
    :goto_0
    return v0

    .line 398
    :cond_0
    invoke-static {}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->getInstance()Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaFileDownloadManager;->hasDownloading()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 399
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->showDialogTip()V

    goto :goto_0

    .line 404
    :cond_1
    invoke-super {p0, p1, p2}, Lcom/fimi/kernel/base/BaseActivity;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 459
    return-void
.end method

.method protected onResume()V
    .locals 0

    .prologue
    .line 84
    invoke-super {p0}, Lcom/fimi/kernel/base/BaseActivity;->onResume()V

    .line 85
    invoke-static {p0}, Lcom/fimi/app/x8s/tools/X8sNavigationBarUtils;->hideBottomUIMenu(Landroid/app/Activity;)V

    .line 86
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;Landroid/os/PersistableBundle;)V
    .locals 0
    .param p1, "outState"    # Landroid/os/Bundle;
    .param p2, "outPersistentState"    # Landroid/os/PersistableBundle;

    .prologue
    .line 454
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .param p1, "hasFocus"    # Z

    .prologue
    .line 90
    invoke-super {p0, p1}, Lcom/fimi/kernel/base/BaseActivity;->onWindowFocusChanged(Z)V

    .line 91
    if-eqz p1, :cond_0

    .line 92
    invoke-static {p0}, Lcom/fimi/app/x8s/tools/X8sNavigationBarUtils;->hideBottomUIMenu(Landroid/app/Activity;)V

    .line 94
    :cond_0
    return-void
.end method

.method public quitSelectMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 308
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mRlTopBar:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 309
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mHackyViewPager:Lcom/fimi/album/widget/HackyViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fimi/album/widget/HackyViewPager;->setScrollble(Z)V

    .line 310
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getX9MediaPresenter()Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->enterSelectMode(ZZ)V

    .line 312
    return-void
.end method

.method public selectSize(IJ)V
    .locals 10
    .param p1, "size"    # I
    .param p2, "capacity"    # J

    .prologue
    const/4 v6, 0x2

    const/4 v8, 0x0

    const/high16 v3, 0x44800000    # 1024.0f

    const/4 v7, 0x1

    .line 274
    invoke-static {}, Lcom/fimi/album/biz/X9HandleType;->isCameraView()Z

    move-result v2

    if-eqz v2, :cond_3

    .line 275
    long-to-float v2, p2

    div-float v1, v2, v3

    .line 277
    .local v1, "capacityfloat":F
    cmpl-float v2, v1, v3

    if-lez v2, :cond_1

    .line 278
    div-float/2addr v1, v3

    .line 279
    cmpl-float v2, v1, v3

    if-lez v2, :cond_0

    .line 280
    div-float/2addr v1, v3

    .line 281
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    float-to-double v4, v1

    invoke-static {v4, v5, v7}, Lcom/fimi/kernel/utils/NumberUtil;->decimalPointStr(DI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "G"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 288
    .local v0, "capacityStr":Ljava/lang/String;
    :goto_0
    if-nez p1, :cond_2

    .line 289
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mTvSelectTitle:Landroid/widget/TextView;

    sget v3, Lcom/fimi/app/x8s/R$string;->album_select_camera_title:I

    new-array v4, v6, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    const-string v5, "0KB"

    aput-object v5, v4, v7

    invoke-virtual {p0, v3, v4}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 296
    .end local v0    # "capacityStr":Ljava/lang/String;
    .end local v1    # "capacityfloat":F
    :goto_1
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getX9MediaPresenter()Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->selectFileSize(I)V

    .line 297
    return-void

    .line 283
    .restart local v1    # "capacityfloat":F
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    float-to-double v4, v1

    invoke-static {v4, v5, v7}, Lcom/fimi/kernel/utils/NumberUtil;->decimalPointStr(DI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "M"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "capacityStr":Ljava/lang/String;
    goto :goto_0

    .line 286
    .end local v0    # "capacityStr":Ljava/lang/String;
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    float-to-double v4, v1

    invoke-static {v4, v5, v7}, Lcom/fimi/kernel/utils/NumberUtil;->decimalPointStr(DI)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "KB"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .restart local v0    # "capacityStr":Ljava/lang/String;
    goto :goto_0

    .line 291
    :cond_2
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mTvSelectTitle:Landroid/widget/TextView;

    sget v3, Lcom/fimi/app/x8s/R$string;->album_select_camera_title:I

    new-array v4, v6, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    aput-object v0, v4, v7

    invoke-virtual {p0, v3, v4}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1

    .line 294
    .end local v0    # "capacityStr":Ljava/lang/String;
    .end local v1    # "capacityfloat":F
    :cond_3
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mTvSelectTitle:Landroid/widget/TextView;

    sget v3, Lcom/fimi/app/x8s/R$string;->album_select_title:I

    new-array v4, v7, [Ljava/lang/Object;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    aput-object v5, v4, v8

    invoke-virtual {p0, v3, v4}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto/16 :goto_1
.end method

.method protected setStatusBarColor()V
    .locals 0

    .prologue
    .line 73
    return-void
.end method

.method public showDialogTip()V
    .locals 4

    .prologue
    .line 409
    new-instance v0, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    sget v1, Lcom/fimi/app/x8s/R$string;->x8_album_warn_tip:I

    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_album_exit_tip:I

    invoke-virtual {p0, v2}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getString(I)Ljava/lang/String;

    move-result-object v2

    new-instance v3, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity$6;

    invoke-direct {v3, p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity$6;-><init>(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;)V

    invoke-direct {v0, p0, v1, v2, v3}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;)V

    .line 420
    .local v0, "doubleCustomDialog":Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;
    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->show()V

    .line 421
    return-void
.end method

.method public showSelectBtn()V
    .locals 2

    .prologue
    .line 433
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mX8MediaPresenter:Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->isModelListEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 434
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mTvMediaSelect:Landroid/widget/TextView;

    const/4 v1, 0x4

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 439
    :goto_0
    return-void

    .line 436
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mTvMediaSelect:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method public startDownload()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 337
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mRlTopBar:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 338
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->mHackyViewPager:Lcom/fimi/album/widget/HackyViewPager;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fimi/album/widget/HackyViewPager;->setScrollble(Z)V

    .line 339
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getX9MediaPresenter()Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;

    move-result-object v0

    invoke-virtual {v0, v2, v2}, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->enterSelectMode(ZZ)V

    .line 340
    return-void
.end method
