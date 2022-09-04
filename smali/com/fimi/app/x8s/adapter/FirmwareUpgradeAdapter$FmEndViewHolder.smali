.class Lcom/fimi/app/x8s/adapter/FirmwareUpgradeAdapter$FmEndViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "FirmwareUpgradeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/adapter/FirmwareUpgradeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FmEndViewHolder"
.end annotation


# instance fields
.field tvStatementLine1:Landroid/widget/TextView;

.field tvStatementLine2:Landroid/widget/TextView;

.field tvStatementLine3:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 128
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 129
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_statement_line1:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/adapter/FirmwareUpgradeAdapter$FmEndViewHolder;->tvStatementLine1:Landroid/widget/TextView;

    .line 130
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_statement_line2:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/adapter/FirmwareUpgradeAdapter$FmEndViewHolder;->tvStatementLine2:Landroid/widget/TextView;

    .line 131
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_statement_line3:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/adapter/FirmwareUpgradeAdapter$FmEndViewHolder;->tvStatementLine3:Landroid/widget/TextView;

    .line 132
    return-void
.end method
