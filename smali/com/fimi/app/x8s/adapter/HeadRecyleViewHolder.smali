.class public Lcom/fimi/app/x8s/adapter/HeadRecyleViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "HeadRecyleViewHolder.java"


# instance fields
.field public mTvHeard:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 2
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 18
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 19
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_head:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/adapter/HeadRecyleViewHolder;->mTvHeard:Landroid/widget/TextView;

    .line 20
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/HeadRecyleViewHolder;->mTvHeard:Landroid/widget/TextView;

    const-string/jumbo v1, "\u89c6\u9891\u591a\u5c11"

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 21
    return-void
.end method
