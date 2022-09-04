.class Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController$4;
.super Ljava/lang/Object;
.source "X8CameraEVShutterISOController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->onSuccess(Lcom/fimi/x8sdk/dataparser/AckCamJsonInfo;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;

    .prologue
    .line 313
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController$4;->this$0:Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 316
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController$4;->this$0:Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->access$400(Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;)Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->getIso()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 317
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController$4;->this$0:Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->access$500(Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;)Lcom/fimi/x8sdk/controller/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/controller/CameraManager;->getCameraISO()V

    .line 319
    :cond_0
    invoke-static {}, Lcom/fimi/host/HostLogBack;->getInstance()Lcom/fimi/host/HostLogBack;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alanqiu  ========KEY_AE_BIAS==rtJson:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController$4;->this$0:Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->access$400(Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;)Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->getAe_bias()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v2

    const-string v3, "0.0"

    invoke-virtual {v2, v3}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "curParamsJson:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController$4;->this$0:Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;

    invoke-static {v2}, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->access$400(Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;)Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/host/HostLogBack;->writeLog(Ljava/lang/String;)V

    .line 320
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController$4;->this$0:Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->access$400(Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;)Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->getAe_bias()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "0.0"

    invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 321
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController$4;->this$0:Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->access$500(Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;)Lcom/fimi/x8sdk/controller/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/controller/CameraManager;->getCameraEV()V

    .line 323
    :cond_1
    return-void
.end method
