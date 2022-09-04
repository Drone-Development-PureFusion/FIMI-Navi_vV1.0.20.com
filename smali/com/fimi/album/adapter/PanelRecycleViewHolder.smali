.class public Lcom/fimi/album/adapter/PanelRecycleViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "PanelRecycleViewHolder.java"


# instance fields
.field public ivIconSelect:Landroid/widget/ImageView;

.field public rlRightSelect:Landroid/widget/RelativeLayout;

.field public tvAllSelect:Landroid/widget/TextView;

.field public tvTitleDescription:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 4
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 24
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 25
    sget v0, Lcom/example/album/R$id;->title_description:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/album/adapter/PanelRecycleViewHolder;->tvTitleDescription:Landroid/widget/TextView;

    .line 26
    sget v0, Lcom/example/album/R$id;->right_select:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/fimi/album/adapter/PanelRecycleViewHolder;->rlRightSelect:Landroid/widget/RelativeLayout;

    .line 27
    sget v0, Lcom/example/album/R$id;->all_select:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/album/adapter/PanelRecycleViewHolder;->tvAllSelect:Landroid/widget/TextView;

    .line 28
    sget v0, Lcom/example/album/R$id;->icon_select:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/album/adapter/PanelRecycleViewHolder;->ivIconSelect:Landroid/widget/ImageView;

    .line 29
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/view/View;

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/fimi/album/adapter/PanelRecycleViewHolder;->tvTitleDescription:Landroid/widget/TextView;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lcom/fimi/album/adapter/PanelRecycleViewHolder;->tvAllSelect:Landroid/widget/TextView;

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/fimi/kernel/utils/FontUtil;->changeFontLanTing(Landroid/content/res/AssetManager;[Landroid/view/View;)V

    .line 30
    return-void
.end method
