.class public Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter$X8B2oxViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "X8FlightLogAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "X8B2oxViewHolder"
.end annotation


# instance fields
.field private mImgSaveFlag:Landroid/widget/ImageView;

.field public rlRootView:Landroid/view/View;

.field final synthetic this$0:Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;

.field public x8FlightlogItemMileage:Landroid/widget/TextView;

.field public x8FlightlogItemSize:Landroid/widget/TextView;

.field public x8FlightlogItemTime:Landroid/widget/TextView;

.field public x8FlightlogItmeDate:Landroid/widget/TextView;

.field private x8IvFlightlogCollect:Landroid/widget/ImageView;


# direct methods
.method public constructor <init>(Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 323
    iput-object p1, p0, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter$X8B2oxViewHolder;->this$0:Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter;

    .line 324
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 325
    sget v0, Lcom/fimi/app/x8s/R$id;->rlRootView:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter$X8B2oxViewHolder;->rlRootView:Landroid/view/View;

    .line 326
    sget v0, Lcom/fimi/app/x8s/R$id;->x8_iv_flightlog_collect:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter$X8B2oxViewHolder;->x8IvFlightlogCollect:Landroid/widget/ImageView;

    .line 327
    sget v0, Lcom/fimi/app/x8s/R$id;->x8_flightlog_itme_date:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter$X8B2oxViewHolder;->x8FlightlogItmeDate:Landroid/widget/TextView;

    .line 328
    sget v0, Lcom/fimi/app/x8s/R$id;->x8_flightlog_item_mileage:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter$X8B2oxViewHolder;->x8FlightlogItemMileage:Landroid/widget/TextView;

    .line 329
    sget v0, Lcom/fimi/app/x8s/R$id;->x8_flightlog_item_size:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter$X8B2oxViewHolder;->x8FlightlogItemSize:Landroid/widget/TextView;

    .line 330
    sget v0, Lcom/fimi/app/x8s/R$id;->x8_flightlog_item_time:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter$X8B2oxViewHolder;->x8FlightlogItemTime:Landroid/widget/TextView;

    .line 331
    sget v0, Lcom/fimi/app/x8s/R$id;->img_save_flag:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter$X8B2oxViewHolder;->mImgSaveFlag:Landroid/widget/ImageView;

    .line 333
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter$X8B2oxViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter$X8B2oxViewHolder;

    .prologue
    .line 314
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter$X8B2oxViewHolder;->mImgSaveFlag:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter$X8B2oxViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter$X8B2oxViewHolder;

    .prologue
    .line 314
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8FlightLogAdapter$X8B2oxViewHolder;->x8IvFlightlogCollect:Landroid/widget/ImageView;

    return-object v0
.end method
