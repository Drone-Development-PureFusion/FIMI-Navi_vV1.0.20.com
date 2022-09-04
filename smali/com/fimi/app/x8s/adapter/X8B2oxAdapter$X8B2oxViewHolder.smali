.class public Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$X8B2oxViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "X8B2oxAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "X8B2oxViewHolder"
.end annotation


# instance fields
.field private mImgSaveFlag:Landroid/widget/ImageView;

.field public mTvItemTitle1:Landroid/widget/TextView;

.field public mTvItemTitle2:Landroid/widget/TextView;

.field public mTvItemTitle3:Landroid/widget/TextView;

.field public rlRootView:Landroid/view/View;

.field private rlSaveFlag:Landroid/view/View;

.field final synthetic this$0:Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;


# direct methods
.method public constructor <init>(Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;Landroid/view/View;)V
    .locals 1
    .param p1, "this$0"    # Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;
    .param p2, "itemView"    # Landroid/view/View;

    .prologue
    .line 291
    iput-object p1, p0, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$X8B2oxViewHolder;->this$0:Lcom/fimi/app/x8s/adapter/X8B2oxAdapter;

    .line 292
    invoke-direct {p0, p2}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 293
    sget v0, Lcom/fimi/app/x8s/R$id;->rlRootView:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$X8B2oxViewHolder;->rlRootView:Landroid/view/View;

    .line 294
    sget v0, Lcom/fimi/app/x8s/R$id;->tvItme1:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$X8B2oxViewHolder;->mTvItemTitle1:Landroid/widget/TextView;

    .line 295
    sget v0, Lcom/fimi/app/x8s/R$id;->tvItme2:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$X8B2oxViewHolder;->mTvItemTitle2:Landroid/widget/TextView;

    .line 296
    sget v0, Lcom/fimi/app/x8s/R$id;->tvItme6:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$X8B2oxViewHolder;->mTvItemTitle3:Landroid/widget/TextView;

    .line 297
    sget v0, Lcom/fimi/app/x8s/R$id;->img_save_flag:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$X8B2oxViewHolder;->mImgSaveFlag:Landroid/widget/ImageView;

    .line 298
    sget v0, Lcom/fimi/app/x8s/R$id;->rlSaveFlag:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$X8B2oxViewHolder;->rlSaveFlag:Landroid/view/View;

    .line 300
    return-void
.end method

.method static synthetic access$000(Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$X8B2oxViewHolder;)Landroid/widget/ImageView;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$X8B2oxViewHolder;

    .prologue
    .line 282
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$X8B2oxViewHolder;->mImgSaveFlag:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$100(Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$X8B2oxViewHolder;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$X8B2oxViewHolder;

    .prologue
    .line 282
    iget-object v0, p0, Lcom/fimi/app/x8s/adapter/X8B2oxAdapter$X8B2oxViewHolder;->rlSaveFlag:Landroid/view/View;

    return-object v0
.end method
