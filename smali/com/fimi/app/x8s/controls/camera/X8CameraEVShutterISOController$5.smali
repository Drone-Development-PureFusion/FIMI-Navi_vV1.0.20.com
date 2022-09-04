.class Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController$5;
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
    .line 331
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController$5;->this$0:Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 334
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController$5;->this$0:Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->access$400(Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;)Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->getIso()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 339
    :cond_0
    :goto_0
    return-void

    .line 335
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController$5;->this$0:Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->access$500(Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;)Lcom/fimi/x8sdk/controller/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/controller/CameraManager;->getCameraISO()V

    .line 336
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController$5;->this$0:Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->access$400(Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;)Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->getShutter_time()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v0

    const-string v1, "auto"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 338
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController$5;->this$0:Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->access$500(Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;)Lcom/fimi/x8sdk/controller/CameraManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/controller/CameraManager;->getCameraShutter()V

    goto :goto_0
.end method
