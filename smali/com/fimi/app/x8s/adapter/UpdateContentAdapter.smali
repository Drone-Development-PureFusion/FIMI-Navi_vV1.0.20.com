.class public Lcom/fimi/app/x8s/adapter/UpdateContentAdapter;
.super Landroid/widget/BaseAdapter;
.source "UpdateContentAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/adapter/UpdateContentAdapter$ViewHold;
    }
.end annotation


# instance fields
.field list:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/network/entity/UpfirewareDto;",
            ">;"
        }
    .end annotation
.end field

.field mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 0
    .param p2, "mContext"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/network/entity/UpfirewareDto;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 25
    .local p1, "list":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/network/entity/UpfirewareDto;>;"
    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 26
    iput-object p1, p0, Lcom/fimi/app/x8s/adapter/UpdateContentAdapter;->list:Ljava/util/List;

    .line 27
    iput-object p2, p0, Lcom/fimi/app/x8s/adapter/UpdateContentAdapter;->mContext:Landroid/content/Context;

    .line 28
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/UpdateContentAdapter;->list:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getHanNumber(I)Ljava/lang/String;
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 84
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    add-int/lit8 v1, p1, 0x1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "i"    # I

    .prologue
    .line 37
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/UpdateContentAdapter;->list:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "i"    # I

    .prologue
    .line 42
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 5
    .param p1, "i"    # I
    .param p2, "view"    # Landroid/view/View;
    .param p3, "viewGroup"    # Landroid/view/ViewGroup;

    .prologue
    const/4 v3, 0x0

    .line 48
    if-nez p2, :cond_0

    .line 49
    new-instance v0, Lcom/fimi/app/x8s/adapter/UpdateContentAdapter$ViewHold;

    invoke-direct {v0, p0, v3}, Lcom/fimi/app/x8s/adapter/UpdateContentAdapter$ViewHold;-><init>(Lcom/fimi/app/x8s/adapter/UpdateContentAdapter;Lcom/fimi/app/x8s/adapter/UpdateContentAdapter$1;)V

    .line 50
    .local v0, "viewHandle":Lcom/fimi/app/x8s/adapter/UpdateContentAdapter$ViewHold;
    iget-object v1, p0, Lcom/fimi/app/x8s/adapter/UpdateContentAdapter;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$layout;->x8_item_update_detail:I

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    .line 51
    sget v1, Lcom/fimi/app/x8s/R$id;->tv_sysname_flag:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/fimi/app/x8s/adapter/UpdateContentAdapter$ViewHold;->tvSysnameFlag:Landroid/widget/TextView;

    .line 52
    sget v1, Lcom/fimi/app/x8s/R$id;->tv_sysname:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/fimi/app/x8s/adapter/UpdateContentAdapter$ViewHold;->tvSysname:Landroid/widget/TextView;

    .line 53
    sget v1, Lcom/fimi/app/x8s/R$id;->tv_sys_content:I

    invoke-virtual {p2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, v0, Lcom/fimi/app/x8s/adapter/UpdateContentAdapter$ViewHold;->tvSyscontent:Landroid/widget/TextView;

    .line 54
    iget-object v1, p0, Lcom/fimi/app/x8s/adapter/UpdateContentAdapter;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Landroid/view/View;

    const/4 v3, 0x0

    iget-object v4, v0, Lcom/fimi/app/x8s/adapter/UpdateContentAdapter$ViewHold;->tvSyscontent:Landroid/widget/TextView;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/fimi/kernel/utils/FontUtil;->changeFontLanTing(Landroid/content/res/AssetManager;[Landroid/view/View;)V

    .line 55
    invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 59
    :goto_0
    iget-object v1, v0, Lcom/fimi/app/x8s/adapter/UpdateContentAdapter$ViewHold;->tvSysnameFlag:Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/fimi/app/x8s/adapter/UpdateContentAdapter;->getHanNumber(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 60
    iget-object v2, v0, Lcom/fimi/app/x8s/adapter/UpdateContentAdapter$ViewHold;->tvSysname:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/app/x8s/adapter/UpdateContentAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/network/entity/UpfirewareDto;

    invoke-virtual {v1}, Lcom/fimi/network/entity/UpfirewareDto;->getSysName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 62
    iget-object v2, v0, Lcom/fimi/app/x8s/adapter/UpdateContentAdapter$ViewHold;->tvSyscontent:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/fimi/app/x8s/adapter/UpdateContentAdapter;->list:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/network/entity/UpfirewareDto;

    invoke-virtual {v1}, Lcom/fimi/network/entity/UpfirewareDto;->getUpdateContent()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 63
    return-object p2

    .line 57
    .end local v0    # "viewHandle":Lcom/fimi/app/x8s/adapter/UpdateContentAdapter$ViewHold;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/adapter/UpdateContentAdapter$ViewHold;

    .restart local v0    # "viewHandle":Lcom/fimi/app/x8s/adapter/UpdateContentAdapter$ViewHold;
    goto :goto_0
.end method

.method public updateList(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/network/entity/UpfirewareDto;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 67
    .local p1, "needUpgrade":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/network/entity/UpfirewareDto;>;"
    iput-object p1, p0, Lcom/fimi/app/x8s/adapter/UpdateContentAdapter;->list:Ljava/util/List;

    .line 68
    invoke-virtual {p0}, Lcom/fimi/app/x8s/adapter/UpdateContentAdapter;->notifyDataSetChanged()V

    .line 69
    return-void
.end method
