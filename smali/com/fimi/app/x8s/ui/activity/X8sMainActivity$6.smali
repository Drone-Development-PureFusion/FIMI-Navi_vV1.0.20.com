.class Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$6;
.super Ljava/lang/Object;
.source "X8sMainActivity.java"

# interfaces
.implements Lcom/fimi/app/x8s/interfaces/IRightRollerMoveListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    .prologue
    .line 692
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$6;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEvSuccess(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 695
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$6;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$400(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->setEvParamValue(Ljava/lang/String;)V

    .line 696
    return-void
.end method

.method public onISOSuccess(Ljava/lang/String;)V
    .locals 1
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 700
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$6;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$400(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/camera/X8MainCameraSettingController;->onISOSuccess(Ljava/lang/String;)V

    .line 701
    return-void
.end method
