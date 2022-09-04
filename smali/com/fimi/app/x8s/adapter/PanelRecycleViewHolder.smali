.class public Lcom/fimi/app/x8s/adapter/PanelRecycleViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "PanelRecycleViewHolder.java"


# instance fields
.field public mBtnAllSelect:Landroid/widget/ImageView;

.field public tvTitleDescription:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 5
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 30
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 31
    sget v1, Lcom/fimi/app/x8s/R$id;->title_description:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lcom/fimi/app/x8s/adapter/PanelRecycleViewHolder;->tvTitleDescription:Landroid/widget/TextView;

    .line 36
    sget v1, Lcom/fimi/app/x8s/R$id;->btn_all_select:I

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    iput-object v1, p0, Lcom/fimi/app/x8s/adapter/PanelRecycleViewHolder;->mBtnAllSelect:Landroid/widget/ImageView;

    .line 37
    iget-object v1, p0, Lcom/fimi/app/x8s/adapter/PanelRecycleViewHolder;->mBtnAllSelect:Landroid/widget/ImageView;

    invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;

    .line 38
    .local v0, "params":Landroid/widget/RelativeLayout$LayoutParams;
    invoke-static {}, Lcom/fimi/kernel/utils/LanguageUtil;->isZh()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 39
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x42593333    # 54.3f

    invoke-static {v1, v2}, Lcom/fimi/kernel/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    .line 43
    :goto_0
    iget-object v1, p0, Lcom/fimi/app/x8s/adapter/PanelRecycleViewHolder;->mBtnAllSelect:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 44
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Landroid/view/View;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/fimi/app/x8s/adapter/PanelRecycleViewHolder;->tvTitleDescription:Landroid/widget/TextView;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/fimi/app/x8s/adapter/PanelRecycleViewHolder;->mBtnAllSelect:Landroid/widget/ImageView;

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Lcom/fimi/kernel/utils/FontUtil;->changeFontLanTing(Landroid/content/res/AssetManager;[Landroid/view/View;)V

    .line 45
    return-void

    .line 41
    :cond_0
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x428d3333    # 70.6f

    invoke-static {v1, v2}, Lcom/fimi/kernel/utils/DensityUtil;->dip2px(Landroid/content/Context;F)I

    move-result v1

    iput v1, v0, Landroid/widget/RelativeLayout$LayoutParams;->width:I

    goto :goto_0
.end method
