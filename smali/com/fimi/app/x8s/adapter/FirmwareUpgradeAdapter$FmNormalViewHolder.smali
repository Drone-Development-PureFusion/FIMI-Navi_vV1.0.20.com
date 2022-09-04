.class Lcom/fimi/app/x8s/adapter/FirmwareUpgradeAdapter$FmNormalViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "FirmwareUpgradeAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/adapter/FirmwareUpgradeAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "FmNormalViewHolder"
.end annotation


# instance fields
.field tvUpdate:Landroid/widget/TextView;

.field tvVersionCode:Landroid/widget/TextView;

.field tvVersionName:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 114
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 115
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_version_name:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/adapter/FirmwareUpgradeAdapter$FmNormalViewHolder;->tvVersionName:Landroid/widget/TextView;

    .line 116
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_version_code:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/adapter/FirmwareUpgradeAdapter$FmNormalViewHolder;->tvVersionCode:Landroid/widget/TextView;

    .line 117
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_update:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/adapter/FirmwareUpgradeAdapter$FmNormalViewHolder;->tvUpdate:Landroid/widget/TextView;

    .line 118
    return-void
.end method
