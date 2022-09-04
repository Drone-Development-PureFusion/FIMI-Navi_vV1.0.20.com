.class public Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter$FiveKeyViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "FiveKeyDefineAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "FiveKeyViewHolder"
.end annotation


# instance fields
.field btn:Landroid/widget/Button;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 101
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 102
    sget v0, Lcom/fimi/app/x8s/R$id;->btn_item:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/fimi/app/x8s/adapter/FiveKeyDefineAdapter$FiveKeyViewHolder;->btn:Landroid/widget/Button;

    .line 103
    return-void
.end method
