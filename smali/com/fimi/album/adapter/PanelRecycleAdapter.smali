.class public Lcom/fimi/album/adapter/PanelRecycleAdapter;
.super Lcom/fimi/album/adapter/BaseRecycleAdapter;
.source "PanelRecycleAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcom/fimi/album/entity/MediaModel;",
        ">",
        "Lcom/fimi/album/adapter/BaseRecycleAdapter;"
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String;


# instance fields
.field private mIRecycleAdapter:Lcom/fimi/album/iview/IRecycleAdapter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/fimi/album/adapter/PanelRecycleAdapter;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/fimi/album/adapter/PanelRecycleAdapter;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/fimi/album/iview/INodataTip;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "mINodataTip"    # Lcom/fimi/album/iview/INodataTip;

    .prologue
    .line 25
    .local p0, "this":Lcom/fimi/album/adapter/PanelRecycleAdapter;, "Lcom/fimi/album/adapter/PanelRecycleAdapter<TT;>;"
    invoke-direct {p0, p1, p2}, Lcom/fimi/album/adapter/BaseRecycleAdapter;-><init>(Landroid/content/Context;Lcom/fimi/album/iview/INodataTip;)V

    .line 26
    return-void
.end method


# virtual methods
.method public onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 1
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .param p2, "position"    # I

    .prologue
    .line 44
    .local p0, "this":Lcom/fimi/album/adapter/PanelRecycleAdapter;, "Lcom/fimi/album/adapter/PanelRecycleAdapter<TT;>;"
    iget-object v0, p0, Lcom/fimi/album/adapter/PanelRecycleAdapter;->mIRecycleAdapter:Lcom/fimi/album/iview/IRecycleAdapter;

    if-eqz v0, :cond_0

    .line 45
    iget-object v0, p0, Lcom/fimi/album/adapter/PanelRecycleAdapter;->mIRecycleAdapter:Lcom/fimi/album/iview/IRecycleAdapter;

    invoke-interface {v0, p1, p2}, Lcom/fimi/album/iview/IRecycleAdapter;->onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V

    .line 47
    :cond_0
    return-void
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 5
    .param p1, "parent"    # Landroid/view/ViewGroup;
    .param p2, "viewType"    # I

    .prologue
    .local p0, "this":Lcom/fimi/album/adapter/PanelRecycleAdapter;, "Lcom/fimi/album/adapter/PanelRecycleAdapter<TT;>;"
    const/4 v4, 0x0

    .line 31
    const/4 v1, 0x0

    .line 32
    .local v1, "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    const/16 v2, 0x10

    if-ne p2, v2, :cond_0

    .line 33
    iget-object v2, p0, Lcom/fimi/album/adapter/PanelRecycleAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/example/album/R$layout;->album_panel_view_holder:I

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 34
    .local v0, "view":Landroid/view/View;
    new-instance v1, Lcom/fimi/album/adapter/PanelRecycleViewHolder;

    .end local v1    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-direct {v1, v0}, Lcom/fimi/album/adapter/PanelRecycleViewHolder;-><init>(Landroid/view/View;)V

    .line 39
    .restart local v1    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    :goto_0
    return-object v1

    .line 36
    .end local v0    # "view":Landroid/view/View;
    :cond_0
    iget-object v2, p0, Lcom/fimi/album/adapter/PanelRecycleAdapter;->context:Landroid/content/Context;

    invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    sget v3, Lcom/example/album/R$layout;->album_body_view_holder:I

    invoke-virtual {v2, v3, p1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    .line 37
    .restart local v0    # "view":Landroid/view/View;
    new-instance v1, Lcom/fimi/album/adapter/BodyRecycleViewHolder;

    .end local v1    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    invoke-direct {v1, v0}, Lcom/fimi/album/adapter/BodyRecycleViewHolder;-><init>(Landroid/view/View;)V

    .restart local v1    # "viewHolder":Landroid/support/v7/widget/RecyclerView$ViewHolder;
    goto :goto_0
.end method

.method public setmIRecycleAdapter(Lcom/fimi/album/iview/IRecycleAdapter;)V
    .locals 0
    .param p1, "mIRecycleAdapter"    # Lcom/fimi/album/iview/IRecycleAdapter;

    .prologue
    .line 50
    .local p0, "this":Lcom/fimi/album/adapter/PanelRecycleAdapter;, "Lcom/fimi/album/adapter/PanelRecycleAdapter<TT;>;"
    iput-object p1, p0, Lcom/fimi/album/adapter/PanelRecycleAdapter;->mIRecycleAdapter:Lcom/fimi/album/iview/IRecycleAdapter;

    .line 51
    return-void
.end method
