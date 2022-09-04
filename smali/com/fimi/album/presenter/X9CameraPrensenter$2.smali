.class Lcom/fimi/album/presenter/X9CameraPrensenter$2;
.super Landroid/support/v7/widget/RecyclerView$OnScrollListener;
.source "X9CameraPrensenter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/album/presenter/X9CameraPrensenter;->doTrans()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/album/presenter/X9CameraPrensenter;


# direct methods
.method constructor <init>(Lcom/fimi/album/presenter/X9CameraPrensenter;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/album/presenter/X9CameraPrensenter;

    .prologue
    .line 56
    .local p0, "this":Lcom/fimi/album/presenter/X9CameraPrensenter$2;, "Lcom/fimi/album/presenter/X9CameraPrensenter$2;"
    iput-object p1, p0, Lcom/fimi/album/presenter/X9CameraPrensenter$2;->this$0:Lcom/fimi/album/presenter/X9CameraPrensenter;

    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V
    .locals 2
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "newState"    # I

    .prologue
    .line 59
    .local p0, "this":Lcom/fimi/album/presenter/X9CameraPrensenter$2;, "Lcom/fimi/album/presenter/X9CameraPrensenter$2;"
    invoke-super {p0, p1, p2}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrollStateChanged(Landroid/support/v7/widget/RecyclerView;I)V

    .line 60
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fimi/album/presenter/BaseFragmentPresenter;->isScrollRecycle:Z

    .line 61
    iget-object v0, p0, Lcom/fimi/album/presenter/X9CameraPrensenter$2;->this$0:Lcom/fimi/album/presenter/X9CameraPrensenter;

    invoke-static {v0}, Lcom/fimi/album/presenter/X9CameraPrensenter;->access$000(Lcom/fimi/album/presenter/X9CameraPrensenter;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 62
    return-void
.end method

.method public onScrolled(Landroid/support/v7/widget/RecyclerView;II)V
    .locals 3
    .param p1, "recyclerView"    # Landroid/support/v7/widget/RecyclerView;
    .param p2, "dx"    # I
    .param p3, "dy"    # I

    .prologue
    .local p0, "this":Lcom/fimi/album/presenter/X9CameraPrensenter$2;, "Lcom/fimi/album/presenter/X9CameraPrensenter$2;"
    const/4 v2, 0x1

    .line 66
    invoke-super {p0, p1, p2, p3}, Landroid/support/v7/widget/RecyclerView$OnScrollListener;->onScrolled(Landroid/support/v7/widget/RecyclerView;II)V

    .line 67
    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget-object v1, p0, Lcom/fimi/album/presenter/X9CameraPrensenter$2;->this$0:Lcom/fimi/album/presenter/X9CameraPrensenter;

    invoke-static {v1}, Lcom/fimi/album/presenter/X9CameraPrensenter;->access$100(Lcom/fimi/album/presenter/X9CameraPrensenter;)I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 68
    const/4 v0, 0x0

    sput-boolean v0, Lcom/fimi/album/presenter/BaseFragmentPresenter;->isScrollRecycle:Z

    .line 69
    iget-object v0, p0, Lcom/fimi/album/presenter/X9CameraPrensenter$2;->this$0:Lcom/fimi/album/presenter/X9CameraPrensenter;

    invoke-static {v0}, Lcom/fimi/album/presenter/X9CameraPrensenter;->access$000(Lcom/fimi/album/presenter/X9CameraPrensenter;)Landroid/os/Handler;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/os/Handler;->sendEmptyMessage(I)Z

    .line 73
    :goto_0
    return-void

    .line 71
    :cond_0
    sput-boolean v2, Lcom/fimi/album/presenter/BaseFragmentPresenter;->isScrollRecycle:Z

    goto :goto_0
.end method
