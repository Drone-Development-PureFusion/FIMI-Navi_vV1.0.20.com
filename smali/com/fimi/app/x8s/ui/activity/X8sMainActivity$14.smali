.class Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$14;
.super Ljava/lang/Object;
.source "X8sMainActivity.java"

# interfaces
.implements Lcom/fimi/app/x8s/interfaces/IX8Point2PointExcuteListener;


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
    .line 1244
    iput-object p1, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$14;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackClick()V
    .locals 1

    .prologue
    .line 1248
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$14;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$700(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/X8MainTopBarController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->openUi()V

    .line 1249
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$14;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$1400(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MainErrorCodePowerPitchAngleController;->openUi()V

    .line 1250
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$14;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$700(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/X8MainTopBarController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MainTopBarController;->openUi()V

    .line 1251
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$14;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$600(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MainBottomParameterController;->openUi()V

    .line 1252
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$14;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$200(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->openUi()V

    .line 1253
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$14;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$000(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->resetShow()V

    .line 1254
    return-void
.end method

.method public onExcuteClidk()V
    .locals 1

    .prologue
    .line 1258
    iget-object v0, p0, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity$14;->this$0:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-static {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->access$1500(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8MainAiFollowConfirmController;->closeUi()V

    .line 1259
    return-void
.end method
