.class Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter$2;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "X8LocalFragmentPresenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->doTrans()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;

    .prologue
    .line 71
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter$2;, "Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter$2;"
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter$2;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "newState"    # I

    .prologue
    .line 74
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter$2;, "Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter$2;"
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 75
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter$2;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->access$002(Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;Z)Z

    .line 76
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter$2;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->access$100(Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 77
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 3
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter$2;, "Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter$2;"
    const/4 v2, 0x1

    .line 81
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 82
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter$2;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->access$200(Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;)I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 83
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter$2;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->access$302(Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;Z)Z

    .line 84
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter$2;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->access$100(Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 88
    :goto_0
    return-void

    .line 86
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter$2;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;

    invoke-static {v0, v2}, Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;->access$402(Lcom/fimi/app/x8s/ui/presenter/X8LocalFragmentPresenter;Z)Z

    goto :goto_0
.end method
