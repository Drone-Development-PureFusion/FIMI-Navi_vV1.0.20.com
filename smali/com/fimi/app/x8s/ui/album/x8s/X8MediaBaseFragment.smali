.class public abstract Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;
.super Lcom/fimi/kernel/base/BaseFragment;
.source "X8MediaBaseFragment.java"

# interfaces
.implements Lcom/fimi/album/iview/INodataTip;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment$MyGridLayoutManager;
    }
.end annotation


# instance fields
.field protected contextWeakReference:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/content/Context;",
            ">;"
        }
    .end annotation
.end field

.field private deleteItemReceiver:Lcom/fimi/album/broadcast/DeleteItemReceiver;

.field private isCamera:Z

.field protected lbBottomDelect:Landroid/widget/ImageButton;

.field protected lbBottomDownload:Landroid/widget/ImageButton;

.field protected mBaseFragmentPresenter:Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;

.field protected mISelectData:Lcom/fimi/album/iview/ISelectData;

.field private mProgressBar:Landroid/widget/ProgressBar;

.field protected mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mRlBottomBar:Landroid/widget/RelativeLayout;

.field private mRlDownload:Landroid/widget/RelativeLayout;

.field protected mTvBottomDelete:Landroid/widget/TextView;

.field protected mTvBottomDownload:Landroid/widget/TextView;

.field protected panelRecycleAdapter:Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter",
            "<",
            "Lcom/fimi/album/entity/MediaModel;",
            ">;"
        }
    .end annotation
.end field

.field private rlMediaNoDataTip:Landroid/widget/RelativeLayout;

.field protected rlMediaSelectBottom:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 44
    invoke-direct {p0}, Lcom/fimi/kernel/base/BaseFragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;

    .prologue
    .line 44
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;

    .prologue
    .line 44
    iget-boolean v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->isCamera:Z

    return v0
.end method

.method private initPresenter()V
    .locals 5

    .prologue
    .line 202
    iget-boolean v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->isCamera:Z

    if-eqz v0, :cond_1

    .line 203
    new-instance v1, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->panelRecycleAdapter:Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;

    iget-object v4, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->mISelectData:Lcom/fimi/album/iview/ISelectData;

    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->contextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;-><init>(Landroid/support/v7/widget/RecyclerView;Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;Lcom/fimi/album/iview/ISelectData;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->mBaseFragmentPresenter:Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;

    .line 207
    :goto_0
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->panelRecycleAdapter:Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->mBaseFragmentPresenter:Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->setmIRecycleAdapter(Lcom/fimi/album/iview/IRecycleAdapter;)V

    .line 208
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->deleteItemReceiver:Lcom/fimi/album/broadcast/DeleteItemReceiver;

    if-eqz v0, :cond_0

    .line 209
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->deleteItemReceiver:Lcom/fimi/album/broadcast/DeleteItemReceiver;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->mBaseFragmentPresenter:Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;

    invoke-virtual {v0, v1}, Lcom/fimi/album/broadcast/DeleteItemReceiver;->setIReceiver(Lcom/fimi/album/iview/IBroadcastPreform;)V

    .line 211
    :cond_0
    return-void

    .line 205
    :cond_1
    new-instance v1, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->panelRecycleAdapter:Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;

    iget-object v4, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->mISelectData:Lcom/fimi/album/iview/ISelectData;

    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->contextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;-><init>(Landroid/support/v7/widget/RecyclerView;Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;Lcom/fimi/album/iview/ISelectData;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->mBaseFragmentPresenter:Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;

    goto :goto_0
.end method

.method private initTrans()V
    .locals 2

    .prologue
    .line 124
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->lbBottomDelect:Landroid/widget/ImageButton;

    new-instance v1, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment$1;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment$1;-><init>(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 147
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->lbBottomDownload:Landroid/widget/ImageButton;

    new-instance v1, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment$2;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment$2;-><init>(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 159
    return-void
.end method


# virtual methods
.method public cancalSelectAllMode()V
    .locals 1

    .prologue
    .line 280
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->mBaseFragmentPresenter:Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->cancalSelectAllMode()V

    .line 281
    return-void
.end method

.method protected doTrans()V
    .locals 0

    .prologue
    .line 106
    return-void
.end method

.method public enterSelectAllMode()V
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->mBaseFragmentPresenter:Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->enterSelectAllMode()V

    .line 248
    return-void
.end method

.method public enterSelectMode(ZZ)V
    .locals 1
    .param p1, "state"    # Z
    .param p2, "isNeedPreform"    # Z

    .prologue
    .line 284
    invoke-virtual {p0, p1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->showBottomDeleteView(Z)V

    .line 285
    if-eqz p2, :cond_0

    .line 286
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->mBaseFragmentPresenter:Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->enterSelectMode(Z)V

    .line 288
    :cond_0
    return-void
.end method

.method abstract getContentID()I
.end method

.method public getLayoutId()I
    .locals 1

    .prologue
    .line 120
    const/4 v0, 0x0

    return v0
.end method

.method protected initData()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    .line 183
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->lbBottomDelect:Landroid/widget/ImageButton;

    invoke-virtual {p0, v1, v5}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->setClickEnable(Landroid/view/View;Z)V

    .line 184
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->lbBottomDownload:Landroid/widget/ImageButton;

    invoke-virtual {p0, v1, v5}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->setClickEnable(Landroid/view/View;Z)V

    .line 185
    new-instance v2, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->contextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    iget-boolean v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->isCamera:Z

    invoke-direct {v2, v1, v3, p0}, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;-><init>(Landroid/content/Context;ZLcom/fimi/album/iview/INodataTip;)V

    iput-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->panelRecycleAdapter:Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;

    .line 186
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->contextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 187
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment$MyGridLayoutManager;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->contextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const/4 v4, 0x4

    invoke-direct {v3, p0, v1, v4}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment$MyGridLayoutManager;-><init>(Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;Landroid/content/Context;I)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 189
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/SimpleItemAnimator;

    invoke-virtual {v1, v5}, Landroid/support/v7/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 190
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->panelRecycleAdapter:Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 192
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setOverScrollMode(I)V

    .line 193
    new-instance v0, Lcom/fimi/album/widget/RBaseItemDecoration;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->contextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const/high16 v3, 0x40200000    # 2.5f

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->contextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/fimi/kernel/utils/SizeTool;->pixToDp(FLandroid/content/Context;)I

    move-result v2

    const v3, 0x106000d

    invoke-direct {v0, v1, v2, v3}, Lcom/fimi/album/widget/RBaseItemDecoration;-><init>(Landroid/content/Context;II)V

    .line 194
    .local v0, "mRBaseItemDecoration":Lcom/fimi/album/widget/RBaseItemDecoration;
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 195
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    .line 197
    invoke-direct {p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->initPresenter()V

    .line 198
    return-void
.end method

.method protected initData(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 116
    return-void
.end method

.method protected initMVP()V
    .locals 0

    .prologue
    .line 111
    return-void
.end method

.method initView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/16 v1, 0x8

    const/4 v3, 0x0

    .line 163
    sget v0, Lcom/fimi/app/x8s/R$id;->loading:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->mProgressBar:Landroid/widget/ProgressBar;

    .line 164
    sget v0, Lcom/fimi/app/x8s/R$id;->x9_media_no_data_tip:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->rlMediaNoDataTip:Landroid/widget/RelativeLayout;

    .line 165
    sget v0, Lcom/fimi/app/x8s/R$id;->ibtn_delete:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->lbBottomDelect:Landroid/widget/ImageButton;

    .line 166
    sget v0, Lcom/fimi/app/x8s/R$id;->ibtn_download:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->lbBottomDownload:Landroid/widget/ImageButton;

    .line 167
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_bottom_delete:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->mTvBottomDelete:Landroid/widget/TextView;

    .line 168
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_bottom_download:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->mTvBottomDownload:Landroid/widget/TextView;

    .line 169
    sget v0, Lcom/fimi/app/x8s/R$id;->rl_bottom_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->rlMediaSelectBottom:Landroid/widget/RelativeLayout;

    .line 170
    sget v0, Lcom/fimi/app/x8s/R$id;->recycleview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 171
    sget v0, Lcom/fimi/app/x8s/R$id;->rl_download:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->mRlDownload:Landroid/widget/RelativeLayout;

    .line 172
    sget v0, Lcom/fimi/app/x8s/R$id;->rl_bottom_bar:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->mRlBottomBar:Landroid/widget/RelativeLayout;

    .line 173
    iget-boolean v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->isCamera:Z

    if-nez v0, :cond_0

    .line 174
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->mRlDownload:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 178
    :goto_0
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->mRlBottomBar:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 179
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->contextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const/4 v1, 0x3

    new-array v1, v1, [Landroid/view/View;

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->lbBottomDelect:Landroid/widget/ImageButton;

    aput-object v2, v1, v3

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->mTvBottomDelete:Landroid/widget/TextView;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->mTvBottomDownload:Landroid/widget/TextView;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/FontUtil;->changeFontLanTing(Landroid/content/res/AssetManager;[Landroid/view/View;)V

    .line 180
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->mRlDownload:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public isModelListEmpty()Z
    .locals 1

    .prologue
    .line 321
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->mBaseFragmentPresenter:Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;

    if-nez v0, :cond_0

    .line 322
    const/4 v0, 0x0

    .line 324
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->mBaseFragmentPresenter:Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->isModelListEmpty()Z

    move-result v0

    goto :goto_0
.end method

.method abstract judgeTypeCurrentFragment()Z
.end method

.method public noDataTipCallback(Z)V
    .locals 2
    .param p1, "isNodata"    # Z

    .prologue
    .line 304
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->rlMediaNoDataTip:Landroid/widget/RelativeLayout;

    if-nez v0, :cond_0

    .line 312
    :goto_0
    return-void

    .line 307
    :cond_0
    if-eqz p1, :cond_1

    .line 308
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->rlMediaNoDataTip:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0

    .line 310
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->rlMediaNoDataTip:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public notifyAddCallback(Lcom/fimi/album/entity/MediaModel;)V
    .locals 1
    .param p1, "model"    # Lcom/fimi/album/entity/MediaModel;

    .prologue
    .line 316
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->mBaseFragmentPresenter:Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->notifyAddCallback(Lcom/fimi/album/entity/MediaModel;)V

    .line 318
    return-void
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 215
    invoke-super {p0, p1}, Lcom/fimi/kernel/base/BaseFragment;->onAttach(Landroid/content/Context;)V

    .line 216
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->contextWeakReference:Ljava/lang/ref/WeakReference;

    .line 217
    instance-of v0, p1, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    if-eqz v0, :cond_0

    .line 218
    check-cast p1, Lcom/fimi/album/iview/ISelectData;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->mISelectData:Lcom/fimi/album/iview/ISelectData;

    .line 220
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 82
    invoke-super {p0, p1}, Lcom/fimi/kernel/base/BaseFragment;->onCreate(Landroid/os/Bundle;)V

    .line 83
    new-instance v1, Lcom/fimi/album/broadcast/DeleteItemReceiver;

    invoke-direct {v1}, Lcom/fimi/album/broadcast/DeleteItemReceiver;-><init>()V

    iput-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->deleteItemReceiver:Lcom/fimi/album/broadcast/DeleteItemReceiver;

    .line 84
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "deleteItemAction"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 85
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->contextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->deleteItemReceiver:Lcom/fimi/album/broadcast/DeleteItemReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 86
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->judgeTypeCurrentFragment()Z

    move-result v1

    iput-boolean v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->isCamera:Z

    .line 89
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 4
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    .line 94
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->getContentID()I

    move-result v0

    .line 95
    .local v0, "layoutID":I
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 96
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->initView(Landroid/view/View;)V

    .line 97
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->initData()V

    .line 98
    invoke-direct {p0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->initTrans()V

    .line 99
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->mISelectData:Lcom/fimi/album/iview/ISelectData;

    iget-boolean v3, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->isCamera:Z

    invoke-interface {v2, v3}, Lcom/fimi/album/iview/ISelectData;->initComplete(Z)V

    .line 100
    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 224
    invoke-super {p0}, Lcom/fimi/kernel/base/BaseFragment;->onDestroy()V

    .line 225
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->mISelectData:Lcom/fimi/album/iview/ISelectData;

    .line 226
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->mBaseFragmentPresenter:Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->mBaseFragmentPresenter:Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->canCalAsyncTask()V

    .line 229
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->contextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->deleteItemReceiver:Lcom/fimi/album/broadcast/DeleteItemReceiver;

    if-eqz v0, :cond_1

    .line 230
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->contextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->deleteItemReceiver:Lcom/fimi/album/broadcast/DeleteItemReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 232
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->panelRecycleAdapter:Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;

    if-eqz v0, :cond_2

    .line 233
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->panelRecycleAdapter:Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->removeCallBack()V

    .line 235
    :cond_2
    return-void
.end method

.method public reshAdapter()V
    .locals 1

    .prologue
    .line 238
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->panelRecycleAdapter:Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;

    if-eqz v0, :cond_0

    .line 239
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->panelRecycleAdapter:Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/adapter/X8sPanelRecycleAdapter;->refresh()V

    .line 240
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->mBaseFragmentPresenter:Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;

    if-eqz v0, :cond_0

    .line 241
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->mBaseFragmentPresenter:Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->refreshData()V

    .line 244
    :cond_0
    return-void
.end method

.method public selectFileSize(I)V
    .locals 3
    .param p1, "size"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 251
    if-nez p1, :cond_1

    .line 252
    iget-boolean v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->isCamera:Z

    if-eqz v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->lbBottomDelect:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0, v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->setClickEnable(Landroid/view/View;Z)V

    .line 254
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->mTvBottomDelete:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->setClickEnable(Landroid/view/View;Z)V

    .line 255
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->lbBottomDownload:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0, v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->setClickEnable(Landroid/view/View;Z)V

    .line 256
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->mTvBottomDownload:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->setClickEnable(Landroid/view/View;Z)V

    .line 272
    :goto_0
    return-void

    .line 258
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->lbBottomDelect:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0, v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->setClickEnable(Landroid/view/View;Z)V

    .line 259
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->mTvBottomDelete:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->setClickEnable(Landroid/view/View;Z)V

    goto :goto_0

    .line 262
    :cond_1
    iget-boolean v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->isCamera:Z

    if-eqz v0, :cond_2

    .line 263
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->lbBottomDelect:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0, v2}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->setClickEnable(Landroid/view/View;Z)V

    .line 264
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->mTvBottomDelete:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v2}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->setClickEnable(Landroid/view/View;Z)V

    .line 265
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->lbBottomDownload:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0, v2}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->setClickEnable(Landroid/view/View;Z)V

    .line 266
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->mTvBottomDownload:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v2}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->setClickEnable(Landroid/view/View;Z)V

    goto :goto_0

    .line 268
    :cond_2
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->lbBottomDelect:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0, v2}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->setClickEnable(Landroid/view/View;Z)V

    .line 269
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->mTvBottomDelete:Landroid/widget/TextView;

    invoke-virtual {p0, v0, v2}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->setClickEnable(Landroid/view/View;Z)V

    goto :goto_0
.end method

.method protected setClickEnable(Landroid/view/View;Z)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "isEnable"    # Z

    .prologue
    .line 275
    invoke-virtual {p1, p2}, Landroid/view/View;->setEnabled(Z)V

    .line 276
    if-eqz p2, :cond_0

    const/high16 v0, 0x3f800000    # 1.0f

    :goto_0
    invoke-virtual {p1, v0}, Landroid/view/View;->setAlpha(F)V

    .line 277
    return-void

    .line 276
    :cond_0
    const v0, 0x3e99999a    # 0.3f

    goto :goto_0
.end method

.method public showBottomDeleteView(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    const/4 v1, 0x0

    .line 291
    if-eqz p1, :cond_1

    .line 292
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->mBaseFragmentPresenter:Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;

    iget-object v0, v0, Lcom/fimi/app/x8s/ui/album/x8s/X8BaseMediaFragmentPresenter;->selectList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_0

    .line 293
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->lbBottomDownload:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0, v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->setClickEnable(Landroid/view/View;Z)V

    .line 294
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->lbBottomDelect:Landroid/widget/ImageButton;

    invoke-virtual {p0, v0, v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->setClickEnable(Landroid/view/View;Z)V

    .line 296
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->rlMediaSelectBottom:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 300
    :goto_0
    return-void

    .line 298
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->rlMediaSelectBottom:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public showProgress(Z)V
    .locals 2
    .param p1, "isShow"    # Z

    .prologue
    .line 351
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->mProgressBar:Landroid/widget/ProgressBar;

    if-nez v0, :cond_0

    .line 354
    :goto_0
    return-void

    .line 353
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaBaseFragment;->mProgressBar:Landroid/widget/ProgressBar;

    if-eqz p1, :cond_1

    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v1, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V

    goto :goto_0

    :cond_1
    const/16 v0, 0x8

    goto :goto_1
.end method
