.class Lcom/fimi/app/x8s/controls/X8MainRightMenuController$8;
.super Ljava/lang/Object;
.source "X8MainRightMenuController.java"

# interfaces
.implements Lcom/fimi/x8sdk/listener/IX8PanoramicInformationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/controls/X8MainRightMenuController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/X8MainRightMenuController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/X8MainRightMenuController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    .prologue
    .line 546
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController$8;->this$0:Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onPanoramicInformationChange(Lcom/fimi/x8sdk/dataparser/AckPanoramaPhotographType;)V
    .locals 6
    .param p1, "ackPanoramaPhotographType"    # Lcom/fimi/x8sdk/dataparser/AckPanoramaPhotographType;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 549
    invoke-static {}, Lcom/fimi/host/HostLogBack;->getInstance()Lcom/fimi/host/HostLogBack;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Alanqiu  ============reponseCmd:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckPanoramaPhotographType;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/host/HostLogBack;->writeLog(Ljava/lang/String;)V

    .line 550
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckPanoramaPhotographType;->getCurrentNum()B

    move-result v0

    if-lt v0, v4, :cond_2

    .line 551
    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckPanoramaPhotographType;->getCurrentNum()B

    move-result v0

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckPanoramaPhotographType;->getTotalNum()B

    move-result v1

    if-lt v0, v1, :cond_0

    .line 552
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController$8;->this$0:Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->access$100(Lcom/fimi/app/x8s/controls/X8MainRightMenuController;)Lcom/fimi/widget/StrokeTextView;

    move-result-object v0

    new-instance v1, Lcom/fimi/app/x8s/controls/X8MainRightMenuController$8$1;

    invoke-direct {v1, p0}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController$8$1;-><init>(Lcom/fimi/app/x8s/controls/X8MainRightMenuController$8;)V

    const-wide/16 v2, 0xbb8

    invoke-virtual {v0, v1, v2, v3}, Lcom/fimi/widget/StrokeTextView;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 567
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController$8;->this$0:Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->access$800(Lcom/fimi/app/x8s/controls/X8MainRightMenuController;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 568
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/StateManager;->getCamera()Lcom/fimi/x8sdk/modulestate/CameraState;

    move-result-object v0

    invoke-virtual {v0, v4}, Lcom/fimi/x8sdk/modulestate/CameraState;->setTakingPanoramicPhotos(Z)V

    .line 569
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController$8;->this$0:Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->access$100(Lcom/fimi/app/x8s/controls/X8MainRightMenuController;)Lcom/fimi/widget/StrokeTextView;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/fimi/widget/StrokeTextView;->setVisibility(I)V

    .line 571
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController$8;->this$0:Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->access$100(Lcom/fimi/app/x8s/controls/X8MainRightMenuController;)Lcom/fimi/widget/StrokeTextView;

    move-result-object v0

    iget-object v1, p0, Lcom/fimi/app/x8s/controls/X8MainRightMenuController$8;->this$0:Lcom/fimi/app/x8s/controls/X8MainRightMenuController;

    sget v2, Lcom/fimi/app/x8s/R$string;->x8_panorama_number:I

    invoke-virtual {v1, v2}, Lcom/fimi/app/x8s/controls/X8MainRightMenuController;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckPanoramaPhotographType;->getCurrentNum()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-virtual {p1}, Lcom/fimi/x8sdk/dataparser/AckPanoramaPhotographType;->getTotalNum()B

    move-result v3

    invoke-static {v3}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object v3

    aput-object v3, v2, v4

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fimi/widget/StrokeTextView;->setText(Ljava/lang/CharSequence;)V

    .line 574
    :cond_2
    return-void
.end method
