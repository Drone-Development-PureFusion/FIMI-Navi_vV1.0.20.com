.class public Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "PhotoArrayParamsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter$PhotoArrayItemClickListener;
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private itemClickListener:Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter$PhotoArrayItemClickListener;

.field private keyMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private pList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private paramKey:Ljava/lang/String;

.field private select_position:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p2, "mlist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 22
    iput-object p1, p0, Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;->context:Landroid/content/Context;

    .line 23
    iput-object p2, p0, Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;->pList:Ljava/util/List;

    .line 24
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;)Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter$PhotoArrayItemClickListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;->itemClickListener:Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter$PhotoArrayItemClickListener;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;->paramKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;

    .prologue
    .line 15
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;->pList:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 70
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;->pList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;->pList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 3
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 54
    instance-of v0, p1, Lcom/fimi/app/x8s/viewHolder/CameraArrayParamsViewHolder;

    if-eqz v0, :cond_0

    move-object v0, p1

    .line 55
    check-cast v0, Lcom/fimi/app/x8s/viewHolder/CameraArrayParamsViewHolder;

    iget-object v1, p0, Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;->pList:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-object v2, p0, Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;->keyMap:Ljava/util/Map;

    invoke-virtual {v0, v1, v2}, Lcom/fimi/app/x8s/viewHolder/CameraArrayParamsViewHolder;->initView(Ljava/lang/String;Ljava/util/Map;)V

    move-object v0, p1

    .line 56
    check-cast v0, Lcom/fimi/app/x8s/viewHolder/CameraArrayParamsViewHolder;

    iget v1, p0, Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;->select_position:I

    if-ne p2, v1, :cond_1

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/viewHolder/CameraArrayParamsViewHolder;->upSelected(Z)V

    .line 58
    :cond_0
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter$1;

    invoke-direct {v1, p0, p2}, Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter$1;-><init>(Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 66
    return-void

    .line 56
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 28
    iget-object v2, p0, Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$layout;->x8_photo_array_param_list_item:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 29
    .local v0, "parentView":Landroid/view/View;
    new-instance v1, Lcom/fimi/app/x8s/viewHolder/CameraArrayParamsViewHolder;

    invoke-direct {v1, v0}, Lcom/fimi/app/x8s/viewHolder/CameraArrayParamsViewHolder;-><init>(Landroid/view/View;)V

    .line 30
    .local v1, "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    return-object v1
.end method

.method public setItemClickListener(Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter$PhotoArrayItemClickListener;)V
    .locals 0
    .param p1, "itemClickListener"    # Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter$PhotoArrayItemClickListener;

    .prologue
    .line 80
    iput-object p1, p0, Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;->itemClickListener:Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter$PhotoArrayItemClickListener;

    .line 81
    return-void
.end method

.method public setSelect_position(I)V
    .locals 0
    .param p1, "select_position"    # I

    .prologue
    .line 48
    iput p1, p0, Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;->select_position:I

    .line 49
    invoke-virtual {p0}, Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;->notifyDataSetChanged()V

    .line 50
    return-void
.end method

.method public updateData(Ljava/util/List;Ljava/util/Map;Ljava/lang/String;I)V
    .locals 0
    .param p3, "paramKey"    # Ljava/lang/String;
    .param p4, "selected_index"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;",
            "Ljava/lang/String;",
            "I)V"
        }
    .end annotation

    .prologue
    .line 34
    .local p1, "uplist":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    .local p2, "map":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p1, :cond_0

    .line 35
    iput-object p1, p0, Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;->pList:Ljava/util/List;

    .line 37
    :cond_0
    if-eqz p2, :cond_1

    .line 38
    iput-object p2, p0, Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;->keyMap:Ljava/util/Map;

    .line 40
    :cond_1
    if-eqz p3, :cond_2

    .line 41
    iput-object p3, p0, Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;->paramKey:Ljava/lang/String;

    .line 43
    :cond_2
    iput p4, p0, Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;->select_position:I

    .line 44
    invoke-virtual {p0}, Lcom/fimi/app/x8s/adapter/PhotoArrayParamsAdapter;->notifyDataSetChanged()V

    .line 45
    return-void
.end method
