.class Lcom/fimi/app/x8s/manager/X8ScreenShotManager$2;
.super Ljava/lang/Object;
.source "X8ScreenShotManager.java"

# interfaces
.implements Lcom/fimi/app/x8s/interfaces/IFimiShotResult;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/manager/X8ScreenShotManager;->starThread(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/manager/X8ScreenShotManager;

.field final synthetic val$activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/manager/X8ScreenShotManager;Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/manager/X8ScreenShotManager;

    .prologue
    .line 150
    iput-object p1, p0, Lcom/fimi/app/x8s/manager/X8ScreenShotManager$2;->this$0:Lcom/fimi/app/x8s/manager/X8ScreenShotManager;

    iput-object p2, p0, Lcom/fimi/app/x8s/manager/X8ScreenShotManager$2;->val$activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShotResult(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "btp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8ScreenShotManager$2;->val$activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->setFpvShot(Landroid/graphics/Bitmap;)V

    .line 154
    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8ScreenShotManager$2;->this$0:Lcom/fimi/app/x8s/manager/X8ScreenShotManager;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/fimi/app/x8s/manager/X8ScreenShotManager;->isFpvShotSuccess:Z

    .line 155
    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8ScreenShotManager$2;->this$0:Lcom/fimi/app/x8s/manager/X8ScreenShotManager;

    iget-object v1, p0, Lcom/fimi/app/x8s/manager/X8ScreenShotManager$2;->val$activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/manager/X8ScreenShotManager;->isShotSave(Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;)V

    .line 156
    return-void
.end method
