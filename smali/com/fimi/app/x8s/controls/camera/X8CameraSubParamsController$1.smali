.class Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController$1;
.super Ljava/lang/Object;
.source "X8CameraSubParamsController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->onComplete(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/Object;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;

    .prologue
    .line 288
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController$1;->this$0:Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/Object;)V
    .locals 2
    .param p1, "rt"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 291
    if-eqz p1, :cond_0

    .line 292
    const-string v0, "rval"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "rval"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 293
    const-string v0, "param"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 294
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController$1;->this$0:Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->access$000(Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;)Lcom/fimi/x8sdk/entity/X8CameraParamsValue;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getCurParamsJson()Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v0

    const-string v1, "param"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->setVideo_resolution(Ljava/lang/String;)V

    .line 295
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController$1;->this$0:Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->access$100(Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;)Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 296
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController$1;->this$0:Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->access$100(Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;)Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;

    move-result-object v0

    invoke-interface {v0}, Lcom/fimi/app/x8s/interfaces/IX8CameraMainSetListener;->updateResOrSize()V

    .line 297
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController$1;->this$0:Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;

    const-string v1, "param"

    invoke-virtual {p1, v1}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;->access$202(Lcom/fimi/app/x8s/controls/camera/X8CameraSubParamsController;Ljava/lang/String;)Ljava/lang/String;

    .line 302
    :cond_0
    return-void
.end method
