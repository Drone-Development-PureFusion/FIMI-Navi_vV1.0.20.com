.class public Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "CameraEVParamsAdatper.java"


# instance fields
.field private context:Landroid/content/Context;

.field private isEnable:Z

.field private listener:Lcom/fimi/app/x8s/viewHolder/CameraEVParamListener;

.field private paramKey:Ljava/lang/String;

.field private plist:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private selectIndex:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;Lcom/fimi/app/x8s/viewHolder/CameraEVParamListener;Ljava/lang/String;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p3, "paramListener"    # Lcom/fimi/app/x8s/viewHolder/CameraEVParamListener;
    .param p4, "typeKey"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Lcom/fimi/app/x8s/viewHolder/CameraEVParamListener;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .local p2, "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const/4 v0, 0x0

    .line 23
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 21
    iput v0, p0, Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;->selectIndex:I

    .line 22
    iput-boolean v0, p0, Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;->isEnable:Z

    .line 24
    iput-object p1, p0, Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;->context:Landroid/content/Context;

    .line 25
    iput-object p2, p0, Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;->plist:Ljava/util/List;

    .line 26
    iput-object p4, p0, Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;->paramKey:Ljava/lang/String;

    .line 27
    iput-object p3, p0, Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;->listener:Lcom/fimi/app/x8s/viewHolder/CameraEVParamListener;

    .line 28
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;)Z
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;

    .prologue
    .line 16
    iget-boolean v0, p0, Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;->isEnable:Z

    return v0
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;)Lcom/fimi/app/x8s/viewHolder/CameraEVParamListener;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;->listener:Lcom/fimi/app/x8s/viewHolder/CameraEVParamListener;

    return-object v0
.end method

.method static synthetic access$200(Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;->paramKey:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$300(Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;

    .prologue
    .line 16
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;->plist:Ljava/util/List;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;->plist:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;->plist:Ljava/util/List;

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
    .line 44
    instance-of v0, p1, Lcom/fimi/app/x8s/viewHolder/CameraParamsViewHolder;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;->plist:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-gtz v0, :cond_1

    .line 56
    :cond_0
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 46
    check-cast v0, Lcom/fimi/app/x8s/viewHolder/CameraParamsViewHolder;

    iget-object v1, p0, Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;->plist:Ljava/util/List;

    invoke-interface {v1, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iget-boolean v2, p0, Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;->isEnable:Z

    invoke-virtual {v0, v1, v2}, Lcom/fimi/app/x8s/viewHolder/CameraParamsViewHolder;->initView(Ljava/lang/String;Z)V

    move-object v0, p1

    .line 47
    check-cast v0, Lcom/fimi/app/x8s/viewHolder/CameraParamsViewHolder;

    iget v1, p0, Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;->selectIndex:I

    if-ne p2, v1, :cond_2

    const/4 v1, 0x1

    :goto_1
    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/viewHolder/CameraParamsViewHolder;->upSelected(Z)V

    .line 48
    iget-object v0, p1, Landroid/support/v7/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    new-instance v1, Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper$1;

    invoke-direct {v1, p0, p2}, Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper$1;-><init>(Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;I)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    goto :goto_0

    .line 47
    :cond_2
    const/4 v1, 0x0

    goto :goto_1
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .line 37
    iget-object v2, p0, Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/fimi/app/x8s/R$layout;->x8_iso_recycler_item:I

    const/4 v4, 0x0

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 38
    .local v0, "rootView":Landroid/view/View;
    new-instance v1, Lcom/fimi/app/x8s/viewHolder/CameraParamsViewHolder;

    invoke-direct {v1, v0}, Lcom/fimi/app/x8s/viewHolder/CameraParamsViewHolder;-><init>(Landroid/view/View;)V

    .line 39
    .local v1, "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    return-object v1
.end method

.method public setEnable(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 69
    iput-boolean p1, p0, Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;->isEnable:Z

    .line 70
    invoke-virtual {p0}, Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;->notifyDataSetChanged()V

    .line 71
    return-void
.end method

.method public upSelectIndex(I)V
    .locals 0
    .param p1, "selectIndex"    # I

    .prologue
    .line 64
    iput p1, p0, Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;->selectIndex:I

    .line 65
    invoke-virtual {p0}, Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;->notifyDataSetChanged()V

    .line 66
    return-void
.end method

.method public updateDatas(Ljava/util/List;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 31
    .local p1, "params":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    iput-object p1, p0, Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;->plist:Ljava/util/List;

    .line 32
    invoke-virtual {p0}, Lcom/fimi/app/x8s/adapter/CameraEVParamsAdatper;->notifyDataSetChanged()V

    .line 33
    return-void
.end method
