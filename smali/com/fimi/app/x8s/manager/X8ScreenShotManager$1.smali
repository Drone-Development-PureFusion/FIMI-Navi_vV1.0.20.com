.class Lcom/fimi/app/x8s/manager/X8ScreenShotManager$1;
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
    .line 142
    iput-object p1, p0, Lcom/fimi/app/x8s/manager/X8ScreenShotManager$1;->this$0:Lcom/fimi/app/x8s/manager/X8ScreenShotManager;

    iput-object p2, p0, Lcom/fimi/app/x8s/manager/X8ScreenShotManager$1;->val$activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onShotResult(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "btp"    # Landroid/graphics/Bitmap;

    .prologue
    .line 145
    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8ScreenShotManager$1;->val$activity:Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/ui/activity/X8sMainActivity;->getmMapVideoController()Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->setMapShot(Landroid/graphics/Bitmap;)V

    .line 146
    iget-object v0, p0, Lcom/fimi/app/x8s/manager/X8ScreenShotManager$1;->this$0:Lcom/fimi/app/x8s/manager/X8ScreenShotManager;

    const/4 v1, 0x1

    iput-boolean v1, v0, Lcom/fimi/app/x8s/manager/X8ScreenShotManager;->isMapShotSuccess:Z

    .line 147
    return-void
.end method
