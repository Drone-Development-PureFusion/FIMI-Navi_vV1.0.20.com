.class public Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLinesExcuteConfirmModule;
.super Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8BaseModule;
.source "X8AiLinesExcuteConfirmModule.java"


# instance fields
.field private mUi:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 22
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8BaseModule;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Landroid/app/Activity;Landroid/view/View;Lcom/fimi/x8sdk/controller/CameraManager;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rootView"    # Landroid/view/View;
    .param p3, "cameraManager"    # Lcom/fimi/x8sdk/controller/CameraManager;

    .prologue
    .line 26
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;

    invoke-direct {v0, p1, p2, p3}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;-><init>(Landroid/app/Activity;Landroid/view/View;Lcom/fimi/x8sdk/controller/CameraManager;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLinesExcuteConfirmModule;->mUi:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;

    .line 27
    return-void
.end method

.method public setAiLineExcuteMode(I)V
    .locals 1
    .param p1, "aiLineMode"    # I

    .prologue
    .line 43
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLinesExcuteConfirmModule;->mUi:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->setAiLineMode(I)V

    .line 44
    return-void
.end method

.method public setDataByHistory(J)V
    .locals 1
    .param p1, "lineId"    # J

    .prologue
    .line 50
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLinesExcuteConfirmModule;->mUi:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;

    invoke-virtual {v0, p1, p2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->setDataByHistory(J)V

    .line 51
    return-void
.end method

.method public setDataByHistory(Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;

    .prologue
    .line 47
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLinesExcuteConfirmModule;->mUi:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->setDataByHistory(Lcom/fimi/kernel/store/sqlite/entity/X8AiLinePointInfo;)V

    .line 48
    return-void
.end method

.method public setFcHeart(ZZ)V
    .locals 1
    .param p1, "isInSky"    # Z
    .param p2, "isLowPower"    # Z

    .prologue
    .line 31
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLinesExcuteConfirmModule;->mUi:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;

    invoke-virtual {v0, p1, p2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->setFcHeart(ZZ)V

    .line 32
    return-void
.end method

.method public setListener(Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;Lcom/fimi/x8sdk/controller/FcManager;Lcom/fimi/app/x8s/controls/X8MapVideoController;Lcom/fimi/app/x8s/entity/X8AilinePrameter;Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)V
    .locals 6
    .param p1, "listener"    # Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;
    .param p2, "fcManager"    # Lcom/fimi/x8sdk/controller/FcManager;
    .param p3, "mapVideoController"    # Lcom/fimi/app/x8s/controls/X8MapVideoController;
    .param p4, "mX8AilinePrameter"    # Lcom/fimi/app/x8s/entity/X8AilinePrameter;
    .param p5, "mX8AiLineExcuteController"    # Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;

    .prologue
    .line 35
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLinesExcuteConfirmModule;->mUi:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->setListener(Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;Lcom/fimi/x8sdk/controller/FcManager;Lcom/fimi/app/x8s/controls/X8MapVideoController;Lcom/fimi/app/x8s/entity/X8AilinePrameter;Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController;)V

    .line 36
    return-void
.end method

.method public setPointSizeAndDistance(IFLjava/util/List;Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;)V
    .locals 1
    .param p1, "aiLinePointSize"    # I
    .param p2, "aiLineDistance"    # F
    .param p4, "model"    # Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IF",
            "Ljava/util/List",
            "<",
            "Lcom/fimi/app/x8s/map/model/MapPointLatLng;",
            ">;",
            "Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;",
            ")V"
        }
    .end annotation

    .prologue
    .line 39
    .local p3, "mapPointList":Ljava/util/List;, "Ljava/util/List<Lcom/fimi/app/x8s/map/model/MapPointLatLng;>;"
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiLinesExcuteConfirmModule;->mUi:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiLinesExcuteConfirmUi;->setPointSizeAndDistance(IFLjava/util/List;Lcom/fimi/app/x8s/controls/aifly/X8AiLineExcuteController$LineModel;)V

    .line 40
    return-void
.end method
