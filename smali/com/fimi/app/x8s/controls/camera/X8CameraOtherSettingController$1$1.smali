.class Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController$1$1;
.super Ljava/lang/Object;
.source "X8CameraOtherSettingController.java"

# interfaces
.implements Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController$1;->onRight()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController$1;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController$1;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController$1;

    .prologue
    .line 173
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController$1$1;->this$1:Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onComplete(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/Object;)V
    .locals 3
    .param p1, "rt"    # Lcom/alibaba/fastjson/JSONObject;
    .param p2, "o"    # Ljava/lang/Object;

    .prologue
    .line 176
    if-eqz p1, :cond_0

    const-string v0, "rval"

    invoke-virtual {p1, v0}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    if-ltz v0, :cond_0

    .line 177
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController$1$1;->this$1:Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController$1;

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController$1;->this$0:Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->access$100(Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController$1$1;->this$1:Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController$1;

    iget-object v1, v1, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController$1;->this$0:Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->access$100(Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_sdcard_format_rt:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 179
    :cond_0
    return-void
.end method
