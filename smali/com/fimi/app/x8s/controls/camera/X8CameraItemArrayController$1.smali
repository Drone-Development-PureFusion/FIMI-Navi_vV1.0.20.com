.class Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController$1;
.super Ljava/lang/Object;
.source "X8CameraItemArrayController.java"

# interfaces
.implements Landroid/widget/RadioGroup$OnCheckedChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->initActions()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;

    .prologue
    .line 146
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController$1;->this$0:Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCheckedChanged(Landroid/widget/RadioGroup;I)V
    .locals 5
    .param p1, "radioGroup"    # Landroid/widget/RadioGroup;
    .param p2, "i"    # I

    .prologue
    .line 149
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController$1;->this$0:Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;

    iget-object v1, v1, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->x8CameraParamsValue:Lcom/fimi/x8sdk/entity/X8CameraParamsValue;

    invoke-virtual {v1}, Lcom/fimi/x8sdk/entity/X8CameraParamsValue;->getCurParamsJson()Lcom/fimi/x8sdk/jsonResult/CurParamsJson;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/jsonResult/CurParamsJson;->getSystem_type()Ljava/lang/String;

    move-result-object v0

    .line 150
    .local v0, "systemType":Ljava/lang/String;
    sget v1, Lcom/fimi/app/x8s/R$id;->x8_rbtn_4k:I

    if-ne v1, p2, :cond_2

    .line 151
    const-string v1, "PAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 152
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController$1;->this$0:Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->access$000(Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;)Lcom/fimi/x8sdk/controller/CameraManager;

    move-result-object v1

    const-string v2, "3840x2160 25P 16:9"

    const-string/jumbo v3, "video_resolution"

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController$1;->this$0:Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;

    invoke-virtual {v1, v2, v3, v4}, Lcom/fimi/x8sdk/controller/CameraManager;->setCameraKeyParams(Ljava/lang/String;Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 154
    :cond_1
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController$1;->this$0:Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->access$000(Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;)Lcom/fimi/x8sdk/controller/CameraManager;

    move-result-object v1

    const-string v2, "3840x2160 30P 16:9"

    const-string/jumbo v3, "video_resolution"

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController$1;->this$0:Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;

    invoke-virtual {v1, v2, v3, v4}, Lcom/fimi/x8sdk/controller/CameraManager;->setCameraKeyParams(Ljava/lang/String;Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    goto :goto_0

    .line 156
    :cond_2
    sget v1, Lcom/fimi/app/x8s/R$id;->x8_rbtn_2_5k:I

    if-ne v1, p2, :cond_4

    .line 157
    const-string v1, "PAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 158
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController$1;->this$0:Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->access$000(Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;)Lcom/fimi/x8sdk/controller/CameraManager;

    move-result-object v1

    const-string v2, "2560x1440 25P 16:9"

    const-string/jumbo v3, "video_resolution"

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController$1;->this$0:Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;

    invoke-virtual {v1, v2, v3, v4}, Lcom/fimi/x8sdk/controller/CameraManager;->setCameraKeyParams(Ljava/lang/String;Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    goto :goto_0

    .line 160
    :cond_3
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController$1;->this$0:Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->access$000(Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;)Lcom/fimi/x8sdk/controller/CameraManager;

    move-result-object v1

    const-string v2, "2560x1440 30P 16:9"

    const-string/jumbo v3, "video_resolution"

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController$1;->this$0:Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;

    invoke-virtual {v1, v2, v3, v4}, Lcom/fimi/x8sdk/controller/CameraManager;->setCameraKeyParams(Ljava/lang/String;Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    goto :goto_0

    .line 162
    :cond_4
    sget v1, Lcom/fimi/app/x8s/R$id;->x8_rbtn_1080p:I

    if-ne v1, p2, :cond_0

    .line 163
    const-string v1, "PAL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 164
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController$1;->this$0:Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->access$000(Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;)Lcom/fimi/x8sdk/controller/CameraManager;

    move-result-object v1

    const-string v2, "1920x1080 25P 16:9"

    const-string/jumbo v3, "video_resolution"

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController$1;->this$0:Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;

    invoke-virtual {v1, v2, v3, v4}, Lcom/fimi/x8sdk/controller/CameraManager;->setCameraKeyParams(Ljava/lang/String;Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    goto :goto_0

    .line 166
    :cond_5
    iget-object v1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController$1;->this$0:Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;

    invoke-static {v1}, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;->access$000(Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;)Lcom/fimi/x8sdk/controller/CameraManager;

    move-result-object v1

    const-string v2, "1920x1080 30P 16:9"

    const-string/jumbo v3, "video_resolution"

    iget-object v4, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController$1;->this$0:Lcom/fimi/app/x8s/controls/camera/X8CameraItemArrayController;

    invoke-virtual {v1, v2, v3, v4}, Lcom/fimi/x8sdk/controller/CameraManager;->setCameraKeyParams(Ljava/lang/String;Ljava/lang/String;Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    goto :goto_0
.end method
