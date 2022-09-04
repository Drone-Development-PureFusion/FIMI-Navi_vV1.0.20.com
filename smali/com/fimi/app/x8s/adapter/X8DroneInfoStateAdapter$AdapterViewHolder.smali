.class public Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter$AdapterViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "X8DroneInfoStateAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "AdapterViewHolder"
.end annotation


# instance fields
.field btnEvent:Landroid/widget/Button;

.field final synthetic this$0:Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter;

.field tvName:Landroid/widget/TextView;

.field tvNormal:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 94
    iput-object p1, p0, Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter$AdapterViewHolder;->this$0:Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter;

    .line 95
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 96
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_name:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter$AdapterViewHolder;->tvName:Landroid/widget/TextView;

    .line 97
    sget v0, Lcom/fimi/app/x8s/R$id;->tv_normal:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter$AdapterViewHolder;->tvNormal:Landroid/widget/TextView;

    .line 98
    sget v0, Lcom/fimi/app/x8s/R$id;->btn_event:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Button;

    iput-object v0, p0, Lcom/fimi/app/x8s/adapter/X8DroneInfoStateAdapter$AdapterViewHolder;->btnEvent:Landroid/widget/Button;

    .line 99
    return-void
.end method
