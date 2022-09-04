.class public Lcom/fimi/app/x8s/tools/GpsPointTools;
.super Ljava/lang/Object;
.source "GpsPointTools.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 3
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getDirectionAngle(DDDD)D
    .locals 61
    .param p1, "latA"    # D
    .param p3, "lngA"    # D
    .param p5, "latB"    # D
    .param p7, "lngB"    # D

    .prologue
    .line 65
    const-wide v40, 0x415854a640000000L    # 6378137.0

    .line 66
    .local v40, "Rc":D
    const-wide v42, 0x41583fbd40000000L    # 6356725.0

    .line 68
    .local v42, "Rj":D
    invoke-static/range {p3 .. p4}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v8

    .line 69
    .local v8, "A_LngDeg":D
    sub-double v56, p3, v8

    const-wide/high16 v58, 0x404e000000000000L    # 60.0

    mul-double v56, v56, v58

    invoke-static/range {v56 .. v57}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v10

    .line 70
    .local v10, "A_LngMin":D
    sub-double v56, p3, v8

    const-wide/high16 v58, 0x404e000000000000L    # 60.0

    div-double v58, v10, v58

    sub-double v56, v56, v58

    const-wide v58, 0x40ac200000000000L    # 3600.0

    mul-double v18, v56, v58

    .line 72
    .local v18, "A_lngSec":D
    invoke-static/range {p1 .. p2}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v4

    .line 73
    .local v4, "A_LatDeg":D
    sub-double v56, p1, v4

    const-wide/high16 v58, 0x404e000000000000L    # 60.0

    mul-double v56, v56, v58

    invoke-static/range {v56 .. v57}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v6

    .line 74
    .local v6, "A_LatMin":D
    sub-double v56, p1, v4

    const-wide/high16 v58, 0x404e000000000000L    # 60.0

    div-double v58, v6, v58

    sub-double v56, v56, v58

    const-wide v58, 0x40ac200000000000L    # 3600.0

    mul-double v16, v56, v58

    .line 76
    .local v16, "A_latSec":D
    const-wide v56, 0x400921fb54442d18L    # Math.PI

    mul-double v56, v56, p3

    const-wide v58, 0x4066800000000000L    # 180.0

    div-double v14, v56, v58

    .line 77
    .local v14, "A_RadLng":D
    const-wide v56, 0x400921fb54442d18L    # Math.PI

    mul-double v56, v56, p1

    const-wide v58, 0x4066800000000000L    # 180.0

    div-double v12, v56, v58

    .line 78
    .local v12, "A_RadLat":D
    sub-double v56, v40, v42

    const-wide v58, 0x4056800000000000L    # 90.0

    sub-double v58, v58, p1

    mul-double v56, v56, v58

    const-wide v58, 0x4056800000000000L    # 90.0

    div-double v56, v56, v58

    add-double v0, v42, v56

    .line 79
    .local v0, "A_Ec":D
    invoke-static {v12, v13}, Ljava/lang/Math;->cos(D)D

    move-result-wide v56

    mul-double v2, v0, v56

    .line 81
    .local v2, "A_Ed":D
    invoke-static/range {p7 .. p8}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v28

    .line 82
    .local v28, "B_LngDeg":D
    sub-double v56, p7, v28

    const-wide/high16 v58, 0x404e000000000000L    # 60.0

    mul-double v56, v56, v58

    invoke-static/range {v56 .. v57}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v30

    .line 83
    .local v30, "B_LngMin":D
    sub-double v56, p7, v28

    const-wide/high16 v58, 0x404e000000000000L    # 60.0

    div-double v58, v30, v58

    sub-double v56, v56, v58

    const-wide v58, 0x40ac200000000000L    # 3600.0

    mul-double v38, v56, v58

    .line 85
    .local v38, "B_lngSec":D
    invoke-static/range {p5 .. p6}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v24

    .line 86
    .local v24, "B_LatDeg":D
    sub-double v56, p5, v24

    const-wide/high16 v58, 0x404e000000000000L    # 60.0

    mul-double v56, v56, v58

    invoke-static/range {v56 .. v57}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v26

    .line 87
    .local v26, "B_LatMin":D
    sub-double v56, p5, v24

    const-wide/high16 v58, 0x404e000000000000L    # 60.0

    div-double v58, v26, v58

    sub-double v56, v56, v58

    const-wide v58, 0x40ac200000000000L    # 3600.0

    mul-double v36, v56, v58

    .line 89
    .local v36, "B_latSec":D
    const-wide v56, 0x400921fb54442d18L    # Math.PI

    mul-double v56, v56, p7

    const-wide v58, 0x4066800000000000L    # 180.0

    div-double v34, v56, v58

    .line 90
    .local v34, "B_RadLng":D
    const-wide v56, 0x400921fb54442d18L    # Math.PI

    mul-double v56, v56, p5

    const-wide v58, 0x4066800000000000L    # 180.0

    div-double v32, v56, v58

    .line 91
    .local v32, "B_RadLat":D
    sub-double v56, v40, v42

    const-wide v58, 0x4056800000000000L    # 90.0

    sub-double v58, v58, p5

    mul-double v56, v56, v58

    const-wide v58, 0x4056800000000000L    # 90.0

    div-double v56, v56, v58

    add-double v20, v42, v56

    .line 92
    .local v20, "B_Ec":D
    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->cos(D)D

    move-result-wide v56

    mul-double v22, v20, v56

    .line 94
    .local v22, "B_Ed":D
    sub-double v56, v34, v14

    mul-double v52, v56, v2

    .line 95
    .local v52, "dx":D
    sub-double v56, v32, v12

    mul-double v54, v56, v0

    .line 97
    .local v54, "dy":D
    sub-double v50, p7, p3

    .line 98
    .local v50, "dLng":D
    sub-double v48, p5, p1

    .line 100
    .local v48, "dLat":D
    div-double v56, v52, v54

    invoke-static/range {v56 .. v57}, Ljava/lang/Math;->abs(D)D

    move-result-wide v56

    invoke-static/range {v56 .. v57}, Ljava/lang/Math;->atan(D)D

    move-result-wide v56

    const-wide v58, 0x4066800000000000L    # 180.0

    mul-double v56, v56, v58

    const-wide v58, 0x400921fb54442d18L    # Math.PI

    div-double v44, v56, v58

    .line 102
    .local v44, "angle":D
    const-wide/16 v56, 0x0

    cmpl-double v56, v50, v56

    if-lez v56, :cond_1

    const-wide/16 v56, 0x0

    cmpg-double v56, v48, v56

    if-gtz v56, :cond_1

    .line 103
    const-wide v56, 0x4056800000000000L    # 90.0

    sub-double v56, v56, v44

    const-wide v58, 0x4056800000000000L    # 90.0

    add-double v46, v56, v58

    .line 110
    .local v46, "bearing":D
    :goto_0
    const-wide v56, 0x4076800000000000L    # 360.0

    sub-double v56, v56, v46

    const-wide v58, 0x4056800000000000L    # 90.0

    add-double v46, v56, v58

    .line 111
    const-wide v56, 0x4076800000000000L    # 360.0

    cmpl-double v56, v46, v56

    if-lez v56, :cond_0

    .line 112
    const-wide v56, 0x4076800000000000L    # 360.0

    sub-double v46, v46, v56

    .line 113
    :cond_0
    return-wide v46

    .line 104
    .end local v46    # "bearing":D
    :cond_1
    const-wide/16 v56, 0x0

    cmpg-double v56, v50, v56

    if-gtz v56, :cond_2

    const-wide/16 v56, 0x0

    cmpg-double v56, v48, v56

    if-gez v56, :cond_2

    .line 105
    const-wide v56, 0x4066800000000000L    # 180.0

    add-double v46, v44, v56

    .restart local v46    # "bearing":D
    goto :goto_0

    .line 106
    .end local v46    # "bearing":D
    :cond_2
    const-wide/16 v56, 0x0

    cmpg-double v56, v50, v56

    if-gez v56, :cond_3

    const-wide/16 v56, 0x0

    cmpl-double v56, v48, v56

    if-ltz v56, :cond_3

    .line 107
    const-wide v56, 0x4056800000000000L    # 90.0

    sub-double v56, v56, v44

    const-wide v58, 0x4070e00000000000L    # 270.0

    add-double v46, v56, v58

    .restart local v46    # "bearing":D
    goto :goto_0

    .line 109
    .end local v46    # "bearing":D
    :cond_3
    move-wide/from16 v46, v44

    .restart local v46    # "bearing":D
    goto :goto_0
.end method

.method public getDistance2D(DDDD)D
    .locals 21
    .param p1, "lat0"    # D
    .param p3, "lng0"    # D
    .param p5, "lat1"    # D
    .param p7, "lng1"    # D

    .prologue
    .line 5
    const-wide v0, 0x415854a640000000L    # 6378137.0

    .line 6
    .local v0, "R":D
    sub-double v4, p1, p5

    .line 7
    .local v4, "dLat":D
    sub-double v6, p3, p7

    .line 8
    .local v6, "dLng":D
    const-wide v16, 0x4066800000000000L    # 180.0

    cmpl-double v16, v6, v16

    if-lez v16, :cond_1

    .line 9
    const-wide v16, 0x4076800000000000L    # 360.0

    sub-double v6, v6, v16

    .line 14
    :cond_0
    :goto_0
    const-wide v16, 0x3f91df46a1fae711L    # 0.0174532925

    mul-double v4, v4, v16

    .line 15
    const-wide v16, 0x3f91df46a1fae711L    # 0.0174532925

    mul-double v6, v6, v16

    .line 17
    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    mul-double v16, v16, v4

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    mul-double v18, v18, v4

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v10, v16, v18

    .line 18
    .local v10, "sLat":D
    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    mul-double v16, v16, v6

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sin(D)D

    move-result-wide v16

    const-wide/high16 v18, 0x3fe0000000000000L    # 0.5

    mul-double v18, v18, v6

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sin(D)D

    move-result-wide v18

    mul-double v12, v16, v18

    .line 19
    .local v12, "sLng":D
    const-wide v16, 0x3f91df46a1fae711L    # 0.0174532925

    mul-double v16, v16, p1

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->cos(D)D

    move-result-wide v16

    const-wide v18, 0x3f91df46a1fae711L    # 0.0174532925

    mul-double v18, v18, p5

    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->cos(D)D

    move-result-wide v18

    mul-double v2, v16, v18

    .line 20
    .local v2, "cLat":D
    mul-double v16, v12, v2

    add-double v16, v16, v10

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v14

    .line 21
    .local v14, "sqVol":D
    const-wide/high16 v16, 0x4000000000000000L    # 2.0

    mul-double v16, v16, v0

    invoke-static {v14, v15}, Ljava/lang/Math;->asin(D)D

    move-result-wide v18

    mul-double v8, v16, v18

    .line 22
    .local v8, "distance":D
    return-wide v8

    .line 10
    .end local v2    # "cLat":D
    .end local v8    # "distance":D
    .end local v10    # "sLat":D
    .end local v12    # "sLng":D
    .end local v14    # "sqVol":D
    :cond_1
    const-wide v16, -0x3f99800000000000L    # -180.0

    cmpg-double v16, v6, v16

    if-gez v16, :cond_0

    .line 11
    const-wide v16, 0x4076800000000000L    # 360.0

    add-double v6, v6, v16

    goto :goto_0
.end method

.method public getSymmetryPoint(DDDD)[D
    .locals 7
    .param p1, "latA"    # D
    .param p3, "lngA"    # D
    .param p5, "latO"    # D
    .param p7, "lngO"    # D

    .prologue
    const-wide/high16 v4, 0x4000000000000000L    # 2.0

    .line 117
    const/4 v1, 0x2

    new-array v0, v1, [D

    .line 118
    .local v0, "point":[D
    const/4 v1, 0x0

    mul-double v2, v4, p5

    sub-double/2addr v2, p1

    aput-wide v2, v0, v1

    .line 119
    const/4 v1, 0x1

    mul-double v2, v4, p7

    sub-double/2addr v2, p3

    aput-wide v2, v0, v1

    .line 120
    return-object v0
.end method

.method public gpsPointDrawArc(DDDDDD)[[D
    .locals 31
    .param p1, "latA"    # D
    .param p3, "lngA"    # D
    .param p5, "latB"    # D
    .param p7, "lngB"    # D
    .param p9, "latO"    # D
    .param p11, "lngO"    # D

    .prologue
    .line 28
    const/16 v12, 0x32

    .line 29
    .local v12, "PointNum":I
    const/4 v3, 0x2

    filled-new-array {v12, v3}, [I

    move-result-object v3

    sget-object v4, Ljava/lang/Double;->TYPE:Ljava/lang/Class;

    invoke-static {v4, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[D

    .line 32
    .local v2, "PointA_B":[[D
    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/4 v4, 0x0

    aput-wide p1, v3, v4

    .line 33
    const/4 v3, 0x0

    aget-object v3, v2, v3

    const/4 v4, 0x1

    aput-wide p3, v3, v4

    .line 34
    const/16 v3, 0x31

    aget-object v3, v2, v3

    const/4 v4, 0x0

    aput-wide p5, v3, v4

    .line 35
    const/16 v3, 0x31

    aget-object v3, v2, v3

    const/4 v4, 0x1

    aput-wide p7, v3, v4

    move-object/from16 v3, p0

    move-wide/from16 v4, p9

    move-wide/from16 v6, p11

    move-wide/from16 v8, p1

    move-wide/from16 v10, p3

    .line 37
    invoke-virtual/range {v3 .. v11}, Lcom/fimi/app/x8s/tools/GpsPointTools;->getDirectionAngle(DDDD)D

    move-result-wide v26

    .local v26, "startAngle":D
    move-object/from16 v3, p0

    move-wide/from16 v4, p9

    move-wide/from16 v6, p11

    move-wide/from16 v8, p5

    move-wide/from16 v10, p7

    .line 38
    invoke-virtual/range {v3 .. v11}, Lcom/fimi/app/x8s/tools/GpsPointTools;->getDirectionAngle(DDDD)D

    move-result-wide v24

    .line 39
    .local v24, "endAngle":D
    sub-double v4, p9, p1

    sub-double v6, p9, p1

    mul-double/2addr v4, v6

    sub-double v6, p11, p3

    sub-double v8, p11, p3

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    .line 40
    .local v16, "R1":D
    sub-double v4, p9, p5

    sub-double v6, p9, p5

    mul-double/2addr v4, v6

    sub-double v6, p11, p7

    sub-double v8, p11, p7

    mul-double/2addr v6, v8

    add-double/2addr v4, v6

    invoke-static {v4, v5}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v18

    .line 41
    .local v18, "R2":D
    move-wide/from16 v14, v16

    .line 42
    .local v14, "R":D
    sub-double v4, v16, v18

    int-to-double v6, v12

    div-double v20, v4, v6

    .line 45
    .local v20, "Rt":D
    sub-double v4, v24, v26

    const-wide/16 v6, 0x0

    cmpl-double v3, v4, v6

    if-lez v3, :cond_1

    .line 46
    const-wide v4, 0x4076800000000000L    # 360.0

    sub-double v4, v4, v24

    add-double v4, v4, v26

    const/16 v3, 0x38

    int-to-double v6, v3

    div-double/2addr v4, v6

    neg-double v0, v4

    move-wide/from16 v22, v0

    .line 51
    .local v22, "dAngle":D
    :goto_0
    const/4 v13, 0x1

    .local v13, "i":I
    :goto_1
    const/16 v3, 0x31

    if-ge v13, v3, :cond_2

    .line 52
    int-to-double v4, v13

    mul-double v4, v4, v22

    add-double v28, v26, v4

    .line 53
    .local v28, "tAngle":D
    const-wide v4, 0x4076800000000000L    # 360.0

    cmpl-double v3, v28, v4

    if-lez v3, :cond_0

    .line 54
    const-wide v4, 0x4076800000000000L    # 360.0

    sub-double v28, v28, v4

    .line 56
    :cond_0
    aget-object v3, v2, v13

    const/4 v4, 0x0

    int-to-double v6, v13

    mul-double v6, v6, v20

    sub-double v6, v14, v6

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double v8, v8, v28

    const-wide v10, 0x4066800000000000L    # 180.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->sin(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double v6, v6, p9

    aput-wide v6, v3, v4

    .line 57
    aget-object v3, v2, v13

    const/4 v4, 0x1

    int-to-double v6, v13

    mul-double v6, v6, v20

    sub-double v6, v14, v6

    const-wide v8, 0x400921fb54442d18L    # Math.PI

    mul-double v8, v8, v28

    const-wide v10, 0x4066800000000000L    # 180.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Ljava/lang/Math;->cos(D)D

    move-result-wide v8

    mul-double/2addr v6, v8

    add-double v6, v6, p11

    aput-wide v6, v3, v4

    .line 51
    add-int/lit8 v13, v13, 0x1

    goto :goto_1

    .line 48
    .end local v13    # "i":I
    .end local v22    # "dAngle":D
    .end local v28    # "tAngle":D
    :cond_1
    sub-double v4, v24, v26

    const/16 v3, 0x38

    int-to-double v6, v3

    div-double v22, v4, v6

    .restart local v22    # "dAngle":D
    goto :goto_0

    .line 59
    .restart local v13    # "i":I
    :cond_2
    return-object v2
.end method
