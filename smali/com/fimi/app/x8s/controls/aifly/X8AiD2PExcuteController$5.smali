.class Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$5;
.super Ljava/lang/Object;
.source "X8AiD2PExcuteController.java"

# interfaces
.implements Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;


# direct methods
.method constructor <init>(Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;)V
    .locals 0
    .param p1, "this$0"    # Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;

    .prologue
    .line 388
    iput-object p1, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$5;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onBackClick()V
    .locals 2

    .prologue
    .line 392
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$5;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->closeNextUi(Z)V

    .line 393
    return-void
.end method

.method public onExcuteClick()V
    .locals 2

    .prologue
    .line 397
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$5;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;

    sget-object v1, Lcom/fimi/app/x8s/enums/X8AiPointState;->RUNNING:Lcom/fimi/app/x8s/enums/X8AiPointState;

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->access$902(Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;Lcom/fimi/app/x8s/enums/X8AiPointState;)Lcom/fimi/app/x8s/enums/X8AiPointState;

    .line 398
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$5;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->access$702(Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;Z)Z

    .line 399
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$5;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->setAiVcOpen()V

    .line 400
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$5;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->openVcToggle()V

    .line 401
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$5;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->access$1000(Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;)Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/widget/X8AiTipWithCloseView;->setVisibility(I)V

    .line 402
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$5;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->closeNextUi(Z)V

    .line 403
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$5;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->access$500(Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;)Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiPoint2PointManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiPoint2PointManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsAiPoint2PointManager;->resetMapEvent()V

    .line 404
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController$5;->this$0:Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;

    invoke-static {v0}, Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;->access$500(Lcom/fimi/app/x8s/controls/aifly/X8AiD2PExcuteController;)Lcom/fimi/app/x8s/controls/X8MapVideoController;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/controls/X8MapVideoController;->getFimiMap()Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;->getAiPoint2PointManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiPoint2PointManager;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/interfaces/AbsAiPoint2PointManager;->setRunning()V

    .line 405
    return-void
.end method

.method public onSaveClick()V
    .locals 0

    .prologue
    .line 410
    return-void
.end method
