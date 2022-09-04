.class public Lcom/fimi/app/x8s/tools/GeoTools;
.super Ljava/lang/Object;
.source "GeoTools.java"


# static fields
.field private static final RADIUS_OF_EARTH:D = 6372797.560856


# instance fields
.field public waypoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 21
    return-void
.end method

.method public static drawDashedPolyLine(Lcom/google/android/gms/maps/GoogleMap;Ljava/util/ArrayList;I)Ljava/util/List;
    .locals 22
    .param p0, "mMap"    # Lcom/google/android/gms/maps/GoogleMap;
    .param p2, "color"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/maps/GoogleMap;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/google/android/gms/maps/model/LatLng;",
            ">;I)",
            "Ljava/util/List",
            "<",
            "Lcom/google/android/gms/maps/model/Polyline;",
            ">;"
        }
    .end annotation

    .prologue
    .line 129
    .local p1, "listOfPoints":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Lcom/google/android/gms/maps/model/LatLng;>;"
    new-instance v17, Ljava/util/ArrayList;

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    .line 130
    .local v17, "tracklines":Ljava/util/List;, "Ljava/util/List<Lcom/google/android/gms/maps/model/Polyline;>;"
    const/16 v16, 0x0

    .line 131
    .local v16, "trackline":Lcom/google/android/gms/maps/model/Polyline;
    const/4 v4, 0x0

    .line 132
    .local v4, "added":Z
    const/4 v8, 0x0

    .local v8, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/util/ArrayList;->size()I

    move-result v18

    add-int/lit8 v18, v18, -0x1

    move/from16 v0, v18

    if-ge v8, v0, :cond_4

    .line 134
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/google/android/gms/maps/model/LatLng;

    add-int/lit8 v19, v8, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Lcom/google/android/gms/maps/model/LatLng;

    invoke-static/range {v18 .. v19}, Lcom/fimi/app/x8s/tools/GeoTools;->getConvertedDistance(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D

    move-result-wide v6

    .line 137
    .local v6, "distance":D
    const-wide v18, 0x3f947ae147ae147bL    # 0.02

    cmpg-double v18, v6, v18

    if-gez v18, :cond_2

    .line 138
    if-nez v4, :cond_1

    .line 139
    new-instance v19, Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-direct/range {v19 .. v19}, Lcom/google/android/gms/maps/model/PolylineOptions;-><init>()V

    .line 140
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolylineOptions;->add(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v19

    add-int/lit8 v18, v8, 0x1

    .line 141
    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolylineOptions;->add(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v18

    .line 142
    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolylineOptions;->color(I)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v18

    .line 139
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->addPolyline(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v16

    .line 143
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 144
    const/4 v4, 0x1

    .line 132
    :cond_0
    :goto_1
    add-int/lit8 v8, v8, 0x1

    goto :goto_0

    .line 146
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 150
    :cond_2
    const-wide v18, 0x3f947ae147ae147bL    # 0.02

    div-double v18, v6, v18

    move-wide/from16 v0, v18

    double-to-int v5, v0

    .line 153
    .local v5, "countOfDivisions":I
    add-int/lit8 v18, v8, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-wide/from16 v20, v0

    .line 154
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-wide/from16 v18, v0

    sub-double v18, v20, v18

    int-to-double v0, v5

    move-wide/from16 v20, v0

    div-double v12, v18, v20

    .line 155
    .local v12, "latdiff":D
    add-int/lit8 v18, v8, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-wide/from16 v20, v0

    .line 156
    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-wide/from16 v18, v0

    sub-double v18, v20, v18

    int-to-double v0, v5

    move-wide/from16 v20, v0

    div-double v14, v18, v20

    .line 159
    .local v14, "lngdiff":D
    new-instance v10, Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-wide/from16 v20, v0

    move-object/from16 v0, p1

    invoke-virtual {v0, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/google/android/gms/maps/model/LatLng;

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-wide/from16 v18, v0

    move-wide/from16 v0, v20

    move-wide/from16 v2, v18

    invoke-direct {v10, v0, v1, v2, v3}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 160
    .local v10, "lastKnowLatLng":Lcom/google/android/gms/maps/model/LatLng;
    const/4 v9, 0x0

    .local v9, "j":I
    :goto_2
    if-ge v9, v5, :cond_0

    .line 163
    new-instance v11, Lcom/google/android/gms/maps/model/LatLng;

    iget-wide v0, v10, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    move-wide/from16 v18, v0

    add-double v18, v18, v12

    iget-wide v0, v10, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-wide/from16 v20, v0

    add-double v20, v20, v14

    move-wide/from16 v0, v18

    move-wide/from16 v2, v20

    invoke-direct {v11, v0, v1, v2, v3}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    .line 164
    .local v11, "nextLatLng":Lcom/google/android/gms/maps/model/LatLng;
    if-nez v4, :cond_3

    .line 165
    new-instance v18, Lcom/google/android/gms/maps/model/PolylineOptions;

    invoke-direct/range {v18 .. v18}, Lcom/google/android/gms/maps/model/PolylineOptions;-><init>()V

    .line 166
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Lcom/google/android/gms/maps/model/PolylineOptions;->add(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v18

    .line 167
    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Lcom/google/android/gms/maps/model/PolylineOptions;->add(Lcom/google/android/gms/maps/model/LatLng;)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v18

    .line 168
    move-object/from16 v0, v18

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/model/PolylineOptions;->color(I)Lcom/google/android/gms/maps/model/PolylineOptions;

    move-result-object v18

    .line 165
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/google/android/gms/maps/GoogleMap;->addPolyline(Lcom/google/android/gms/maps/model/PolylineOptions;)Lcom/google/android/gms/maps/model/Polyline;

    move-result-object v16

    .line 169
    move-object/from16 v0, v17

    move-object/from16 v1, v16

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 170
    const/4 v4, 0x1

    .line 174
    :goto_3
    move-object v10, v11

    .line 160
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 172
    :cond_3
    const/4 v4, 0x0

    goto :goto_3

    .line 179
    .end local v5    # "countOfDivisions":I
    .end local v6    # "distance":D
    .end local v9    # "j":I
    .end local v10    # "lastKnowLatLng":Lcom/google/android/gms/maps/model/LatLng;
    .end local v11    # "nextLatLng":Lcom/google/android/gms/maps/model/LatLng;
    .end local v12    # "latdiff":D
    .end local v14    # "lngdiff":D
    :cond_4
    return-object v17
.end method

.method public static getAproximatedDistance(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)Ljava/lang/Double;
    .locals 6
    .param p0, "p1"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p1, "p2"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 29
    iget-wide v0, p0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v2, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    sub-double/2addr v0, v2

    iget-wide v2, p0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iget-wide v4, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    sub-double/2addr v2, v4

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->hypot(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0
.end method

.method public static getArcInRadians(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D
    .locals 14
    .param p0, "from"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p1, "to"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 79
    iget-wide v10, p0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    iget-wide v12, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    sub-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v0

    .line 80
    .local v0, "latitudeArc":D
    iget-wide v10, p0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    iget-wide v12, p1, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    sub-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    .line 82
    .local v4, "longitudeArc":D
    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v10, v0

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v2

    .line 83
    .local v2, "latitudeH":D
    mul-double/2addr v2, v2

    .line 84
    const-wide/high16 v10, 0x3fe0000000000000L    # 0.5

    mul-double/2addr v10, v4

    invoke-static {v10, v11}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    .line 85
    .local v6, "lontitudeH":D
    mul-double/2addr v6, v6

    .line 87
    iget-wide v10, p0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    invoke-static {v10, v11}, Ljava/lang/Math;->cos(D)D

    move-result-wide v10

    iget-wide v12, p1, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    .line 88
    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    mul-double v8, v10, v12

    .line 89
    .local v8, "tmp":D
    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    mul-double v12, v8, v6

    add-double/2addr v12, v2

    invoke-static {v12, v13}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->asin(D)D

    move-result-wide v12

    mul-double/2addr v10, v12

    invoke-static {v10, v11}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v10

    return-wide v10
.end method

.method private static getConvertedDistance(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D
    .locals 6
    .param p0, "latlng1"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p1, "latlng2"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 183
    invoke-static {p0, p1}, Lcom/fimi/app/x8s/tools/GeoTools;->getDistance(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)Lcom/fimi/x8sdk/util/Length;

    move-result-object v4

    invoke-virtual {v4}, Lcom/fimi/x8sdk/util/Length;->valueInMeters()D

    move-result-wide v2

    .line 184
    .local v2, "distance":D
    new-instance v0, Ljava/math/BigDecimal;

    invoke-direct {v0, v2, v3}, Ljava/math/BigDecimal;-><init>(D)V

    .line 185
    .local v0, "bd":Ljava/math/BigDecimal;
    const/4 v4, 0x3

    sget-object v5, Ljava/math/RoundingMode;->DOWN:Ljava/math/RoundingMode;

    invoke-virtual {v0, v4, v5}, Ljava/math/BigDecimal;->setScale(ILjava/math/RoundingMode;)Ljava/math/BigDecimal;

    move-result-object v1

    .line 186
    .local v1, "res":Ljava/math/BigDecimal;
    invoke-virtual {v1}, Ljava/math/BigDecimal;->doubleValue()D

    move-result-wide v4

    return-wide v4
.end method

.method public static getDistance(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)Lcom/fimi/x8sdk/util/Length;
    .locals 6
    .param p0, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p1, "latLng2"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 99
    new-instance v0, Lcom/fimi/x8sdk/util/Length;

    const-wide v2, 0x41584f6f63e51090L    # 6372797.560856

    invoke-static {p0, p1}, Lcom/fimi/app/x8s/tools/GeoTools;->getArcInRadians(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    invoke-direct {v0, v2, v3}, Lcom/fimi/x8sdk/util/Length;-><init>(D)V

    return-object v0
.end method

.method public static getHeadingFromCoordinates(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)D
    .locals 20
    .param p0, "fromLoc"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p1, "toLoc"    # Lcom/google/android/gms/maps/model/LatLng;

    .prologue
    .line 108
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v4

    .line 109
    .local v4, "fLat":D
    move-object/from16 v0, p0

    iget-wide v12, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    .line 110
    .local v6, "fLng":D
    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v8

    .line 111
    .local v8, "tLat":D
    move-object/from16 v0, p1

    iget-wide v12, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    invoke-static {v12, v13}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v10

    .line 113
    .local v10, "tLng":D
    sub-double v12, v10, v6

    .line 114
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v12

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    .line 115
    invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    mul-double v14, v14, v16

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    .line 116
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    sub-double v18, v10, v6

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v16, v16, v18

    sub-double v14, v14, v16

    .line 113
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    .line 118
    .local v2, "degree":D
    const-wide/16 v12, 0x0

    cmpl-double v12, v2, v12

    if-ltz v12, :cond_0

    .line 121
    .end local v2    # "degree":D
    :goto_0
    return-wide v2

    .restart local v2    # "degree":D
    :cond_0
    const-wide v12, 0x4076800000000000L    # 360.0

    add-double/2addr v2, v12

    goto :goto_0
.end method

.method public static getScale(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;I)F
    .locals 4
    .param p0, "latLng"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p1, "latLng2"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p2, "pix"    # I

    .prologue
    .line 189
    invoke-static {p0, p1}, Lcom/fimi/app/x8s/tools/GeoTools;->getDistance(Lcom/google/android/gms/maps/model/LatLng;Lcom/google/android/gms/maps/model/LatLng;)Lcom/fimi/x8sdk/util/Length;

    move-result-object v1

    invoke-virtual {v1}, Lcom/fimi/x8sdk/util/Length;->valueInMeters()D

    move-result-wide v2

    double-to-float v0, v2

    .line 190
    .local v0, "distance":F
    int-to-float v1, p2

    div-float/2addr v1, v0

    return v1
.end method

.method public static latToMeters(D)Ljava/lang/Double;
    .locals 4
    .param p0, "lat"    # D

    .prologue
    .line 39
    const-wide v0, 0x4158549d00000000L    # 6378100.0

    .line 40
    .local v0, "radius_of_earth":D
    invoke-static {p0, p1}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v2

    mul-double/2addr v2, v0

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    return-object v2
.end method

.method public static metersTolat(D)Ljava/lang/Double;
    .locals 4
    .param p0, "meters"    # D

    .prologue
    .line 34
    const-wide v0, 0x4158549d00000000L    # 6378100.0

    .line 35
    .local v0, "radius_of_earth":D
    div-double v2, p0, v0

    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    return-object v2
.end method

.method public static newCoordFromBearingAndDistance(Lcom/google/android/gms/maps/model/LatLng;DD)Lcom/google/android/gms/maps/model/LatLng;
    .locals 31
    .param p0, "origin"    # Lcom/google/android/gms/maps/model/LatLng;
    .param p1, "bearing"    # D
    .param p3, "distance"    # D

    .prologue
    .line 55
    move-object/from16 v0, p0

    iget-wide v10, v0, Lcom/google/android/gms/maps/model/LatLng;->latitude:D

    .line 56
    .local v10, "lat":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/google/android/gms/maps/model/LatLng;->longitude:D

    move-wide/from16 v16, v0

    .line 57
    .local v16, "lon":D
    invoke-static {v10, v11}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v12

    .line 58
    .local v12, "lat1":D
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v18

    .line 59
    .local v18, "lon1":D
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v6

    .line 60
    .local v6, "brng":D
    const-wide v22, 0x41584f6f63e51090L    # 6372797.560856

    div-double v8, p3, v22

    .line 62
    .local v8, "dr":D
    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    mul-double v22, v22, v24

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    .line 63
    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    mul-double v24, v24, v26

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v26

    mul-double v24, v24, v26

    add-double v22, v22, v24

    .line 62
    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->asin(D)D

    move-result-wide v14

    .line 65
    .local v14, "lat2":D
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v22

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v24

    mul-double v22, v22, v24

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    mul-double v22, v22, v24

    .line 66
    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    invoke-static {v12, v13}, Ljava/lang/Math;->sin(D)D

    move-result-wide v26

    invoke-static {v14, v15}, Ljava/lang/Math;->sin(D)D

    move-result-wide v28

    mul-double v26, v26, v28

    sub-double v24, v24, v26

    .line 65
    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v22

    add-double v20, v18, v22

    .line 68
    .local v20, "lon2":D
    new-instance v22, Lcom/google/android/gms/maps/model/LatLng;

    invoke-static {v14, v15}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v24

    invoke-static/range {v20 .. v21}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v26

    move-object/from16 v0, v22

    move-wide/from16 v1, v24

    move-wide/from16 v3, v26

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/google/android/gms/maps/model/LatLng;-><init>(DD)V

    return-object v22
.end method
