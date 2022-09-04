.class public Lcom/fimi/x8sdk/util/GpsCorrect;
.super Ljava/lang/Object;
.source "GpsCorrect.java"


# static fields
.field static final a:D = 6378245.0

.field static final ee:D = 0.006693421622965943

.field static final pi:D = 3.141592653589793


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static Earth_To_Mars(DD)Lcom/fimi/x8sdk/entity/FLatLng;
    .locals 26
    .param p0, "srclat"    # D
    .param p2, "srclon"    # D

    .prologue
    .line 60
    invoke-static {}, Lcom/fimi/x8sdk/common/GlobalConfig;->getInstance()Lcom/fimi/x8sdk/common/GlobalConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/fimi/x8sdk/common/GlobalConfig;->getMapType()Lcom/fimi/x8sdk/map/MapType;

    move-result-object v9

    sget-object v20, Lcom/fimi/x8sdk/map/MapType;->AMap:Lcom/fimi/x8sdk/map/MapType;

    move-object/from16 v0, v20

    if-ne v9, v0, :cond_1

    .line 61
    invoke-static {}, Lcom/fimi/x8sdk/common/GlobalConfig;->getInstance()Lcom/fimi/x8sdk/common/GlobalConfig;

    move-result-object v9

    invoke-virtual {v9}, Lcom/fimi/x8sdk/common/GlobalConfig;->isRectification()Z

    move-result v9

    if-eqz v9, :cond_0

    .line 62
    const-wide v20, 0x405a400000000000L    # 105.0

    sub-double v20, p2, v20

    const-wide v22, 0x4041800000000000L    # 35.0

    sub-double v22, p0, v22

    invoke-static/range {v20 .. v23}, Lcom/fimi/x8sdk/util/GpsCorrect;->transformLat(DD)D

    move-result-wide v4

    .line 63
    .local v4, "dLat":D
    const-wide v20, 0x405a400000000000L    # 105.0

    sub-double v20, p2, v20

    const-wide v22, 0x4041800000000000L    # 35.0

    sub-double v22, p0, v22

    invoke-static/range {v20 .. v23}, Lcom/fimi/x8sdk/util/GpsCorrect;->transformLon(DD)D

    move-result-wide v6

    .line 64
    .local v6, "dLon":D
    const-wide v20, 0x4066800000000000L    # 180.0

    div-double v20, p0, v20

    const-wide v22, 0x400921fb54442d18L    # Math.PI

    mul-double v16, v20, v22

    .line 65
    .local v16, "radLat":D
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    .line 66
    .local v14, "magic":D
    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    const-wide v22, 0x3f7b6a8faf80ef0bL    # 0.006693421622965943

    mul-double v22, v22, v14

    mul-double v22, v22, v14

    sub-double v14, v20, v22

    .line 67
    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    .line 68
    .local v18, "sqrtMagic":D
    const-wide v20, 0x4066800000000000L    # 180.0

    mul-double v20, v20, v4

    const-wide v22, 0x41582b102de355c1L    # 6335552.717000426

    mul-double v24, v14, v18

    div-double v22, v22, v24

    const-wide v24, 0x400921fb54442d18L    # Math.PI

    mul-double v22, v22, v24

    div-double v4, v20, v22

    .line 69
    const-wide v20, 0x4066800000000000L    # 180.0

    mul-double v20, v20, v6

    const-wide v22, 0x415854c140000000L    # 6378245.0

    div-double v22, v22, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    mul-double v22, v22, v24

    const-wide v24, 0x400921fb54442d18L    # Math.PI

    mul-double v22, v22, v24

    div-double v6, v20, v22

    .line 70
    add-double v10, p0, v4

    .line 71
    .local v10, "latlat":D
    add-double v12, p2, v6

    .line 72
    .local v12, "latlon":D
    new-instance v8, Lcom/fimi/x8sdk/entity/FLatLng;

    invoke-direct {v8, v10, v11, v12, v13}, Lcom/fimi/x8sdk/entity/FLatLng;-><init>(DD)V

    .line 80
    .end local v4    # "dLat":D
    .end local v6    # "dLon":D
    .end local v10    # "latlat":D
    .end local v12    # "latlon":D
    .end local v14    # "magic":D
    .end local v16    # "radLat":D
    .end local v18    # "sqrtMagic":D
    .local v8, "latitudelongitude":Lcom/fimi/x8sdk/entity/FLatLng;
    :goto_0
    return-object v8

    .line 75
    .end local v8    # "latitudelongitude":Lcom/fimi/x8sdk/entity/FLatLng;
    :cond_0
    new-instance v8, Lcom/fimi/x8sdk/entity/FLatLng;

    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    invoke-direct {v8, v0, v1, v2, v3}, Lcom/fimi/x8sdk/entity/FLatLng;-><init>(DD)V

    .line 76
    .restart local v8    # "latitudelongitude":Lcom/fimi/x8sdk/entity/FLatLng;
    goto :goto_0

    .line 79
    .end local v8    # "latitudelongitude":Lcom/fimi/x8sdk/entity/FLatLng;
    :cond_1
    new-instance v8, Lcom/fimi/x8sdk/entity/FLatLng;

    move-wide/from16 v0, p0

    move-wide/from16 v2, p2

    invoke-direct {v8, v0, v1, v2, v3}, Lcom/fimi/x8sdk/entity/FLatLng;-><init>(DD)V

    .line 80
    .restart local v8    # "latitudelongitude":Lcom/fimi/x8sdk/entity/FLatLng;
    goto :goto_0
.end method

.method static Get_Distance2(DDDD)D
    .locals 18
    .param p0, "lng0"    # D
    .param p2, "lat0"    # D
    .param p4, "lng1"    # D
    .param p6, "lat1"    # D

    .prologue
    .line 114
    sub-double v0, p2, p6

    .line 115
    .local v0, "dlat":D
    sub-double v2, p0, p4

    .line 116
    .local v2, "dlng":D
    invoke-static/range {p2 .. p3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v12

    const-wide v14, 0x3f91df46a1fae711L    # 0.0174532925

    mul-double/2addr v12, v14

    double-to-float v7, v12

    .line 117
    .local v7, "tmp":F
    float-to-double v12, v7

    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v12

    double-to-float v6, v12

    .line 118
    .local v6, "scalelongdown0":F
    double-to-float v12, v2

    mul-float/2addr v12, v6

    float-to-double v8, v12

    .line 119
    .local v8, "tmp0":D
    double-to-float v12, v0

    float-to-double v10, v12

    .line 120
    .local v10, "tmp1":D
    const-wide v12, 0x416312d000000000L    # 1.0E7

    mul-double/2addr v12, v8

    const-wide v14, 0x416312d000000000L    # 1.0E7

    mul-double/2addr v14, v8

    mul-double/2addr v12, v14

    const-wide v14, 0x416312d000000000L    # 1.0E7

    mul-double/2addr v14, v10

    const-wide v16, 0x416312d000000000L    # 1.0E7

    mul-double v16, v16, v10

    mul-double v14, v14, v16

    add-double/2addr v12, v14

    const-wide v14, 0x3ff3d3c680000000L    # 1.2392029762268066

    mul-double v8, v12, v14

    .line 121
    invoke-static {v8, v9}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .line 122
    move-wide v4, v8

    .line 123
    .local v4, "result":D
    return-wide v4
.end method

.method public static Mars_To_Earth(DDD)Lcom/fimi/x8sdk/entity/FLatLng;
    .locals 22
    .param p0, "precision"    # D
    .param p2, "srclat"    # D
    .param p4, "srclon"    # D

    .prologue
    .line 130
    new-instance v20, Lcom/fimi/x8sdk/entity/FLatLng;

    invoke-direct/range {v20 .. v20}, Lcom/fimi/x8sdk/entity/FLatLng;-><init>()V

    .line 131
    .local v20, "tmplLatitudelongitude":Lcom/fimi/x8sdk/entity/FLatLng;
    new-instance v19, Lcom/fimi/x8sdk/entity/FLatLng;

    invoke-direct/range {v19 .. v19}, Lcom/fimi/x8sdk/entity/FLatLng;-><init>()V

    .local v19, "tmpLatitudelongitude1":Lcom/fimi/x8sdk/entity/FLatLng;
    new-instance v18, Lcom/fimi/x8sdk/entity/FLatLng;

    invoke-direct/range {v18 .. v18}, Lcom/fimi/x8sdk/entity/FLatLng;-><init>()V

    .line 133
    .local v18, "dstlatlon":Lcom/fimi/x8sdk/entity/FLatLng;
    move-wide/from16 v0, p2

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/fimi/x8sdk/entity/FLatLng;->latitude:D

    .line 134
    move-wide/from16 v0, p4

    move-object/from16 v2, v19

    iput-wide v0, v2, Lcom/fimi/x8sdk/entity/FLatLng;->longitude:D

    .line 137
    const-wide/16 v16, 0x0

    .line 138
    .local v16, "deltelon":D
    const-wide/16 v14, 0x0

    .line 139
    .local v14, "deltelat":D
    move-object/from16 v0, v19

    iget-wide v4, v0, Lcom/fimi/x8sdk/entity/FLatLng;->latitude:D

    move-object/from16 v0, v19

    iget-wide v6, v0, Lcom/fimi/x8sdk/entity/FLatLng;->longitude:D

    invoke-static {v4, v5, v6, v7}, Lcom/fimi/x8sdk/util/GpsCorrect;->Mars_To_Earth0(DD)Lcom/fimi/x8sdk/entity/FLatLng;

    move-result-object v20

    .line 140
    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/fimi/x8sdk/entity/FLatLng;->latitude:D

    move-object/from16 v0, v20

    iget-wide v6, v0, Lcom/fimi/x8sdk/entity/FLatLng;->longitude:D

    invoke-static {v4, v5, v6, v7}, Lcom/fimi/x8sdk/util/GpsCorrect;->Earth_To_Mars(DD)Lcom/fimi/x8sdk/entity/FLatLng;

    move-result-object v19

    .line 144
    :cond_0
    move-object/from16 v0, v19

    iget-wide v4, v0, Lcom/fimi/x8sdk/entity/FLatLng;->longitude:D

    sub-double v16, p4, v4

    .line 145
    move-object/from16 v0, v19

    iget-wide v4, v0, Lcom/fimi/x8sdk/entity/FLatLng;->latitude:D

    sub-double v14, p2, v4

    .line 147
    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/fimi/x8sdk/entity/FLatLng;->longitude:D

    add-double v4, v4, v16

    move-object/from16 v0, v18

    iput-wide v4, v0, Lcom/fimi/x8sdk/entity/FLatLng;->longitude:D

    .line 148
    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/fimi/x8sdk/entity/FLatLng;->latitude:D

    add-double/2addr v4, v14

    move-object/from16 v0, v18

    iput-wide v4, v0, Lcom/fimi/x8sdk/entity/FLatLng;->latitude:D

    .line 150
    move-object/from16 v0, v18

    iget-wide v4, v0, Lcom/fimi/x8sdk/entity/FLatLng;->longitude:D

    move-object/from16 v0, v20

    iput-wide v4, v0, Lcom/fimi/x8sdk/entity/FLatLng;->longitude:D

    .line 151
    move-object/from16 v0, v18

    iget-wide v4, v0, Lcom/fimi/x8sdk/entity/FLatLng;->latitude:D

    move-object/from16 v0, v20

    iput-wide v4, v0, Lcom/fimi/x8sdk/entity/FLatLng;->latitude:D

    .line 152
    move-object/from16 v0, v20

    iget-wide v4, v0, Lcom/fimi/x8sdk/entity/FLatLng;->latitude:D

    move-object/from16 v0, v20

    iget-wide v6, v0, Lcom/fimi/x8sdk/entity/FLatLng;->longitude:D

    invoke-static {v4, v5, v6, v7}, Lcom/fimi/x8sdk/util/GpsCorrect;->Earth_To_Mars(DD)Lcom/fimi/x8sdk/entity/FLatLng;

    move-result-object v19

    .line 154
    move-object/from16 v0, v19

    iget-wide v8, v0, Lcom/fimi/x8sdk/entity/FLatLng;->longitude:D

    move-object/from16 v0, v19

    iget-wide v10, v0, Lcom/fimi/x8sdk/entity/FLatLng;->latitude:D

    move-wide/from16 v4, p4

    move-wide/from16 v6, p2

    invoke-static/range {v4 .. v11}, Lcom/fimi/x8sdk/util/GpsCorrect;->Get_Distance2(DDDD)D

    move-result-wide v12

    .line 155
    .local v12, "delte_l":D
    cmpg-double v4, p0, v12

    if-ltz v4, :cond_0

    .line 156
    return-object v18
.end method

.method public static Mars_To_Earth0(DD)Lcom/fimi/x8sdk/entity/FLatLng;
    .locals 26
    .param p0, "srclat"    # D
    .param p2, "srclon"    # D

    .prologue
    .line 86
    invoke-static {}, Lcom/fimi/x8sdk/common/GlobalConfig;->getInstance()Lcom/fimi/x8sdk/common/GlobalConfig;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/fimi/x8sdk/common/GlobalConfig;->getMapType()Lcom/fimi/x8sdk/map/MapType;

    move-result-object v20

    sget-object v21, Lcom/fimi/x8sdk/map/MapType;->AMap:Lcom/fimi/x8sdk/map/MapType;

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    if-ne v0, v1, :cond_1

    .line 87
    invoke-static {}, Lcom/fimi/x8sdk/common/GlobalConfig;->getInstance()Lcom/fimi/x8sdk/common/GlobalConfig;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Lcom/fimi/x8sdk/common/GlobalConfig;->isRectification()Z

    move-result v20

    if-eqz v20, :cond_0

    .line 88
    const-wide v20, 0x405a400000000000L    # 105.0

    sub-double v20, p2, v20

    const-wide v22, 0x4041800000000000L    # 35.0

    sub-double v22, p0, v22

    invoke-static/range {v20 .. v23}, Lcom/fimi/x8sdk/util/GpsCorrect;->transformLat(DD)D

    move-result-wide v6

    .line 89
    .local v6, "dLat":D
    const-wide v20, 0x405a400000000000L    # 105.0

    sub-double v20, p2, v20

    const-wide v22, 0x4041800000000000L    # 35.0

    sub-double v22, p0, v22

    invoke-static/range {v20 .. v23}, Lcom/fimi/x8sdk/util/GpsCorrect;->transformLon(DD)D

    move-result-wide v8

    .line 90
    .local v8, "dLon":D
    const-wide v20, 0x4066800000000000L    # 180.0

    div-double v20, p0, v20

    const-wide v22, 0x400921fb54442d18L    # Math.PI

    mul-double v16, v20, v22

    .line 91
    .local v16, "radLat":D
    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v14

    .line 92
    .local v14, "magic":D
    const-wide/high16 v20, 0x3ff0000000000000L    # 1.0

    const-wide v22, 0x3f7b6a8faf80ef0bL    # 0.006693421622965943

    mul-double v22, v22, v14

    mul-double v22, v22, v14

    sub-double v14, v20, v22

    .line 93
    invoke-static {v14, v15}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    .line 94
    .local v18, "sqrtMagic":D
    const-wide v20, 0x4066800000000000L    # 180.0

    mul-double v20, v20, v6

    const-wide v22, 0x41582b102de355c1L    # 6335552.717000426

    mul-double v24, v14, v18

    div-double v22, v22, v24

    const-wide v24, 0x400921fb54442d18L    # Math.PI

    mul-double v22, v22, v24

    div-double v6, v20, v22

    .line 95
    const-wide v20, 0x4066800000000000L    # 180.0

    mul-double v20, v20, v8

    const-wide v22, 0x415854c140000000L    # 6378245.0

    div-double v22, v22, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v24

    mul-double v22, v22, v24

    const-wide v24, 0x400921fb54442d18L    # Math.PI

    mul-double v22, v22, v24

    div-double v8, v20, v22

    .line 96
    sub-double v10, p0, v6

    .line 97
    .local v10, "latlat":D
    sub-double v12, p2, v8

    .line 98
    .local v12, "latlon":D
    new-instance v20, Lcom/fimi/x8sdk/entity/FLatLng;

    move-object/from16 v0, v20

    invoke-direct {v0, v10, v11, v12, v13}, Lcom/fimi/x8sdk/entity/FLatLng;-><init>(DD)V

    .line 103
    .end local v6    # "dLat":D
    .end local v8    # "dLon":D
    .end local v10    # "latlat":D
    .end local v12    # "latlon":D
    .end local v14    # "magic":D
    .end local v16    # "radLat":D
    .end local v18    # "sqrtMagic":D
    :goto_0
    return-object v20

    .line 100
    :cond_0
    new-instance v20, Lcom/fimi/x8sdk/entity/FLatLng;

    move-object/from16 v0, v20

    move-wide/from16 v1, p0

    move-wide/from16 v3, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/entity/FLatLng;-><init>(DD)V

    goto :goto_0

    .line 103
    :cond_1
    new-instance v20, Lcom/fimi/x8sdk/entity/FLatLng;

    move-object/from16 v0, v20

    move-wide/from16 v1, p0

    move-wide/from16 v3, p2

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/fimi/x8sdk/entity/FLatLng;-><init>(DD)V

    goto :goto_0
.end method

.method private static outOfChina(DD)Z
    .locals 4
    .param p0, "lat"    # D
    .param p2, "lon"    # D

    .prologue
    const/4 v0, 0x1

    .line 35
    const-wide v2, 0x4052004189374bc7L    # 72.004

    cmpg-double v1, p2, v2

    if-ltz v1, :cond_0

    const-wide v2, 0x40613ab5dcc63f14L    # 137.8347

    cmpl-double v1, p2, v2

    if-lez v1, :cond_1

    .line 39
    :cond_0
    :goto_0
    return v0

    .line 37
    :cond_1
    const-wide v2, 0x3fea89a027525461L    # 0.8293

    cmpg-double v1, p0, v2

    if-ltz v1, :cond_0

    const-wide v2, 0x404be9de69ad42c4L    # 55.8271

    cmpl-double v1, p0, v2

    if-gtz v1, :cond_0

    .line 39
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static transform(DD[D)V
    .locals 16
    .param p0, "wgLat"    # D
    .param p2, "wgLon"    # D
    .param p4, "latlng"    # [D

    .prologue
    .line 17
    invoke-static/range {p0 .. p3}, Lcom/fimi/x8sdk/util/GpsCorrect;->outOfChina(DD)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 18
    const/4 v10, 0x0

    aput-wide p0, p4, v10

    .line 19
    const/4 v10, 0x1

    aput-wide p2, p4, v10

    .line 32
    :goto_0
    return-void

    .line 22
    :cond_0
    const-wide v10, 0x405a400000000000L    # 105.0

    sub-double v10, p2, v10

    const-wide v12, 0x4041800000000000L    # 35.0

    sub-double v12, p0, v12

    invoke-static {v10, v11, v12, v13}, Lcom/fimi/x8sdk/util/GpsCorrect;->transformLat(DD)D

    move-result-wide v0

    .line 23
    .local v0, "dLat":D
    const-wide v10, 0x405a400000000000L    # 105.0

    sub-double v10, p2, v10

    const-wide v12, 0x4041800000000000L    # 35.0

    sub-double v12, p0, v12

    invoke-static {v10, v11, v12, v13}, Lcom/fimi/x8sdk/util/GpsCorrect;->transformLon(DD)D

    move-result-wide v2

    .line 24
    .local v2, "dLon":D
    const-wide v10, 0x4066800000000000L    # 180.0

    div-double v10, p0, v10

    const-wide v12, 0x400921fb54442d18L    # Math.PI

    mul-double v6, v10, v12

    .line 25
    .local v6, "radLat":D
    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    .line 26
    .local v4, "magic":D
    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide v12, 0x3f7b6a8faf80ef0bL    # 0.006693421622965943

    mul-double/2addr v12, v4

    mul-double/2addr v12, v4

    sub-double v4, v10, v12

    .line 27
    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v8

    .line 28
    .local v8, "sqrtMagic":D
    const-wide v10, 0x4066800000000000L    # 180.0

    mul-double/2addr v10, v0

    const-wide v12, 0x41582b102de355c1L    # 6335552.717000426

    mul-double v14, v4, v8

    div-double/2addr v12, v14

    const-wide v14, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v12, v14

    div-double v0, v10, v12

    .line 29
    const-wide v10, 0x4066800000000000L    # 180.0

    mul-double/2addr v10, v2

    const-wide v12, 0x415854c140000000L    # 6378245.0

    div-double/2addr v12, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D

    move-result-wide v14

    mul-double/2addr v12, v14

    const-wide v14, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v12, v14

    div-double v2, v10, v12

    .line 30
    const/4 v10, 0x0

    add-double v12, p0, v0

    aput-wide v12, p4, v10

    .line 31
    const/4 v10, 0x1

    add-double v12, p2, v2

    aput-wide v12, p4, v10

    goto :goto_0
.end method

.method private static transformLat(DD)D
    .locals 10
    .param p0, "x"    # D
    .param p2, "y"    # D

    .prologue
    .line 43
    const-wide/high16 v2, -0x3fa7000000000000L    # -100.0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, p0

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    mul-double/2addr v4, p2

    add-double/2addr v2, v4

    const-wide v4, 0x3fc999999999999aL    # 0.2

    mul-double/2addr v4, p2

    mul-double/2addr v4, p2

    add-double/2addr v2, v4

    const-wide v4, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v4, p0

    mul-double/2addr v4, p2

    add-double/2addr v2, v4

    const-wide v4, 0x3fc999999999999aL    # 0.2

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double v0, v2, v4

    .line 44
    .local v0, "ret":D
    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    mul-double/2addr v4, p0

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, p0

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 45
    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, p2

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4044000000000000L    # 40.0

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    div-double v6, p2, v6

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 46
    const-wide/high16 v2, 0x4064000000000000L    # 160.0

    const-wide/high16 v4, 0x4028000000000000L    # 12.0

    div-double v4, p2, v4

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4074000000000000L    # 320.0

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, p2

    const-wide/high16 v8, 0x403e000000000000L    # 30.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 47
    return-wide v0
.end method

.method private static transformLon(DD)D
    .locals 10
    .param p0, "x"    # D
    .param p2, "y"    # D

    .prologue
    .line 51
    const-wide v2, 0x4072c00000000000L    # 300.0

    add-double/2addr v2, p0

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v4, p2

    add-double/2addr v2, v4

    const-wide v4, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v4, p0

    mul-double/2addr v4, p0

    add-double/2addr v2, v4

    const-wide v4, 0x3fb999999999999aL    # 0.1

    mul-double/2addr v4, p0

    mul-double/2addr v4, p2

    add-double/2addr v2, v4

    const-wide v4, 0x3fb999999999999aL    # 0.1

    invoke-static {p0, p1}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double v0, v2, v4

    .line 52
    .local v0, "ret":D
    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    const-wide/high16 v4, 0x4018000000000000L    # 6.0

    mul-double/2addr v4, p0

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4034000000000000L    # 20.0

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    mul-double/2addr v6, p0

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 53
    const-wide/high16 v2, 0x4034000000000000L    # 20.0

    const-wide v4, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, p0

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4044000000000000L    # 40.0

    const-wide/high16 v6, 0x4008000000000000L    # 3.0

    div-double v6, p0, v6

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 54
    const-wide v2, 0x4062c00000000000L    # 150.0

    const-wide/high16 v4, 0x4028000000000000L    # 12.0

    div-double v4, p0, v4

    const-wide v6, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D

    move-result-wide v4

    mul-double/2addr v2, v4

    const-wide v4, 0x4072c00000000000L    # 300.0

    const-wide/high16 v6, 0x403e000000000000L    # 30.0

    div-double v6, p0, v6

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double/2addr v6, v8

    invoke-static {v6, v7}, Ljava/lang/Math;->sin(D)D

    move-result-wide v6

    mul-double/2addr v4, v6

    add-double/2addr v2, v4

    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x4008000000000000L    # 3.0

    div-double/2addr v2, v4

    add-double/2addr v0, v2

    .line 55
    return-wide v0
.end method
