.class Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter$4;
.super Ljava/lang/Object;
.source "X8LocalFragmentPresenter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->doBodyTrans(Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;

.field final synthetic val$holder:Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;

.field final synthetic val$position:I


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;I)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;

    .prologue
    .line 323
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter$4;, "Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter$4;"
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter$4;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;

    iput-object p2, p0, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter$4;->val$holder:Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;

    iput p3, p0, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter$4;->val$position:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 327
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter$4;, "Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter$4;"
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter$4;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter$4;->val$holder:Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;

    iget v2, p0, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter$4;->val$position:I

    invoke-virtual {v0, v1, p1, v2}, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->onItemClick(Lcom/fimi/app/x8s/adapter/BodyRecycleViewHolder;Landroid/view/View;I)V

    .line 328
    return-void
.end method
