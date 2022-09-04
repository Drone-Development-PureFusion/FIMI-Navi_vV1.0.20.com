.class Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager$1;
.super Ljava/lang/Object;
.source "X8GimbalViewManager.java"

# interfaces
.implements Lcom/fimi/app/x8s/interfaces/IX8GimbalHorizontalTrimListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;

    .prologue
    .line 44
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager$1;->this$0:Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSettingReady(F)V
    .locals 2
    .param p1, "value"    # F

    .prologue
    .line 47
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager$1;->this$0:Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;->access$000(Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;)Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController;->closeUi()V

    .line 48
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager$1;->this$0:Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;->access$000(Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;)Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalHorizontalTrimController;->onSettingReady()V

    .line 49
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager$1;->this$0:Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;->access$100(Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;)Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getX8MainFcAllSettingControler()Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;

    move-result-object v0

    sget-object v1, Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;->GIMBAL_ITEM:Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/fcsettting/X8MainFcAllSettingControler;->showAllSettingUi(Lcom/fimi/app/x8s/enums/X8FcAllSettingMenuEnum;)V

    .line 50
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager$1;->this$0:Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;->access$100(Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;)Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->showTopByGimbalHorizontalTrim()V

    .line 52
    return-void
.end method
