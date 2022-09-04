.class Lcom/fimi/album/presenter/LocalFragmentPresenter$3;
.super Ljava/lang/Object;
.source "LocalFragmentPresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/album/presenter/LocalFragmentPresenter;->doPanelTrans(Lcom/fimi/album/adapter/PanelRecycleViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/album/presenter/LocalFragmentPresenter;

.field final synthetic val$holder:Lcom/fimi/album/adapter/PanelRecycleViewHolder;

.field final synthetic val$mediaModel:Lcom/fimi/album/entity/MediaModel;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/fimi/album/presenter/LocalFragmentPresenter;Lcom/fimi/album/adapter/PanelRecycleViewHolder;ILcom/fimi/album/entity/MediaModel;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/album/presenter/LocalFragmentPresenter;

    .prologue
    .line 142
    .local p0, "this":Lcom/fimi/album/presenter/LocalFragmentPresenter$3;, "Lcom/fimi/album/presenter/LocalFragmentPresenter$3;"
    iput-object p1, p0, Lcom/fimi/album/presenter/LocalFragmentPresenter$3;->this$0:Lcom/fimi/album/presenter/LocalFragmentPresenter;

    iput-object p2, p0, Lcom/fimi/album/presenter/LocalFragmentPresenter$3;->val$holder:Lcom/fimi/album/adapter/PanelRecycleViewHolder;

    iput p3, p0, Lcom/fimi/album/presenter/LocalFragmentPresenter$3;->val$position:I

    iput-object p4, p0, Lcom/fimi/album/presenter/LocalFragmentPresenter$3;->val$mediaModel:Lcom/fimi/album/entity/MediaModel;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 145
    .local p0, "this":Lcom/fimi/album/presenter/LocalFragmentPresenter$3;, "Lcom/fimi/album/presenter/LocalFragmentPresenter$3;"
    iget-object v0, p0, Lcom/fimi/album/presenter/LocalFragmentPresenter$3;->this$0:Lcom/fimi/album/presenter/LocalFragmentPresenter;

    iget-object v1, p0, Lcom/fimi/album/presenter/LocalFragmentPresenter$3;->val$holder:Lcom/fimi/album/adapter/PanelRecycleViewHolder;

    iget v2, p0, Lcom/fimi/album/presenter/LocalFragmentPresenter$3;->val$position:I

    iget-object v3, p0, Lcom/fimi/album/presenter/LocalFragmentPresenter$3;->val$mediaModel:Lcom/fimi/album/entity/MediaModel;

    invoke-static {v0, v1, v2, v3}, Lcom/fimi/album/presenter/LocalFragmentPresenter;->access$200(Lcom/fimi/album/presenter/LocalFragmentPresenter;Lcom/fimi/album/adapter/PanelRecycleViewHolder;ILcom/fimi/album/entity/MediaModel;)V

    .line 146
    return-void
.end method
