.class public Lcom/fimi/libdownfw/adapter/DownloadFwSelectAdapter;
.super Landroid/widget/BaseAdapter;
.source "DownloadFwSelectAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/libdownfw/adapter/DownloadFwSelectAdapter$ViewHandle;,
        Lcom/fimi/libdownfw/adapter/DownloadFwSelectAdapter$SelectListener;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/host/Entity/DownloadFwSelectInfo;",
            ">;"
        }
    .end annotation
.end field

.field private mSelectListener:Lcom/fimi/libdownfw/adapter/DownloadFwSelectAdapter$SelectListener;

.field private mUpfirewareDtoList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/network/entity/UpfirewareDto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/host/Entity/DownloadFwSelectInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 35
    .local p2, "list":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/host/Entity/DownloadFwSelectInfo;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 27
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/libdownfw/adapter/DownloadFwSelectAdapter;->mUpfirewareDtoList:Ljava/util/List;

    .line 36
    iput-object p2, p0, Lcom/fimi/libdownfw/adapter/DownloadFwSelectAdapter;->list:Ljava/util/List;

    .line 37
    iput-object p1, p0, Lcom/fimi/libdownfw/adapter/DownloadFwSelectAdapter;->context:Landroid/content/Context;

    .line 38
    if-eqz p2, :cond_0

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 39
    const/4 v0, 0x0

    invoke-interface {p2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/host/Entity/DownloadFwSelectInfo;

    invoke-virtual {v0}, Lcom/fimi/host/Entity/DownloadFwSelectInfo;->getDtoList()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/libdownfw/adapter/DownloadFwSelectAdapter;->mUpfirewareDtoList:Ljava/util/List;

    .line 41
    :cond_0
    return-void
.end method

.method private updateSelected()V
    .locals 4

    .prologue
    .line 130
    iget-object v2, p0, Lcom/fimi/libdownfw/adapter/DownloadFwSelectAdapter;->mSelectListener:Lcom/fimi/libdownfw/adapter/DownloadFwSelectAdapter$SelectListener;

    if-eqz v2, :cond_2

    .line 131
    const/4 v1, 0x0

    .line 132
    .local v1, "ret":Z
    iget-object v2, p0, Lcom/fimi/libdownfw/adapter/DownloadFwSelectAdapter;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/host/Entity/DownloadFwSelectInfo;

    .line 133
    .local v0, "info":Lcom/fimi/host/Entity/DownloadFwSelectInfo;
    invoke-virtual {v0}, Lcom/fimi/host/Entity/DownloadFwSelectInfo;->isSelect()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 134
    const/4 v1, 0x1

    .line 138
    .end local v0    # "info":Lcom/fimi/host/Entity/DownloadFwSelectInfo;
    :cond_1
    iget-object v2, p0, Lcom/fimi/libdownfw/adapter/DownloadFwSelectAdapter;->mSelectListener:Lcom/fimi/libdownfw/adapter/DownloadFwSelectAdapter$SelectListener;

    invoke-interface {v2, v1}, Lcom/fimi/libdownfw/adapter/DownloadFwSelectAdapter$SelectListener;->onSelect(Z)V

    .line 140
    .end local v1    # "ret":Z
    :cond_2
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 49
    iget-object v0, p0, Lcom/fimi/libdownfw/adapter/DownloadFwSelectAdapter;->mUpfirewareDtoList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 54
    iget-object v0, p0, Lcom/fimi/libdownfw/adapter/DownloadFwSelectAdapter;->mUpfirewareDtoList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 59
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 65
    if-nez p2, :cond_0

    .line 66
    new-instance v0, Lcom/fimi/libdownfw/adapter/DownloadFwSelectAdapter$ViewHandle;

    invoke-direct {v0, p0, v3}, Lcom/fimi/libdownfw/adapter/DownloadFwSelectAdapter$ViewHandle;-><init>(Lcom/fimi/libdownfw/adapter/DownloadFwSelectAdapter;Lcom/fimi/libdownfw/adapter/DownloadFwSelectAdapter$1;)V

    .line 67
    .local v0, "viewHandle":Lcom/fimi/libdownfw/adapter/DownloadFwSelectAdapter$ViewHandle;
    iget-object v1, p0, Lcom/fimi/libdownfw/adapter/DownloadFwSelectAdapter;->context:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/fimi/libdownfw/R$layout;->list_download_fm_select_info_item:I

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 68
    sget v1, Lcom/fimi/libdownfw/R$id;->tv_title:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/fimi/libdownfw/adapter/DownloadFwSelectAdapter$ViewHandle;->tvTitle:Landroid/widget/TextView;

    .line 69
    sget v1, Lcom/fimi/libdownfw/R$id;->tv_info:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/fimi/libdownfw/adapter/DownloadFwSelectAdapter$ViewHandle;->tvInfo:Landroid/widget/TextView;

    .line 70
    sget v1, Lcom/fimi/libdownfw/R$id;->cb_select:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/fimi/libdownfw/adapter/DownloadFwSelectAdapter$ViewHandle;->cbSelect:Landroid/view/View;

    .line 71
    sget v1, Lcom/fimi/libdownfw/R$id;->v_lin_one:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    iput-object v1, v0, Lcom/fimi/libdownfw/adapter/DownloadFwSelectAdapter$ViewHandle;->vLinOne:Landroid/view/View;

    .line 72
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 76
    :goto_0
    iget-object v2, v0, Lcom/fimi/libdownfw/adapter/DownloadFwSelectAdapter$ViewHandle;->tvTitle:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/libdownfw/adapter/DownloadFwSelectAdapter;->mUpfirewareDtoList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/network/entity/UpfirewareDto;

    invoke-virtual {v1}, Lcom/fimi/network/entity/UpfirewareDto;->getSysName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 77
    iget-object v2, v0, Lcom/fimi/libdownfw/adapter/DownloadFwSelectAdapter$ViewHandle;->tvInfo:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/libdownfw/adapter/DownloadFwSelectAdapter;->mUpfirewareDtoList:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/network/entity/UpfirewareDto;

    invoke-virtual {v1}, Lcom/fimi/network/entity/UpfirewareDto;->getUpdateContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 79
    iget-object v1, p0, Lcom/fimi/libdownfw/adapter/DownloadFwSelectAdapter;->context:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/view/View;

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/fimi/libdownfw/adapter/DownloadFwSelectAdapter$ViewHandle;->tvTitle:Landroid/widget/TextView;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, v0, Lcom/fimi/libdownfw/adapter/DownloadFwSelectAdapter$ViewHandle;->tvInfo:Landroid/widget/TextView;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/fimi/kernel/utils/FontUtil;->changeFontLanTing(Landroid/content/res/AssetManager;[Landroid/view/View;)V

    .line 94
    invoke-direct {p0}, Lcom/fimi/libdownfw/adapter/DownloadFwSelectAdapter;->updateSelected()V

    .line 95
    return-object p2

    .line 74
    .end local v0    # "viewHandle":Lcom/fimi/libdownfw/adapter/DownloadFwSelectAdapter$ViewHandle;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/libdownfw/adapter/DownloadFwSelectAdapter$ViewHandle;

    .restart local v0    # "viewHandle":Lcom/fimi/libdownfw/adapter/DownloadFwSelectAdapter$ViewHandle;
    goto :goto_0
.end method

.method public hasForceSign()Z
    .locals 4

    .prologue
    .line 143
    const/4 v1, 0x0

    .line 144
    .local v1, "ret":Z
    iget-object v2, p0, Lcom/fimi/libdownfw/adapter/DownloadFwSelectAdapter;->list:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/host/Entity/DownloadFwSelectInfo;

    .line 145
    .local v0, "info":Lcom/fimi/host/Entity/DownloadFwSelectInfo;
    invoke-virtual {v0}, Lcom/fimi/host/Entity/DownloadFwSelectInfo;->isForceSign()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 146
    const/4 v1, 0x1

    .line 150
    .end local v0    # "info":Lcom/fimi/host/Entity/DownloadFwSelectInfo;
    :cond_1
    return v1
.end method

.method public notifyDataSetChanged()V
    .locals 0

    .prologue
    .line 125
    invoke-super {p0}, Landroid/widget/BaseAdapter;->notifyDataSetChanged()V

    .line 126
    invoke-direct {p0}, Lcom/fimi/libdownfw/adapter/DownloadFwSelectAdapter;->updateSelected()V

    .line 127
    return-void
.end method

.method public setSelectListener(Lcom/fimi/libdownfw/adapter/DownloadFwSelectAdapter$SelectListener;)V
    .locals 0
    .param p1, "mSelectListener"    # Lcom/fimi/libdownfw/adapter/DownloadFwSelectAdapter$SelectListener;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/fimi/libdownfw/adapter/DownloadFwSelectAdapter;->mSelectListener:Lcom/fimi/libdownfw/adapter/DownloadFwSelectAdapter$SelectListener;

    .line 45
    return-void
.end method

.method public update(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 99
    iget-object v1, p0, Lcom/fimi/libdownfw/adapter/DownloadFwSelectAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/host/Entity/DownloadFwSelectInfo;

    .line 101
    .local v0, "info":Lcom/fimi/host/Entity/DownloadFwSelectInfo;
    invoke-virtual {v0}, Lcom/fimi/host/Entity/DownloadFwSelectInfo;->isSelect()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 102
    iget-object v1, p0, Lcom/fimi/libdownfw/adapter/DownloadFwSelectAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/host/Entity/DownloadFwSelectInfo;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/fimi/host/Entity/DownloadFwSelectInfo;->setSelect(Z)V

    .line 108
    :goto_0
    iget-object v1, p0, Lcom/fimi/libdownfw/adapter/DownloadFwSelectAdapter;->list:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/host/Entity/DownloadFwSelectInfo;

    goto :goto_1

    .line 104
    :cond_0
    iget-object v1, p0, Lcom/fimi/libdownfw/adapter/DownloadFwSelectAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/host/Entity/DownloadFwSelectInfo;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/fimi/host/Entity/DownloadFwSelectInfo;->setSelect(Z)V

    goto :goto_0

    .line 110
    :cond_1
    invoke-virtual {p0}, Lcom/fimi/libdownfw/adapter/DownloadFwSelectAdapter;->notifyDataSetChanged()V

    .line 114
    return-void
.end method
