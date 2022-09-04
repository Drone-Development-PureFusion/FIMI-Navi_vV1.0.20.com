.class Lcom/fimi/album/presenter/LocalFragmentPresenter$4;
.super Ljava/lang/Object;
.source "LocalFragmentPresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/album/presenter/LocalFragmentPresenter;->doBodyTrans(Lcom/fimi/album/adapter/BodyRecycleViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/album/presenter/LocalFragmentPresenter;

.field final synthetic val$holder:Lcom/fimi/album/adapter/BodyRecycleViewHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/fimi/album/presenter/LocalFragmentPresenter;Lcom/fimi/album/adapter/BodyRecycleViewHolder;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/album/presenter/LocalFragmentPresenter;

    .prologue
    .line 229
    .local p0, "this":Lcom/fimi/album/presenter/LocalFragmentPresenter$4;, "Lcom/fimi/album/presenter/LocalFragmentPresenter$4;"
    iput-object p1, p0, Lcom/fimi/album/presenter/LocalFragmentPresenter$4;->this$0:Lcom/fimi/album/presenter/LocalFragmentPresenter;

    iput-object p2, p0, Lcom/fimi/album/presenter/LocalFragmentPresenter$4;->val$holder:Lcom/fimi/album/adapter/BodyRecycleViewHolder;

    iput p3, p0, Lcom/fimi/album/presenter/LocalFragmentPresenter$4;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 233
    .local p0, "this":Lcom/fimi/album/presenter/LocalFragmentPresenter$4;, "Lcom/fimi/album/presenter/LocalFragmentPresenter$4;"
    iget-object v0, p0, Lcom/fimi/album/presenter/LocalFragmentPresenter$4;->this$0:Lcom/fimi/album/presenter/LocalFragmentPresenter;

    iget-object v1, p0, Lcom/fimi/album/presenter/LocalFragmentPresenter$4;->val$holder:Lcom/fimi/album/adapter/BodyRecycleViewHolder;

    iget v2, p0, Lcom/fimi/album/presenter/LocalFragmentPresenter$4;->val$position:I

    invoke-virtual {v0, v1, p1, v2}, Lcom/fimi/album/presenter/LocalFragmentPresenter;->onItemClick(Lcom/fimi/album/adapter/BodyRecycleViewHolder;Landroid/view/View;I)V

    .line 234
    return-void
.end method
