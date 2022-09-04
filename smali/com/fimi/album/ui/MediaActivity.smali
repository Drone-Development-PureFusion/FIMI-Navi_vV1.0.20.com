.class public Lcom/fimi/album/ui/MediaActivity;
.super Lcom/fimi/kernel/base/BaseActivity;
.source "MediaActivity.java"

# interfaces
.implements Lcom/fimi/album/iview/ISelectData;


# instance fields
.field private btnCancalAll:Landroid/widget/Button;

.field private btnQuitActivity:Landroid/widget/ImageButton;

.field private btnSelectAll:Landroid/widget/Button;

.field private btnmode:Landroid/widget/Button;

.field private ibQuitMedia:Landroid/widget/ImageButton;

.field private localFragment:Lcom/fimi/album/ui/albumfragment/LocalFragment;

.field private mMediaPresenter:Lcom/fimi/album/presenter/MediaPresenter;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field private rlHeadDirection:Landroid/widget/RelativeLayout;

.field private rlMediaSelectTop:Landroid/widget/RelativeLayout;

.field private rootViewGroup:Landroid/widget/RelativeLayout;

.field private tvSelectModeSize:Landroid/widget/TextView;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Lcom/fimi/kernel/base/BaseActivity;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/fimi/album/ui/MediaActivity;)Landroid/widget/RelativeLayout;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/album/ui/MediaActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/fimi/album/ui/MediaActivity;->rlMediaSelectTop:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/album/ui/MediaActivity;)Lcom/fimi/album/presenter/MediaPresenter;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/album/ui/MediaActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/fimi/album/ui/MediaActivity;->mMediaPresenter:Lcom/fimi/album/presenter/MediaPresenter;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/album/ui/MediaActivity;)Landroid/widget/Button;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/album/ui/MediaActivity;

    .prologue
    .line 25
    iget-object v0, p0, Lcom/fimi/album/ui/MediaActivity;->btnSelectAll:Landroid/widget/Button;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fimi/album/ui/MediaActivity;Ljava/lang/String;Landroid/widget/Button;)V
    .locals 0
    .param p0, "x0"    # Lcom/fimi/album/ui/MediaActivity;
    .param p1, "x1"    # Ljava/lang/String;
    .param p2, "x2"    # Landroid/widget/Button;

    .prologue
    .line 25
    invoke-direct {p0, p1, p2}, Lcom/fimi/album/ui/MediaActivity;->changeBtnSelectState(Ljava/lang/String;Landroid/widget/Button;)V

    return-void
.end method

.method private changeBtnSelectState(Ljava/lang/String;Landroid/widget/Button;)V
    .locals 0
    .param p1, "changeText"    # Ljava/lang/String;
    .param p2, "button"    # Landroid/widget/Button;

    .prologue
    .line 133
    invoke-virtual {p2, p1}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 134
    return-void
.end method

.method private changeShowSelectTextView(Landroid/widget/TextView;II)V
    .locals 4
    .param p1, "textView"    # Landroid/widget/TextView;
    .param p2, "size"    # I
    .param p3, "resStr"    # I

    .prologue
    .line 195
    invoke-virtual {p0, p3}, Lcom/fimi/album/ui/MediaActivity;->getString(I)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 196
    return-void
.end method


# virtual methods
.method public addSingleFile()V
    .locals 0

    .prologue
    .line 188
    return-void
.end method

.method public allSelectMode(Z)V
    .locals 0
    .param p1, "isAll"    # Z

    .prologue
    .line 168
    return-void
.end method

.method public deleteFile()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 161
    iget-object v0, p0, Lcom/fimi/album/ui/MediaActivity;->rlMediaSelectTop:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 162
    iget-object v0, p0, Lcom/fimi/album/ui/MediaActivity;->mMediaPresenter:Lcom/fimi/album/presenter/MediaPresenter;

    invoke-virtual {v0, v2, v2}, Lcom/fimi/album/presenter/MediaPresenter;->enterSelectMode(ZZ)V

    .line 163
    return-void
.end method

.method public doTrans()V
    .locals 2

    .prologue
    .line 91
    iget-object v0, p0, Lcom/fimi/album/ui/MediaActivity;->ibQuitMedia:Landroid/widget/ImageButton;

    new-instance v1, Lcom/fimi/album/ui/MediaActivity$1;

    invoke-direct {v1, p0}, Lcom/fimi/album/ui/MediaActivity$1;-><init>(Lcom/fimi/album/ui/MediaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 97
    iget-object v0, p0, Lcom/fimi/album/ui/MediaActivity;->btnmode:Landroid/widget/Button;

    new-instance v1, Lcom/fimi/album/ui/MediaActivity$2;

    invoke-direct {v1, p0}, Lcom/fimi/album/ui/MediaActivity$2;-><init>(Lcom/fimi/album/ui/MediaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 105
    iget-object v0, p0, Lcom/fimi/album/ui/MediaActivity;->btnSelectAll:Landroid/widget/Button;

    new-instance v1, Lcom/fimi/album/ui/MediaActivity$3;

    invoke-direct {v1, p0}, Lcom/fimi/album/ui/MediaActivity$3;-><init>(Lcom/fimi/album/ui/MediaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 118
    iget-object v0, p0, Lcom/fimi/album/ui/MediaActivity;->btnCancalAll:Landroid/widget/Button;

    new-instance v1, Lcom/fimi/album/ui/MediaActivity$4;

    invoke-direct {v1, p0}, Lcom/fimi/album/ui/MediaActivity$4;-><init>(Lcom/fimi/album/ui/MediaActivity;)V

    invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 125
    return-void
.end method

.method public enterSelectMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 149
    iget-object v0, p0, Lcom/fimi/album/ui/MediaActivity;->rlMediaSelectTop:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v2}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 150
    iget-object v0, p0, Lcom/fimi/album/ui/MediaActivity;->mMediaPresenter:Lcom/fimi/album/presenter/MediaPresenter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/fimi/album/presenter/MediaPresenter;->enterSelectMode(ZZ)V

    .line 151
    return-void
.end method

.method protected getContentViewLayoutID()I
    .locals 1

    .prologue
    .line 129
    sget v0, Lcom/example/album/R$layout;->album_activity_main:I

    return v0
.end method

.method public getLocalFragment()Lcom/fimi/album/ui/albumfragment/LocalFragment;
    .locals 1

    .prologue
    .line 199
    iget-object v0, p0, Lcom/fimi/album/ui/MediaActivity;->localFragment:Lcom/fimi/album/ui/albumfragment/LocalFragment;

    return-object v0
.end method

.method public getmProgressBar()Landroid/widget/ProgressBar;
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lcom/fimi/album/ui/MediaActivity;->mProgressBar:Landroid/widget/ProgressBar;

    return-object v0
.end method

.method public initComplete(Z)V
    .locals 0
    .param p1, "isCamera"    # Z

    .prologue
    .line 183
    return-void
.end method

.method public initData()V
    .locals 6

    .prologue
    .line 61
    sget v2, Lcom/example/album/R$id;->loading:I

    invoke-virtual {p0, v2}, Lcom/fimi/album/ui/MediaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ProgressBar;

    iput-object v2, p0, Lcom/fimi/album/ui/MediaActivity;->mProgressBar:Landroid/widget/ProgressBar;

    .line 62
    sget v2, Lcom/example/album/R$id;->media_back_btn:I

    invoke-virtual {p0, v2}, Lcom/fimi/album/ui/MediaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/fimi/album/ui/MediaActivity;->ibQuitMedia:Landroid/widget/ImageButton;

    .line 63
    sget v2, Lcom/example/album/R$id;->select_n_tv:I

    invoke-virtual {p0, v2}, Lcom/fimi/album/ui/MediaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/fimi/album/ui/MediaActivity;->tvSelectModeSize:Landroid/widget/TextView;

    .line 64
    sget v2, Lcom/example/album/R$id;->head_direction:I

    invoke-virtual {p0, v2}, Lcom/fimi/album/ui/MediaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/fimi/album/ui/MediaActivity;->rlHeadDirection:Landroid/widget/RelativeLayout;

    .line 65
    sget v2, Lcom/example/album/R$id;->media_select_top_rl:I

    invoke-virtual {p0, v2}, Lcom/fimi/album/ui/MediaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/fimi/album/ui/MediaActivity;->rlMediaSelectTop:Landroid/widget/RelativeLayout;

    .line 66
    sget v2, Lcom/example/album/R$id;->all_select_btn:I

    invoke-virtual {p0, v2}, Lcom/fimi/album/ui/MediaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/fimi/album/ui/MediaActivity;->btnSelectAll:Landroid/widget/Button;

    .line 67
    sget v2, Lcom/example/album/R$id;->cancel_btn:I

    invoke-virtual {p0, v2}, Lcom/fimi/album/ui/MediaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/fimi/album/ui/MediaActivity;->btnCancalAll:Landroid/widget/Button;

    .line 68
    sget v2, Lcom/example/album/R$id;->media_select_btn:I

    invoke-virtual {p0, v2}, Lcom/fimi/album/ui/MediaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Button;

    iput-object v2, p0, Lcom/fimi/album/ui/MediaActivity;->btnmode:Landroid/widget/Button;

    .line 69
    sget v2, Lcom/example/album/R$id;->media_back_btn:I

    invoke-virtual {p0, v2}, Lcom/fimi/album/ui/MediaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageButton;

    iput-object v2, p0, Lcom/fimi/album/ui/MediaActivity;->btnQuitActivity:Landroid/widget/ImageButton;

    .line 70
    sget v2, Lcom/example/album/R$id;->view_group:I

    invoke-virtual {p0, v2}, Lcom/fimi/album/ui/MediaActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/RelativeLayout;

    iput-object v2, p0, Lcom/fimi/album/ui/MediaActivity;->rootViewGroup:Landroid/widget/RelativeLayout;

    .line 71
    invoke-virtual {p0}, Lcom/fimi/album/ui/MediaActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v2

    const/4 v3, 0x4

    new-array v3, v3, [Landroid/view/View;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/fimi/album/ui/MediaActivity;->btnmode:Landroid/widget/Button;

    aput-object v5, v3, v4

    const/4 v4, 0x1

    iget-object v5, p0, Lcom/fimi/album/ui/MediaActivity;->btnSelectAll:Landroid/widget/Button;

    aput-object v5, v3, v4

    const/4 v4, 0x2

    iget-object v5, p0, Lcom/fimi/album/ui/MediaActivity;->btnCancalAll:Landroid/widget/Button;

    aput-object v5, v3, v4

    const/4 v4, 0x3

    iget-object v5, p0, Lcom/fimi/album/ui/MediaActivity;->tvSelectModeSize:Landroid/widget/TextView;

    aput-object v5, v3, v4

    invoke-static {v2, v3}, Lcom/fimi/kernel/utils/FontUtil;->changeFontLanTing(Landroid/content/res/AssetManager;[Landroid/view/View;)V

    .line 72
    invoke-virtual {p0}, Lcom/fimi/album/ui/MediaActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    sget v3, Lcom/example/album/R$id;->media_fragment:I

    invoke-virtual {v2, v3}, Landroid/support/v4/app/FragmentManager;->findFragmentById(I)Landroid/support/v4/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/fimi/album/ui/albumfragment/LocalFragment;

    iput-object v2, p0, Lcom/fimi/album/ui/MediaActivity;->localFragment:Lcom/fimi/album/ui/albumfragment/LocalFragment;

    .line 73
    iget-object v2, p0, Lcom/fimi/album/ui/MediaActivity;->localFragment:Lcom/fimi/album/ui/albumfragment/LocalFragment;

    if-nez v2, :cond_0

    .line 74
    invoke-static {}, Lcom/fimi/album/ui/albumfragment/LocalFragment;->obtaion()Lcom/fimi/album/ui/albumfragment/LocalFragment;

    move-result-object v2

    iput-object v2, p0, Lcom/fimi/album/ui/MediaActivity;->localFragment:Lcom/fimi/album/ui/albumfragment/LocalFragment;

    .line 75
    invoke-virtual {p0}, Lcom/fimi/album/ui/MediaActivity;->getSupportFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentManager;->beginTransaction()Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    sget v3, Lcom/example/album/R$id;->media_fragment:I

    iget-object v4, p0, Lcom/fimi/album/ui/MediaActivity;->localFragment:Lcom/fimi/album/ui/albumfragment/LocalFragment;

    invoke-virtual {v2, v3, v4}, Landroid/support/v4/app/FragmentTransaction;->add(ILandroid/support/v4/app/Fragment;)Landroid/support/v4/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentTransaction;->commitAllowingStateLoss()I

    .line 78
    :cond_0
    invoke-virtual {p0}, Lcom/fimi/album/ui/MediaActivity;->getIntent()Landroid/content/Intent;

    move-result-object v1

    .line 79
    .local v1, "intent":Landroid/content/Intent;
    const/4 v0, 0x0

    .line 80
    .local v0, "floderPath":Ljava/lang/String;
    if-eqz v1, :cond_1

    .line 81
    const-string v2, "mediaPath"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 83
    :cond_1
    new-instance v2, Lcom/fimi/album/presenter/MediaPresenter;

    invoke-direct {v2, p0}, Lcom/fimi/album/presenter/MediaPresenter;-><init>(Landroid/app/Activity;)V

    iput-object v2, p0, Lcom/fimi/album/ui/MediaActivity;->mMediaPresenter:Lcom/fimi/album/presenter/MediaPresenter;

    .line 84
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 85
    iget-object v2, p0, Lcom/fimi/album/ui/MediaActivity;->mMediaPresenter:Lcom/fimi/album/presenter/MediaPresenter;

    invoke-virtual {v2, v0}, Lcom/fimi/album/presenter/MediaPresenter;->forEachFile(Ljava/lang/String;)V

    .line 87
    :cond_2
    return-void
.end method

.method public onDeleteComplete()V
    .locals 0

    .prologue
    .line 178
    return-void
.end method

.method protected onDestroy()V
    .locals 1

    .prologue
    .line 138
    iget-object v0, p0, Lcom/fimi/album/ui/MediaActivity;->mMediaPresenter:Lcom/fimi/album/presenter/MediaPresenter;

    invoke-virtual {v0}, Lcom/fimi/album/presenter/MediaPresenter;->reDefaultVaribale()V

    .line 139
    invoke-super {p0}, Lcom/fimi/kernel/base/BaseActivity;->onDestroy()V

    .line 140
    return-void
.end method

.method public quitSelectMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 155
    iget-object v0, p0, Lcom/fimi/album/ui/MediaActivity;->rlMediaSelectTop:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 156
    iget-object v0, p0, Lcom/fimi/album/ui/MediaActivity;->mMediaPresenter:Lcom/fimi/album/presenter/MediaPresenter;

    invoke-virtual {v0, v2, v2}, Lcom/fimi/album/presenter/MediaPresenter;->enterSelectMode(ZZ)V

    .line 157
    return-void
.end method

.method public selectSize(IJ)V
    .locals 2
    .param p1, "size"    # I
    .param p2, "capacity"    # J

    .prologue
    .line 144
    iget-object v0, p0, Lcom/fimi/album/ui/MediaActivity;->tvSelectModeSize:Landroid/widget/TextView;

    sget v1, Lcom/example/album/R$string;->media_select_n_item:I

    invoke-direct {p0, v0, p1, v1}, Lcom/fimi/album/ui/MediaActivity;->changeShowSelectTextView(Landroid/widget/TextView;II)V

    .line 145
    return-void
.end method

.method protected setStatusBarColor()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public startDownload()V
    .locals 0

    .prologue
    .line 173
    return-void
.end method
