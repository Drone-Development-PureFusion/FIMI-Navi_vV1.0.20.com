.class public Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$X8AiPointValueViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "X8AiLinePointValueAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xc
    name = "X8AiPointValueViewHolder"
.end annotation


# instance fields
.field btn:Landroid/widget/Button;

.field root:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 83
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 84
    sget v0, Lcom/fimi/app/x8s/R$id;->btn_item:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$X8AiPointValueViewHolder;->btn:Landroid/widget/Button;

    .line 85
    sget v0, Lcom/fimi/app/x8s/R$id;->btn_item:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/adapter/X8AiLinePointValueAdapter$X8AiPointValueViewHolder;->root:Landroid/view/View;

    .line 86
    return-void
.end method
