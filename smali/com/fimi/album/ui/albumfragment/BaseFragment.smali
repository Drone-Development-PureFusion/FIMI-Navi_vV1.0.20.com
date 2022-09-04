.class public abstract Lcom/fimi/album/ui/albumfragment/BaseFragment;
.super Landroid/support/v4/app/Fragment;
.source "BaseFragment.java"

# interfaces
.implements Lcom/fimi/album/iview/INodataTip;


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

.field private lbBottomDelect:Landroid/widget/ImageButton;

.field protected mBaseFragmentPresenter:Lcom/fimi/album/presenter/BaseFragmentPresenter;

.field protected mISelectData:Lcom/fimi/album/iview/ISelectData;

.field protected mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field protected panelRecycleAdapter:Lcom/fimi/album/adapter/PanelRecycleAdapter;

.field private rlMediaNoDataTip:Landroid/widget/RelativeLayout;

.field private rlMediaSelectBottom:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method private initPresenter()V
    .locals 5

    .prologue
    .line 117
    new-instance v1, Lcom/fimi/album/presenter/LocalFragmentPresenter;

    iget-object v2, p0, Lcom/fimi/album/ui/albumfragment/BaseFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v3, p0, Lcom/fimi/album/ui/albumfragment/BaseFragment;->panelRecycleAdapter:Lcom/fimi/album/adapter/PanelRecycleAdapter;

    iget-object v4, p0, Lcom/fimi/album/ui/albumfragment/BaseFragment;->mISelectData:Lcom/fimi/album/iview/ISelectData;

    iget-object v0, p0, Lcom/fimi/album/ui/albumfragment/BaseFragment;->contextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-direct {v1, v2, v3, v4, v0}, Lcom/fimi/album/presenter/LocalFragmentPresenter;-><init>(Landroid/support/v7/widget/RecyclerView;Lcom/fimi/album/adapter/PanelRecycleAdapter;Lcom/fimi/album/iview/ISelectData;Landroid/content/Context;)V

    iput-object v1, p0, Lcom/fimi/album/ui/albumfragment/BaseFragment;->mBaseFragmentPresenter:Lcom/fimi/album/presenter/BaseFragmentPresenter;

    .line 118
    iget-object v0, p0, Lcom/fimi/album/ui/albumfragment/BaseFragment;->panelRecycleAdapter:Lcom/fimi/album/adapter/PanelRecycleAdapter;

    iget-object v1, p0, Lcom/fimi/album/ui/albumfragment/BaseFragment;->mBaseFragmentPresenter:Lcom/fimi/album/presenter/BaseFragmentPresenter;

    invoke-virtual {v0, v1}, Lcom/fimi/album/adapter/PanelRecycleAdapter;->setmIRecycleAdapter(Lcom/fimi/album/iview/IRecycleAdapter;)V

    .line 119
    iget-object v0, p0, Lcom/fimi/album/ui/albumfragment/BaseFragment;->deleteItemReceiver:Lcom/fimi/album/broadcast/DeleteItemReceiver;

    if-eqz v0, :cond_0

    .line 120
    iget-object v0, p0, Lcom/fimi/album/ui/albumfragment/BaseFragment;->deleteItemReceiver:Lcom/fimi/album/broadcast/DeleteItemReceiver;

    iget-object v1, p0, Lcom/fimi/album/ui/albumfragment/BaseFragment;->mBaseFragmentPresenter:Lcom/fimi/album/presenter/BaseFragmentPresenter;

    invoke-virtual {v0, v1}, Lcom/fimi/album/broadcast/DeleteItemReceiver;->setIReceiver(Lcom/fimi/album/iview/IBroadcastPreform;)V

    .line 122
    :cond_0
    return-void
.end method

.method private initTrans()V
    .locals 2

    .prologue
    .line 80
    iget-object v0, p0, Lcom/fimi/album/ui/albumfragment/BaseFragment;->lbBottomDelect:Landroid/widget/ImageButton;

    new-instance v1, Lcom/fimi/album/ui/albumfragment/BaseFragment$1;

    invoke-direct {v1, p0}, Lcom/fimi/album/ui/albumfragment/BaseFragment$1;-><init>(Lcom/fimi/album/ui/albumfragment/BaseFragment;)V

    invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 92
    return-void
.end method


# virtual methods
.method public cancalSelectAllMode()V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/fimi/album/ui/albumfragment/BaseFragment;->mBaseFragmentPresenter:Lcom/fimi/album/presenter/BaseFragmentPresenter;

    invoke-virtual {v0}, Lcom/fimi/album/presenter/BaseFragmentPresenter;->cancalSelectAllMode()V

    .line 163
    return-void
.end method

.method public enterSelectAllMode()V
    .locals 1

    .prologue
    .line 158
    iget-object v0, p0, Lcom/fimi/album/ui/albumfragment/BaseFragment;->mBaseFragmentPresenter:Lcom/fimi/album/presenter/BaseFragmentPresenter;

    invoke-virtual {v0}, Lcom/fimi/album/presenter/BaseFragmentPresenter;->enterSelectAllMode()V

    .line 159
    return-void
.end method

.method public enterSelectMode(ZZ)V
    .locals 1
    .param p1, "state"    # Z
    .param p2, "isNeedPreform"    # Z

    .prologue
    .line 166
    invoke-virtual {p0, p1}, Lcom/fimi/album/ui/albumfragment/BaseFragment;->showBottomDeleteView(Z)V

    .line 167
    if-eqz p2, :cond_0

    .line 168
    iget-object v0, p0, Lcom/fimi/album/ui/albumfragment/BaseFragment;->mBaseFragmentPresenter:Lcom/fimi/album/presenter/BaseFragmentPresenter;

    invoke-virtual {v0, p1}, Lcom/fimi/album/presenter/BaseFragmentPresenter;->enterSelectMode(Z)V

    .line 170
    :cond_0
    return-void
.end method

.method abstract getContentID()I
.end method

.method protected initData()V
    .locals 5

    .prologue
    .line 104
    new-instance v2, Lcom/fimi/album/adapter/PanelRecycleAdapter;

    iget-object v1, p0, Lcom/fimi/album/ui/albumfragment/BaseFragment;->contextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-direct {v2, v1, p0}, Lcom/fimi/album/adapter/PanelRecycleAdapter;-><init>(Landroid/content/Context;Lcom/fimi/album/iview/INodataTip;)V

    iput-object v2, p0, Lcom/fimi/album/ui/albumfragment/BaseFragment;->panelRecycleAdapter:Lcom/fimi/album/adapter/PanelRecycleAdapter;

    .line 105
    iget-object v1, p0, Lcom/fimi/album/ui/albumfragment/BaseFragment;->contextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 106
    iget-object v2, p0, Lcom/fimi/album/ui/albumfragment/BaseFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    new-instance v3, Landroid/support/v7/widget/GridLayoutManager;

    iget-object v1, p0, Lcom/fimi/album/ui/albumfragment/BaseFragment;->contextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const/4 v4, 0x4

    invoke-direct {v3, v1, v4}, Landroid/support/v7/widget/GridLayoutManager;-><init>(Landroid/content/Context;I)V

    invoke-virtual {v2, v3}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 108
    :cond_0
    iget-object v1, p0, Lcom/fimi/album/ui/albumfragment/BaseFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/fimi/album/ui/albumfragment/BaseFragment;->panelRecycleAdapter:Lcom/fimi/album/adapter/PanelRecycleAdapter;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 109
    iget-object v1, p0, Lcom/fimi/album/ui/albumfragment/BaseFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setOverScrollMode(I)V

    .line 110
    new-instance v0, Lcom/fimi/album/widget/RBaseItemDecoration;

    iget-object v1, p0, Lcom/fimi/album/ui/albumfragment/BaseFragment;->contextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    const/high16 v3, 0x40200000    # 2.5f

    iget-object v2, p0, Lcom/fimi/album/ui/albumfragment/BaseFragment;->contextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/Context;

    invoke-static {v3, v2}, Lcom/fimi/kernel/utils/SizeTool;->pixToDp(FLandroid/content/Context;)I

    move-result v2

    const v3, 0x106000d

    invoke-direct {v0, v1, v2, v3}, Lcom/fimi/album/widget/RBaseItemDecoration;-><init>(Landroid/content/Context;II)V

    .line 111
    .local v0, "mRBaseItemDecoration":Lcom/fimi/album/widget/RBaseItemDecoration;
    iget-object v1, p0, Lcom/fimi/album/ui/albumfragment/BaseFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->addItemDecoration(Landroid/support/v7/widget/RecyclerView$ItemDecoration;)V

    .line 112
    iget-object v1, p0, Lcom/fimi/album/ui/albumfragment/BaseFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v1

    const-wide/16 v2, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/support/v7/widget/RecyclerView$ItemAnimator;->setChangeDuration(J)V

    .line 113
    invoke-direct {p0}, Lcom/fimi/album/ui/albumfragment/BaseFragment;->initPresenter()V

    .line 114
    return-void
.end method

.method initView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 96
    sget v0, Lcom/example/album/R$id;->media_no_data_tip:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/fimi/album/ui/albumfragment/BaseFragment;->rlMediaNoDataTip:Landroid/widget/RelativeLayout;

    .line 97
    sget v0, Lcom/example/album/R$id;->bottom_delete_ibtn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    iput-object v0, p0, Lcom/fimi/album/ui/albumfragment/BaseFragment;->lbBottomDelect:Landroid/widget/ImageButton;

    .line 98
    sget v0, Lcom/example/album/R$id;->media_select_bottom_rl:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/fimi/album/ui/albumfragment/BaseFragment;->rlMediaSelectBottom:Landroid/widget/RelativeLayout;

    .line 99
    sget v0, Lcom/example/album/R$id;->recycleview:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/widget/RecyclerView;

    iput-object v0, p0, Lcom/fimi/album/ui/albumfragment/BaseFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 100
    iget-object v0, p0, Lcom/fimi/album/ui/albumfragment/BaseFragment;->contextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fimi/album/ui/albumfragment/BaseFragment;->lbBottomDelect:Landroid/widget/ImageButton;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/FontUtil;->changeFontLanTing(Landroid/content/res/AssetManager;[Landroid/view/View;)V

    .line 101
    return-void
.end method

.method public noDataTipCallback(Z)V
    .locals 2
    .param p1, "isNodata"    # Z

    .prologue
    .line 182
    if-eqz p1, :cond_0

    .line 183
    iget-object v0, p0, Lcom/fimi/album/ui/albumfragment/BaseFragment;->rlMediaNoDataTip:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 187
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/fimi/album/ui/albumfragment/BaseFragment;->rlMediaNoDataTip:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method

.method public onAttach(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 126
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onAttach(Landroid/content/Context;)V

    .line 127
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/fimi/album/ui/albumfragment/BaseFragment;->contextWeakReference:Ljava/lang/ref/WeakReference;

    .line 128
    instance-of v0, p1, Lcom/fimi/album/ui/MediaActivity;

    if-eqz v0, :cond_0

    .line 129
    check-cast p1, Lcom/fimi/album/iview/ISelectData;

    .end local p1    # "context":Landroid/content/Context;
    iput-object p1, p0, Lcom/fimi/album/ui/albumfragment/BaseFragment;->mISelectData:Lcom/fimi/album/iview/ISelectData;

    .line 131
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
    .line 62
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 63
    new-instance v1, Lcom/fimi/album/broadcast/DeleteItemReceiver;

    invoke-direct {v1}, Lcom/fimi/album/broadcast/DeleteItemReceiver;-><init>()V

    iput-object v1, p0, Lcom/fimi/album/ui/albumfragment/BaseFragment;->deleteItemReceiver:Lcom/fimi/album/broadcast/DeleteItemReceiver;

    .line 64
    new-instance v0, Landroid/content/IntentFilter;

    const-string v1, "deleteItemAction"

    invoke-direct {v0, v1}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    .line 65
    .local v0, "intentFilter":Landroid/content/IntentFilter;
    iget-object v1, p0, Lcom/fimi/album/ui/albumfragment/BaseFragment;->contextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/album/ui/albumfragment/BaseFragment;->deleteItemReceiver:Lcom/fimi/album/broadcast/DeleteItemReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V

    .line 66
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 3
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
    .line 71
    invoke-virtual {p0}, Lcom/fimi/album/ui/albumfragment/BaseFragment;->getContentID()I

    move-result v0

    .line 72
    .local v0, "layoutID":I
    const/4 v2, 0x0

    invoke-virtual {p1, v0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 73
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0, v1}, Lcom/fimi/album/ui/albumfragment/BaseFragment;->initView(Landroid/view/View;)V

    .line 74
    invoke-virtual {p0}, Lcom/fimi/album/ui/albumfragment/BaseFragment;->initData()V

    .line 75
    invoke-direct {p0}, Lcom/fimi/album/ui/albumfragment/BaseFragment;->initTrans()V

    .line 76
    return-object v1
.end method

.method public onDestroy()V
    .locals 2

    .prologue
    .line 135
    invoke-super {p0}, Landroid/support/v4/app/Fragment;->onDestroy()V

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/fimi/album/ui/albumfragment/BaseFragment;->mISelectData:Lcom/fimi/album/iview/ISelectData;

    .line 137
    iget-object v0, p0, Lcom/fimi/album/ui/albumfragment/BaseFragment;->mBaseFragmentPresenter:Lcom/fimi/album/presenter/BaseFragmentPresenter;

    if-eqz v0, :cond_0

    .line 138
    iget-object v0, p0, Lcom/fimi/album/ui/albumfragment/BaseFragment;->mBaseFragmentPresenter:Lcom/fimi/album/presenter/BaseFragmentPresenter;

    invoke-virtual {v0}, Lcom/fimi/album/presenter/BaseFragmentPresenter;->canCalAsyncTask()V

    .line 140
    :cond_0
    iget-object v0, p0, Lcom/fimi/album/ui/albumfragment/BaseFragment;->contextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fimi/album/ui/albumfragment/BaseFragment;->deleteItemReceiver:Lcom/fimi/album/broadcast/DeleteItemReceiver;

    if-eqz v0, :cond_1

    .line 141
    iget-object v0, p0, Lcom/fimi/album/ui/albumfragment/BaseFragment;->contextWeakReference:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/album/ui/albumfragment/BaseFragment;->deleteItemReceiver:Lcom/fimi/album/broadcast/DeleteItemReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 143
    :cond_1
    iget-object v0, p0, Lcom/fimi/album/ui/albumfragment/BaseFragment;->panelRecycleAdapter:Lcom/fimi/album/adapter/PanelRecycleAdapter;

    if-eqz v0, :cond_2

    .line 144
    iget-object v0, p0, Lcom/fimi/album/ui/albumfragment/BaseFragment;->panelRecycleAdapter:Lcom/fimi/album/adapter/PanelRecycleAdapter;

    invoke-virtual {v0}, Lcom/fimi/album/adapter/PanelRecycleAdapter;->removeCallBack()V

    .line 146
    :cond_2
    return-void
.end method

.method public reshAdapter()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/fimi/album/ui/albumfragment/BaseFragment;->panelRecycleAdapter:Lcom/fimi/album/adapter/PanelRecycleAdapter;

    if-eqz v0, :cond_0

    .line 150
    iget-object v0, p0, Lcom/fimi/album/ui/albumfragment/BaseFragment;->panelRecycleAdapter:Lcom/fimi/album/adapter/PanelRecycleAdapter;

    invoke-virtual {v0}, Lcom/fimi/album/adapter/PanelRecycleAdapter;->refresh()V

    .line 151
    iget-object v0, p0, Lcom/fimi/album/ui/albumfragment/BaseFragment;->mBaseFragmentPresenter:Lcom/fimi/album/presenter/BaseFragmentPresenter;

    if-eqz v0, :cond_0

    .line 152
    iget-object v0, p0, Lcom/fimi/album/ui/albumfragment/BaseFragment;->mBaseFragmentPresenter:Lcom/fimi/album/presenter/BaseFragmentPresenter;

    invoke-virtual {v0}, Lcom/fimi/album/presenter/BaseFragmentPresenter;->refreshData()V

    .line 155
    :cond_0
    return-void
.end method

.method public showBottomDeleteView(Z)V
    .locals 2
    .param p1, "state"    # Z

    .prologue
    .line 173
    if-eqz p1, :cond_0

    .line 174
    iget-object v0, p0, Lcom/fimi/album/ui/albumfragment/BaseFragment;->rlMediaSelectBottom:Landroid/widget/RelativeLayout;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    .line 178
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lcom/fimi/album/ui/albumfragment/BaseFragment;->rlMediaSelectBottom:Landroid/widget/RelativeLayout;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setVisibility(I)V

    goto :goto_0
.end method
