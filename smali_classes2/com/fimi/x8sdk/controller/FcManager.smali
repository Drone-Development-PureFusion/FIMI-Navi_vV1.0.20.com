.class public Lcom/fimi/x8sdk/controller/FcManager;
.super Ljava/lang/Object;
.source "FcManager.java"

# interfaces
.implements Lcom/fimi/x8sdk/ivew/IFcAction;


# instance fields
.field fcAction:Lcom/fimi/x8sdk/ivew/IFcAction;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    new-instance v0, Lcom/fimi/x8sdk/presenter/FcPresenter;

    invoke-direct {v0}, Lcom/fimi/x8sdk/presenter/FcPresenter;-><init>()V

    iput-object v0, p0, Lcom/fimi/x8sdk/controller/FcManager;->fcAction:Lcom/fimi/x8sdk/ivew/IFcAction;

    .line 25
    return-void
.end method


# virtual methods
.method public getAiFollowModle(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 216
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcManager;->fcAction:Lcom/fimi/x8sdk/ivew/IFcAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFcAction;->getAiFollowModle(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 217
    return-void
.end method

.method public getAiFollowPoint(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 80
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcManager;->fcAction:Lcom/fimi/x8sdk/ivew/IFcAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFcAction;->getAiFollowPoint(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 81
    return-void
.end method

.method public getAiFollowSpeed(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 226
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcManager;->fcAction:Lcom/fimi/x8sdk/ivew/IFcAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFcAction;->getAiFollowSpeed(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 227
    return-void
.end method

.method public getAiLinePoint(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "number"    # I
    .param p2, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 163
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcManager;->fcAction:Lcom/fimi/x8sdk/ivew/IFcAction;

    invoke-interface {v0, p1, p2}, Lcom/fimi/x8sdk/ivew/IFcAction;->getAiLinePoint(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 164
    return-void
.end method

.method public getAiLinePointValue(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "number"    # I
    .param p2, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 168
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcManager;->fcAction:Lcom/fimi/x8sdk/ivew/IFcAction;

    invoke-interface {v0, p1, p2}, Lcom/fimi/x8sdk/ivew/IFcAction;->getAiLinePointValue(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 169
    return-void
.end method

.method public getAiSurroundCiclePoint(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 106
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcManager;->fcAction:Lcom/fimi/x8sdk/ivew/IFcAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFcAction;->getAiSurroundCiclePoint(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 107
    return-void
.end method

.method public getAiSurroundOrientation(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 128
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcManager;->fcAction:Lcom/fimi/x8sdk/ivew/IFcAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFcAction;->getAiSurroundOrientation(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 129
    return-void
.end method

.method public getAiSurroundSpeed(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 123
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcManager;->fcAction:Lcom/fimi/x8sdk/ivew/IFcAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFcAction;->getAiSurroundSpeed(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 124
    return-void
.end method

.method public getFwVersion(BBLcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "moduleName"    # B
    .param p2, "type"    # B
    .param p3, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcManager;->fcAction:Lcom/fimi/x8sdk/ivew/IFcAction;

    invoke-interface {v0, p1, p2, p3}, Lcom/fimi/x8sdk/ivew/IFcAction;->getFwVersion(BBLcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 66
    return-void
.end method

.method public getGravitationPrameter(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 238
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcManager;->fcAction:Lcom/fimi/x8sdk/ivew/IFcAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFcAction;->getGravitationPrameter(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 239
    return-void
.end method

.method public getNoFlyNormal(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 320
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcManager;->fcAction:Lcom/fimi/x8sdk/ivew/IFcAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFcAction;->getNoFlyNormal(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 321
    return-void
.end method

.method public getScrewPrameter(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 275
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcManager;->fcAction:Lcom/fimi/x8sdk/ivew/IFcAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFcAction;->getScrewPrameter(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 277
    return-void
.end method

.method public land(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 40
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcManager;->fcAction:Lcom/fimi/x8sdk/ivew/IFcAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFcAction;->land(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 41
    return-void
.end method

.method public landExit(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 45
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcManager;->fcAction:Lcom/fimi/x8sdk/ivew/IFcAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFcAction;->landExit(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 46
    return-void
.end method

.method public setAiAutoPhotoExcute(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 178
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcManager;->fcAction:Lcom/fimi/x8sdk/ivew/IFcAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFcAction;->setAiAutoPhotoExcute(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 179
    return-void
.end method

.method public setAiAutoPhotoExit(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 183
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcManager;->fcAction:Lcom/fimi/x8sdk/ivew/IFcAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFcAction;->setAiAutoPhotoExit(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 185
    return-void
.end method

.method public setAiAutoPhotoValue(Lcom/fimi/x8sdk/dataparser/cmd/CmdAiAutoPhoto;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "cmd"    # Lcom/fimi/x8sdk/dataparser/cmd/CmdAiAutoPhoto;
    .param p2, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcManager;->fcAction:Lcom/fimi/x8sdk/ivew/IFcAction;

    invoke-interface {v0, p1, p2}, Lcom/fimi/x8sdk/ivew/IFcAction;->setAiAutoPhotoValue(Lcom/fimi/x8sdk/dataparser/cmd/CmdAiAutoPhoto;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 174
    return-void
.end method

.method public setAiFollowModle(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "type"    # I
    .param p2, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 210
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcManager;->fcAction:Lcom/fimi/x8sdk/ivew/IFcAction;

    invoke-interface {v0, p1, p2}, Lcom/fimi/x8sdk/ivew/IFcAction;->setAiFollowModle(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 212
    return-void
.end method

.method public setAiFollowPoint2Point(DDIILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 9
    .param p1, "longitude"    # D
    .param p3, "latitude"    # D
    .param p5, "altitude"    # I
    .param p6, "speed"    # I
    .param p7, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 70
    iget-object v1, p0, Lcom/fimi/x8sdk/controller/FcManager;->fcAction:Lcom/fimi/x8sdk/ivew/IFcAction;

    move-wide v2, p1

    move-wide v4, p3

    move v6, p5

    move v7, p6

    move-object/from16 v8, p7

    invoke-interface/range {v1 .. v8}, Lcom/fimi/x8sdk/ivew/IFcAction;->setAiFollowPoint2Point(DDIILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 71
    return-void
.end method

.method public setAiFollowPoint2PointExcute(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 75
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcManager;->fcAction:Lcom/fimi/x8sdk/ivew/IFcAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFcAction;->setAiFollowPoint2PointExcute(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 76
    return-void
.end method

.method public setAiFollowPoint2PointExite(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 85
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcManager;->fcAction:Lcom/fimi/x8sdk/ivew/IFcAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFcAction;->setAiFollowPoint2PointExite(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 86
    return-void
.end method

.method public setAiFollowSpeed(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "value"    # I
    .param p2, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 221
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcManager;->fcAction:Lcom/fimi/x8sdk/ivew/IFcAction;

    invoke-interface {v0, p1, p2}, Lcom/fimi/x8sdk/ivew/IFcAction;->setAiFollowSpeed(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 222
    return-void
.end method

.method public setAiLineExcute(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcManager;->fcAction:Lcom/fimi/x8sdk/ivew/IFcAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFcAction;->setAiLineExcute(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 154
    return-void
.end method

.method public setAiLineExite(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 158
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcManager;->fcAction:Lcom/fimi/x8sdk/ivew/IFcAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFcAction;->setAiLineExite(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 159
    return-void
.end method

.method public setAiLinePoints(Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePoints;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "points"    # Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePoints;
    .param p2, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcManager;->fcAction:Lcom/fimi/x8sdk/ivew/IFcAction;

    invoke-interface {v0, p1, p2}, Lcom/fimi/x8sdk/ivew/IFcAction;->setAiLinePoints(Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePoints;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 144
    return-void
.end method

.method public setAiLinePointsAction(Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "action"    # Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction;
    .param p2, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 148
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcManager;->fcAction:Lcom/fimi/x8sdk/ivew/IFcAction;

    invoke-interface {v0, p1, p2}, Lcom/fimi/x8sdk/ivew/IFcAction;->setAiLinePointsAction(Lcom/fimi/x8sdk/dataparser/cmd/CmdAiLinePointsAction;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 149
    return-void
.end method

.method public setAiRetureHome(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 133
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcManager;->fcAction:Lcom/fimi/x8sdk/ivew/IFcAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFcAction;->setAiRetureHome(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 134
    return-void
.end method

.method public setAiRetureHomeExite(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcManager;->fcAction:Lcom/fimi/x8sdk/ivew/IFcAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFcAction;->setAiRetureHomeExite(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 139
    return-void
.end method

.method public setAiSurroundCiclePoint(DDFDDFILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 13
    .param p1, "longitude"    # D
    .param p3, "latitude"    # D
    .param p5, "altitude"    # F
    .param p6, "longitudeTakeoff"    # D
    .param p8, "latitudeTakeoff"    # D
    .param p10, "altitudeTakeoff"    # F
    .param p11, "type"    # I
    .param p12, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 100
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcManager;->fcAction:Lcom/fimi/x8sdk/ivew/IFcAction;

    move-wide v1, p1

    move-wide/from16 v3, p3

    move/from16 v5, p5

    move-wide/from16 v6, p6

    move-wide/from16 v8, p8

    move/from16 v10, p10

    move/from16 v11, p11

    move-object/from16 v12, p12

    invoke-interface/range {v0 .. v12}, Lcom/fimi/x8sdk/ivew/IFcAction;->setAiSurroundCiclePoint(DDFDDFILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 102
    return-void
.end method

.method public setAiSurroundExcute(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 90
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcManager;->fcAction:Lcom/fimi/x8sdk/ivew/IFcAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFcAction;->setAiSurroundExcute(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 91
    return-void
.end method

.method public setAiSurroundExite(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 95
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcManager;->fcAction:Lcom/fimi/x8sdk/ivew/IFcAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFcAction;->setAiSurroundExite(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 96
    return-void
.end method

.method public setAiSurroundOrientation(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "value"    # I
    .param p2, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 117
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcManager;->fcAction:Lcom/fimi/x8sdk/ivew/IFcAction;

    invoke-interface {v0, p1, p2}, Lcom/fimi/x8sdk/ivew/IFcAction;->setAiSurroundOrientation(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 119
    return-void
.end method

.method public setAiSurroundSpeed(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "value"    # I
    .param p2, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 112
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcManager;->fcAction:Lcom/fimi/x8sdk/ivew/IFcAction;

    invoke-interface {v0, p1, p2}, Lcom/fimi/x8sdk/ivew/IFcAction;->setAiSurroundSpeed(ILcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 113
    return-void
.end method

.method public setAiVcClose(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 199
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcManager;->fcAction:Lcom/fimi/x8sdk/ivew/IFcAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFcAction;->setAiVcClose(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 200
    return-void
.end method

.method public setAiVcNotityFc(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 204
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcManager;->fcAction:Lcom/fimi/x8sdk/ivew/IFcAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFcAction;->setAiVcNotityFc(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 206
    return-void
.end method

.method public setAiVcOpen(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 194
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcManager;->fcAction:Lcom/fimi/x8sdk/ivew/IFcAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFcAction;->setAiVcOpen(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 195
    return-void
.end method

.method public setContext(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 27
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcManager;->fcAction:Lcom/fimi/x8sdk/ivew/IFcAction;

    check-cast v0, Lcom/fimi/x8sdk/presenter/FcPresenter;

    invoke-virtual {v0, p1}, Lcom/fimi/x8sdk/presenter/FcPresenter;->setContext(Landroid/content/Context;)V

    .line 28
    return-void
.end method

.method public setFollowExcute(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 54
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcManager;->fcAction:Lcom/fimi/x8sdk/ivew/IFcAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFcAction;->setFollowExcute(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 55
    return-void
.end method

.method public setFollowExit(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 60
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcManager;->fcAction:Lcom/fimi/x8sdk/ivew/IFcAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFcAction;->setFollowExit(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 61
    return-void
.end method

.method public setFollowStandby(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcManager;->fcAction:Lcom/fimi/x8sdk/ivew/IFcAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFcAction;->setFollowStandby(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 50
    return-void
.end method

.method public setGpsInfo(Lcom/fimi/x8sdk/entity/GpsInfoCmd;)V
    .locals 1
    .param p1, "gps"    # Lcom/fimi/x8sdk/entity/GpsInfoCmd;

    .prologue
    .line 315
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcManager;->fcAction:Lcom/fimi/x8sdk/ivew/IFcAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFcAction;->setGpsInfo(Lcom/fimi/x8sdk/entity/GpsInfoCmd;)V

    .line 316
    return-void
.end method

.method public setGravitationExite(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 264
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcManager;->fcAction:Lcom/fimi/x8sdk/ivew/IFcAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFcAction;->setGravitationExite(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 265
    return-void
.end method

.method public setGravitationPause(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 254
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcManager;->fcAction:Lcom/fimi/x8sdk/ivew/IFcAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFcAction;->setGravitationPause(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 255
    return-void
.end method

.method public setGravitationPrameter(Lcom/fimi/x8sdk/dataparser/AckAiSetGravitationPrameter;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "prameter"    # Lcom/fimi/x8sdk/dataparser/AckAiSetGravitationPrameter;
    .param p2, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 243
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcManager;->fcAction:Lcom/fimi/x8sdk/ivew/IFcAction;

    invoke-interface {v0, p1, p2}, Lcom/fimi/x8sdk/ivew/IFcAction;->setGravitationPrameter(Lcom/fimi/x8sdk/dataparser/AckAiSetGravitationPrameter;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 244
    return-void
.end method

.method public setGravitationResume(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcManager;->fcAction:Lcom/fimi/x8sdk/ivew/IFcAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFcAction;->setGravitationResume(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 260
    return-void
.end method

.method public setGravitationStart(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 249
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcManager;->fcAction:Lcom/fimi/x8sdk/ivew/IFcAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFcAction;->setGravitationStart(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 250
    return-void
.end method

.method public setHomePoint(FDDIFLcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 10
    .param p1, "h"    # F
    .param p2, "lat"    # D
    .param p4, "lng"    # D
    .param p6, "mode"    # I
    .param p7, "accuracy"    # F
    .param p8, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 233
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcManager;->fcAction:Lcom/fimi/x8sdk/ivew/IFcAction;

    move v1, p1

    move-wide v2, p2

    move-wide v4, p4

    move/from16 v6, p6

    move/from16 v7, p7

    move-object/from16 v8, p8

    invoke-interface/range {v0 .. v8}, Lcom/fimi/x8sdk/ivew/IFcAction;->setHomePoint(FDDIFLcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 234
    return-void
.end method

.method public setPressureInfo(FF)V
    .locals 1
    .param p1, "alt"    # F
    .param p2, "hPa"    # F

    .prologue
    .line 310
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcManager;->fcAction:Lcom/fimi/x8sdk/ivew/IFcAction;

    invoke-interface {v0, p1, p2}, Lcom/fimi/x8sdk/ivew/IFcAction;->setPressureInfo(FF)V

    .line 311
    return-void
.end method

.method public setScrewExite(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 299
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcManager;->fcAction:Lcom/fimi/x8sdk/ivew/IFcAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFcAction;->setScrewExite(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 301
    return-void
.end method

.method public setScrewPause(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 287
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcManager;->fcAction:Lcom/fimi/x8sdk/ivew/IFcAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFcAction;->setScrewPause(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 289
    return-void
.end method

.method public setScrewPrameter(Lcom/fimi/x8sdk/dataparser/AckAiScrewPrameter;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "prameter"    # Lcom/fimi/x8sdk/dataparser/AckAiScrewPrameter;
    .param p2, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 269
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcManager;->fcAction:Lcom/fimi/x8sdk/ivew/IFcAction;

    invoke-interface {v0, p1, p2}, Lcom/fimi/x8sdk/ivew/IFcAction;->setScrewPrameter(Lcom/fimi/x8sdk/dataparser/AckAiScrewPrameter;Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 271
    return-void
.end method

.method public setScrewResume(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 293
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcManager;->fcAction:Lcom/fimi/x8sdk/ivew/IFcAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFcAction;->setScrewResume(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 295
    return-void
.end method

.method public setScrewStart(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 281
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcManager;->fcAction:Lcom/fimi/x8sdk/ivew/IFcAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFcAction;->setScrewStart(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 283
    return-void
.end method

.method public syncTime(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "callBackListener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 189
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcManager;->fcAction:Lcom/fimi/x8sdk/ivew/IFcAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFcAction;->syncTime(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 190
    return-void
.end method

.method public sysCtrlMode2AiVc(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;I)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;
    .param p2, "ctrlMode"    # I

    .prologue
    .line 305
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcManager;->fcAction:Lcom/fimi/x8sdk/ivew/IFcAction;

    invoke-interface {v0, p1, p2}, Lcom/fimi/x8sdk/ivew/IFcAction;->sysCtrlMode2AiVc(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;I)V

    .line 306
    return-void
.end method

.method public takeOff(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 31
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcManager;->fcAction:Lcom/fimi/x8sdk/ivew/IFcAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFcAction;->takeOff(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 32
    return-void
.end method

.method public takeOffExit(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;

    .prologue
    .line 36
    iget-object v0, p0, Lcom/fimi/x8sdk/controller/FcManager;->fcAction:Lcom/fimi/x8sdk/ivew/IFcAction;

    invoke-interface {v0, p1}, Lcom/fimi/x8sdk/ivew/IFcAction;->takeOffExit(Lcom/fimi/kernel/dataparser/usb/UiCallBackListener;)V

    .line 37
    return-void
.end method
