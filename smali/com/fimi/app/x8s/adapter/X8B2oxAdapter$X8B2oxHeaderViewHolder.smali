.class public Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$X8B2oxHeaderViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "X8B2oxAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "X8B2oxHeaderViewHolder"
.end annotation


# instance fields
.field public rlRootView:Landroid/view/View;

.field final synthetic this$0:Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;

.field public tvTitle:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 308
    iput-object p1, p0, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$X8B2oxHeaderViewHolder;->this$0:Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;

    .line 309
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 310
    sget v0, Lcom/fimi/app/x8s/R$id;->rlRootView:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$X8B2oxHeaderViewHolder;->rlRootView:Landroid/view/View;

    .line 311
    sget v0, Lcom/fimi/app/x8s/R$id;->tvItme1:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$X8B2oxHeaderViewHolder;->tvTitle:Landroid/widget/TextView;

    .line 313
    return-void
.end method
