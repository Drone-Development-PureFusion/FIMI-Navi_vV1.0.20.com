.class Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager$2;
.super Ljava/lang/Object;
.source "X8GimbalViewManager.java"

# interfaces
.implements Lcom/fimi/app/x8s/interfaces/IX8GimbalXYZAdjustListener;


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
    .line 55
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager$2;->this$0:Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public gimbalXYZAdjustExit()V
    .locals 2

    .prologue
    .line 59
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager$2;->this$0:Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;->access$200(Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;)Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/fcsettting/X8GimbalXYZAdjustController;->closeUi()V

    .line 60
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager$2;->this$0:Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;->access$100(Lcom/fimi/app/x8s/controls/gimbal/X8GimbalViewManager;)Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->appFullSceen(Z)V

    .line 61
    return-void
.end method
