.class public Lcom/fimi/album/adapter/MediaDetialViewHolder;
.super Landroid/support/v7/widget/RecyclerView$ViewHolder;
.source "MediaDetialViewHolder.java"


# instance fields
.field public mPhotoDraweeView:Lme/relex/photodraweeview/PhotoDraweeView;

.field public mProgressBar:Landroid/widget/ProgressBar;

.field public mRlItem:Landroid/widget/RelativeLayout;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "itemView"    # Landroid/view/View;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/support/v7/widget/RecyclerView$ViewHolder;-><init>(Landroid/view/View;)V

    .line 26
    sget v0, Lcom/example/album/R$id;->rl_item:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/RelativeLayout;

    iput-object v0, p0, Lcom/fimi/album/adapter/MediaDetialViewHolder;->mRlItem:Landroid/widget/RelativeLayout;

    .line 27
    sget v0, Lcom/example/album/R$id;->photo_drawee_view:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lme/relex/photodraweeview/PhotoDraweeView;

    iput-object v0, p0, Lcom/fimi/album/adapter/MediaDetialViewHolder;->mPhotoDraweeView:Lme/relex/photodraweeview/PhotoDraweeView;

    .line 28
    sget v0, Lcom/example/album/R$id;->loading:I

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/fimi/album/adapter/MediaDetialViewHolder;->mProgressBar:Landroid/widget/ProgressBar;

    .line 29
    return-void
.end method


# virtual methods
.method public setRlItemBg(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 32
    iget-object v0, p0, Lcom/fimi/album/adapter/MediaDetialViewHolder;->mRlItem:Landroid/widget/RelativeLayout;

    invoke-virtual {v0, p1}, Landroid/widget/RelativeLayout;->setBackgroundResource(I)V

    .line 33
    return-void
.end method
