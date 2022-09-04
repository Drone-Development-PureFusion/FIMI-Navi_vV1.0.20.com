.class public Lcom/fimi/app/x8s/map/GglMap;
.super Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;
.source "GglMap.java"

# interfaces
.implements Lcom/google/android/gms/maps/OnMapReadyCallback;


# instance fields
.field BEIJING:Lcom/google/android/gms/maps/model/LatLng;

.field private aiLineManager:Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;

.field private aiP2PManager:Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;

.field private aiSurroundManager:Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;

.field private currentZoom:F

.field private gglMapLocationManager:Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

.field private googleMap:Lcom/google/android/gms/maps/GoogleMap;

.field private googleMapPoint:Lcom/fimi/app/x8s/map/model/GoogleMapPoint;

.field private isInit:Z

.field private mX8AiItemMapListener:Lcom/fimi/app/x8s/interfaces/IX8AiItemMapListener;

.field private mapView:Lcom/google/android/gms/maps/MapView;

.field private noFlyZone:Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;


# direct methods
.method public constructor <init>()V
    .locals 6

    .prologue
    .line 45
    invoke-direct {p0}, Lcom/fimi/app/x8s/map/interfaces/AbsFimiMap;-><init>()V

    .line 49
    const/4 v0, 0x0

    iput v0, p0, Lcom/fimi/app/x8s/map/GglMap;->currentZoom:F

    .line 98
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    const-wide v2, 0x4036a3a06d1d64c0L    # 22.63916666

    const-wide v4, 0x405c73e4b15a807fL    # 113.8108333

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    iput-object v0, p0, Lcom/fimi/app/x8s/map/GglMap;->BEIJING:Lcom/google/android/gms/maps/model/LatLng;

    return-void
.end method


# virtual methods
.method public addDeviceLocation(DD)V
    .locals 3
    .param p1, "latitude"    # D
    .param p3, "logitude"    # D

    .prologue
    .line 221
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 222
    .local v0, "mLatLng":Lcom/google/android/gms/maps/model/LatLng;
    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/map/GglMap;->addDeviceLocation(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 224
    iget-object v1, p0, Lcom/fimi/app/x8s/map/GglMap;->gglMapLocationManager:Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

    invoke-virtual {v1, v0}, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->addDeviceLocation(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 225
    iget-object v1, p0, Lcom/fimi/app/x8s/map/GglMap;->gglMapLocationManager:Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->drawFlyLine()V

    .line 231
    return-void
.end method

.method public addDeviceLocation(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 1
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 397
    iget-object v0, p0, Lcom/fimi/app/x8s/map/GglMap;->gglMapLocationManager:Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

    if-eqz v0, :cond_0

    .line 398
    iget-object v0, p0, Lcom/fimi/app/x8s/map/GglMap;->gglMapLocationManager:Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->addDeviceLocation(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 399
    iget-object v0, p0, Lcom/fimi/app/x8s/map/GglMap;->gglMapLocationManager:Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->drawFlyLine()V

    .line 401
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/map/GglMap;->aiLineManager:Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;

    if-eqz v0, :cond_1

    .line 402
    iget-object v0, p0, Lcom/fimi/app/x8s/map/GglMap;->aiLineManager:Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->changeLine()V

    .line 404
    :cond_1
    iget-object v0, p0, Lcom/fimi/app/x8s/map/GglMap;->aiP2PManager:Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;

    if-eqz v0, :cond_2

    .line 405
    iget-object v0, p0, Lcom/fimi/app/x8s/map/GglMap;->aiP2PManager:Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->changeLine()V

    .line 407
    :cond_2
    return-void
.end method

.method public addFlyPolyline(DD)V
    .locals 3
    .param p1, "latitude"    # D
    .param p3, "logitude"    # D

    .prologue
    .line 240
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v0

    .line 241
    .local v0, "droneState":Lcom/fimi/x8sdk/modulestate/DroneState;
    invoke-virtual {v0}, Lcom/fimi/x8sdk/modulestate/DroneState;->isInSky()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 242
    iget-object v1, p0, Lcom/fimi/app/x8s/map/GglMap;->gglMapLocationManager:Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

    invoke-virtual {v1, p1, p2, p3, p4}, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->addFlyPolyLine(DD)V

    .line 246
    :goto_0
    return-void

    .line 244
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/map/GglMap;->gglMapLocationManager:Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->clearFlyPolyLine()V

    goto :goto_0
.end method

.method public addHomeLocation(Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 8
    .param p1, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    const-wide v6, 0x408f400000000000L    # 1000.0

    .line 377
    iget-object v0, p0, Lcom/fimi/app/x8s/map/GglMap;->gglMapLocationManager:Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

    if-eqz v0, :cond_0

    .line 378
    iget-object v0, p0, Lcom/fimi/app/x8s/map/GglMap;->gglMapLocationManager:Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->addHomeLocation(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 380
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/map/GglMap;->mX8AiItemMapListener:Lcom/fimi/app/x8s/interfaces/IX8AiItemMapListener;

    if-eqz v0, :cond_1

    .line 381
    sget-object v0, Lcom/fimi/app/x8s/map/GglMap$2;->$SwitchMap$com$fimi$app$x8s$enums$X8AiMapItem:[I

    iget-object v1, p0, Lcom/fimi/app/x8s/map/GglMap;->mX8AiItemMapListener:Lcom/fimi/app/x8s/interfaces/IX8AiItemMapListener;

    invoke-interface {v1}, Lcom/fimi/app/x8s/interfaces/IX8AiItemMapListener;->getCurrentItem()Lcom/fimi/app/x8s/enums/X8AiMapItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/app/x8s/enums/X8AiMapItem;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 394
    :cond_1
    :goto_0
    return-void

    .line 383
    :pswitch_0
    iget-object v1, p0, Lcom/fimi/app/x8s/map/GglMap;->aiP2PManager:Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;

    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v4, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual/range {v1 .. v7}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;->drawAiLimit(DDD)V

    goto :goto_0

    .line 386
    :pswitch_1
    iget-object v1, p0, Lcom/fimi/app/x8s/map/GglMap;->aiLineManager:Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;

    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v4, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual/range {v1 .. v7}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;->drawAiLimit(DDD)V

    goto :goto_0

    .line 389
    :pswitch_2
    iget-object v1, p0, Lcom/fimi/app/x8s/map/GglMap;->aiSurroundManager:Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;

    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v4, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual/range {v1 .. v7}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;->drawAiLimit(DDD)V

    goto :goto_0

    .line 381
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public animateCamer()V
    .locals 1

    .prologue
    .line 258
    iget-object v0, p0, Lcom/fimi/app/x8s/map/GglMap;->gglMapLocationManager:Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

    if-eqz v0, :cond_0

    .line 259
    iget-object v0, p0, Lcom/fimi/app/x8s/map/GglMap;->gglMapLocationManager:Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->animatePersonLocation()V

    .line 261
    :cond_0
    return-void
.end method

.method public chaneDeviceAngle(F)V
    .locals 1
    .param p1, "angle"    # F

    .prologue
    .line 235
    iget-object v0, p0, Lcom/fimi/app/x8s/map/GglMap;->gglMapLocationManager:Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->chaneDeviceAngle(F)V

    .line 236
    return-void
.end method

.method public changeGoogleCamera(Lcom/google/android/gms/maps/CameraUpdate;)V
    .locals 1
    .param p1, "update"    # Lcom/google/android/gms/maps/CameraUpdate;

    .prologue
    .line 173
    iget-object v0, p0, Lcom/fimi/app/x8s/map/GglMap;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 174
    return-void
.end method

.method public clearNoFlightZone()V
    .locals 1

    .prologue
    .line 369
    iget-object v0, p0, Lcom/fimi/app/x8s/map/GglMap;->noFlyZone:Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;

    if-nez v0, :cond_0

    .line 373
    :goto_0
    return-void

    .line 372
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/map/GglMap;->noFlyZone:Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->clearNoFlightZone()V

    goto :goto_0
.end method

.method public defaultMapValue()V
    .locals 1

    .prologue
    .line 250
    iget-object v0, p0, Lcom/fimi/app/x8s/map/GglMap;->gglMapLocationManager:Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

    if-nez v0, :cond_0

    .line 254
    :goto_0
    return-void

    .line 253
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/map/GglMap;->gglMapLocationManager:Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->clearMarker()V

    goto :goto_0
.end method

.method public drawNoFlightZone(Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;Lcom/fimi/app/x8s/enums/NoFlyZoneEnum;)V
    .locals 26
    .param p1, "flyNormal"    # Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;
    .param p2, "noFlyZoneEnum"    # Lcom/fimi/app/x8s/enums/NoFlyZoneEnum;

    .prologue
    .line 305
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/map/GglMap;->noFlyZone:Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;

    move-object/from16 v19, v0

    if-nez v19, :cond_1

    .line 365
    :cond_0
    :goto_0
    return-void

    .line 308
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/map/GglMap;->googleMapPoint:Lcom/fimi/app/x8s/map/model/GoogleMapPoint;

    move-object/from16 v19, v0

    if-nez v19, :cond_3

    .line 309
    new-instance v19, Lcom/fimi/app/x8s/map/model/GoogleMapPoint;

    invoke-direct/range {v19 .. v19}, Lcom/fimi/app/x8s/map/model/GoogleMapPoint;-><init>()V

    move-object/from16 v0, v19

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/fimi/app/x8s/map/GglMap;->googleMapPoint:Lcom/fimi/app/x8s/map/model/GoogleMapPoint;

    .line 310
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/map/GglMap;->googleMapPoint:Lcom/fimi/app/x8s/map/model/GoogleMapPoint;

    move-object/from16 v19, v0

    new-instance v20, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual/range {p1 .. p1}, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->getCenter()Lcom/fimi/x8sdk/entity/FLatLng;

    move-result-object v21

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/fimi/x8sdk/entity/FLatLng;->latitude:D

    move-wide/from16 v22, v0

    invoke-virtual/range {p1 .. p1}, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->getCenter()Lcom/fimi/x8sdk/entity/FLatLng;

    move-result-object v21

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/fimi/x8sdk/entity/FLatLng;->longitude:D

    move-wide/from16 v24, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    move-wide/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual/range {v19 .. v20}, Lcom/fimi/app/x8s/map/model/GoogleMapPoint;->setCenter(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 311
    invoke-virtual/range {p1 .. p1}, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->getPolygonShape()I

    move-result v19

    const/16 v20, 0x2

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_4

    .line 312
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/map/GglMap;->googleMapPoint:Lcom/fimi/app/x8s/map/model/GoogleMapPoint;

    move-object/from16 v19, v0

    new-instance v20, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual/range {p1 .. p1}, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->getA1()Lcom/fimi/x8sdk/entity/FLatLng;

    move-result-object v21

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/fimi/x8sdk/entity/FLatLng;->latitude:D

    move-wide/from16 v22, v0

    invoke-virtual/range {p1 .. p1}, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->getA1()Lcom/fimi/x8sdk/entity/FLatLng;

    move-result-object v21

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/fimi/x8sdk/entity/FLatLng;->longitude:D

    move-wide/from16 v24, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    move-wide/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual/range {v19 .. v20}, Lcom/fimi/app/x8s/map/model/GoogleMapPoint;->setA1(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 313
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/map/GglMap;->googleMapPoint:Lcom/fimi/app/x8s/map/model/GoogleMapPoint;

    move-object/from16 v19, v0

    new-instance v20, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual/range {p1 .. p1}, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->getA2()Lcom/fimi/x8sdk/entity/FLatLng;

    move-result-object v21

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/fimi/x8sdk/entity/FLatLng;->latitude:D

    move-wide/from16 v22, v0

    invoke-virtual/range {p1 .. p1}, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->getA2()Lcom/fimi/x8sdk/entity/FLatLng;

    move-result-object v21

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/fimi/x8sdk/entity/FLatLng;->longitude:D

    move-wide/from16 v24, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    move-wide/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual/range {v19 .. v20}, Lcom/fimi/app/x8s/map/model/GoogleMapPoint;->setA2(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 314
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/map/GglMap;->googleMapPoint:Lcom/fimi/app/x8s/map/model/GoogleMapPoint;

    move-object/from16 v19, v0

    new-instance v20, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual/range {p1 .. p1}, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->getB1()Lcom/fimi/x8sdk/entity/FLatLng;

    move-result-object v21

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/fimi/x8sdk/entity/FLatLng;->latitude:D

    move-wide/from16 v22, v0

    invoke-virtual/range {p1 .. p1}, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->getB1()Lcom/fimi/x8sdk/entity/FLatLng;

    move-result-object v21

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/fimi/x8sdk/entity/FLatLng;->longitude:D

    move-wide/from16 v24, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    move-wide/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual/range {v19 .. v20}, Lcom/fimi/app/x8s/map/model/GoogleMapPoint;->setB1(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 315
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/map/GglMap;->googleMapPoint:Lcom/fimi/app/x8s/map/model/GoogleMapPoint;

    move-object/from16 v19, v0

    new-instance v20, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual/range {p1 .. p1}, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->getB2()Lcom/fimi/x8sdk/entity/FLatLng;

    move-result-object v21

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/fimi/x8sdk/entity/FLatLng;->latitude:D

    move-wide/from16 v22, v0

    invoke-virtual/range {p1 .. p1}, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->getB2()Lcom/fimi/x8sdk/entity/FLatLng;

    move-result-object v21

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/fimi/x8sdk/entity/FLatLng;->longitude:D

    move-wide/from16 v24, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    move-wide/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual/range {v19 .. v20}, Lcom/fimi/app/x8s/map/model/GoogleMapPoint;->setB2(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 316
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/map/GglMap;->googleMapPoint:Lcom/fimi/app/x8s/map/model/GoogleMapPoint;

    move-object/from16 v19, v0

    new-instance v20, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual/range {p1 .. p1}, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->getC1()Lcom/fimi/x8sdk/entity/FLatLng;

    move-result-object v21

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/fimi/x8sdk/entity/FLatLng;->latitude:D

    move-wide/from16 v22, v0

    invoke-virtual/range {p1 .. p1}, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->getC1()Lcom/fimi/x8sdk/entity/FLatLng;

    move-result-object v21

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/fimi/x8sdk/entity/FLatLng;->longitude:D

    move-wide/from16 v24, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    move-wide/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual/range {v19 .. v20}, Lcom/fimi/app/x8s/map/model/GoogleMapPoint;->setC1(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 317
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/map/GglMap;->googleMapPoint:Lcom/fimi/app/x8s/map/model/GoogleMapPoint;

    move-object/from16 v19, v0

    new-instance v20, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual/range {p1 .. p1}, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->getC2()Lcom/fimi/x8sdk/entity/FLatLng;

    move-result-object v21

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/fimi/x8sdk/entity/FLatLng;->latitude:D

    move-wide/from16 v22, v0

    invoke-virtual/range {p1 .. p1}, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->getC2()Lcom/fimi/x8sdk/entity/FLatLng;

    move-result-object v21

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/fimi/x8sdk/entity/FLatLng;->longitude:D

    move-wide/from16 v24, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    move-wide/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual/range {v19 .. v20}, Lcom/fimi/app/x8s/map/model/GoogleMapPoint;->setC2(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 318
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/map/GglMap;->googleMapPoint:Lcom/fimi/app/x8s/map/model/GoogleMapPoint;

    move-object/from16 v19, v0

    new-instance v20, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual/range {p1 .. p1}, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->getD1()Lcom/fimi/x8sdk/entity/FLatLng;

    move-result-object v21

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/fimi/x8sdk/entity/FLatLng;->latitude:D

    move-wide/from16 v22, v0

    invoke-virtual/range {p1 .. p1}, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->getD1()Lcom/fimi/x8sdk/entity/FLatLng;

    move-result-object v21

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/fimi/x8sdk/entity/FLatLng;->longitude:D

    move-wide/from16 v24, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    move-wide/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual/range {v19 .. v20}, Lcom/fimi/app/x8s/map/model/GoogleMapPoint;->setD1(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/map/GglMap;->googleMapPoint:Lcom/fimi/app/x8s/map/model/GoogleMapPoint;

    move-object/from16 v19, v0

    new-instance v20, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual/range {p1 .. p1}, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->getD2()Lcom/fimi/x8sdk/entity/FLatLng;

    move-result-object v21

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/fimi/x8sdk/entity/FLatLng;->latitude:D

    move-wide/from16 v22, v0

    invoke-virtual/range {p1 .. p1}, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->getD2()Lcom/fimi/x8sdk/entity/FLatLng;

    move-result-object v21

    move-object/from16 v0, v21

    iget-wide v0, v0, Lcom/fimi/x8sdk/entity/FLatLng;->longitude:D

    move-wide/from16 v24, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    move-wide/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-virtual/range {v19 .. v20}, Lcom/fimi/app/x8s/map/model/GoogleMapPoint;->setD2(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 329
    :cond_2
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/map/GglMap;->googleMapPoint:Lcom/fimi/app/x8s/map/model/GoogleMapPoint;

    move-object/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->getPolygonShape()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Lcom/fimi/app/x8s/map/model/GoogleMapPoint;->setNfzType(I)V

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/map/GglMap;->googleMapPoint:Lcom/fimi/app/x8s/map/model/GoogleMapPoint;

    move-object/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->getHeightLimit()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Lcom/fimi/app/x8s/map/model/GoogleMapPoint;->setLimitHight(I)V

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/map/GglMap;->googleMapPoint:Lcom/fimi/app/x8s/map/model/GoogleMapPoint;

    move-object/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->getNoflyRadius()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Lcom/fimi/app/x8s/map/model/GoogleMapPoint;->setRadius(I)V

    .line 332
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/map/GglMap;->googleMapPoint:Lcom/fimi/app/x8s/map/model/GoogleMapPoint;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fimi/app/x8s/map/model/GoogleMapPoint;->getLatLngs()Ljava/util/List;

    move-result-object v19

    invoke-interface/range {v19 .. v19}, Ljava/util/List;->clear()V

    .line 334
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/map/GglMap;->googleMapPoint:Lcom/fimi/app/x8s/map/model/GoogleMapPoint;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/map/model/GoogleMapPoint;->setType(Lcom/fimi/app/x8s/enums/NoFlyZoneEnum;)V

    .line 338
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/map/GglMap;->googleMapPoint:Lcom/fimi/app/x8s/map/model/GoogleMapPoint;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fimi/app/x8s/map/model/GoogleMapPoint;->getCenter()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v14

    .line 339
    .local v14, "center":Lcom/google/android/gms/maps/model/LatLng;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/map/GglMap;->googleMapPoint:Lcom/fimi/app/x8s/map/model/GoogleMapPoint;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fimi/app/x8s/map/model/GoogleMapPoint;->getA1()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v6

    .line 340
    .local v6, "A1":Lcom/google/android/gms/maps/model/LatLng;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/map/GglMap;->googleMapPoint:Lcom/fimi/app/x8s/map/model/GoogleMapPoint;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fimi/app/x8s/map/model/GoogleMapPoint;->getA2()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v7

    .line 343
    .local v7, "A2":Lcom/google/android/gms/maps/model/LatLng;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/map/GglMap;->googleMapPoint:Lcom/fimi/app/x8s/map/model/GoogleMapPoint;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fimi/app/x8s/map/model/GoogleMapPoint;->getC1()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v10

    .line 344
    .local v10, "C1":Lcom/google/android/gms/maps/model/LatLng;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/map/GglMap;->googleMapPoint:Lcom/fimi/app/x8s/map/model/GoogleMapPoint;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fimi/app/x8s/map/model/GoogleMapPoint;->getC2()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v11

    .line 346
    .local v11, "C2":Lcom/google/android/gms/maps/model/LatLng;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/map/GglMap;->googleMapPoint:Lcom/fimi/app/x8s/map/model/GoogleMapPoint;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fimi/app/x8s/map/model/GoogleMapPoint;->getB1()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v8

    .line 347
    .local v8, "B1":Lcom/google/android/gms/maps/model/LatLng;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/map/GglMap;->googleMapPoint:Lcom/fimi/app/x8s/map/model/GoogleMapPoint;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fimi/app/x8s/map/model/GoogleMapPoint;->getB2()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v9

    .line 349
    .local v9, "B2":Lcom/google/android/gms/maps/model/LatLng;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/map/GglMap;->googleMapPoint:Lcom/fimi/app/x8s/map/model/GoogleMapPoint;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fimi/app/x8s/map/model/GoogleMapPoint;->getD1()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v12

    .line 350
    .local v12, "D1":Lcom/google/android/gms/maps/model/LatLng;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/map/GglMap;->googleMapPoint:Lcom/fimi/app/x8s/map/model/GoogleMapPoint;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fimi/app/x8s/map/model/GoogleMapPoint;->getD2()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v13

    .line 354
    .local v13, "D2":Lcom/google/android/gms/maps/model/LatLng;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/map/GglMap;->googleMapPoint:Lcom/fimi/app/x8s/map/model/GoogleMapPoint;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fimi/app/x8s/map/model/GoogleMapPoint;->getType()Lcom/fimi/app/x8s/enums/NoFlyZoneEnum;

    move-result-object v19

    sget-object v20, Lcom/fimi/app/x8s/enums/NoFlyZoneEnum;->CANDY:Lcom/fimi/app/x8s/enums/NoFlyZoneEnum;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_6

    .line 355
    const/16 v19, 0x9

    move/from16 v0, v19

    new-array v0, v0, [Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v17, v0

    const/16 v19, 0x0

    aput-object v14, v17, v19

    const/16 v19, 0x1

    aput-object v12, v17, v19

    const/16 v19, 0x2

    aput-object v8, v17, v19

    const/16 v19, 0x3

    aput-object v10, v17, v19

    const/16 v19, 0x4

    aput-object v6, v17, v19

    const/16 v19, 0x5

    aput-object v7, v17, v19

    const/16 v19, 0x6

    aput-object v11, v17, v19

    const/16 v19, 0x7

    aput-object v9, v17, v19

    const/16 v19, 0x8

    aput-object v13, v17, v19

    .line 356
    .local v17, "lats":[Lcom/google/android/gms/maps/model/LatLng;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/map/GglMap;->noFlyZone:Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->drawCandyNoFlyZone([Lcom/google/android/gms/maps/model/LatLng;)V

    goto/16 :goto_0

    .line 320
    .end local v6    # "A1":Lcom/google/android/gms/maps/model/LatLng;
    .end local v7    # "A2":Lcom/google/android/gms/maps/model/LatLng;
    .end local v8    # "B1":Lcom/google/android/gms/maps/model/LatLng;
    .end local v9    # "B2":Lcom/google/android/gms/maps/model/LatLng;
    .end local v10    # "C1":Lcom/google/android/gms/maps/model/LatLng;
    .end local v11    # "C2":Lcom/google/android/gms/maps/model/LatLng;
    .end local v12    # "D1":Lcom/google/android/gms/maps/model/LatLng;
    .end local v13    # "D2":Lcom/google/android/gms/maps/model/LatLng;
    .end local v14    # "center":Lcom/google/android/gms/maps/model/LatLng;
    .end local v17    # "lats":[Lcom/google/android/gms/maps/model/LatLng;
    :cond_4
    invoke-virtual/range {p1 .. p1}, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->getPolygonShape()I

    move-result v19

    if-nez v19, :cond_5

    .line 321
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/map/GglMap;->googleMapPoint:Lcom/fimi/app/x8s/map/model/GoogleMapPoint;

    move-object/from16 v19, v0

    invoke-virtual/range {p1 .. p1}, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->getNoflyRadius()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Lcom/fimi/app/x8s/map/model/GoogleMapPoint;->setRadius(I)V

    goto/16 :goto_1

    .line 322
    :cond_5
    invoke-virtual/range {p1 .. p1}, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->getNumEudges()I

    move-result v19

    if-lez v19, :cond_2

    invoke-virtual/range {p1 .. p1}, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->getPolygonShape()I

    move-result v19

    const/16 v20, 0x3

    move/from16 v0, v19

    move/from16 v1, v20

    if-ne v0, v1, :cond_2

    .line 323
    const/4 v15, 0x0

    .local v15, "i":I
    :goto_2
    invoke-virtual/range {p1 .. p1}, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->getNumEudges()I

    move-result v19

    move/from16 v0, v19

    if-ge v15, v0, :cond_2

    .line 324
    new-instance v16, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual/range {p1 .. p1}, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->getPoints()Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/fimi/x8sdk/entity/FLatLng;

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/fimi/x8sdk/entity/FLatLng;->latitude:D

    move-wide/from16 v20, v0

    invoke-virtual/range {p1 .. p1}, Lcom/fimi/x8sdk/dataparser/AckNoFlyNormal;->getPoints()Ljava/util/List;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-interface {v0, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/fimi/x8sdk/entity/FLatLng;

    move-object/from16 v0, v19

    iget-wide v0, v0, Lcom/fimi/x8sdk/entity/FLatLng;->longitude:D

    move-wide/from16 v22, v0

    move-object/from16 v0, v16

    move-wide/from16 v1, v20

    move-wide/from16 v3, v22

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 325
    .local v16, "latLng":Lcom/google/android/gms/maps/model/LatLng;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/map/GglMap;->googleMapPoint:Lcom/fimi/app/x8s/map/model/GoogleMapPoint;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fimi/app/x8s/map/model/GoogleMapPoint;->getLatLngs()Ljava/util/List;

    move-result-object v19

    new-instance v20, Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-wide/from16 v22, v0

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-wide/from16 v24, v0

    move-object/from16 v0, v20

    move-wide/from16 v1, v22

    move-wide/from16 v3, v24

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-interface/range {v19 .. v20}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 323
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 357
    .end local v15    # "i":I
    .end local v16    # "latLng":Lcom/google/android/gms/maps/model/LatLng;
    .restart local v6    # "A1":Lcom/google/android/gms/maps/model/LatLng;
    .restart local v7    # "A2":Lcom/google/android/gms/maps/model/LatLng;
    .restart local v8    # "B1":Lcom/google/android/gms/maps/model/LatLng;
    .restart local v9    # "B2":Lcom/google/android/gms/maps/model/LatLng;
    .restart local v10    # "C1":Lcom/google/android/gms/maps/model/LatLng;
    .restart local v11    # "C2":Lcom/google/android/gms/maps/model/LatLng;
    .restart local v12    # "D1":Lcom/google/android/gms/maps/model/LatLng;
    .restart local v13    # "D2":Lcom/google/android/gms/maps/model/LatLng;
    .restart local v14    # "center":Lcom/google/android/gms/maps/model/LatLng;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/map/GglMap;->googleMapPoint:Lcom/fimi/app/x8s/map/model/GoogleMapPoint;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fimi/app/x8s/map/model/GoogleMapPoint;->getType()Lcom/fimi/app/x8s/enums/NoFlyZoneEnum;

    move-result-object v19

    sget-object v20, Lcom/fimi/app/x8s/enums/NoFlyZoneEnum;->CIRCLE:Lcom/fimi/app/x8s/enums/NoFlyZoneEnum;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_7

    .line 358
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/map/GglMap;->noFlyZone:Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/map/GglMap;->googleMapPoint:Lcom/fimi/app/x8s/map/model/GoogleMapPoint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/fimi/app/x8s/map/model/GoogleMapPoint;->getRadius()I

    move-result v20

    move-object/from16 v0, v19

    move/from16 v1, v20

    invoke-virtual {v0, v14, v1}, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->drawCircleNoFlyZone(Lcom/google/android/gms/maps/model/LatLng;I)V

    goto/16 :goto_0

    .line 359
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/map/GglMap;->googleMapPoint:Lcom/fimi/app/x8s/map/model/GoogleMapPoint;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fimi/app/x8s/map/model/GoogleMapPoint;->getType()Lcom/fimi/app/x8s/enums/NoFlyZoneEnum;

    move-result-object v19

    sget-object v20, Lcom/fimi/app/x8s/enums/NoFlyZoneEnum;->IRREGULAR:Lcom/fimi/app/x8s/enums/NoFlyZoneEnum;

    move-object/from16 v0, v19

    move-object/from16 v1, v20

    if-ne v0, v1, :cond_0

    .line 360
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/map/GglMap;->googleMapPoint:Lcom/fimi/app/x8s/map/model/GoogleMapPoint;

    move-object/from16 v19, v0

    invoke-virtual/range {v19 .. v19}, Lcom/fimi/app/x8s/map/model/GoogleMapPoint;->getLatLngs()Ljava/util/List;

    move-result-object v18

    .line 361
    .local v18, "list":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/LatLng;>;"
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v19

    move/from16 v0, v19

    new-array v0, v0, [Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v17, v0

    .line 362
    .restart local v17    # "lats":[Lcom/google/android/gms/maps/model/LatLng;
    move-object/from16 v0, v18

    move-object/from16 v1, v17

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/map/GglMap;->noFlyZone:Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/fimi/app/x8s/map/GglMap;->googleMapPoint:Lcom/fimi/app/x8s/map/model/GoogleMapPoint;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Lcom/fimi/app/x8s/map/model/GoogleMapPoint;->isNoFly()Z

    move-result v20

    move-object/from16 v0, v19

    move-object/from16 v1, v17

    move/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->drawIrregularNoFlyZone([Lcom/google/android/gms/maps/model/LatLng;Z)V

    goto/16 :goto_0
.end method

.method public getAccuracy()F
    .locals 2

    .prologue
    .line 80
    const/4 v0, 0x0

    .line 81
    .local v0, "accuracy":F
    iget-boolean v1, p0, Lcom/fimi/app/x8s/map/GglMap;->isInit:Z

    if-eqz v1, :cond_0

    .line 82
    iget-object v1, p0, Lcom/fimi/app/x8s/map/GglMap;->gglMapLocationManager:Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

    if-eqz v1, :cond_0

    .line 83
    iget-object v1, p0, Lcom/fimi/app/x8s/map/GglMap;->gglMapLocationManager:Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->getAccuracy()F

    move-result v0

    .line 86
    :cond_0
    return v0
.end method

.method public getAiLineManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiLineManager;
    .locals 1

    .prologue
    .line 265
    iget-object v0, p0, Lcom/fimi/app/x8s/map/GglMap;->aiLineManager:Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;

    return-object v0
.end method

.method public getAiPoint2PointManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiPoint2PointManager;
    .locals 1

    .prologue
    .line 270
    iget-object v0, p0, Lcom/fimi/app/x8s/map/GglMap;->aiP2PManager:Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;

    return-object v0
.end method

.method public getAiSurroundManager()Lcom/fimi/app/x8s/map/interfaces/AbsAiSurroundManager;
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Lcom/fimi/app/x8s/map/GglMap;->aiSurroundManager:Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;

    return-object v0
.end method

.method public getDeviceLatlng()Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    .locals 4

    .prologue
    .line 292
    new-instance v1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;

    invoke-direct {v1}, Lcom/fimi/app/x8s/map/model/MapPointLatLng;-><init>()V

    .line 293
    .local v1, "p":Lcom/fimi/app/x8s/map/model/MapPointLatLng;
    iget-object v2, p0, Lcom/fimi/app/x8s/map/GglMap;->gglMapLocationManager:Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

    invoke-virtual {v2}, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->getDevLocation()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v0

    .line 294
    .local v0, "latlng":Lcom/google/android/gms/maps/model/LatLng;
    if-eqz v0, :cond_0

    .line 295
    iget-wide v2, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iput-wide v2, v1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->latitude:D

    .line 296
    iget-wide v2, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iput-wide v2, v1, Lcom/fimi/app/x8s/map/model/MapPointLatLng;->longitude:D

    .line 298
    :cond_0
    return-object v1
.end method

.method public getDevicePosition()[D
    .locals 1

    .prologue
    .line 419
    iget-object v0, p0, Lcom/fimi/app/x8s/map/GglMap;->gglMapLocationManager:Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

    if-eqz v0, :cond_0

    .line 420
    iget-object v0, p0, Lcom/fimi/app/x8s/map/GglMap;->gglMapLocationManager:Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->getDevicePosition()[D

    move-result-object v0

    .line 422
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getManLatLng()[D
    .locals 6

    .prologue
    const/4 v2, 0x0

    .line 442
    const/4 v3, 0x2

    new-array v0, v3, [D

    .line 443
    .local v0, "latLng":[D
    iget-object v3, p0, Lcom/fimi/app/x8s/map/GglMap;->gglMapLocationManager:Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

    if-nez v3, :cond_0

    move-object v0, v2

    .line 452
    .end local v0    # "latLng":[D
    :goto_0
    return-object v0

    .line 446
    .restart local v0    # "latLng":[D
    :cond_0
    iget-object v3, p0, Lcom/fimi/app/x8s/map/GglMap;->gglMapLocationManager:Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

    invoke-virtual {v3}, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->getManLocation()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    .line 447
    .local v1, "ll":Lcom/google/android/gms/maps/model/LatLng;
    if-nez v1, :cond_1

    move-object v0, v2

    .line 448
    goto :goto_0

    .line 450
    :cond_1
    const/4 v2, 0x0

    iget-wide v4, v1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    aput-wide v4, v0, v2

    .line 451
    const/4 v2, 0x1

    iget-wide v4, v1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    aput-wide v4, v0, v2

    goto :goto_0
.end method

.method public getMapView()Landroid/view/View;
    .locals 1

    .prologue
    .line 102
    iget-object v0, p0, Lcom/fimi/app/x8s/map/GglMap;->mapView:Lcom/google/android/gms/maps/MapView;

    return-object v0
.end method

.method public getZoom()F
    .locals 1

    .prologue
    .line 155
    iget-object v0, p0, Lcom/fimi/app/x8s/map/GglMap;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/GoogleMap;->getCameraPosition()Lcom/google/android/gms/maps/model/CameraPosition;

    move-result-object v0

    iget v0, v0, Lcom/google/android/gms/maps/model/CameraPosition;->zoom:F

    iput v0, p0, Lcom/fimi/app/x8s/map/GglMap;->currentZoom:F

    return v0
.end method

.method public googleMap()Lcom/google/android/gms/maps/GoogleMap;
    .locals 1

    .prologue
    .line 107
    iget-object v0, p0, Lcom/fimi/app/x8s/map/GglMap;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    return-object v0
.end method

.method public hasHomeInfo()Z
    .locals 2

    .prologue
    .line 67
    const/4 v0, 0x0

    .line 68
    .local v0, "ret":Z
    iget-boolean v1, p0, Lcom/fimi/app/x8s/map/GglMap;->isInit:Z

    if-eqz v1, :cond_0

    .line 69
    iget-object v1, p0, Lcom/fimi/app/x8s/map/GglMap;->gglMapLocationManager:Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

    if-eqz v1, :cond_0

    .line 70
    iget-object v1, p0, Lcom/fimi/app/x8s/map/GglMap;->gglMapLocationManager:Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

    invoke-virtual {v1}, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->getHomeLocation()Lcom/google/android/gms/maps/model/LatLng;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 71
    const/4 v0, 0x1

    .line 75
    :cond_0
    return v0
.end method

.method public isMapInit()Z
    .locals 1

    .prologue
    .line 62
    iget-boolean v0, p0, Lcom/fimi/app/x8s/map/GglMap;->isInit:Z

    return v0
.end method

.method public moveCameraByDevice()V
    .locals 1

    .prologue
    .line 412
    iget-object v0, p0, Lcom/fimi/app/x8s/map/GglMap;->gglMapLocationManager:Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

    if-eqz v0, :cond_0

    .line 413
    iget-object v0, p0, Lcom/fimi/app/x8s/map/GglMap;->gglMapLocationManager:Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->moveCameraByDevice()V

    .line 415
    :cond_0
    return-void
.end method

.method public onCreate(Landroid/view/View;Landroid/os/Bundle;)V
    .locals 3
    .param p1, "rootView"    # Landroid/view/View;
    .param p2, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v2, 0x1

    .line 118
    new-instance v0, Lcom/google/android/gms/maps/MapView;

    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/google/android/gms/maps/MapView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/map/GglMap;->mapView:Lcom/google/android/gms/maps/MapView;

    .line 119
    iget-object v0, p0, Lcom/fimi/app/x8s/map/GglMap;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0, p2}, Lcom/google/android/gms/maps/MapView;->onCreate(Landroid/os/Bundle;)V

    .line 120
    iget-object v0, p0, Lcom/fimi/app/x8s/map/GglMap;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/MapView;->setEnabled(Z)V

    .line 121
    iget-object v0, p0, Lcom/fimi/app/x8s/map/GglMap;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/MapView;->setClickable(Z)V

    .line 122
    iget-object v0, p0, Lcom/fimi/app/x8s/map/GglMap;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0, p0}, Lcom/google/android/gms/maps/MapView;->getMapAsync(Lcom/google/android/gms/maps/OnMapReadyCallback;)V

    .line 123
    return-void
.end method

.method public onDestroy()V
    .locals 1

    .prologue
    .line 149
    iget-object v0, p0, Lcom/fimi/app/x8s/map/GglMap;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onDestroy()V

    .line 151
    return-void
.end method

.method public onLocationEvnent()V
    .locals 6

    .prologue
    .line 428
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v2

    invoke-virtual {v2}, Lcom/fimi/x8sdk/modulestate/DroneState;->getHomeInfo()Lcom/fimi/x8sdk/dataparser/AutoHomeInfo;

    move-result-object v0

    .line 429
    .local v0, "homeInfo":Lcom/fimi/x8sdk/dataparser/AutoHomeInfo;
    new-instance v1, Lcom/google/android/gms/maps/model/LatLng;

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AutoHomeInfo;->getFLatLng()Lcom/fimi/x8sdk/entity/FLatLng;

    move-result-object v2

    iget-wide v2, v2, Lcom/fimi/x8sdk/entity/FLatLng;->latitude:D

    invoke-virtual {v0}, Lcom/fimi/x8sdk/dataparser/AutoHomeInfo;->getFLatLng()Lcom/fimi/x8sdk/entity/FLatLng;

    move-result-object v4

    iget-wide v4, v4, Lcom/fimi/x8sdk/entity/FLatLng;->longitude:D

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 431
    .local v1, "latLng":Lcom/google/android/gms/maps/model/LatLng;
    iget-object v2, p0, Lcom/fimi/app/x8s/map/GglMap;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    const/high16 v3, 0x41a80000    # 21.0f

    invoke-static {v1, v3}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 432
    return-void
.end method

.method public onLocationGravitTrailEvent()V
    .locals 6

    .prologue
    .line 435
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->getLatitude()D

    move-result-wide v2

    .line 436
    invoke-static {}, Lcom/fimi/x8sdk/modulestate/StateManager;->getInstance()Lcom/fimi/x8sdk/modulestate/StateManager;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/StateManager;->getX8Drone()Lcom/fimi/x8sdk/modulestate/DroneState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/modulestate/DroneState;->getLongitude()D

    move-result-wide v4

    invoke-direct {v0, v2, v3, v4, v5}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 437
    .local v0, "latLng":Lcom/google/android/gms/maps/model/LatLng;
    iget-object v1, p0, Lcom/fimi/app/x8s/map/GglMap;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    const/high16 v2, 0x41a00000    # 20.0f

    invoke-static {v0, v2}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 438
    return-void
.end method

.method public onMapReady(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 4
    .param p1, "googleMap"    # Lcom/google/android/gms/maps/GoogleMap;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 179
    iput-object p1, p0, Lcom/fimi/app/x8s/map/GglMap;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 180
    new-instance v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;

    invoke-direct {v0, p1}, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;-><init>(Lcom/google/android/gms/maps/GoogleMap;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/map/GglMap;->noFlyZone:Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;

    .line 182
    iget-object v0, p0, Lcom/fimi/app/x8s/map/GglMap;->BEIJING:Lcom/google/android/gms/maps/model/LatLng;

    const/high16 v1, 0x41a80000    # 21.0f

    invoke-static {v0, v1}, Lcom/google/android/gms/maps/CameraUpdateFactory;->newLatLngZoom(Lcom/google/android/gms/maps/model/LatLng;F)Lcom/google/android/gms/maps/CameraUpdate;

    move-result-object v0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->moveCamera(Lcom/google/android/gms/maps/CameraUpdate;)V

    .line 183
    iget-object v0, p0, Lcom/fimi/app/x8s/map/GglMap;->context:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/fimi/app/x8s/map/GglMap;->context:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v0, v1}, Landroid/support/v4/app/ActivityCompat;->checkSelfPermission(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 211
    :cond_0
    :goto_0
    return-void

    .line 194
    :cond_1
    invoke-virtual {p1, v2}, Lcom/google/android/gms/maps/GoogleMap;->setMyLocationEnabled(Z)V

    .line 196
    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/UiSettings;->setMyLocationButtonEnabled(Z)V

    .line 197
    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/UiSettings;->setCompassEnabled(Z)V

    .line 198
    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/UiSettings;->setMapToolbarEnabled(Z)V

    .line 199
    invoke-virtual {p1}, Lcom/google/android/gms/maps/GoogleMap;->getUiSettings()Lcom/google/android/gms/maps/UiSettings;

    move-result-object v0

    invoke-virtual {v0, v2}, Lcom/google/android/gms/maps/UiSettings;->setRotateGesturesEnabled(Z)V

    .line 200
    new-instance v0, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

    iget-object v1, p0, Lcom/fimi/app/x8s/map/GglMap;->context:Landroid/content/Context;

    invoke-direct {v0, p1, v1}, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;-><init>(Lcom/google/android/gms/maps/GoogleMap;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/map/GglMap;->gglMapLocationManager:Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

    .line 201
    new-instance v0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;

    iget-object v1, p0, Lcom/fimi/app/x8s/map/GglMap;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/fimi/app/x8s/map/GglMap;->gglMapLocationManager:Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

    invoke-direct {v0, v1, p1, v2}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;-><init>(Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMap;Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/map/GglMap;->aiP2PManager:Lcom/fimi/app/x8s/map/manager/google/GglMapAiPoint2PointManager;

    .line 202
    new-instance v0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;

    iget-object v1, p0, Lcom/fimi/app/x8s/map/GglMap;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/fimi/app/x8s/map/GglMap;->gglMapLocationManager:Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

    invoke-direct {v0, v1, p1, v2}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;-><init>(Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMap;Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/map/GglMap;->aiSurroundManager:Lcom/fimi/app/x8s/map/manager/google/GglMapAiSurroundManager;

    .line 203
    new-instance v0, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;

    iget-object v1, p0, Lcom/fimi/app/x8s/map/GglMap;->context:Landroid/content/Context;

    iget-object v2, p0, Lcom/fimi/app/x8s/map/GglMap;->gglMapLocationManager:Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

    invoke-direct {v0, v1, p1, v2}, Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;-><init>(Landroid/content/Context;Lcom/google/android/gms/maps/GoogleMap;Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;)V

    iput-object v0, p0, Lcom/fimi/app/x8s/map/GglMap;->aiLineManager:Lcom/fimi/app/x8s/map/manager/google/GglMapAiLineManager;

    .line 204
    iget-object v0, p0, Lcom/fimi/app/x8s/map/GglMap;->gglMapLocationManager:Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->onStart()V

    .line 205
    iput-boolean v3, p0, Lcom/fimi/app/x8s/map/GglMap;->isInit:Z

    .line 206
    invoke-static {}, Lcom/fimi/x8sdk/common/GlobalConfig;->getInstance()Lcom/fimi/x8sdk/common/GlobalConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/common/GlobalConfig;->getMapStyle()I

    move-result v0

    sget v1, Lcom/fimi/x8sdk/common/Constants;->X8_GENERAL_MAP_STYLE_NORMAL:I

    if-ne v0, v1, :cond_2

    .line 207
    invoke-virtual {p1, v3}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    goto :goto_0

    .line 208
    :cond_2
    invoke-static {}, Lcom/fimi/x8sdk/common/GlobalConfig;->getInstance()Lcom/fimi/x8sdk/common/GlobalConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/fimi/x8sdk/common/GlobalConfig;->getMapStyle()I

    move-result v0

    sget v1, Lcom/fimi/x8sdk/common/Constants;->X8_GENERAL_MAP_STYLE_SATELLITE:I

    if-ne v0, v1, :cond_0

    .line 209
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    goto :goto_0
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/fimi/app/x8s/map/GglMap;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onPause()V

    .line 136
    iget-object v0, p0, Lcom/fimi/app/x8s/map/GglMap;->gglMapLocationManager:Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

    if-eqz v0, :cond_0

    .line 137
    iget-object v0, p0, Lcom/fimi/app/x8s/map/GglMap;->gglMapLocationManager:Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->onStop()V

    .line 139
    :cond_0
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/fimi/app/x8s/map/GglMap;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0}, Lcom/google/android/gms/maps/MapView;->onResume()V

    .line 128
    iget-object v0, p0, Lcom/fimi/app/x8s/map/GglMap;->gglMapLocationManager:Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Lcom/fimi/app/x8s/map/GglMap;->gglMapLocationManager:Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

    invoke-virtual {v0}, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->onStart()V

    .line 131
    :cond_0
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 1
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 143
    iget-object v0, p0, Lcom/fimi/app/x8s/map/GglMap;->mapView:Lcom/google/android/gms/maps/MapView;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/MapView;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 145
    return-void
.end method

.method public onSensorChanged(F)V
    .locals 1
    .param p1, "degree"    # F

    .prologue
    .line 214
    iget-object v0, p0, Lcom/fimi/app/x8s/map/GglMap;->gglMapLocationManager:Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

    if-eqz v0, :cond_0

    .line 215
    iget-object v0, p0, Lcom/fimi/app/x8s/map/GglMap;->gglMapLocationManager:Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;

    invoke-virtual {v0, p1}, Lcom/fimi/app/x8s/map/manager/google/GglMapLocationManager;->onSensorChanged(F)V

    .line 217
    :cond_0
    return-void
.end method

.method public setHomeLocation(DD)V
    .locals 1
    .param p1, "latitude"    # D
    .param p3, "longitude"    # D

    .prologue
    .line 112
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 113
    .local v0, "latLng":Lcom/google/android/gms/maps/model/LatLng;
    invoke-virtual {p0, v0}, Lcom/fimi/app/x8s/map/GglMap;->addHomeLocation(Lcom/google/android/gms/maps/model/LatLng;)V

    .line 114
    return-void
.end method

.method public setmX8AiItemMapListener(Lcom/fimi/app/x8s/interfaces/IX8AiItemMapListener;)V
    .locals 0
    .param p1, "mX8AiItemMapListener"    # Lcom/fimi/app/x8s/interfaces/IX8AiItemMapListener;

    .prologue
    .line 57
    iput-object p1, p0, Lcom/fimi/app/x8s/map/GglMap;->mX8AiItemMapListener:Lcom/fimi/app/x8s/interfaces/IX8AiItemMapListener;

    .line 58
    return-void
.end method

.method public snapshot(Lcom/fimi/app/x8s/interfaces/IFimiOnSnapshotReady;)V
    .locals 2
    .param p1, "callBack"    # Lcom/fimi/app/x8s/interfaces/IFimiOnSnapshotReady;

    .prologue
    .line 457
    iget-object v0, p0, Lcom/fimi/app/x8s/map/GglMap;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    new-instance v1, Lcom/fimi/app/x8s/map/GglMap$1;

    invoke-direct {v1, p0, p1}, Lcom/fimi/app/x8s/map/GglMap$1;-><init>(Lcom/fimi/app/x8s/map/GglMap;Lcom/fimi/app/x8s/interfaces/IFimiOnSnapshotReady;)V

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->snapshot(Lcom/google/android/gms/maps/GoogleMap$SnapshotReadyCallback;)V

    .line 463
    return-void
.end method

.method public switchMapStyle(I)V
    .locals 2
    .param p1, "mapStyle"    # I

    .prologue
    .line 161
    iget-boolean v0, p0, Lcom/fimi/app/x8s/map/GglMap;->isInit:Z

    if-nez v0, :cond_1

    .line 169
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    sget v0, Lcom/fimi/x8sdk/common/Constants;->X8_GENERAL_MAP_STYLE_NORMAL:I

    if-ne p1, v0, :cond_2

    .line 165
    iget-object v0, p0, Lcom/fimi/app/x8s/map/GglMap;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    iget-object v1, p0, Lcom/fimi/app/x8s/map/GglMap;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    goto :goto_0

    .line 166
    :cond_2
    sget v0, Lcom/fimi/x8sdk/common/Constants;->X8_GENERAL_MAP_STYLE_SATELLITE:I

    if-ne p1, v0, :cond_0

    .line 167
    iget-object v0, p0, Lcom/fimi/app/x8s/map/GglMap;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    iget-object v1, p0, Lcom/fimi/app/x8s/map/GglMap;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->setMapType(I)V

    goto :goto_0
.end method

.method public toScreenLocation(DD)Lcom/fimi/app/x8s/map/model/FimiPoint;
    .locals 5
    .param p1, "lat"    # D
    .param p3, "lng"    # D

    .prologue
    .line 280
    new-instance v2, Lcom/fimi/app/x8s/map/model/FimiPoint;

    invoke-direct {v2}, Lcom/fimi/app/x8s/map/model/FimiPoint;-><init>()V

    .line 281
    .local v2, "p":Lcom/fimi/app/x8s/map/model/FimiPoint;
    new-instance v0, Lcom/google/android/gms/maps/model/LatLng;

    invoke-direct {v0, p1, p2, p3, p4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 282
    .local v0, "mLatlng":Lcom/google/android/gms/maps/model/LatLng;
    iget-object v3, p0, Lcom/fimi/app/x8s/map/GglMap;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    invoke-virtual {v3}, Lcom/google/android/gms/maps/GoogleMap;->getProjection()Lcom/google/android/gms/maps/Projection;

    move-result-object v3

    invoke-virtual {v3, v0}, Lcom/google/android/gms/maps/Projection;->toScreenLocation(Lcom/google/android/gms/maps/model/LatLng;)Landroid/graphics/Point;

    move-result-object v1

    .line 283
    .local v1, "mPoint":Landroid/graphics/Point;
    if-eqz v1, :cond_0

    .line 284
    iget v3, v1, Landroid/graphics/Point;->x:I

    iput v3, v2, Lcom/fimi/app/x8s/map/model/FimiPoint;->x:I

    .line 285
    iget v3, v1, Landroid/graphics/Point;->y:I

    iput v3, v2, Lcom/fimi/app/x8s/map/model/FimiPoint;->y:I

    .line 287
    :cond_0
    return-object v2
.end method
