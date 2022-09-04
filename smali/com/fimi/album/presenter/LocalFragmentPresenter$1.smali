.class Lcom/fimi/album/presenter/LocalFragmentPresenter$1;
.super Ljava/lang/Object;
.source "LocalFragmentPresenter.java"

# interfaces
.implements Landroid/support/v7/widget/RecyclerView$RecyclerListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/album/presenter/LocalFragmentPresenter;->doTrans()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/album/presenter/LocalFragmentPresenter;


# direct methods
.method constructor <init>(Lcom/fimi/album/presenter/LocalFragmentPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/album/presenter/LocalFragmentPresenter;

    .prologue
    .line 48
    .local p0, "this":Lcom/fimi/album/presenter/LocalFragmentPresenter$1;, "Lcom/fimi/album/presenter/LocalFragmentPresenter$1;"
    iput-object p1, p0, Lcom/fimi/album/presenter/LocalFragmentPresenter$1;->this$0:Lcom/fimi/album/presenter/LocalFragmentPresenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onViewRecycled(Landroid/support/v7/widget/RecyclerView$ViewHolder;)V
    .locals 3
    .param p1, "holder"    # Landroid/support/v7/widget/RecyclerView$ViewHolder;

    .prologue
    .local p0, "this":Lcom/fimi/album/presenter/LocalFragmentPresenter$1;, "Lcom/fimi/album/presenter/LocalFragmentPresenter$1;"
    const/16 v2, 0x8

    .line 51
    instance-of v1, p1, Lcom/fimi/album/adapter/BodyRecycleViewHolder;

    if-eqz v1, :cond_0

    move-object v0, p1

    .line 52
    check-cast v0, Lcom/fimi/album/adapter/BodyRecycleViewHolder;

    .line 53
    .local v0, "mBodyRecycleViewHolder":Lcom/fimi/album/adapter/BodyRecycleViewHolder;
    iget-object v1, v0, Lcom/fimi/album/adapter/BodyRecycleViewHolder;->tvDuringdate:Landroid/widget/TextView;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 54
    iget-object v1, v0, Lcom/fimi/album/adapter/BodyRecycleViewHolder;->ivSelect:Landroid/widget/ImageView;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 56
    .end local v0    # "mBodyRecycleViewHolder":Lcom/fimi/album/adapter/BodyRecycleViewHolder;
    :cond_0
    return-void
.end method
