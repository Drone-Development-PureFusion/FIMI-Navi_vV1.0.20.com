.class Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter$1;
.super Ljava/lang/Object;
.source "X8MediaPresenter.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->loadDateComplete(ZZ)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;

.field final synthetic val$isCamera:Z


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;Z)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;

    .prologue
    .line 63
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter$1;, "Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter$1;"
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter$1;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;

    iput-boolean p2, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter$1;->val$isCamera:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter$1;, "Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter$1;"
    const/4 v1, 0x0

    .line 73
    iget-boolean v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter$1;->val$isCamera:Z

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter$1;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->access$002(Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;Z)Z

    .line 75
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter$1;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->access$100(Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;)Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getmX8CameraFragment()Lcom/fimi/app/x8s/ui/album/x8s/X8CameraFragment;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraFragment;->showProgress(Z)V

    .line 76
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter$1;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->access$100(Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;)Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getmX8CameraFragment()Lcom/fimi/app/x8s/ui/album/x8s/X8CameraFragment;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraFragment;->reshAdapter()V

    .line 77
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter$1;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->access$100(Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;)Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getmX8CameraFragment()Lcom/fimi/app/x8s/ui/album/x8s/X8CameraFragment;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8CameraFragment;->noDataTipCallback(Z)V

    .line 78
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter$1;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->access$100(Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;)Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->showSelectBtn()V

    .line 83
    :goto_0
    return-void

    .line 80
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter$1;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;->access$100(Lcom/fimi/app/x8s/ui/presenter/X8MediaPresenter;)Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/album/x8s/X8MediaActivity;->getmX8LocalMediaFragment()Lcom/fimi/app/x8s/ui/album/x8s/X8LocalMediaLocalFragment;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/ui/album/x8s/X8LocalMediaLocalFragment;->showProgress(Z)V

    goto :goto_0
.end method
