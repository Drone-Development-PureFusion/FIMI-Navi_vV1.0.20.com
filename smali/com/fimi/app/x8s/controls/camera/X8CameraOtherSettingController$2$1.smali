.class Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController$2$1;
.super Ljava/lang/Object;
.source "X8CameraOtherSettingController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController$2;->onRight()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController$2;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController$2;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController$2;

    .prologue
    .line 197
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController$2$1;->this$1:Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController$2;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/Object;)V
    .locals 3
    .param p1, "rt"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 200
    if-eqz p1, :cond_0

    const-string v0, "rval"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController$2$1;->this$1:Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController$2;

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController$2;->this$0:Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->access$100(Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController$2$1;->this$1:Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController$2;

    iget-object v1, v1, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController$2;->this$0:Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->access$100(Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_camera_reset_rt:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 202
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getCamera()Lcom/fimi/x8sdk/modulestate/CameraState;

    move-result-object v0

    const/4 v1, -0x1

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/modulestate/CameraState;->setToken(I)V

    .line 204
    :cond_0
    return-void
.end method
