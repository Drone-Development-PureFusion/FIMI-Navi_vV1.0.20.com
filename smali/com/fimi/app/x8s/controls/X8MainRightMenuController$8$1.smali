.class Lcom/fimi/app/x8s/controls/X8MainRightMenuController$8$1;
.super Ljava/lang/Object;
.source "X8MainRightMenuController.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fimi/app/x8s/controls/X8MainRightMenuController$8;->onPanoramicInformationChange(Lcom/fimi/x8sdk/dataparser/AckPanoramaPhotographType;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fimi/app/x8s/controls/X8MainRightMenuController$8;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/X8MainRightMenuController$8;)V
    .locals 0
    .param p1, "this$1"    # Lcom/fimi/app/x8s/controls/X8MainRightMenuController$8;

    .prologue
    .line 552
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController$8$1;->this$1:Lcom/fimi/app/x8s/controls/X8MainRightMenuController$8;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 555
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController$8$1;->this$1:Lcom/fimi/app/x8s/controls/X8MainRightMenuController$8;

    iget-object v0, v0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController$8;->this$0:Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->access$100(Lcom/fimi/app/x8s/controls/X8MainRightMenuController;)Lcom/fimi/widget/StrokeTextView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/fimi/widget/StrokeTextView;->setVisibility(I)V

    .line 556
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getCamera()Lcom/fimi/x8sdk/modulestate/CameraState;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fimi/x8sdk/modulestate/CameraState;->setTakingPanoramicPhotos(Z)V

    .line 564
    return-void
.end method
