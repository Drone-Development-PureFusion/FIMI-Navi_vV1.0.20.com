.class public Lcom/fimi/app/x8s/adapter/FirmwareUpgradeAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "FirmwareUpgradeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/adapter/FirmwareUpgradeAdapter$FmEndViewHolder;,
        Lcom/fimi/app/x8s/adapter/FirmwareUpgradeAdapter$FmNormalViewHolder;,
        Lcom/fimi/app/x8s/adapter/FirmwareUpgradeAdapter$OnUpdateItemClickListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Landroid/support/v7/widget/RecyclerView$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private final VIEW_TYPE_END:I

.field private final VIEW_TYPE_NORMAL:I

.field private context:Landroid/content/Context;

.field private list:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fimi/app/x8s/entity/VersionEntity;",
            ">;"
        }
    .end annotation
.end field

.field private listener:Lcom/fimi/app/x8s/adapter/FirmwareUpgradeAdapter$OnUpdateItemClickListener;


# direct methods
.method public constructor <init>(Ljava/util/ArrayList;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fimi/app/x8s/entity/VersionEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 27
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fimi/app/x8s/entity/VersionEntity;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/app/x8s/adapter/FirmwareUpgradeAdapter;->VIEW_TYPE_NORMAL:I

    .line 22
    const/4 v0, 0x1

    iput v0, p0, Lcom/fimi/app/x8s/adapter/FirmwareUpgradeAdapter;->VIEW_TYPE_END:I

    .line 28
    iput-object p1, p0, Lcom/fimi/app/x8s/adapter/FirmwareUpgradeAdapter;->list:Ljava/util/ArrayList;

    .line 29
    return-void
.end method


# virtual methods
.method public changeDatas(Ljava/util/ArrayList;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fimi/app/x8s/entity/VersionEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 32
    .local p1, "list":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/fimi/app/x8s/entity/VersionEntity;>;"
    iput-object p1, p0, Lcom/fimi/app/x8s/adapter/FirmwareUpgradeAdapter;->list:Ljava/util/ArrayList;

    .line 33
    invoke-virtual {p0}, Lcom/fimi/app/x8s/adapter/FirmwareUpgradeAdapter;->notifyDataSetChanged()V

    .line 36
    return-void
.end method

.method public getItemCount()I
    .locals 1

    .prologue
    .line 82
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/FirmwareUpgradeAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public getItemViewType(I)I
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 89
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/FirmwareUpgradeAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 5
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 55
    instance-of v2, p1, Lcom/fimi/app/x8s/adapter/FirmwareUpgradeAdapter$FmNormalViewHolder;

    if-eqz v2, :cond_2

    .line 56
    iget-object v2, p0, Lcom/fimi/app/x8s/adapter/FirmwareUpgradeAdapter;->list:Ljava/util/ArrayList;

    invoke-virtual {v2, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/fimi/app/x8s/entity/VersionEntity;

    .local v1, "item":Lcom/fimi/app/x8s/entity/VersionEntity;
    move-object v0, p1

    .line 57
    check-cast v0, Lcom/fimi/app/x8s/adapter/FirmwareUpgradeAdapter$FmNormalViewHolder;

    .line 58
    .local v0, "holder1":Lcom/fimi/app/x8s/adapter/FirmwareUpgradeAdapter$FmNormalViewHolder;
    invoke-virtual {v1}, Lcom/fimi/app/x8s/entity/VersionEntity;->getVersionName()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 59
    iget-object v2, v0, Lcom/fimi/app/x8s/adapter/FirmwareUpgradeAdapter$FmNormalViewHolder;->tvVersionName:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/entity/VersionEntity;->getVersionName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 61
    :cond_0
    invoke-virtual {v1}, Lcom/fimi/app/x8s/entity/VersionEntity;->getVersionCode()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 62
    iget-object v2, v0, Lcom/fimi/app/x8s/adapter/FirmwareUpgradeAdapter$FmNormalViewHolder;->tvVersionCode:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/entity/VersionEntity;->getVersionCode()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 64
    :cond_1
    iget-object v3, v0, Lcom/fimi/app/x8s/adapter/FirmwareUpgradeAdapter$FmNormalViewHolder;->tvUpdate:Landroid/widget/TextView;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/entity/VersionEntity;->hasNewVersion()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 65
    iget-object v3, v0, Lcom/fimi/app/x8s/adapter/FirmwareUpgradeAdapter$FmNormalViewHolder;->tvVersionName:Landroid/widget/TextView;

    iget-object v2, p0, Lcom/fimi/app/x8s/adapter/FirmwareUpgradeAdapter;->context:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-virtual {v1}, Lcom/fimi/app/x8s/entity/VersionEntity;->hasNewVersion()Z

    move-result v2

    if-eqz v2, :cond_4

    sget v2, Lcom/fimi/app/x8s/R$color;->x8_fc_all_setting_blue:I

    :goto_1
    invoke-virtual {v4, v2}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    invoke-virtual {v3, v2}, Landroid/widget/TextView;->setTextColor(I)V

    .line 77
    .end local v0    # "holder1":Lcom/fimi/app/x8s/adapter/FirmwareUpgradeAdapter$FmNormalViewHolder;
    .end local v1    # "item":Lcom/fimi/app/x8s/entity/VersionEntity;
    :cond_2
    return-void

    .line 64
    .restart local v0    # "holder1":Lcom/fimi/app/x8s/adapter/FirmwareUpgradeAdapter$FmNormalViewHolder;
    .restart local v1    # "item":Lcom/fimi/app/x8s/entity/VersionEntity;
    :cond_3
    const/16 v2, 0x8

    goto :goto_0

    .line 65
    :cond_4
    sget v2, Lcom/fimi/app/x8s/R$color;->white_100:I

    goto :goto_1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 40
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v2

    iput-object v2, p0, Lcom/fimi/app/x8s/adapter/FirmwareUpgradeAdapter;->context:Landroid/content/Context;

    .line 41
    iget-object v2, p0, Lcom/fimi/app/x8s/adapter/FirmwareUpgradeAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v3

    if-nez p2, :cond_0

    sget v2, Lcom/fimi/app/x8s/R$layout;->x8_main_general_fw_upgrade_item_normal:I

    :goto_0
    const/4 v4, 0x0

    invoke-virtual {v3, v2, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 43
    .local v1, "view":Landroid/view/View;
    if-nez p2, :cond_1

    .line 44
    new-instance v0, Lcom/fimi/app/x8s/adapter/FirmwareUpgradeAdapter$FmNormalViewHolder;

    invoke-direct {v0, v1}, Lcom/fimi/app/x8s/adapter/FirmwareUpgradeAdapter$FmNormalViewHolder;-><init>(Landroid/view/View;)V

    .line 48
    :goto_1
    return-object v0

    .line 41
    .end local v1    # "view":Landroid/view/View;
    :cond_0
    sget v2, Lcom/fimi/app/x8s/R$layout;->x8_main_general_fw_upgrade_item_end:I

    goto :goto_0

    .line 47
    .restart local v1    # "view":Landroid/view/View;
    :cond_1
    new-instance v0, Lcom/fimi/app/x8s/adapter/FirmwareUpgradeAdapter$FmEndViewHolder;

    invoke-direct {v0, v1}, Lcom/fimi/app/x8s/adapter/FirmwareUpgradeAdapter$FmEndViewHolder;-><init>(Landroid/view/View;)V

    .line 48
    .local v0, "holder":Lcom/fimi/app/x8s/adapter/FirmwareUpgradeAdapter$FmEndViewHolder;
    goto :goto_1
.end method

.method public setOnUpdateItemClickListener(Lcom/fimi/app/x8s/adapter/FirmwareUpgradeAdapter$OnUpdateItemClickListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/fimi/app/x8s/adapter/FirmwareUpgradeAdapter$OnUpdateItemClickListener;

    .prologue
    .line 97
    iput-object p1, p0, Lcom/fimi/app/x8s/adapter/FirmwareUpgradeAdapter;->listener:Lcom/fimi/app/x8s/adapter/FirmwareUpgradeAdapter$OnUpdateItemClickListener;

    .line 98
    return-void
.end method
