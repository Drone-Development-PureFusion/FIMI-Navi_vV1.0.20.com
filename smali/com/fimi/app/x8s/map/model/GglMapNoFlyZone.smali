.class public Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;
.super Lcom/fimi/app/x8s/map/interfaces/AbsMapNoFlyZone;
.source "GglMapNoFlyZone.java"


# instance fields
.field private A3:Lcom/google/android/gms/maps/model/LatLng;

.field private A4:Lcom/google/android/gms/maps/model/LatLng;

.field private B3:Lcom/google/android/gms/maps/model/LatLng;

.field private B4:Lcom/google/android/gms/maps/model/LatLng;

.field private C3:Lcom/google/android/gms/maps/model/LatLng;

.field private C4:Lcom/google/android/gms/maps/model/LatLng;

.field private D3:Lcom/google/android/gms/maps/model/LatLng;

.field private D4:Lcom/google/android/gms/maps/model/LatLng;

.field private candyPolygonOptions:Lcom/google/android/gms/maps/model/PolygonOptions;

.field private circleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/Circle;",
            ">;"
        }
    .end annotation
.end field

.field private circleOptions:Lcom/google/android/gms/maps/model/CircleOptions;

.field private googleMap:Lcom/google/android/gms/maps/GoogleMap;

.field private latLngs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private latLngsNofly:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field

.field private options:Lcom/google/android/gms/maps/model/PolygonOptions;

.field private pointArcs1:[[D

.field private pointArcs2:[[D

.field private pointArcs3:[[D

.field private pointArcs4:[[D

.field private polygonList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/Polygon;",
            ">;"
        }
    .end annotation
.end field

.field private polygonOptions:Lcom/google/android/gms/maps/model/PolygonOptions;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/maps/GoogleMap;)V
    .locals 1
    .param p1, "map"    # Lcom/google/android/gms/maps/GoogleMap;

    .prologue
    .line 42
    invoke-direct {p0}, Lcom/fimi/app/x8s/map/interfaces/AbsMapNoFlyZone;-><init>()V

    .line 21
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->polygonList:Ljava/util/List;

    .line 22
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->circleList:Ljava/util/List;

    .line 23
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->latLngsNofly:Ljava/util/List;

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->latLngs:Ljava/util/List;

    .line 43
    iput-object p1, p0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    .line 44
    return-void
.end method


# virtual methods
.method public clearNoFlightZone()V
    .locals 4

    .prologue
    .line 196
    iget-object v2, p0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->polygonList:Ljava/util/List;

    if-eqz v2, :cond_1

    .line 197
    iget-object v2, p0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->polygonList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/maps/model/Polygon;

    .line 198
    .local v1, "polygon":Lcom/google/android/gms/maps/model/Polygon;
    invoke-virtual {v1}, Lcom/google/android/gms/maps/model/Polygon;->remove()V

    goto :goto_0

    .line 200
    .end local v1    # "polygon":Lcom/google/android/gms/maps/model/Polygon;
    :cond_0
    iget-object v2, p0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->polygonList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 202
    :cond_1
    iget-object v2, p0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->circleList:Ljava/util/List;

    if-eqz v2, :cond_3

    .line 203
    iget-object v2, p0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->circleList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/maps/model/Circle;

    .line 204
    .local v0, "circle":Lcom/google/android/gms/maps/model/Circle;
    invoke-virtual {v0}, Lcom/google/android/gms/maps/model/Circle;->remove()V

    goto :goto_1

    .line 206
    .end local v0    # "circle":Lcom/google/android/gms/maps/model/Circle;
    :cond_2
    iget-object v2, p0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->circleList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 208
    :cond_3
    iget-object v2, p0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->latLngsNofly:Ljava/util/List;

    if-eqz v2, :cond_4

    .line 209
    iget-object v2, p0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->latLngsNofly:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 211
    :cond_4
    return-void
.end method

.method public drawCandyNoFlyZone([Lcom/google/android/gms/maps/model/LatLng;)V
    .locals 26
    .param p1, "lats"    # [Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 48
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->latLngsNofly:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 49
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->latLngs:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    .line 50
    const/4 v3, 0x0

    aget-object v23, p1, v3

    .line 51
    .local v23, "center":Lcom/google/android/gms/maps/model/LatLng;
    const/4 v3, 0x1

    aget-object v21, p1, v3

    .line 52
    .local v21, "D1":Lcom/google/android/gms/maps/model/LatLng;
    const/4 v3, 0x2

    aget-object v17, p1, v3

    .line 53
    .local v17, "B1":Lcom/google/android/gms/maps/model/LatLng;
    const/4 v3, 0x3

    aget-object v19, p1, v3

    .line 54
    .local v19, "C1":Lcom/google/android/gms/maps/model/LatLng;
    const/4 v3, 0x4

    aget-object v2, p1, v3

    .line 55
    .local v2, "A1":Lcom/google/android/gms/maps/model/LatLng;
    const/4 v3, 0x5

    aget-object v16, p1, v3

    .line 56
    .local v16, "A2":Lcom/google/android/gms/maps/model/LatLng;
    const/4 v3, 0x6

    aget-object v20, p1, v3

    .line 57
    .local v20, "C2":Lcom/google/android/gms/maps/model/LatLng;
    const/4 v3, 0x7

    aget-object v18, p1, v3

    .line 58
    .local v18, "B2":Lcom/google/android/gms/maps/model/LatLng;
    const/16 v3, 0x8

    aget-object v22, p1, v3

    .line 60
    .local v22, "D2":Lcom/google/android/gms/maps/model/LatLng;
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->A3:Lcom/google/android/gms/maps/model/LatLng;

    if-nez v3, :cond_0

    .line 61
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->mGpsPointTools:Lcom/fimi/app/x8s/tools/GpsPointTools;

    iget-wide v4, v2, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v6, v2, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-object/from16 v0, v23

    iget-wide v8, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-object/from16 v0, v23

    iget-wide v10, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual/range {v3 .. v11}, Lcom/fimi/app/x8s/tools/GpsPointTools;->getSymmetryPoint(DDDD)[D

    move-result-object v25

    .line 62
    .local v25, "sysPoint":[D
    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    const/4 v4, 0x0

    aget-wide v4, v25, v4

    const/4 v6, 0x1

    aget-wide v6, v25, v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->A3:Lcom/google/android/gms/maps/model/LatLng;

    .line 65
    .end local v25    # "sysPoint":[D
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->C3:Lcom/google/android/gms/maps/model/LatLng;

    if-nez v3, :cond_1

    .line 66
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->mGpsPointTools:Lcom/fimi/app/x8s/tools/GpsPointTools;

    move-object/from16 v0, v19

    iget-wide v4, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-object/from16 v0, v19

    iget-wide v6, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-object/from16 v0, v23

    iget-wide v8, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-object/from16 v0, v23

    iget-wide v10, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual/range {v3 .. v11}, Lcom/fimi/app/x8s/tools/GpsPointTools;->getSymmetryPoint(DDDD)[D

    move-result-object v25

    .line 67
    .restart local v25    # "sysPoint":[D
    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    const/4 v4, 0x0

    aget-wide v4, v25, v4

    const/4 v6, 0x1

    aget-wide v6, v25, v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->C3:Lcom/google/android/gms/maps/model/LatLng;

    .line 70
    .end local v25    # "sysPoint":[D
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->B3:Lcom/google/android/gms/maps/model/LatLng;

    if-nez v3, :cond_2

    .line 71
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->mGpsPointTools:Lcom/fimi/app/x8s/tools/GpsPointTools;

    move-object/from16 v0, v17

    iget-wide v4, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-object/from16 v0, v17

    iget-wide v6, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-object/from16 v0, v23

    iget-wide v8, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-object/from16 v0, v23

    iget-wide v10, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual/range {v3 .. v11}, Lcom/fimi/app/x8s/tools/GpsPointTools;->getSymmetryPoint(DDDD)[D

    move-result-object v25

    .line 72
    .restart local v25    # "sysPoint":[D
    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    const/4 v4, 0x0

    aget-wide v4, v25, v4

    const/4 v6, 0x1

    aget-wide v6, v25, v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->B3:Lcom/google/android/gms/maps/model/LatLng;

    .line 75
    .end local v25    # "sysPoint":[D
    :cond_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->B4:Lcom/google/android/gms/maps/model/LatLng;

    if-nez v3, :cond_3

    .line 76
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->mGpsPointTools:Lcom/fimi/app/x8s/tools/GpsPointTools;

    move-object/from16 v0, v18

    iget-wide v4, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-object/from16 v0, v18

    iget-wide v6, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-object/from16 v0, v23

    iget-wide v8, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-object/from16 v0, v23

    iget-wide v10, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual/range {v3 .. v11}, Lcom/fimi/app/x8s/tools/GpsPointTools;->getSymmetryPoint(DDDD)[D

    move-result-object v25

    .line 77
    .restart local v25    # "sysPoint":[D
    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    const/4 v4, 0x0

    aget-wide v4, v25, v4

    const/4 v6, 0x1

    aget-wide v6, v25, v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->B4:Lcom/google/android/gms/maps/model/LatLng;

    .line 80
    .end local v25    # "sysPoint":[D
    :cond_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->C4:Lcom/google/android/gms/maps/model/LatLng;

    if-nez v3, :cond_4

    .line 81
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->mGpsPointTools:Lcom/fimi/app/x8s/tools/GpsPointTools;

    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-object/from16 v0, v20

    iget-wide v6, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-object/from16 v0, v23

    iget-wide v8, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-object/from16 v0, v23

    iget-wide v10, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual/range {v3 .. v11}, Lcom/fimi/app/x8s/tools/GpsPointTools;->getSymmetryPoint(DDDD)[D

    move-result-object v25

    .line 82
    .restart local v25    # "sysPoint":[D
    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    const/4 v4, 0x0

    aget-wide v4, v25, v4

    const/4 v6, 0x1

    aget-wide v6, v25, v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->C4:Lcom/google/android/gms/maps/model/LatLng;

    .line 85
    .end local v25    # "sysPoint":[D
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->A4:Lcom/google/android/gms/maps/model/LatLng;

    if-nez v3, :cond_5

    .line 86
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->mGpsPointTools:Lcom/fimi/app/x8s/tools/GpsPointTools;

    move-object/from16 v0, v16

    iget-wide v4, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-object/from16 v0, v16

    iget-wide v6, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-object/from16 v0, v23

    iget-wide v8, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-object/from16 v0, v23

    iget-wide v10, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual/range {v3 .. v11}, Lcom/fimi/app/x8s/tools/GpsPointTools;->getSymmetryPoint(DDDD)[D

    move-result-object v25

    .line 87
    .restart local v25    # "sysPoint":[D
    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    const/4 v4, 0x0

    aget-wide v4, v25, v4

    const/4 v6, 0x1

    aget-wide v6, v25, v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->A4:Lcom/google/android/gms/maps/model/LatLng;

    .line 90
    .end local v25    # "sysPoint":[D
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->D3:Lcom/google/android/gms/maps/model/LatLng;

    if-nez v3, :cond_6

    .line 91
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->mGpsPointTools:Lcom/fimi/app/x8s/tools/GpsPointTools;

    move-object/from16 v0, v21

    iget-wide v4, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-object/from16 v0, v21

    iget-wide v6, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-object/from16 v0, v23

    iget-wide v8, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-object/from16 v0, v23

    iget-wide v10, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual/range {v3 .. v11}, Lcom/fimi/app/x8s/tools/GpsPointTools;->getSymmetryPoint(DDDD)[D

    move-result-object v25

    .line 92
    .restart local v25    # "sysPoint":[D
    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    const/4 v4, 0x0

    aget-wide v4, v25, v4

    const/4 v6, 0x1

    aget-wide v6, v25, v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->D3:Lcom/google/android/gms/maps/model/LatLng;

    .line 95
    .end local v25    # "sysPoint":[D
    :cond_6
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->D4:Lcom/google/android/gms/maps/model/LatLng;

    if-nez v3, :cond_7

    .line 96
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->mGpsPointTools:Lcom/fimi/app/x8s/tools/GpsPointTools;

    move-object/from16 v0, v22

    iget-wide v4, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-object/from16 v0, v22

    iget-wide v6, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-object/from16 v0, v23

    iget-wide v8, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-object/from16 v0, v23

    iget-wide v10, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual/range {v3 .. v11}, Lcom/fimi/app/x8s/tools/GpsPointTools;->getSymmetryPoint(DDDD)[D

    move-result-object v25

    .line 97
    .restart local v25    # "sysPoint":[D
    new-instance v3, Lcom/google/android/gms/maps/model/LatLng;

    const/4 v4, 0x0

    aget-wide v4, v25, v4

    const/4 v6, 0x1

    aget-wide v6, v25, v6

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->D4:Lcom/google/android/gms/maps/model/LatLng;

    .line 99
    .end local v25    # "sysPoint":[D
    :cond_7
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->latLngsNofly:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 100
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->latLngsNofly:Ljava/util/List;

    move-object/from16 v0, v16

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 101
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->latLngsNofly:Ljava/util/List;

    move-object/from16 v0, v20

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->pointArcs1:[[D

    if-nez v3, :cond_8

    .line 103
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->mGpsPointTools:Lcom/fimi/app/x8s/tools/GpsPointTools;

    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-object/from16 v0, v20

    iget-wide v6, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-object/from16 v0, v18

    iget-wide v8, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-object/from16 v0, v18

    iget-wide v10, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-object/from16 v0, v23

    iget-wide v12, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-object/from16 v0, v23

    iget-wide v14, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual/range {v3 .. v15}, Lcom/fimi/app/x8s/tools/GpsPointTools;->gpsPointDrawArc(DDDDDD)[[D

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->pointArcs1:[[D

    .line 106
    :cond_8
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->pointArcs1:[[D

    array-length v3, v3

    move/from16 v0, v24

    if-ge v0, v3, :cond_9

    .line 107
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->latLngsNofly:Ljava/util/List;

    new-instance v4, Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->pointArcs1:[[D

    aget-object v5, v5, v24

    const/4 v6, 0x0

    aget-wide v6, v5, v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->pointArcs1:[[D

    aget-object v5, v5, v24

    const/4 v8, 0x1

    aget-wide v8, v5, v8

    invoke-direct {v4, v6, v7, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 106
    add-int/lit8 v24, v24, 0x1

    goto :goto_0

    .line 109
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->latLngsNofly:Ljava/util/List;

    move-object/from16 v0, v18

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 110
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->latLngsNofly:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->B3:Lcom/google/android/gms/maps/model/LatLng;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 111
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->pointArcs2:[[D

    if-nez v3, :cond_a

    .line 112
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->mGpsPointTools:Lcom/fimi/app/x8s/tools/GpsPointTools;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->B3:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v4, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->B3:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v6, v6, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->C3:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v8, v8, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->C3:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v10, v10, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-object/from16 v0, v23

    iget-wide v12, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-object/from16 v0, v23

    iget-wide v14, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual/range {v3 .. v15}, Lcom/fimi/app/x8s/tools/GpsPointTools;->gpsPointDrawArc(DDDDDD)[[D

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->pointArcs2:[[D

    .line 115
    :cond_a
    const/16 v24, 0x0

    :goto_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->pointArcs2:[[D

    array-length v3, v3

    move/from16 v0, v24

    if-ge v0, v3, :cond_b

    .line 116
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->latLngsNofly:Ljava/util/List;

    new-instance v4, Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->pointArcs2:[[D

    aget-object v5, v5, v24

    const/4 v6, 0x0

    aget-wide v6, v5, v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->pointArcs2:[[D

    aget-object v5, v5, v24

    const/4 v8, 0x1

    aget-wide v8, v5, v8

    invoke-direct {v4, v6, v7, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 115
    add-int/lit8 v24, v24, 0x1

    goto :goto_1

    .line 118
    :cond_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->latLngsNofly:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->C3:Lcom/google/android/gms/maps/model/LatLng;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 119
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->latLngsNofly:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->A3:Lcom/google/android/gms/maps/model/LatLng;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 120
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->latLngsNofly:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->A4:Lcom/google/android/gms/maps/model/LatLng;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 121
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->latLngsNofly:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->C4:Lcom/google/android/gms/maps/model/LatLng;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 122
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->pointArcs3:[[D

    if-nez v3, :cond_c

    .line 123
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->mGpsPointTools:Lcom/fimi/app/x8s/tools/GpsPointTools;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->C4:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v4, v4, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->C4:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v6, v6, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->B4:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v8, v8, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-object/from16 v0, p0

    iget-object v10, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->B4:Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v10, v10, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-object/from16 v0, v23

    iget-wide v12, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-object/from16 v0, v23

    iget-wide v14, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual/range {v3 .. v15}, Lcom/fimi/app/x8s/tools/GpsPointTools;->gpsPointDrawArc(DDDDDD)[[D

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->pointArcs3:[[D

    .line 126
    :cond_c
    const/16 v24, 0x0

    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->pointArcs3:[[D

    array-length v3, v3

    move/from16 v0, v24

    if-ge v0, v3, :cond_d

    .line 127
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->latLngsNofly:Ljava/util/List;

    new-instance v4, Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->pointArcs3:[[D

    aget-object v5, v5, v24

    const/4 v6, 0x0

    aget-wide v6, v5, v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->pointArcs3:[[D

    aget-object v5, v5, v24

    const/4 v8, 0x1

    aget-wide v8, v5, v8

    invoke-direct {v4, v6, v7, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 126
    add-int/lit8 v24, v24, 0x1

    goto :goto_2

    .line 129
    :cond_d
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->latLngsNofly:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->B4:Lcom/google/android/gms/maps/model/LatLng;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 130
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->latLngsNofly:Ljava/util/List;

    move-object/from16 v0, v17

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 131
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->pointArcs4:[[D

    if-nez v3, :cond_e

    .line 132
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->mGpsPointTools:Lcom/fimi/app/x8s/tools/GpsPointTools;

    move-object/from16 v0, v17

    iget-wide v4, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-object/from16 v0, v17

    iget-wide v6, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-object/from16 v0, v19

    iget-wide v8, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-object/from16 v0, v19

    iget-wide v10, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-object/from16 v0, v23

    iget-wide v12, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-object/from16 v0, v23

    iget-wide v14, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-virtual/range {v3 .. v15}, Lcom/fimi/app/x8s/tools/GpsPointTools;->gpsPointDrawArc(DDDDDD)[[D

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->pointArcs4:[[D

    .line 135
    :cond_e
    const/16 v24, 0x0

    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->pointArcs4:[[D

    array-length v3, v3

    move/from16 v0, v24

    if-ge v0, v3, :cond_f

    .line 136
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->latLngsNofly:Ljava/util/List;

    new-instance v4, Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->pointArcs4:[[D

    aget-object v5, v5, v24

    const/4 v6, 0x0

    aget-wide v6, v5, v6

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->pointArcs4:[[D

    aget-object v5, v5, v24

    const/4 v8, 0x1

    aget-wide v8, v5, v8

    invoke-direct {v4, v6, v7, v8, v9}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 135
    add-int/lit8 v24, v24, 0x1

    goto :goto_3

    .line 139
    :cond_f
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->candyPolygonOptions:Lcom/google/android/gms/maps/model/PolygonOptions;

    if-nez v3, :cond_10

    .line 140
    new-instance v3, Lcom/google/android/gms/maps/model/PolygonOptions;

    invoke-direct {v3}, Lcom/google/android/gms/maps/model/PolygonOptions;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->latLngsNofly:Ljava/util/List;

    .line 141
    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/model/PolygonOptions;->addAll(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolygonOptions;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->fillColor:I

    .line 142
    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/model/PolygonOptions;->fillColor(I)Lcom/google/android/gms/maps/model/PolygonOptions;

    move-result-object v3

    const/4 v4, 0x0

    .line 143
    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/model/PolygonOptions;->strokeWidth(F)Lcom/google/android/gms/maps/model/PolygonOptions;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->candyPolygonOptions:Lcom/google/android/gms/maps/model/PolygonOptions;

    .line 146
    :cond_10
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->candyPolygonOptions:Lcom/google/android/gms/maps/model/PolygonOptions;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/GoogleMap;->addPolygon(Lcom/google/android/gms/maps/model/PolygonOptions;)Lcom/google/android/gms/maps/model/Polygon;

    .line 150
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->latLngs:Ljava/util/List;

    move-object/from16 v0, v21

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 151
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->latLngs:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->D4:Lcom/google/android/gms/maps/model/LatLng;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 152
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->latLngs:Ljava/util/List;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->D3:Lcom/google/android/gms/maps/model/LatLng;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 153
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->latLngs:Ljava/util/List;

    move-object/from16 v0, v22

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 155
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->polygonOptions:Lcom/google/android/gms/maps/model/PolygonOptions;

    if-nez v3, :cond_11

    .line 156
    new-instance v3, Lcom/google/android/gms/maps/model/PolygonOptions;

    invoke-direct {v3}, Lcom/google/android/gms/maps/model/PolygonOptions;-><init>()V

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->latLngs:Ljava/util/List;

    .line 157
    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/model/PolygonOptions;->addAll(Ljava/lang/Iterable;)Lcom/google/android/gms/maps/model/PolygonOptions;

    move-result-object v3

    move-object/from16 v0, p0

    iget v4, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->fillColorHeightLimit:I

    .line 158
    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/model/PolygonOptions;->fillColor(I)Lcom/google/android/gms/maps/model/PolygonOptions;

    move-result-object v3

    const/4 v4, 0x0

    .line 159
    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/model/PolygonOptions;->strokeWidth(F)Lcom/google/android/gms/maps/model/PolygonOptions;

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->polygonOptions:Lcom/google/android/gms/maps/model/PolygonOptions;

    .line 161
    :cond_11
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->polygonOptions:Lcom/google/android/gms/maps/model/PolygonOptions;

    invoke-virtual {v3, v4}, Lcom/google/android/gms/maps/GoogleMap;->addPolygon(Lcom/google/android/gms/maps/model/PolygonOptions;)Lcom/google/android/gms/maps/model/Polygon;

    .line 162
    return-void
.end method

.method public drawCircleNoFlyZone(Lcom/google/android/gms/maps/model/LatLng;I)V
    .locals 4
    .param p1, "centerLatLng"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "radius"    # I

    .prologue
    .line 166
    iget-object v0, p0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->circleOptions:Lcom/google/android/gms/maps/model/CircleOptions;

    if-nez v0, :cond_0

    .line 167
    new-instance v0, Lcom/google/android/gms/maps/model/CircleOptions;

    invoke-direct {v0}, Lcom/google/android/gms/maps/model/CircleOptions;-><init>()V

    .line 168
    invoke-virtual {v0, p1}, Lcom/google/android/gms/maps/model/CircleOptions;->center(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v0

    iget v1, p0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->fillColor:I

    .line 169
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/CircleOptions;->fillColor(I)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v0

    const/4 v1, 0x0

    .line 170
    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/CircleOptions;->strokeWidth(F)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v0

    int-to-double v2, p2

    .line 171
    invoke-virtual {v0, v2, v3}, Lcom/google/android/gms/maps/model/CircleOptions;->radius(D)Lcom/google/android/gms/maps/model/CircleOptions;

    move-result-object v0

    iput-object v0, p0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->circleOptions:Lcom/google/android/gms/maps/model/CircleOptions;

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    iget-object v1, p0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->circleOptions:Lcom/google/android/gms/maps/model/CircleOptions;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->addCircle(Lcom/google/android/gms/maps/model/CircleOptions;)Lcom/google/android/gms/maps/model/Circle;

    .line 176
    return-void
.end method

.method public drawIrregularNoFlyZone([Lcom/google/android/gms/maps/model/LatLng;Z)V
    .locals 3
    .param p1, "lats"    # [Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "isNoFly"    # Z

    .prologue
    .line 179
    iget-object v1, p0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->options:Lcom/google/android/gms/maps/model/PolygonOptions;

    if-nez v1, :cond_1

    .line 180
    new-instance v1, Lcom/google/android/gms/maps/model/PolygonOptions;

    invoke-direct {v1}, Lcom/google/android/gms/maps/model/PolygonOptions;-><init>()V

    iput-object v1, p0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->options:Lcom/google/android/gms/maps/model/PolygonOptions;

    .line 181
    iget-object v1, p0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->options:Lcom/google/android/gms/maps/model/PolygonOptions;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/PolygonOptions;->strokeWidth(F)Lcom/google/android/gms/maps/model/PolygonOptions;

    move-result-object v1

    iget v2, p0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->strokeColor:I

    .line 182
    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/PolygonOptions;->strokeColor(I)Lcom/google/android/gms/maps/model/PolygonOptions;

    .line 183
    if-eqz p2, :cond_0

    .line 184
    iget-object v1, p0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->options:Lcom/google/android/gms/maps/model/PolygonOptions;

    iget v2, p0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->fillColor:I

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/PolygonOptions;->fillColor(I)Lcom/google/android/gms/maps/model/PolygonOptions;

    .line 188
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    array-length v1, p1

    if-ge v0, v1, :cond_1

    .line 189
    iget-object v1, p0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->options:Lcom/google/android/gms/maps/model/PolygonOptions;

    aget-object v2, p1, v0

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/PolygonOptions;->add(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolygonOptions;

    .line 188
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 186
    .end local v0    # "i":I
    :cond_0
    iget-object v1, p0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->options:Lcom/google/android/gms/maps/model/PolygonOptions;

    iget v2, p0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->fillColorHeightLimit:I

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/model/PolygonOptions;->fillColor(I)Lcom/google/android/gms/maps/model/PolygonOptions;

    goto :goto_0

    .line 192
    :cond_1
    iget-object v1, p0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->googleMap:Lcom/google/android/gms/maps/GoogleMap;

    iget-object v2, p0, Lcom/fimi/app/x8s/map/model/GglMapNoFlyZone;->options:Lcom/google/android/gms/maps/model/PolygonOptions;

    invoke-virtual {v1, v2}, Lcom/google/android/gms/maps/GoogleMap;->addPolygon(Lcom/google/android/gms/maps/model/PolygonOptions;)Lcom/google/android/gms/maps/model/Polygon;

    .line 193
    return-void
.end method
