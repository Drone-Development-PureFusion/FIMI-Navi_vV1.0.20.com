.class Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController$2;
.super Ljava/lang/Object;
.source "X8CameraOtherSettingController.java"

# interfaces
.implements Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog$onDialogButtonClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->onClick(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;

    .prologue
    .line 189
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController$2;->this$0:Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLeft()V
    .locals 1

    .prologue
    .line 192
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController$2;->this$0:Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->access$000(Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;)Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->dismiss()V

    .line 193
    return-void
.end method

.method public onRight()V
    .locals 2

    .prologue
    .line 197
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController$2;->this$0:Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->access$200(Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;)Lcom/fimi/x8sdk/controller/CameraManager;

    move-result-object v0

    new-instance v1, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController$2$1;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController$2$1;-><init>(Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController$2;)V

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/controller/CameraManager;->defaltSystem(Lcom/fimi/kernel/dataparser/usb/JsonUiCallBackListener;)V

    .line 206
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController$2;->this$0:Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;->access$000(Lcom/fimi/app/x8s/controls/camera/X8CameraOtherSettingController;)Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/widget/X8DoubleCustomDialog;->dismiss()V

    .line 207
    return-void
.end method
