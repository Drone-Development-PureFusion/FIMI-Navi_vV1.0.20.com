.class public Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;
.super Landroid/support/v4/app/Fragment;
.source "X8AiLineFavoritesFragment.java"


# static fields
.field public static final ARGS_PAGE:Ljava/lang/String; = "X8AiLineFavoritesFragment"


# instance fields
.field private dialog:Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;

.field private isShow:Z

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
    .line 30
    invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;)Lcom/fimi/app/x8s/interfaces/IX8AiLineHistoryListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;

    .prologue
    .line 30
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;->mX8AiLineSelectListener:Lcom/fimi/app/x8s/interfaces/IX8AiLineHistoryListener;

    return-object v0
.end method


# virtual methods
.method public addLineItem(Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    .prologue
    .line 92
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;->rootView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 93
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;->mX8AiLineHistoryAdapter2:Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->addData(Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;)V

    .line 95
    :cond_0
    return-void
.end method

.method public favoritesCapacity()I
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public notityItemChange(JI)V
    .locals 7
    .param p1, "lineId"    # J
    .param p3, "saveFlag"    # I

    .prologue
    .line 69
    const/4 v1, 0x0

    .line 70
    .local v1, "info":Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;
    const/4 v2, 0x0

    .line 71
    .local v2, "pos":I
    iget-object v3, p0, Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;->rootView:Landroid/view/View;

    if-eqz v3, :cond_0

    .line 72
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v3, p0, Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;->list:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 73
    iget-object v3, p0, Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;->list:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    invoke-virtual {v3}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->getId()Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    cmp-long v3, p1, v4

    if-nez v3, :cond_3

    .line 74
    iget-object v3, p0, Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;->list:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    invoke-virtual {v3, p3}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->setSaveFlag(I)V

    .line 75
    const/4 v3, 0x1

    if-ne p3, v3, :cond_2

    .line 76
    iget-object v3, p0, Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;->mX8AiLineHistoryAdapter2:Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;

    invoke-virtual {v3, v0}, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->notifyItemChanged(I)V

    .line 80
    :goto_1
    move v2, v0

    .line 85
    .end local v0    # "i":I
    :cond_0
    if-eqz v1, :cond_1

    if-nez p3, :cond_1

    .line 86
    iget-object v3, p0, Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;->mX8AiLineHistoryAdapter2:Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;

    invoke-virtual {v3, v1, v2}, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->removeData(Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;I)V

    .line 89
    :cond_1
    return-void

    .line 78
    .restart local v0    # "i":I
    :cond_2
    iget-object v3, p0, Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;->list:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    .end local v1    # "info":Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;
    check-cast v1, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    .restart local v1    # "info":Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;
    goto :goto_1

    .line 72
    :cond_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public notityItemChange(JLjava/lang/String;)V
    .locals 5
    .param p1, "lineId"    # J
    .param p3, "name"    # Ljava/lang/String;

    .prologue
    .line 98
    const/4 v1, 0x0

    .line 99
    .local v1, "info":Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;->rootView:Landroid/view/View;

    if-eqz v2, :cond_0

    .line 100
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-ge v0, v2, :cond_0

    .line 101
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;->list:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    invoke-virtual {v2}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->getId()Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    cmp-long v2, p1, v2

    if-nez v2, :cond_1

    .line 102
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;->list:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    invoke-virtual {v2, p3}, Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;->setName(Ljava/lang/String;)V

    .line 103
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;->mX8AiLineHistoryAdapter2:Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;

    invoke-virtual {v2, v0}, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->notifyItemChanged(I)V

    .line 108
    .end local v0    # "i":I
    :cond_0
    return-void

    .line 100
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
    .line 43
    invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 45
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 6
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
        .annotation build Landroid/support/annotation/Nullable;
        .end annotation
    .end param
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;
    .annotation build Landroid/support/annotation/Nullable;
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 50
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;->rootView:Landroid/view/View;

    if-nez v1, :cond_0

    .line 51
    sget v1, Lcom/fimi/app/x8s/R$layout;->x8_fragment_ai_line_history:I

    invoke-virtual {p1, v1, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;->rootView:Landroid/view/View;

    .line 52
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;->rootView:Landroid/view/View;

    sget v4, Lcom/fimi/app/x8s/R$id;->recycleview:I

    invoke-virtual {v1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/RecyclerView;

    iput-object v1, p0, Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    .line 53
    invoke-static {}, Lcom/fimi/kernel/store/sqlite/helper/X8AiLinePointInfoHelper;->getIntance()Lcom/fimi/kernel/store/sqlite/helper/X8AiLinePointInfoHelper;

    move-result-object v4

    invoke-static {}, Lcom/fimi/x8sdk/common/GlobalConfig;->getInstance()Lcom/fimi/x8sdk/common/GlobalConfig;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/common/GlobalConfig;->getMapType()Lcom/fimi/x8sdk/map/MapType;

    move-result-object v1

    sget-object v5, Lcom/fimi/x8sdk/map/MapType;->AMap:Lcom/fimi/x8sdk/map/MapType;

    if-ne v1, v5, :cond_1

    move v1, v2

    :goto_0
    const/16 v5, 0x14

    invoke-virtual {v4, v1, v2, v5}, Lcom/fimi/kernel/store/sqlite/helper/X8AiLinePointInfoHelper;->getLastItem(IZI)Ljava/util/List;

    move-result-object v1

    iput-object v1, p0, Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;->list:Ljava/util/List;

    .line 54
    new-instance v0, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 55
    .local v0, "layoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1, v0}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 56
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v1}, Landroid/support/v7/widget/RecyclerView;->getItemAnimator()Landroid/support/v7/widget/RecyclerView$ItemAnimator;

    move-result-object v1

    check-cast v1, Landroid/support/v7/widget/SimpleItemAnimator;

    invoke-virtual {v1, v3}, Landroid/support/v7/widget/SimpleItemAnimator;->setSupportsChangeAnimations(Z)V

    .line 57
    new-instance v1, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;

    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;->list:Ljava/util/List;

    invoke-direct {v1, v3, v4, v2}, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;-><init>(Landroid/content/Context;Ljava/util/List;I)V

    iput-object v1, p0, Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;->mX8AiLineHistoryAdapter2:Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;

    .line 58
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;->mX8AiLineHistoryAdapter2:Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;->mX8AiLineSelectListener:Lcom/fimi/app/x8s/interfaces/IX8AiLineHistoryListener;

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;->setOnX8AiLineSelectListener(Lcom/fimi/app/x8s/interfaces/IX8AiLineHistoryListener;)V

    .line 59
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;->mRecyclerView:Landroid/support/v7/widget/RecyclerView;

    iget-object v2, p0, Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;->mX8AiLineHistoryAdapter2:Lcom/fimi/app/x8s/adapter/X8AiLineHistoryAdapter2;

    invoke-virtual {v1, v2}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 61
    .end local v0    # "layoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;->rootView:Landroid/view/View;

    return-object v1

    :cond_1
    move v1, v3

    .line 53
    goto :goto_0
.end method

.method public setOnX8AiLineSelectListener(Lcom/fimi/app/x8s/interfaces/IX8AiLineHistoryListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/app/x8s/interfaces/IX8AiLineHistoryListener;

    .prologue
    .line 65
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;->mX8AiLineSelectListener:Lcom/fimi/app/x8s/interfaces/IX8AiLineHistoryListener;

    .line 66
    return-void
.end method

.method public showMaxSaveDialog()V
    .locals 5

    .prologue
    const/16 v3, 0xf

    .line 117
    iget-boolean v2, p0, Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;->isShow:Z

    if-nez v2, :cond_3

    .line 118
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-le v2, v3, :cond_0

    .line 119
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;->isShow:Z

    .line 121
    :cond_0
    iget-boolean v2, p0, Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;->isShow:Z

    if-eqz v2, :cond_2

    .line 122
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;->dialog:Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;

    if-nez v2, :cond_1

    .line 123
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_ai_line_not_enough_save_title:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 124
    .local v1, "t":Ljava/lang/String;
    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;->getContext()Landroid/content/Context;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$string;->x8_ai_line_not_enough_save_tip:I

    invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 125
    .local v0, "m":Ljava/lang/String;
    new-instance v2, Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;

    invoke-virtual {p0}, Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;->getContext()Landroid/content/Context;

    move-result-object v3

    new-instance v4, Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment$1;

    invoke-direct {v4, p0}, Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment$1;-><init>(Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;)V

    invoke-direct {v2, v3, v1, v0, v4}, Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Lcom/fimi/app/x8s/widget/X8SingleCustomDialog$onDialogButtonClickListener;)V

    iput-object v2, p0, Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;->dialog:Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;

    .line 133
    .end local v0    # "m":Ljava/lang/String;
    .end local v1    # "t":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;->dialog:Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/widget/X8SingleCustomDialog;->show()V

    .line 141
    :cond_2
    :goto_0
    return-void

    .line 136
    :cond_3
    iget-object v2, p0, Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-gt v2, v3, :cond_2

    .line 137
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/fimi/app/x8s/ui/fragment/X8AiLineFavoritesFragment;->isShow:Z

    goto :goto_0
.end method
