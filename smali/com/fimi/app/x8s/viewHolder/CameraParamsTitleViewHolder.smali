.class public Lcom/fimi/app/x8s/viewHolder/CameraParamsTitleViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "CameraParamsTitleViewHolder.java"


# instance fields
.field private backBtn:Landroid/widget/ImageView;

.field private paramView:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 14
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 15
    sget v0, Lcom/fimi/app/x8s/R$id;->params_key:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/viewHolder/CameraParamsTitleViewHolder;->paramView:Landroid/widget/TextView;

    .line 16
    sget v0, Lcom/fimi/app/x8s/R$id;->item_back_btn:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/viewHolder/CameraParamsTitleViewHolder;->backBtn:Landroid/widget/ImageView;

    .line 17
    return-void
.end method


# virtual methods
.method public initView(Ljava/lang/String;)V
    .locals 1
    .param p1, "params"    # Ljava/lang/String;

    .prologue
    .line 20
    iget-object v0, p0, Lcom/fimi/app/x8s/viewHolder/CameraParamsTitleViewHolder;->paramView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    return-void
.end method

.method public upSelected(Z)V
    .locals 1
    .param p1, "selected"    # Z

    .prologue
    .line 23
    iget-object v0, p0, Lcom/fimi/app/x8s/viewHolder/CameraParamsTitleViewHolder;->paramView:Landroid/widget/TextView;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setSelected(Z)V

    .line 24
    return-void
.end method
