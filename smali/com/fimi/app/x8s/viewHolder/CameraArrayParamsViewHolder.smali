.class public Lcom/fimi/app/x8s/viewHolder/CameraArrayParamsViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "CameraArrayParamsViewHolder.java"


# instance fields
.field private paramView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 17
    sget v0, Lcom/fimi/app/x8s/R$id;->item_value:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/viewHolder/CameraArrayParamsViewHolder;->paramView:Landroid/widget/TextView;

    .line 18
    return-void
.end method


# virtual methods
.method public initView(Ljava/lang/String;Ljava/util/Map;)V
    .locals 2
    .param p1, "params"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 21
    .local p2, "paramMap":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Ljava/lang/String;>;"
    if-eqz p2, :cond_0

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 22
    iget-object v1, p0, Lcom/fimi/app/x8s/viewHolder/CameraArrayParamsViewHolder;->paramView:Landroid/widget/TextView;

    invoke-interface {p2, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 26
    :goto_0
    return-void

    .line 24
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/viewHolder/CameraArrayParamsViewHolder;->paramView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public upSelected(Z)V
    .locals 1
    .param p1, "selected"    # Z

    .prologue
    .line 28
    iget-object v0, p0, Lcom/fimi/app/x8s/viewHolder/CameraArrayParamsViewHolder;->paramView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 29
    return-void
.end method
