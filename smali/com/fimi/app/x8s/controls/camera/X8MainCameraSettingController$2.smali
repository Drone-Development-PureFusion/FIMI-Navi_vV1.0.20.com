.class Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "X8MainCameraSettingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->closeAiUi(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    .prologue
    .line 228
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$2;->this$0:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 231
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 232
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$2;->this$0:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->access$200(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 233
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$2;->this$0:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    sget-object v1, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$MenuMode;->normal:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$MenuMode;

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->access$802(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$MenuMode;)Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$MenuMode;

    .line 234
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$2;->this$0:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->access$900(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;)Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 235
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController$2;->this$0:Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->access$900(Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;)Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/camera/X8CameraEVShutterISOController;->setCurModle()V

    .line 236
    :cond_0
    return-void
.end method
