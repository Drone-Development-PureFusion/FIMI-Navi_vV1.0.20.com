.class public Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiPoint2PointExcuteConfirmModule;
.super Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8BaseModule;
.source "X8AiPoint2PointExcuteConfirmModule.java"


# instance fields
.field private mUi:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8BaseModule;-><init>()V

    return-void
.end method


# virtual methods
.method public init(Landroid/app/Activity;Landroid/view/View;)V
    .locals 1
    .param p1, "activity"    # Landroid/app/Activity;
    .param p2, "rootView"    # Landroid/view/View;

    .prologue
    .line 15
    new-instance v0, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;

    invoke-direct {v0, p1, p2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;-><init>(Landroid/app/Activity;Landroid/view/View;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiPoint2PointExcuteConfirmModule;->mUi:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;

    .line 16
    return-void
.end method

.method public setFcHeart(ZZ)V
    .locals 1
    .param p1, "isInSky"    # Z
    .param p2, "isLowPower"    # Z

    .prologue
    .line 20
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiPoint2PointExcuteConfirmModule;->mUi:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;

    invoke-virtual {v0, p1, p2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->setFcHeart(ZZ)V

    .line 21
    return-void
.end method

.method public setListener(Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;Lcom/fimi/x8sdk/controller/FcManager;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;
    .param p2, "fcManager"    # Lcom/fimi/x8sdk/controller/FcManager;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiPoint2PointExcuteConfirmModule;->mUi:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;

    invoke-virtual {v0, p1, p2}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->setListener(Lcom/fimi/app/x8s/interfaces/IX8NextViewListener;Lcom/fimi/x8sdk/controller/FcManager;)V

    .line 28
    return-void
.end method

.method public setMapPoint(Lcom/fimi/app/x8s/map/model/MapPointLatLng;)V
    .locals 1
    .param p1, "mapPoint"    # Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    .prologue
    .line 24
    iget-object v0, p0, Lcom/fimi/app/x8s/controls/aifly/confirm/module/X8AiPoint2PointExcuteConfirmModule;->mUi:Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/controls/aifly/confirm/ui/X8AiPoint2PointExcuteConfirmUi;->setMapPoint(Lcom/fimi/app/x8s/map/model/MapPointLatLng;)V

    .line 25
    return-void
.end method
