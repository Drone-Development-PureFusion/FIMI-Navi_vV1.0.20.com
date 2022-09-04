.class Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$8;
.super Ljava/lang/Object;
.source "X8CameraFragmentPrensenter.java"

# interfaces
.implements Lcom/fimi/album/interfaces/OnDownloadUiListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;
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
    .line 422
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$8;, "Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$8;"
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$8;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFailure(Lcom/fimi/album/entity/MediaModel;)V
    .locals 0
    .param p1, "reasonObj"    # Lcom/fimi/album/entity/MediaModel;

    .prologue
    .line 441
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$8;, "Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$8;"
    return-void
.end method

.method public onProgress(Lcom/fimi/album/entity/MediaModel;I)V
    .locals 0
    .param p1, "model"    # Lcom/fimi/album/entity/MediaModel;
    .param p2, "progrss"    # I

    .prologue
    .line 426
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$8;, "Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$8;"
    return-void
.end method

.method public onStop(Lcom/fimi/album/entity/MediaModel;)V
    .locals 0
    .param p1, "reasonObj"    # Lcom/fimi/album/entity/MediaModel;

    .prologue
    .line 445
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$8;, "Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$8;"
    return-void
.end method

.method public onSuccess(Lcom/fimi/album/entity/MediaModel;)V
    .locals 4
    .param p1, "responseObj"    # Lcom/fimi/album/entity/MediaModel;

    .prologue
    .line 431
    .local p0, "this":Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$8;, "Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$8;"
    new-instance v0, Landroid/os/Message;

    invoke-direct {v0}, Landroid/os/Message;-><init>()V

    .line 432
    .local v0, "updateMessage":Landroid/os/Message;
    const/4 v1, 0x2

    iput v1, v0, Landroid/os/Message;->what:I

    .line 433
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$8;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->access$1400(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v1

    iput v1, v0, Landroid/os/Message;->arg1:I

    .line 434
    iget-object v1, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$8;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;

    invoke-static {v1}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->access$1500(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;)Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 435
    invoke-static {}, Lcom/fimi/host/HostLogBack;->getInstance()Lcom/fimi/host/HostLogBack;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Alanqiu  ==================mOnDownloadUiListener:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter$8;->this$0:Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;

    invoke-static {v3}, Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;->access$1600(Lcom/fimi/app/x8s/ui/presenter/X8CameraFragmentPrensenter;)Ljava/util/concurrent/CopyOnWriteArrayList;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/util/concurrent/CopyOnWriteArrayList;->indexOf(Ljava/lang/Object;)I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/fimi/host/HostLogBack;->writeLog(Ljava/lang/String;)V

    .line 436
    return-void
.end method
