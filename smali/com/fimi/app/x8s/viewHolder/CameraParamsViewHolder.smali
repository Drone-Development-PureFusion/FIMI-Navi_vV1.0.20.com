.class public Lcom/fimi/app/x8s/viewHolder/CameraParamsViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "CameraParamsViewHolder.java"


# instance fields
.field private context:Landroid/content/Context;

.field private paramView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 19
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/viewHolder/CameraParamsViewHolder;->context:Landroid/content/Context;

    .line 20
    sget v0, Lcom/fimi/app/x8s/R$id;->params_item:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/viewHolder/CameraParamsViewHolder;->paramView:Landroid/widget/TextView;

    .line 21
    return-void
.end method


# virtual methods
.method public initView(Ljava/lang/String;Z)V
    .locals 10
    .param p1, "params"    # Ljava/lang/String;
    .param p2, "enable"    # Z

    .prologue
    const v9, 0x10100a1

    const/4 v8, 0x3

    const/4 v7, 0x2

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 24
    iget-object v3, p0, Lcom/fimi/app/x8s/viewHolder/CameraParamsViewHolder;->paramView:Landroid/widget/TextView;

    invoke-virtual {v3, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 25
    if-eqz p2, :cond_0

    .line 26
    iget-object v3, p0, Lcom/fimi/app/x8s/viewHolder/CameraParamsViewHolder;->paramView:Landroid/widget/TextView;

    invoke-virtual {v3, v6}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 27
    new-array v2, v8, [[I

    new-array v3, v6, [I

    const v4, 0x10100a7

    aput v4, v3, v5

    aput-object v3, v2, v5

    new-array v3, v6, [I

    aput v9, v3, v5

    aput-object v3, v2, v6

    new-array v3, v6, [I

    const v4, 0x101009e

    aput v4, v3, v5

    aput-object v3, v2, v7

    .line 31
    .local v2, "states":[[I
    new-array v1, v8, [I

    iget-object v3, p0, Lcom/fimi/app/x8s/viewHolder/CameraParamsViewHolder;->context:Landroid/content/Context;

    .line 32
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$color;->x8_value_unselected:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v1, v5

    iget-object v3, p0, Lcom/fimi/app/x8s/viewHolder/CameraParamsViewHolder;->context:Landroid/content/Context;

    .line 33
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$color;->x8_value_select:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v1, v6

    iget-object v3, p0, Lcom/fimi/app/x8s/viewHolder/CameraParamsViewHolder;->context:Landroid/content/Context;

    .line 34
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$color;->x8_value_unselected:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v1, v7

    .line 36
    .local v1, "colors":[I
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 37
    .local v0, "colorStateList":Landroid/content/res/ColorStateList;
    iget-object v3, p0, Lcom/fimi/app/x8s/viewHolder/CameraParamsViewHolder;->paramView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 52
    :goto_0
    return-void

    .line 39
    .end local v0    # "colorStateList":Landroid/content/res/ColorStateList;
    .end local v1    # "colors":[I
    .end local v2    # "states":[[I
    :cond_0
    iget-object v3, p0, Lcom/fimi/app/x8s/viewHolder/CameraParamsViewHolder;->paramView:Landroid/widget/TextView;

    invoke-virtual {v3, v5}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 40
    new-array v2, v8, [[I

    new-array v3, v6, [I

    const v4, 0x10100a7

    aput v4, v3, v5

    aput-object v3, v2, v5

    new-array v3, v6, [I

    aput v9, v3, v5

    aput-object v3, v2, v6

    new-array v3, v6, [I

    const v4, -0x101009e

    aput v4, v3, v5

    aput-object v3, v2, v7

    .line 44
    .restart local v2    # "states":[[I
    new-array v1, v8, [I

    iget-object v3, p0, Lcom/fimi/app/x8s/viewHolder/CameraParamsViewHolder;->context:Landroid/content/Context;

    .line 45
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$color;->x8_value_disable:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v1, v5

    iget-object v3, p0, Lcom/fimi/app/x8s/viewHolder/CameraParamsViewHolder;->context:Landroid/content/Context;

    .line 46
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$color;->x8_value_disable_select:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v1, v6

    iget-object v3, p0, Lcom/fimi/app/x8s/viewHolder/CameraParamsViewHolder;->context:Landroid/content/Context;

    .line 47
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    sget v4, Lcom/fimi/app/x8s/R$color;->x8_value_disable:I

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getColor(I)I

    move-result v3

    aput v3, v1, v7

    .line 49
    .restart local v1    # "colors":[I
    new-instance v0, Landroid/content/res/ColorStateList;

    invoke-direct {v0, v2, v1}, Landroid/content/res/ColorStateList;-><init>([[I[I)V

    .line 50
    .restart local v0    # "colorStateList":Landroid/content/res/ColorStateList;
    iget-object v3, p0, Lcom/fimi/app/x8s/viewHolder/CameraParamsViewHolder;->paramView:Landroid/widget/TextView;

    invoke-virtual {v3, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V

    goto :goto_0
.end method

.method public upSelected(Z)V
    .locals 1
    .param p1, "selected"    # Z

    .prologue
    .line 54
    iget-object v0, p0, Lcom/fimi/app/x8s/viewHolder/CameraParamsViewHolder;->paramView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 55
    return-void
.end method
