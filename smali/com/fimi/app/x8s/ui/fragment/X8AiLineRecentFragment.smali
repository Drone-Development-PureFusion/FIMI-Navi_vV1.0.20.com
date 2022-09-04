.class public Lcom/fimi/app/x8s/ui/fragment/X8AiLineRecentFragment;
.super Landroid/support/v4/app/Fragment;
.source "X8AiLineRecentFragment.java"


# static fields
.field public static final ARGS_PAGE:Ljava/lang/String; = "X8AiLineRecentFragment"


# instance fields
.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mPage:I

.field private mRecyclerView:Landroid/support/v7/widget/RecyclerView;

.field private mX8AiLineHistoryAdapter2:Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;

.field private mX8AiLineSelectListener:Lcom/fimi/app/x8s/interfaces/IX8AiLineHistoryListener;

.field private rootView:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method


# virtual methods
.method public notityItemChange(J)V
    .locals 5
    .param p1, "lineId"    # J

    .prologue
    .line 64
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/fragment/X8AiLineRecentFragment;->rootView:Landroid/view/View;

    if-eqz v1, :cond_0

    .line 65
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/fragment/X8AiLineRecentFragment;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 66
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/fragment/X8AiLineRecentFragment;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    invoke-virtual {v1}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->getId()Ljava/lang/Long;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v1, p1, v2

    if-nez v1, :cond_1

    .line 67
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/fragment/X8AiLineRecentFragment;->list:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->setSaveFlag(I)V

    .line 68
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/fragment/X8AiLineRecentFragment;->mX8AiLineHistoryAdapter2:Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;

    invoke-virtual {v1, v0}, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->notifyItemChanged(I)V

    .line 73
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 65
    .restart local v0    # "i":I
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param

    .prologue
    .line 38
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 40
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 45
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/fragment/X8AiLineRecentFragment;->rootView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 46
    sget v1, Lcom/fimi/app/x8s/R$layout;->x8_fragment_ai_line_history:I

    invoke-virtual {p1, v1, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/ui/fragment/X8AiLineRecentFragment;->rootView:Landroid/view/View;

    .line 47
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/fragment/X8AiLineRecentFragment;->rootView:Landroid/view/View;

    sget v3, Lcom/fimi/app/x8s/R$id;->recycleview:I

    invoke-virtual {v1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/fimi/app/x8s/ui/fragment/X8AiLineRecentFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 48
    invoke-static {}, Lcom/fimi/kernel/store/sqlite/helper/X8AiLinePointInfoHelper;->getIntance()Lcom/fimi/kernel/store/sqlite/helper/X8AiLinePointInfoHelper;

    move-result-object v3

    invoke-static {}, Lcom/fimi/x8sdk/common/GlobalConfig;->getInstance()Lcom/fimi/x8sdk/common/GlobalConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/common/GlobalConfig;->getMapType()Lcom/fimi/x8sdk/map/MapType;

    move-result-object v1

    sget-object v4, Lcom/fimi/x8sdk/map/MapType;->AMap:Lcom/fimi/x8sdk/map/MapType;

    if-ne v1, v4, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v3, v1}, Lcom/fimi/kernel/store/sqlite/helper/X8AiLinePointInfoHelper;->getLastItem(I)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/ui/fragment/X8AiLineRecentFragment;->list:Ljava/util/List;

    .line 49
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/fragment/X8AiLineRecentFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 50
    .local v0, "layoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/fragment/X8AiLineRecentFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 51
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/fragment/X8AiLineRecentFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/SimpleItemAnimator;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 52
    new-instance v1, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;

    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/fragment/X8AiLineRecentFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/app/x8s/ui/fragment/X8AiLineRecentFragment;->list:Ljava/util/List;

    invoke-direct {v1, v3, v4, v2}, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    iput-object v1, p0, Lcom/fimi/app/x8s/ui/fragment/X8AiLineRecentFragment;->mX8AiLineHistoryAdapter2:Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;

    .line 53
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/fragment/X8AiLineRecentFragment;->mX8AiLineHistoryAdapter2:Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/fragment/X8AiLineRecentFragment;->mX8AiLineSelectListener:Lcom/fimi/app/x8s/interfaces/IX8AiLineHistoryListener;

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->setOnX8AiLineSelectListener(Lcom/fimi/app/x8s/interfaces/IX8AiLineHistoryListener;)V

    .line 54
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/fragment/X8AiLineRecentFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/fragment/X8AiLineRecentFragment;->mX8AiLineHistoryAdapter2:Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 56
    .end local v0    # "layoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/fragment/X8AiLineRecentFragment;->rootView:Landroid/view/View;

    return-object v1

    :cond_1
    move v1, v2

    .line 48
    goto :goto_0
.end method

.method public setOnX8AiLineSelectListener(Lcom/fimi/app/x8s/interfaces/IX8AiLineHistoryListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/app/x8s/interfaces/IX8AiLineHistoryListener;

    .prologue
    .line 60
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/fragment/X8AiLineRecentFragment;->mX8AiLineSelectListener:Lcom/fimi/app/x8s/interfaces/IX8AiLineHistoryListener;

    .line 61
    return-void
.end method
