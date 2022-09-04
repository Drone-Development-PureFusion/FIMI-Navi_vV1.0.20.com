.class public Lcom/fimi/app/x8s/adapter/PhotoParamsAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "PhotoParamsAdapter.java"


# instance fields
.field private context:Landroid/content/Context;

.field private isEnable:Z

.field private pList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;",
            ">;"
        }
    .end annotation
.end field

.field private paramListener:Lcom/fimi/app/x8s/viewHolder/CameraParamListener;


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
            "Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 22
    .local p2, "mlist":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 72
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fimi/app/x8s/adapter/PhotoParamsAdapter;->isEnable:Z

    .line 23
    iput-object p1, p0, Lcom/fimi/app/x8s/adapter/PhotoParamsAdapter;->context:Landroid/content/Context;

    .line 24
    iput-object p2, p0, Lcom/fimi/app/x8s/adapter/PhotoParamsAdapter;->pList:Ljava/util/List;

    .line 25
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/adapter/PhotoParamsAdapter;)Lcom/fimi/app/x8s/viewHolder/CameraParamListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/adapter/PhotoParamsAdapter;

    .prologue
    .line 17
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/PhotoParamsAdapter;->paramListener:Lcom/fimi/app/x8s/viewHolder/CameraParamListener;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 69
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/PhotoParamsAdapter;->pList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/PhotoParamsAdapter;->pList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isEnable()Z
    .locals 1

    .prologue
    .line 75
    iget-boolean v0, p0, Lcom/fimi/app/x8s/adapter/PhotoParamsAdapter;->isEnable:Z

    return v0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 4
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 47
    iget-object v1, p0, Lcom/fimi/app/x8s/adapter/PhotoParamsAdapter;->pList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;

    .line 48
    .local v0, "itemEntity":Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;
    instance-of v1, p1, Lcom/fimi/app/x8s/viewHolder/PhotoParamsViewHolder;

    if-eqz v1, :cond_0

    move-object v1, p1

    .line 49
    check-cast v1, Lcom/fimi/app/x8s/viewHolder/PhotoParamsViewHolder;

    iget-object v2, p0, Lcom/fimi/app/x8s/adapter/PhotoParamsAdapter;->pList:Ljava/util/List;

    invoke-interface {v2, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;

    iget-boolean v3, p0, Lcom/fimi/app/x8s/adapter/PhotoParamsAdapter;->isEnable:Z

    invoke-virtual {v1, v2, v3}, Lcom/fimi/app/x8s/viewHolder/PhotoParamsViewHolder;->initItemData(Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;Z)V

    .line 50
    iget-object v1, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v2, Lcom/fimi/app/x8s/adapter/PhotoParamsAdapter$1;

    invoke-direct {v2, p0, v0, p1}, Lcom/fimi/app/x8s/adapter/PhotoParamsAdapter$1;-><init>(Lcom/fimi/app/x8s/adapter/PhotoParamsAdapter;Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;Landroid/support/v7/widget/RecyclerView$ViewHolder;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 65
    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 33
    iget-object v2, p0, Lcom/fimi/app/x8s/adapter/PhotoParamsAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$layout;->x8_photo_param_list_item:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 34
    .local v0, "parentView":Landroid/view/View;
    new-instance v1, Lcom/fimi/app/x8s/viewHolder/PhotoParamsViewHolder;

    invoke-direct {v1, v0}, Lcom/fimi/app/x8s/viewHolder/PhotoParamsViewHolder;-><init>(Landroid/view/View;)V

    .line 35
    .local v1, "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    return-object v1
.end method

.method public setEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 79
    iput-boolean p1, p0, Lcom/fimi/app/x8s/adapter/PhotoParamsAdapter;->isEnable:Z

    .line 80
    invoke-virtual {p0}, Lcom/fimi/app/x8s/adapter/PhotoParamsAdapter;->notifyDataSetChanged()V

    .line 81
    return-void
.end method

.method public setParamListener(Lcom/fimi/app/x8s/viewHolder/CameraParamListener;)V
    .locals 0
    .param p1, "paramListener"    # Lcom/fimi/app/x8s/viewHolder/CameraParamListener;

    .prologue
    .line 28
    iput-object p1, p0, Lcom/fimi/app/x8s/adapter/PhotoParamsAdapter;->paramListener:Lcom/fimi/app/x8s/viewHolder/CameraParamListener;

    .line 29
    return-void
.end method

.method public updateData(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 39
    .local p1, "uplist":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/app/x8s/entity/PhotoParamItemEntity;>;"
    if-eqz p1, :cond_0

    .line 40
    iput-object p1, p0, Lcom/fimi/app/x8s/adapter/PhotoParamsAdapter;->pList:Ljava/util/List;

    .line 42
    :cond_0
    invoke-virtual {p0}, Lcom/fimi/app/x8s/adapter/PhotoParamsAdapter;->notifyDataSetChanged()V

    .line 43
    return-void
.end method
