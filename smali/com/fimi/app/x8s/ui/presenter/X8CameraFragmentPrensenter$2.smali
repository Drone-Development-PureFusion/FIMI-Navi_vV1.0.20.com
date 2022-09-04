.class Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$2;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "X8CameraFragmentPrensenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->doTrans()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;

    .prologue
    .line 88
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$2;, "Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$2;"
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$2;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "newState"    # I

    .prologue
    .line 91
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$2;, "Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$2;"
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 92
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$2;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->access$002(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;Z)Z

    .line 94
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$2;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->access$100(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 95
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 3
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$2;, "Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$2;"
    const/4 v2, 0x1

    .line 99
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 100
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$2;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->access$200(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;)I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 101
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$2;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->access$302(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;Z)Z

    .line 102
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$2;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->access$100(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 107
    :goto_0
    return-void

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$2;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;

    invoke-static {v0, v2}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->access$402(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;Z)Z

    .line 105
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$2;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->access$100(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    goto :goto_0
.end method
